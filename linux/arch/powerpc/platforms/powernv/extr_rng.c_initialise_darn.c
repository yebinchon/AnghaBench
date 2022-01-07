
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* get_random_seed ) (unsigned long*) ;} ;


 int CPU_FTR_ARCH_300 ;
 int EIO ;
 int ENODEV ;
 int cpu_has_feature (int ) ;
 scalar_t__ powernv_get_random_darn (unsigned long*) ;
 TYPE_1__ ppc_md ;
 int pr_warn (char*) ;

__attribute__((used)) static int initialise_darn(void)
{
 unsigned long val;
 int i;

 if (!cpu_has_feature(CPU_FTR_ARCH_300))
  return -ENODEV;

 for (i = 0; i < 10; i++) {
  if (powernv_get_random_darn(&val)) {
   ppc_md.get_random_seed = powernv_get_random_darn;
   return 0;
  }
 }

 pr_warn("Unable to use DARN for get_random_seed()\n");

 return -EIO;
}
