
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powernv_rng {int dummy; } ;


 struct powernv_rng* get_cpu_var (int ) ;
 int powernv_rng ;
 int put_cpu_var (struct powernv_rng*) ;

int powernv_hwrng_present(void)
{
 struct powernv_rng *rng;

 rng = get_cpu_var(powernv_rng);
 put_cpu_var(rng);
 return rng != ((void*)0);
}
