
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_tfm {int cra_flags; } ;
struct crypto_spawn {int dummy; } ;
struct crypto_alg {int cra_flags; } ;


 int EINVAL ;
 struct crypto_tfm* ERR_CAST (struct crypto_tfm*) ;
 struct crypto_tfm* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct crypto_tfm*) ;
 struct crypto_tfm* __crypto_alloc_tfm (struct crypto_tfm*,int,int) ;
 int crypto_mod_put (struct crypto_tfm*) ;
 struct crypto_tfm* crypto_spawn_alg (struct crypto_spawn*) ;
 scalar_t__ unlikely (int) ;

struct crypto_tfm *crypto_spawn_tfm(struct crypto_spawn *spawn, u32 type,
        u32 mask)
{
 struct crypto_alg *alg;
 struct crypto_tfm *tfm;

 alg = crypto_spawn_alg(spawn);
 if (IS_ERR(alg))
  return ERR_CAST(alg);

 tfm = ERR_PTR(-EINVAL);
 if (unlikely((alg->cra_flags ^ type) & mask))
  goto out_put_alg;

 tfm = __crypto_alloc_tfm(alg, type, mask);
 if (IS_ERR(tfm))
  goto out_put_alg;

 return tfm;

out_put_alg:
 crypto_mod_put(alg);
 return tfm;
}
