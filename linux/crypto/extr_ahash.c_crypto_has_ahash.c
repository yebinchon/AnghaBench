
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int crypto_ahash_type ;
 int crypto_type_has_alg (char const*,int *,int ,int ) ;

int crypto_has_ahash(const char *alg_name, u32 type, u32 mask)
{
 return crypto_type_has_alg(alg_name, &crypto_ahash_type, type, mask);
}
