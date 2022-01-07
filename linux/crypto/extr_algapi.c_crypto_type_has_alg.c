
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_type {int dummy; } ;
struct crypto_alg {int dummy; } ;


 int IS_ERR (struct crypto_alg*) ;
 struct crypto_alg* crypto_find_alg (char const*,struct crypto_type const*,int ,int ) ;
 int crypto_mod_put (struct crypto_alg*) ;

int crypto_type_has_alg(const char *name, const struct crypto_type *frontend,
   u32 type, u32 mask)
{
 int ret = 0;
 struct crypto_alg *alg = crypto_find_alg(name, frontend, type, mask);

 if (!IS_ERR(alg)) {
  crypto_mod_put(alg);
  ret = 1;
 }

 return ret;
}
