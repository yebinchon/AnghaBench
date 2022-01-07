
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_acomp {int dummy; } ;


 int crypto_acomp_type ;
 struct crypto_acomp* crypto_alloc_tfm (char const*,int *,int ,int ) ;

struct crypto_acomp *crypto_alloc_acomp(const char *alg_name, u32 type,
     u32 mask)
{
 return crypto_alloc_tfm(alg_name, &crypto_acomp_type, type, mask);
}
