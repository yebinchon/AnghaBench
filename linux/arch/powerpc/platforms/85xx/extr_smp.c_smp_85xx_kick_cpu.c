
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cpu_start; } ;
struct TYPE_3__ {int (* cpu_up_prepare ) (int) ;} ;


 int CPU_FTR_SMT ;
 int EINVAL ;
 int ENOENT ;
 int INVALID_THREAD_HWID ;
 int WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int booting_thread_hwid ;
 int cpu_first_thread_sibling (int) ;
 int cpu_has_feature (int ) ;
 scalar_t__ cpu_online (int) ;
 int cpu_thread_in_core (int) ;
 int generic_set_cpu_up (int) ;
 int num_possible_cpus () ;
 TYPE_2__** paca_ptrs ;
 int pr_debug (char*,int) ;
 int pr_err (char*) ;
 TYPE_1__* qoriq_pm_ops ;
 int smp_85xx_start_cpu (int) ;
 int smp_call_function_single (int,int ,int*,int) ;
 int stub1 (int) ;
 int threads_per_core ;
 int wake_hw_thread ;

__attribute__((used)) static int smp_85xx_kick_cpu(int nr)
{
 int ret = 0;




 WARN_ON(nr < 0 || nr >= num_possible_cpus());

 pr_debug("kick CPU #%d\n", nr);
 ret = smp_85xx_start_cpu(nr);
 if (ret)
  return ret;

 generic_set_cpu_up(nr);

 return ret;

}
