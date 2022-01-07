
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct drbg_state {int seeded; int reseed_ctr; TYPE_1__* d_ops; } ;
struct TYPE_2__ {int (* update ) (struct drbg_state*,struct list_head*,int) ;} ;


 int stub1 (struct drbg_state*,struct list_head*,int) ;

__attribute__((used)) static inline int __drbg_seed(struct drbg_state *drbg, struct list_head *seed,
         int reseed)
{
 int ret = drbg->d_ops->update(drbg, seed, reseed);

 if (ret)
  return ret;

 drbg->seeded = 1;

 drbg->reseed_ctr = 1;

 return ret;
}
