
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_alg {int dummy; } ;


 int CRYPTO_ALG_TESTED ;
 int ELIBBAD ;
 struct crypto_alg* ERR_PTR (int ) ;
 struct crypto_alg* __crypto_alg_lookup (char const*,int,int) ;
 int crypto_alg_sem ;
 int crypto_is_larval (struct crypto_alg*) ;
 int crypto_mod_put (struct crypto_alg*) ;
 int down_read (int *) ;
 int up_read (int *) ;

__attribute__((used)) static struct crypto_alg *crypto_alg_lookup(const char *name, u32 type,
         u32 mask)
{
 struct crypto_alg *alg;
 u32 test = 0;

 if (!((type | mask) & CRYPTO_ALG_TESTED))
  test |= CRYPTO_ALG_TESTED;

 down_read(&crypto_alg_sem);
 alg = __crypto_alg_lookup(name, type | test, mask | test);
 if (!alg && test) {
  alg = __crypto_alg_lookup(name, type, mask);
  if (alg && !crypto_is_larval(alg)) {

   crypto_mod_put(alg);
   alg = ERR_PTR(-ELIBBAD);
  }
 }
 up_read(&crypto_alg_sem);

 return alg;
}
