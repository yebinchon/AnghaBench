
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simd_aead_alg {int dummy; } ;


 int CRYPTO_MAX_ALG_NAME ;
 int ENAMETOOLONG ;
 struct simd_aead_alg* ERR_PTR (int ) ;
 struct simd_aead_alg* simd_aead_create_compat (char const*,char*,char const*) ;
 int snprintf (char*,int,char*,char const*) ;

struct simd_aead_alg *simd_aead_create(const char *algname,
           const char *basename)
{
 char drvname[CRYPTO_MAX_ALG_NAME];

 if (snprintf(drvname, CRYPTO_MAX_ALG_NAME, "simd-%s", basename) >=
     CRYPTO_MAX_ALG_NAME)
  return ERR_PTR(-ENAMETOOLONG);

 return simd_aead_create_compat(algname, drvname, basename);
}
