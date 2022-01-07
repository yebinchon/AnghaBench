; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-stm32.c_stm32_clock_event_set_next_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-stm32.c_stm32_clock_event_set_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }
%struct.timer_of = type { i32 }

@TIM_CNT = common dso_local global i64 0, align 8
@TIM_CCR1 = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4
@TIM_DIER_CC1IE = common dso_local global i64 0, align 8
@TIM_DIER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @stm32_clock_event_set_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_clock_event_set_next_event(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.clock_event_device*, align 8
  %6 = alloca %struct.timer_of*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %5, align 8
  %9 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %10 = call %struct.timer_of* @to_timer_of(%struct.clock_event_device* %9)
  store %struct.timer_of* %10, %struct.timer_of** %6, align 8
  %11 = load %struct.timer_of*, %struct.timer_of** %6, align 8
  %12 = call i64 @timer_of_base(%struct.timer_of* %11)
  %13 = load i64, i64* @TIM_CNT, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @readl_relaxed(i64 %14)
  %16 = load i64, i64* %4, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.timer_of*, %struct.timer_of** %6, align 8
  %20 = call i64 @timer_of_base(%struct.timer_of* %19)
  %21 = load i64, i64* @TIM_CCR1, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel_relaxed(i64 %18, i64 %22)
  %24 = load %struct.timer_of*, %struct.timer_of** %6, align 8
  %25 = call i64 @timer_of_base(%struct.timer_of* %24)
  %26 = load i64, i64* @TIM_CNT, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i64 @readl_relaxed(i64 %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = sub i64 %29, %30
  %32 = load i64, i64* %4, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @ETIME, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %44

37:                                               ; preds = %2
  %38 = load i64, i64* @TIM_DIER_CC1IE, align 8
  %39 = load %struct.timer_of*, %struct.timer_of** %6, align 8
  %40 = call i64 @timer_of_base(%struct.timer_of* %39)
  %41 = load i64, i64* @TIM_DIER, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel_relaxed(i64 %38, i64 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %37, %34
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.timer_of* @to_timer_of(%struct.clock_event_device*) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i64 @timer_of_base(%struct.timer_of*) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
