
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {struct crypto_alg* __crt_alg; } ;
struct crypto_rng {TYPE_1__ base; } ;
struct crypto_alg {int dummy; } ;
struct TYPE_4__ {int (* seed ) (struct crypto_rng*,int const*,unsigned int) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__* crypto_rng_alg (struct crypto_rng*) ;
 int crypto_stats_get (struct crypto_alg*) ;
 int crypto_stats_rng_seed (struct crypto_alg*,int) ;
 int get_random_bytes_wait (int *,unsigned int) ;
 int * kmalloc (unsigned int,int ) ;
 int kzfree (int *) ;
 int stub1 (struct crypto_rng*,int const*,unsigned int) ;

int crypto_rng_reset(struct crypto_rng *tfm, const u8 *seed, unsigned int slen)
{
 struct crypto_alg *alg = tfm->base.__crt_alg;
 u8 *buf = ((void*)0);
 int err;

 crypto_stats_get(alg);
 if (!seed && slen) {
  buf = kmalloc(slen, GFP_KERNEL);
  if (!buf)
   return -ENOMEM;

  err = get_random_bytes_wait(buf, slen);
  if (err)
   goto out;
  seed = buf;
 }

 err = crypto_rng_alg(tfm)->seed(tfm, seed, slen);
 crypto_stats_rng_seed(alg, err);
out:
 kzfree(buf);
 return err;
}
