; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_exit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kvm_guest_cbs = common dso_local global i32 0, align 4
@X86_FEATURE_CONSTANT_TSC = common dso_local global i32 0, align 4
@kvmclock_cpufreq_notifier_block = common dso_local global i32 0, align 4
@CPUFREQ_TRANSITION_NOTIFIER = common dso_local global i32 0, align 4
@CPUHP_AP_X86_KVM_CLK_ONLINE = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global i32* null, align 8
@shared_msrs = common dso_local global i32 0, align 4
@x86_fpu_cache = common dso_local global i32 0, align 4
@X86_HYPER_MS_HYPERV = common dso_local global i32 0, align 4
@pvclock_gtod_notifier = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arch_exit() #0 {
  %1 = call i32 (...) @kvm_lapic_exit()
  %2 = call i32 @perf_unregister_guest_info_callbacks(i32* @kvm_guest_cbs)
  %3 = load i32, i32* @X86_FEATURE_CONSTANT_TSC, align 4
  %4 = call i32 @boot_cpu_has(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @CPUFREQ_TRANSITION_NOTIFIER, align 4
  %8 = call i32 @cpufreq_unregister_notifier(i32* @kvmclock_cpufreq_notifier_block, i32 %7)
  br label %9

9:                                                ; preds = %6, %0
  %10 = load i32, i32* @CPUHP_AP_X86_KVM_CLK_ONLINE, align 4
  %11 = call i32 @cpuhp_remove_state_nocalls(i32 %10)
  store i32* null, i32** @kvm_x86_ops, align 8
  %12 = call i32 (...) @kvm_mmu_module_exit()
  %13 = load i32, i32* @shared_msrs, align 4
  %14 = call i32 @free_percpu(i32 %13)
  %15 = load i32, i32* @x86_fpu_cache, align 4
  %16 = call i32 @kmem_cache_destroy(i32 %15)
  ret void
}

declare dso_local i32 @kvm_lapic_exit(...) #1

declare dso_local i32 @perf_unregister_guest_info_callbacks(i32*) #1

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local i32 @cpufreq_unregister_notifier(i32*, i32) #1

declare dso_local i32 @cpuhp_remove_state_nocalls(i32) #1

declare dso_local i32 @kvm_mmu_module_exit(...) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
