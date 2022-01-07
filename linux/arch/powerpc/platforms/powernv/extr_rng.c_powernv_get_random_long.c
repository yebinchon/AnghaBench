
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powernv_rng {int regs; } ;


 struct powernv_rng* get_cpu_var (int ) ;
 int in_be64 (int ) ;
 int powernv_rng ;
 int put_cpu_var (struct powernv_rng*) ;
 unsigned long rng_whiten (struct powernv_rng*,int ) ;

int powernv_get_random_long(unsigned long *v)
{
 struct powernv_rng *rng;

 rng = get_cpu_var(powernv_rng);

 *v = rng_whiten(rng, in_be64(rng->regs));

 put_cpu_var(rng);

 return 1;
}
