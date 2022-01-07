; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_time.c_itimer_set_periodic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_time.c_itimer_set_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@time_travel_mode = common dso_local global i64 0, align 8
@TT_MODE_OFF = common dso_local global i64 0, align 8
@TT_TMR_PERIODIC = common dso_local global i32 0, align 4
@time_travel_time = common dso_local global i64 0, align 8
@TT_MODE_INFCPU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_event_device*)* @itimer_set_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @itimer_set_periodic(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  %3 = alloca i64, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %4 = load i64, i64* @NSEC_PER_SEC, align 8
  %5 = load i64, i64* @HZ, align 8
  %6 = udiv i64 %4, %5
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* @time_travel_mode, align 8
  %8 = load i64, i64* @TT_MODE_OFF, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load i32, i32* @TT_TMR_PERIODIC, align 4
  %12 = call i32 @time_travel_set_timer_mode(i32 %11)
  %13 = load i64, i64* @time_travel_time, align 8
  %14 = load i64, i64* %3, align 8
  %15 = add i64 %13, %14
  %16 = call i32 @time_travel_set_timer_expiry(i64 %15)
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @time_travel_set_timer_interval(i64 %17)
  br label %19

19:                                               ; preds = %10, %1
  %20 = load i64, i64* @time_travel_mode, align 8
  %21 = load i64, i64* @TT_MODE_INFCPU, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @os_timer_set_interval(i64 %24)
  br label %26

26:                                               ; preds = %23, %19
  ret i32 0
}

declare dso_local i32 @time_travel_set_timer_mode(i32) #1

declare dso_local i32 @time_travel_set_timer_expiry(i64) #1

declare dso_local i32 @time_travel_set_timer_interval(i64) #1

declare dso_local i32 @os_timer_set_interval(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
