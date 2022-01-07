
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {struct crypto_shash* tfm; } ;
struct public_key_signature {scalar_t__ digest_size; scalar_t__ digest; int hash_algo; } ;
struct pkcs7_signed_info {scalar_t__ msgdigest_len; int authattrs_len; int authattrs; int index; int msgdigest; struct public_key_signature* sig; } ;
struct pkcs7_message {int data_len; int data; } ;
struct crypto_shash {int dummy; } ;


 int ASN1_CONS_BIT ;
 int ASN1_SET ;
 int EBADMSG ;
 int EKEYREJECTED ;
 int ENOENT ;
 int ENOMEM ;
 int ENOPKG ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_shash*) ;
 int PTR_ERR (struct crypto_shash*) ;
 struct crypto_shash* crypto_alloc_shash (int ,int ,int ) ;
 int crypto_free_shash (struct crypto_shash*) ;
 int crypto_shash_descsize (struct crypto_shash*) ;
 int crypto_shash_digest (struct shash_desc*,int ,int ,scalar_t__) ;
 scalar_t__ crypto_shash_digestsize (struct crypto_shash*) ;
 int crypto_shash_finup (struct shash_desc*,int ,int ,scalar_t__) ;
 int crypto_shash_init (struct shash_desc*) ;
 int crypto_shash_update (struct shash_desc*,int*,int) ;
 int kenter (char*,int ,int ) ;
 int kfree (struct shash_desc*) ;
 int kleave (char*,int) ;
 scalar_t__ kmalloc (scalar_t__,int ) ;
 struct shash_desc* kzalloc (size_t,int ) ;
 scalar_t__ memcmp (scalar_t__,int ,scalar_t__) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 int pr_debug (char*,int ,...) ;
 int pr_devel (char*,int,scalar_t__) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static int pkcs7_digest(struct pkcs7_message *pkcs7,
   struct pkcs7_signed_info *sinfo)
{
 struct public_key_signature *sig = sinfo->sig;
 struct crypto_shash *tfm;
 struct shash_desc *desc;
 size_t desc_size;
 int ret;

 kenter(",%u,%s", sinfo->index, sinfo->sig->hash_algo);


 if (sig->digest)
  return 0;

 if (!sinfo->sig->hash_algo)
  return -ENOPKG;




 tfm = crypto_alloc_shash(sinfo->sig->hash_algo, 0, 0);
 if (IS_ERR(tfm))
  return (PTR_ERR(tfm) == -ENOENT) ? -ENOPKG : PTR_ERR(tfm);

 desc_size = crypto_shash_descsize(tfm) + sizeof(*desc);
 sig->digest_size = crypto_shash_digestsize(tfm);

 ret = -ENOMEM;
 sig->digest = kmalloc(sig->digest_size, GFP_KERNEL);
 if (!sig->digest)
  goto error_no_desc;

 desc = kzalloc(desc_size, GFP_KERNEL);
 if (!desc)
  goto error_no_desc;

 desc->tfm = tfm;


 ret = crypto_shash_digest(desc, pkcs7->data, pkcs7->data_len,
      sig->digest);
 if (ret < 0)
  goto error;
 pr_devel("MsgDigest = [%*ph]\n", 8, sig->digest);





 if (sinfo->authattrs) {
  u8 tag;

  if (!sinfo->msgdigest) {
   pr_warn("Sig %u: No messageDigest\n", sinfo->index);
   ret = -EKEYREJECTED;
   goto error;
  }

  if (sinfo->msgdigest_len != sig->digest_size) {
   pr_debug("Sig %u: Invalid digest size (%u)\n",
     sinfo->index, sinfo->msgdigest_len);
   ret = -EBADMSG;
   goto error;
  }

  if (memcmp(sig->digest, sinfo->msgdigest,
      sinfo->msgdigest_len) != 0) {
   pr_debug("Sig %u: Message digest doesn't match\n",
     sinfo->index);
   ret = -EKEYREJECTED;
   goto error;
  }






  memset(sig->digest, 0, sig->digest_size);

  ret = crypto_shash_init(desc);
  if (ret < 0)
   goto error;
  tag = ASN1_CONS_BIT | ASN1_SET;
  ret = crypto_shash_update(desc, &tag, 1);
  if (ret < 0)
   goto error;
  ret = crypto_shash_finup(desc, sinfo->authattrs,
      sinfo->authattrs_len, sig->digest);
  if (ret < 0)
   goto error;
  pr_devel("AADigest = [%*ph]\n", 8, sig->digest);
 }

error:
 kfree(desc);
error_no_desc:
 crypto_free_shash(tfm);
 kleave(" = %d", ret);
 return ret;
}
