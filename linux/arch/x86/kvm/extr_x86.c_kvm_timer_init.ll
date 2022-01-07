; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_timer_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tsc_khz = common dso_local global i64 0, align 8
@max_tsc_khz = common dso_local global i64 0, align 8
@X86_FEATURE_CONSTANT_TSC = common dso_local global i32 0, align 4
@kvmclock_cpufreq_notifier_block = common dso_local global i32 0, align 4
@CPUFREQ_TRANSITION_NOTIFIER = common dso_local global i32 0, align 4
@CPUHP_AP_X86_KVM_CLK_ONLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"x86/kvm/clk:online\00", align 1
@kvmclock_cpu_online = common dso_local global i32 0, align 4
@kvmclock_cpu_down_prep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kvm_timer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_timer_init() #0 {
  %1 = load i64, i64* @tsc_khz, align 8
  store i64 %1, i64* @max_tsc_khz, align 8
  %2 = load i32, i32* @X86_FEATURE_CONSTANT_TSC, align 4
  %3 = call i32 @boot_cpu_has(i32 %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @CPUFREQ_TRANSITION_NOTIFIER, align 4
  %7 = call i32 @cpufreq_register_notifier(i32* @kvmclock_cpufreq_notifier_block, i32 %6)
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i32, i32* @CPUHP_AP_X86_KVM_CLK_ONLINE, align 4
  %10 = load i32, i32* @kvmclock_cpu_online, align 4
  %11 = load i32, i32* @kvmclock_cpu_down_prep, align 4
  %12 = call i32 @cpuhp_setup_state(i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  ret void
}

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local i32 @cpufreq_register_notifier(i32*, i32) #1

declare dso_local i32 @cpuhp_setup_state(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
