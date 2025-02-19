; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_umwait.c_umwait_update_control_msr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_umwait.c_umwait_update_control_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_IA32_UMWAIT_CONTROL = common dso_local global i32 0, align 4
@umwait_control_cached = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @umwait_update_control_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umwait_update_control_msr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (...) @lockdep_assert_irqs_disabled()
  %4 = load i32, i32* @MSR_IA32_UMWAIT_CONTROL, align 4
  %5 = load i32, i32* @umwait_control_cached, align 4
  %6 = call i32 @READ_ONCE(i32 %5)
  %7 = call i32 @wrmsr(i32 %4, i32 %6, i32 0)
  ret void
}

declare dso_local i32 @lockdep_assert_irqs_disabled(...) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
