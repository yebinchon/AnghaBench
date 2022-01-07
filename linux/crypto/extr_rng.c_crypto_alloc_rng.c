
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_rng {int dummy; } ;


 struct crypto_rng* crypto_alloc_tfm (char const*,int *,int ,int ) ;
 int crypto_rng_type ;

struct crypto_rng *crypto_alloc_rng(const char *alg_name, u32 type, u32 mask)
{
 return crypto_alloc_tfm(alg_name, &crypto_rng_type, type, mask);
}
