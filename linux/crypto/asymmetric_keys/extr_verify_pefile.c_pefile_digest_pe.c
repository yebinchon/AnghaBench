
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {struct crypto_shash* tfm; } ;
struct pefile_context {size_t digest_len; int digest; int digest_algo; } ;
struct crypto_shash {int dummy; } ;


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
 size_t crypto_shash_digestsize (struct crypto_shash*) ;
 int crypto_shash_final (struct shash_desc*,void*) ;
 int crypto_shash_init (struct shash_desc*) ;
 int kenter (char*,int ) ;
 int kleave (char*,int) ;
 struct shash_desc* kzalloc (size_t,int ) ;
 int kzfree (struct shash_desc*) ;
 scalar_t__ memcmp (void*,int ,size_t) ;
 int pefile_digest_pe_contents (void const*,unsigned int,struct pefile_context*,struct shash_desc*) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int pefile_digest_pe(const void *pebuf, unsigned int pelen,
       struct pefile_context *ctx)
{
 struct crypto_shash *tfm;
 struct shash_desc *desc;
 size_t digest_size, desc_size;
 void *digest;
 int ret;

 kenter(",%s", ctx->digest_algo);




 tfm = crypto_alloc_shash(ctx->digest_algo, 0, 0);
 if (IS_ERR(tfm))
  return (PTR_ERR(tfm) == -ENOENT) ? -ENOPKG : PTR_ERR(tfm);

 desc_size = crypto_shash_descsize(tfm) + sizeof(*desc);
 digest_size = crypto_shash_digestsize(tfm);

 if (digest_size != ctx->digest_len) {
  pr_debug("Digest size mismatch (%zx != %x)\n",
    digest_size, ctx->digest_len);
  ret = -EBADMSG;
  goto error_no_desc;
 }
 pr_debug("Digest: desc=%zu size=%zu\n", desc_size, digest_size);

 ret = -ENOMEM;
 desc = kzalloc(desc_size + digest_size, GFP_KERNEL);
 if (!desc)
  goto error_no_desc;

 desc->tfm = tfm;
 ret = crypto_shash_init(desc);
 if (ret < 0)
  goto error;

 ret = pefile_digest_pe_contents(pebuf, pelen, ctx, desc);
 if (ret < 0)
  goto error;

 digest = (void *)desc + desc_size;
 ret = crypto_shash_final(desc, digest);
 if (ret < 0)
  goto error;

 pr_debug("Digest calc = [%*ph]\n", ctx->digest_len, digest);




 if (memcmp(digest, ctx->digest, ctx->digest_len) != 0) {
  pr_debug("Digest mismatch\n");
  ret = -EKEYREJECTED;
 } else {
  pr_debug("The digests match!\n");
 }

error:
 kzfree(desc);
error_no_desc:
 crypto_free_shash(tfm);
 kleave(" = %d", ret);
 return ret;
}
