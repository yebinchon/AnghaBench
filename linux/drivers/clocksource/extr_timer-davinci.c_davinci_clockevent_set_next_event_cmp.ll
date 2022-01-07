; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-davinci.c_davinci_clockevent_set_next_event_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-davinci.c_davinci_clockevent_set_next_event_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }
%struct.davinci_clockevent = type { i32 }

@DAVINCI_TIMER_REG_TIM12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @davinci_clockevent_set_next_event_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_clockevent_set_next_event_cmp(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca %struct.davinci_clockevent*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %7 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %8 = call %struct.davinci_clockevent* @to_davinci_clockevent(%struct.clock_event_device* %7)
  store %struct.davinci_clockevent* %8, %struct.davinci_clockevent** %5, align 8
  %9 = load %struct.davinci_clockevent*, %struct.davinci_clockevent** %5, align 8
  %10 = load i32, i32* @DAVINCI_TIMER_REG_TIM12, align 4
  %11 = call i32 @davinci_clockevent_read(%struct.davinci_clockevent* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.davinci_clockevent*, %struct.davinci_clockevent** %5, align 8
  %13 = load %struct.davinci_clockevent*, %struct.davinci_clockevent** %5, align 8
  %14 = getelementptr inbounds %struct.davinci_clockevent, %struct.davinci_clockevent* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %17, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32 @davinci_clockevent_write(%struct.davinci_clockevent* %12, i32 %15, i32 %20)
  ret i32 0
}

declare dso_local %struct.davinci_clockevent* @to_davinci_clockevent(%struct.clock_event_device*) #1

declare dso_local i32 @davinci_clockevent_read(%struct.davinci_clockevent*, i32) #1

declare dso_local i32 @davinci_clockevent_write(%struct.davinci_clockevent*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
