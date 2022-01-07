
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_alg {int dummy; } ;


 int IS_ERR (struct crypto_alg*) ;
 struct crypto_alg* crypto_alg_mod_lookup (char const*,int ,int ) ;
 int crypto_mod_put (struct crypto_alg*) ;

int crypto_has_alg(const char *name, u32 type, u32 mask)
{
 int ret = 0;
 struct crypto_alg *alg = crypto_alg_mod_lookup(name, type, mask);

 if (!IS_ERR(alg)) {
  crypto_mod_put(alg);
  ret = 1;
 }

 return ret;
}
