
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct public_key {char* pkey_algo; } ;


 int CRYPTO_MAX_ALG_NAME ;
 int EINVAL ;
 int ENOPKG ;
 int snprintf (char*,int,char*,char*,...) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static
int software_key_determine_akcipher(const char *encoding,
        const char *hash_algo,
        const struct public_key *pkey,
        char alg_name[CRYPTO_MAX_ALG_NAME])
{
 int n;

 if (strcmp(encoding, "pkcs1") == 0) {




  if (!hash_algo)
   n = snprintf(alg_name, CRYPTO_MAX_ALG_NAME,
         "pkcs1pad(%s)",
         pkey->pkey_algo);
  else
   n = snprintf(alg_name, CRYPTO_MAX_ALG_NAME,
         "pkcs1pad(%s,%s)",
         pkey->pkey_algo, hash_algo);
  return n >= CRYPTO_MAX_ALG_NAME ? -EINVAL : 0;
 }

 if (strcmp(encoding, "raw") == 0) {
  strcpy(alg_name, pkey->pkey_algo);
  return 0;
 }

 return -ENOPKG;
}
