
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max_freq; } ;
struct cpufreq_policy {TYPE_1__ cpuinfo; } ;
typedef int policy ;


 int CPUFREQ_TRANSITION_NOTIFIER ;
 int CPUHP_AP_X86_KVM_CLK_ONLINE ;
 int X86_FEATURE_CONSTANT_TSC ;
 int boot_cpu_has (int ) ;
 int cpufreq_get_policy (struct cpufreq_policy*,int) ;
 int cpufreq_register_notifier (int *,int ) ;
 int cpuhp_setup_state (int ,char*,int ,int ) ;
 int get_cpu () ;
 int kvmclock_cpu_down_prep ;
 int kvmclock_cpu_online ;
 int kvmclock_cpufreq_notifier_block ;
 scalar_t__ max_tsc_khz ;
 int memset (struct cpufreq_policy*,int ,int) ;
 int put_cpu () ;
 scalar_t__ tsc_khz ;

__attribute__((used)) static void kvm_timer_init(void)
{
 max_tsc_khz = tsc_khz;

 if (!boot_cpu_has(X86_FEATURE_CONSTANT_TSC)) {
  cpufreq_register_notifier(&kvmclock_cpufreq_notifier_block,
       CPUFREQ_TRANSITION_NOTIFIER);
 }

 cpuhp_setup_state(CPUHP_AP_X86_KVM_CLK_ONLINE, "x86/kvm/clk:online",
     kvmclock_cpu_online, kvmclock_cpu_down_prep);
}
