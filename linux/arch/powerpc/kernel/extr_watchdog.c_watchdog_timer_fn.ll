; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_watchdog.c_watchdog_timer_fn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_watchdog.c_watchdog_timer_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hrtimer = type { i32 }

@watchdog_enabled = common dso_local global i32 0, align 4
@NMI_WATCHDOG_ENABLED = common dso_local global i32 0, align 4
@HRTIMER_NORESTART = common dso_local global i32 0, align 4
@watchdog_cpumask = common dso_local global i32 0, align 4
@wd_timer_period_ms = common dso_local global i32 0, align 4
@HRTIMER_RESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hrtimer*)* @watchdog_timer_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_timer_fn(%struct.hrtimer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hrtimer*, align 8
  %4 = alloca i32, align 4
  store %struct.hrtimer* %0, %struct.hrtimer** %3, align 8
  %5 = call i32 (...) @smp_processor_id()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @watchdog_enabled, align 4
  %7 = load i32, i32* @NMI_WATCHDOG_ENABLED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @HRTIMER_NORESTART, align 4
  store i32 %11, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @cpumask_test_cpu(i32 %13, i32* @watchdog_cpumask)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @HRTIMER_NORESTART, align 4
  store i32 %17, i32* %2, align 4
  br label %26

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @watchdog_timer_interrupt(i32 %19)
  %21 = load %struct.hrtimer*, %struct.hrtimer** %3, align 8
  %22 = load i32, i32* @wd_timer_period_ms, align 4
  %23 = call i32 @ms_to_ktime(i32 %22)
  %24 = call i32 @hrtimer_forward_now(%struct.hrtimer* %21, i32 %23)
  %25 = load i32, i32* @HRTIMER_RESTART, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %18, %16, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @watchdog_timer_interrupt(i32) #1

declare dso_local i32 @hrtimer_forward_now(%struct.hrtimer*, i32) #1

declare dso_local i32 @ms_to_ktime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
