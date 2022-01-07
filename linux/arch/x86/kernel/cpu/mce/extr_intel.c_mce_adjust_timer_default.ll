; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_intel.c_mce_adjust_timer_default.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_intel.c_mce_adjust_timer_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmci_backoff_cnt = common dso_local global i32 0, align 4
@cmci_storm_state = common dso_local global i32 0, align 4
@CMCI_STORM_INTERVAL = common dso_local global i64 0, align 8
@cmci_storm_on_cpus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"CMCI storm subsided: switching to interrupt mode\0A\00", align 1
@CMCI_STORM_NONE = common dso_local global i32 0, align 4
@CMCI_POLL_INTERVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cmci_intel_adjust_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i32, i32* @cmci_backoff_cnt, align 4
  %5 = call i64 @this_cpu_read(i32 %4)
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32, i32* @cmci_storm_state, align 4
  %9 = call i32 @__this_cpu_read(i32 %8)
  %10 = icmp eq i32 %9, 129
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = call i32 (...) @mce_notify_irq()
  %13 = load i64, i64* @CMCI_STORM_INTERVAL, align 8
  store i64 %13, i64* %2, align 8
  br label %38

14:                                               ; preds = %7, %1
  %15 = load i32, i32* @cmci_storm_state, align 4
  %16 = call i32 @__this_cpu_read(i32 %15)
  switch i32 %16, label %36 [
    i32 129, label %17
    i32 128, label %25
  ]

17:                                               ; preds = %14
  %18 = load i32, i32* @cmci_storm_state, align 4
  %19 = call i32 @__this_cpu_write(i32 %18, i32 128)
  %20 = call i32 @atomic_sub_return(i32 1, i32* @cmci_storm_on_cpus)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 @pr_notice(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  br label %25

25:                                               ; preds = %14, %24
  %26 = call i32 @atomic_read(i32* @cmci_storm_on_cpus)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @cmci_storm_state, align 4
  %30 = load i32, i32* @CMCI_STORM_NONE, align 4
  %31 = call i32 @__this_cpu_write(i32 %29, i32 %30)
  %32 = call i32 @cmci_toggle_interrupt_mode(i32 1)
  %33 = call i32 (...) @cmci_recheck()
  br label %34

34:                                               ; preds = %28, %25
  %35 = load i64, i64* @CMCI_POLL_INTERVAL, align 8
  store i64 %35, i64* %2, align 8
  br label %38

36:                                               ; preds = %14
  %37 = load i64, i64* %3, align 8
  store i64 %37, i64* %2, align 8
  br label %38

38:                                               ; preds = %36, %34, %11
  %39 = load i64, i64* %2, align 8
  ret i64 %39
}

declare dso_local i64 @this_cpu_read(i32) #1

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local i32 @mce_notify_irq(...) #1

declare dso_local i32 @__this_cpu_write(i32, i32) #1

declare dso_local i32 @atomic_sub_return(i32, i32*) #1

declare dso_local i32 @pr_notice(i8*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @cmci_toggle_interrupt_mode(i32) #1

declare dso_local i32 @cmci_recheck(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
