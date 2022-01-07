; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_time.c_itimer_next_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_time.c_itimer_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@time_travel_mode = common dso_local global i64 0, align 8
@TT_MODE_OFF = common dso_local global i64 0, align 8
@TT_TMR_ONESHOT = common dso_local global i32 0, align 4
@time_travel_time = common dso_local global i64 0, align 8
@TT_MODE_INFCPU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @itimer_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @itimer_next_event(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.clock_event_device*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = add i64 %6, 1
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* @time_travel_mode, align 8
  %9 = load i64, i64* @TT_MODE_OFF, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* @TT_TMR_ONESHOT, align 4
  %13 = call i32 @time_travel_set_timer_mode(i32 %12)
  %14 = load i64, i64* @time_travel_time, align 8
  %15 = load i64, i64* %4, align 8
  %16 = add i64 %14, %15
  %17 = call i32 @time_travel_set_timer_expiry(i64 %16)
  br label %18

18:                                               ; preds = %11, %2
  %19 = load i64, i64* @time_travel_mode, align 8
  %20 = load i64, i64* @TT_MODE_INFCPU, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @os_timer_one_shot(i64 %23)
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @time_travel_set_timer_mode(i32) #1

declare dso_local i32 @time_travel_set_timer_expiry(i64) #1

declare dso_local i32 @os_timer_one_shot(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
