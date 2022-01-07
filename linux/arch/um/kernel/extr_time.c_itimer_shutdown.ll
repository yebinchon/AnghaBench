; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_time.c_itimer_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_time.c_itimer_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@time_travel_mode = common dso_local global i64 0, align 8
@TT_MODE_OFF = common dso_local global i64 0, align 8
@TT_TMR_DISABLED = common dso_local global i32 0, align 4
@TT_MODE_INFCPU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_event_device*)* @itimer_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @itimer_shutdown(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %3 = load i64, i64* @time_travel_mode, align 8
  %4 = load i64, i64* @TT_MODE_OFF, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @TT_TMR_DISABLED, align 4
  %8 = call i32 @time_travel_set_timer_mode(i32 %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i64, i64* @time_travel_mode, align 8
  %11 = load i64, i64* @TT_MODE_INFCPU, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 (...) @os_timer_disable()
  br label %15

15:                                               ; preds = %13, %9
  ret i32 0
}

declare dso_local i32 @time_travel_set_timer_mode(i32) #1

declare dso_local i32 @os_timer_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
