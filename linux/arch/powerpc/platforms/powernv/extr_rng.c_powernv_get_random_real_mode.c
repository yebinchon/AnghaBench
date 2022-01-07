
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powernv_rng {int regs_real; } ;


 int __raw_rm_readq (int ) ;
 int powernv_rng ;
 struct powernv_rng* raw_cpu_read (int ) ;
 unsigned long rng_whiten (struct powernv_rng*,int ) ;

int powernv_get_random_real_mode(unsigned long *v)
{
 struct powernv_rng *rng;

 rng = raw_cpu_read(powernv_rng);

 *v = rng_whiten(rng, __raw_rm_readq(rng->regs_real));

 return 1;
}
