
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUFREQ_TRANSITION_NOTIFIER ;
 int CPUHP_AP_X86_KVM_CLK_ONLINE ;
 int X86_FEATURE_CONSTANT_TSC ;
 int X86_HYPER_MS_HYPERV ;
 int boot_cpu_has (int ) ;
 int clear_hv_tscchange_cb () ;
 int cpufreq_unregister_notifier (int *,int ) ;
 int cpuhp_remove_state_nocalls (int ) ;
 int free_percpu (int ) ;
 scalar_t__ hypervisor_is_type (int ) ;
 int kmem_cache_destroy (int ) ;
 int kvm_guest_cbs ;
 int kvm_lapic_exit () ;
 int kvm_mmu_module_exit () ;
 int * kvm_x86_ops ;
 int kvmclock_cpufreq_notifier_block ;
 int perf_unregister_guest_info_callbacks (int *) ;
 int pvclock_gtod_notifier ;
 int pvclock_gtod_unregister_notifier (int *) ;
 int shared_msrs ;
 int x86_fpu_cache ;

void kvm_arch_exit(void)
{




 kvm_lapic_exit();
 perf_unregister_guest_info_callbacks(&kvm_guest_cbs);

 if (!boot_cpu_has(X86_FEATURE_CONSTANT_TSC))
  cpufreq_unregister_notifier(&kvmclock_cpufreq_notifier_block,
         CPUFREQ_TRANSITION_NOTIFIER);
 cpuhp_remove_state_nocalls(CPUHP_AP_X86_KVM_CLK_ONLINE);



 kvm_x86_ops = ((void*)0);
 kvm_mmu_module_exit();
 free_percpu(shared_msrs);
 kmem_cache_destroy(x86_fpu_cache);
}
