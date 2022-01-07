; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-pseries.c_snooze_loop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-pseries.c_snooze_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i32 }
%struct.cpuidle_driver = type { i32 }

@TIF_POLLING_NRFLAG = common dso_local global i32 0, align 4
@snooze_timeout = common dso_local global i64 0, align 8
@snooze_timeout_en = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* @snooze_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snooze_loop(%struct.cpuidle_device* %0, %struct.cpuidle_driver* %1, i32 %2) #0 {
  %4 = alloca %struct.cpuidle_device*, align 8
  %5 = alloca %struct.cpuidle_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %4, align 8
  store %struct.cpuidle_driver* %1, %struct.cpuidle_driver** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @TIF_POLLING_NRFLAG, align 4
  %10 = call i32 @set_thread_flag(i32 %9)
  %11 = call i32 @idle_loop_prolog(i64* %7)
  %12 = call i32 (...) @local_irq_enable()
  %13 = call i64 (...) @get_tb()
  %14 = load i64, i64* @snooze_timeout, align 8
  %15 = add nsw i64 %13, %14
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %34, %3
  %17 = call i32 (...) @need_resched()
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = call i32 (...) @HMT_low()
  %22 = call i32 (...) @HMT_very_low()
  %23 = load i32, i32* @snooze_timeout_en, align 4
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = call i64 (...) @get_tb()
  %28 = load i64, i64* %8, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @TIF_POLLING_NRFLAG, align 4
  %32 = call i32 @clear_thread_flag(i32 %31)
  %33 = call i32 (...) @smp_mb()
  br label %35

34:                                               ; preds = %26, %20
  br label %16

35:                                               ; preds = %30, %16
  %36 = call i32 (...) @HMT_medium()
  %37 = load i32, i32* @TIF_POLLING_NRFLAG, align 4
  %38 = call i32 @clear_thread_flag(i32 %37)
  %39 = call i32 (...) @local_irq_disable()
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @idle_loop_epilog(i64 %40)
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @set_thread_flag(i32) #1

declare dso_local i32 @idle_loop_prolog(i64*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i64 @get_tb(...) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i32 @HMT_low(...) #1

declare dso_local i32 @HMT_very_low(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @clear_thread_flag(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @HMT_medium(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @idle_loop_epilog(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
