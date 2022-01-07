
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_FTR_ARCH_300 ;
 int MAX_SMT_THREADS ;
 int MAX_SUBCORES ;
 scalar_t__ cpu_has_feature (int ) ;
 int dynamic_mt_modes ;
 int roundup_pow_of_two (int) ;
 int threads_per_subcore ;

__attribute__((used)) static bool subcore_config_ok(int n_subcores, int n_threads)
{




 if (cpu_has_feature(CPU_FTR_ARCH_300))
  return n_subcores <= 4 && n_threads == 1;


 if (n_subcores > 1 && threads_per_subcore < MAX_SMT_THREADS)
  return 0;
 if (n_subcores > MAX_SUBCORES)
  return 0;
 if (n_subcores > 1) {
  if (!(dynamic_mt_modes & 2))
   n_subcores = 4;
  if (n_subcores > 2 && !(dynamic_mt_modes & 4))
   return 0;
 }

 return n_subcores * roundup_pow_of_two(n_threads) <= MAX_SMT_THREADS;
}
