
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_type {int dummy; } ;
typedef void crypto_alg ;


 int EAGAIN ;
 int EINTR ;
 void* ERR_PTR (int) ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 void* crypto_create_tfm (void*,struct crypto_type const*) ;
 void* crypto_find_alg (char const*,struct crypto_type const*,int ,int ) ;
 int crypto_mod_put (void*) ;
 int current ;
 scalar_t__ fatal_signal_pending (int ) ;

void *crypto_alloc_tfm(const char *alg_name,
         const struct crypto_type *frontend, u32 type, u32 mask)
{
 void *tfm;
 int err;

 for (;;) {
  struct crypto_alg *alg;

  alg = crypto_find_alg(alg_name, frontend, type, mask);
  if (IS_ERR(alg)) {
   err = PTR_ERR(alg);
   goto err;
  }

  tfm = crypto_create_tfm(alg, frontend);
  if (!IS_ERR(tfm))
   return tfm;

  crypto_mod_put(alg);
  err = PTR_ERR(tfm);

err:
  if (err != -EAGAIN)
   break;
  if (fatal_signal_pending(current)) {
   err = -EINTR;
   break;
  }
 }

 return ERR_PTR(err);
}
