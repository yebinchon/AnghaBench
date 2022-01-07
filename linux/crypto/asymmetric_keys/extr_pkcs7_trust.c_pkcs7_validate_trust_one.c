
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x509_certificate {int seen; int verified; struct x509_certificate* signer; int index; struct public_key_signature* sig; int * skid; int * id; } ;
struct public_key_signature {int ** auth_ids; } ;
struct pkcs7_signed_info {struct x509_certificate* signer; struct public_key_signature* sig; int index; scalar_t__ unsupported_crypto; } ;
struct pkcs7_message {int dummy; } ;
struct key {int dummy; } ;


 int EKEYREJECTED ;
 int ENOKEY ;
 int ENOMEM ;
 int ENOPKG ;
 struct key* ERR_PTR (int) ;
 int IS_ERR (struct key*) ;
 int PTR_ERR (struct key*) ;
 struct key* find_asymmetric_key (struct key*,int *,int *,int) ;
 int kenter (char*,int ) ;
 int key_put (struct key*) ;
 int key_serial (struct key*) ;
 int kleave (char*,...) ;
 int might_sleep () ;
 int pr_devel (char*,int ,int ,...) ;
 int verify_signature (struct key*,struct public_key_signature*) ;

__attribute__((used)) static int pkcs7_validate_trust_one(struct pkcs7_message *pkcs7,
        struct pkcs7_signed_info *sinfo,
        struct key *trust_keyring)
{
 struct public_key_signature *sig = sinfo->sig;
 struct x509_certificate *x509, *last = ((void*)0), *p;
 struct key *key;
 int ret;

 kenter(",%u,", sinfo->index);

 if (sinfo->unsupported_crypto) {
  kleave(" = -ENOPKG [cached]");
  return -ENOPKG;
 }

 for (x509 = sinfo->signer; x509; x509 = x509->signer) {
  if (x509->seen) {
   if (x509->verified)
    goto verified;
   kleave(" = -ENOKEY [cached]");
   return -ENOKEY;
  }
  x509->seen = 1;




  key = find_asymmetric_key(trust_keyring,
       x509->id, x509->skid, 0);
  if (!IS_ERR(key)) {





   pr_devel("sinfo %u: Cert %u as key %x\n",
     sinfo->index, x509->index, key_serial(key));
   goto matched;
  }
  if (key == ERR_PTR(-ENOMEM))
   return -ENOMEM;




  if (x509->signer == x509) {
   kleave(" = -ENOKEY [unknown self-signed]");
   return -ENOKEY;
  }

  might_sleep();
  last = x509;
  sig = last->sig;
 }




 if (last && (last->sig->auth_ids[0] || last->sig->auth_ids[1])) {
  key = find_asymmetric_key(trust_keyring,
       last->sig->auth_ids[0],
       last->sig->auth_ids[1],
       0);
  if (!IS_ERR(key)) {
   x509 = last;
   pr_devel("sinfo %u: Root cert %u signer is key %x\n",
     sinfo->index, x509->index, key_serial(key));
   goto matched;
  }
  if (PTR_ERR(key) != -ENOKEY)
   return PTR_ERR(key);
 }




 key = find_asymmetric_key(trust_keyring,
      sinfo->sig->auth_ids[0], ((void*)0), 0);
 if (!IS_ERR(key)) {
  pr_devel("sinfo %u: Direct signer is key %x\n",
    sinfo->index, key_serial(key));
  x509 = ((void*)0);
  sig = sinfo->sig;
  goto matched;
 }
 if (PTR_ERR(key) != -ENOKEY)
  return PTR_ERR(key);

 kleave(" = -ENOKEY [no backref]");
 return -ENOKEY;

matched:
 ret = verify_signature(key, sig);
 key_put(key);
 if (ret < 0) {
  if (ret == -ENOMEM)
   return ret;
  kleave(" = -EKEYREJECTED [verify %d]", ret);
  return -EKEYREJECTED;
 }

verified:
 if (x509) {
  x509->verified = 1;
  for (p = sinfo->signer; p != x509; p = p->signer)
   p->verified = 1;
 }
 kleave(" = 0");
 return 0;
}
