
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int (* cpu_restore ) () ;} ;


 int CPU_FTR_ARCH_300 ;
 int OPAL_REINIT_CPUS_HILE_BE ;
 int OPAL_REINIT_CPUS_HILE_LE ;
 int OPAL_REINIT_CPUS_MMU_HASH ;
 int OPAL_REINIT_CPUS_MMU_RADIX ;
 TYPE_1__* cur_cpu_spec ;
 scalar_t__ early_cpu_has_feature (int ) ;
 scalar_t__ early_radix_enabled () ;
 int opal_reinit_cpus (int ) ;
 int stub1 () ;

void opal_configure_cores(void)
{
 u64 reinit_flags = 0;
 reinit_flags |= OPAL_REINIT_CPUS_HILE_LE;







 if (early_cpu_has_feature(CPU_FTR_ARCH_300)) {
  reinit_flags |= OPAL_REINIT_CPUS_MMU_HASH;
  if (early_radix_enabled())
   reinit_flags |= OPAL_REINIT_CPUS_MMU_RADIX;
 }

 opal_reinit_cpus(reinit_flags);


 if (cur_cpu_spec->cpu_restore)
  cur_cpu_spec->cpu_restore();
}
