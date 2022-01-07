; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-powernv.c_snooze_loop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-powernv.c_snooze_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { i32 }
%struct.cpuidle_driver = type { i32 }

@TIF_POLLING_NRFLAG = common dso_local global i32 0, align 4
@snooze_timeout_en = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* @snooze_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snooze_loop(%struct.cpuidle_device* %0, %struct.cpuidle_driver* %1, i32 %2) #0 {
  %4 = alloca %struct.cpuidle_device*, align 8
  %5 = alloca %struct.cpuidle_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %4, align 8
  store %struct.cpuidle_driver* %1, %struct.cpuidle_driver** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @TIF_POLLING_NRFLAG, align 4
  %9 = call i32 @set_thread_flag(i32 %8)
  %10 = call i32 (...) @local_irq_enable()
  %11 = call i64 (...) @get_tb()
  %12 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %13 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @get_snooze_timeout(%struct.cpuidle_device* %12, %struct.cpuidle_driver* %13, i32 %14)
  %16 = add nsw i64 %11, %15
  store i64 %16, i64* %7, align 8
  %17 = call i32 (...) @ppc64_runlatch_off()
  %18 = call i32 (...) @HMT_very_low()
  br label %19

19:                                               ; preds = %35, %3
  %20 = call i32 (...) @need_resched()
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load i32, i32* @snooze_timeout_en, align 4
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = call i64 (...) @get_tb()
  %29 = load i64, i64* %7, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @TIF_POLLING_NRFLAG, align 4
  %33 = call i32 @clear_thread_flag(i32 %32)
  %34 = call i32 (...) @smp_mb()
  br label %36

35:                                               ; preds = %27, %23
  br label %19

36:                                               ; preds = %31, %19
  %37 = call i32 (...) @HMT_medium()
  %38 = call i32 (...) @ppc64_runlatch_on()
  %39 = load i32, i32* @TIF_POLLING_NRFLAG, align 4
  %40 = call i32 @clear_thread_flag(i32 %39)
  %41 = call i32 (...) @local_irq_disable()
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @set_thread_flag(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i64 @get_tb(...) #1

declare dso_local i64 @get_snooze_timeout(%struct.cpuidle_device*, %struct.cpuidle_driver*, i32) #1

declare dso_local i32 @ppc64_runlatch_off(...) #1

declare dso_local i32 @HMT_very_low(...) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @clear_thread_flag(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @HMT_medium(...) #1

declare dso_local i32 @ppc64_runlatch_on(...) #1

declare dso_local i32 @local_irq_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
