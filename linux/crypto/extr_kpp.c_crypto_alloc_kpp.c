
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_kpp {int dummy; } ;


 struct crypto_kpp* crypto_alloc_tfm (char const*,int *,int ,int ) ;
 int crypto_kpp_type ;

struct crypto_kpp *crypto_alloc_kpp(const char *alg_name, u32 type, u32 mask)
{
 return crypto_alloc_tfm(alg_name, &crypto_kpp_type, type, mask);
}
