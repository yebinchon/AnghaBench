; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-cadence-ttc.c_ttc_clock_event_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-cadence-ttc.c_ttc_clock_event_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttc_timer_clockevent = type { %struct.TYPE_2__, %struct.ttc_timer }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }
%struct.ttc_timer = type { i64 }

@TTC_ISR_OFFSET = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ttc_clock_event_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttc_clock_event_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ttc_timer_clockevent*, align 8
  %6 = alloca %struct.ttc_timer*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ttc_timer_clockevent*
  store %struct.ttc_timer_clockevent* %8, %struct.ttc_timer_clockevent** %5, align 8
  %9 = load %struct.ttc_timer_clockevent*, %struct.ttc_timer_clockevent** %5, align 8
  %10 = getelementptr inbounds %struct.ttc_timer_clockevent, %struct.ttc_timer_clockevent* %9, i32 0, i32 1
  store %struct.ttc_timer* %10, %struct.ttc_timer** %6, align 8
  %11 = load %struct.ttc_timer*, %struct.ttc_timer** %6, align 8
  %12 = getelementptr inbounds %struct.ttc_timer, %struct.ttc_timer* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TTC_ISR_OFFSET, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl_relaxed(i64 %15)
  %17 = load %struct.ttc_timer_clockevent*, %struct.ttc_timer_clockevent** %5, align 8
  %18 = getelementptr inbounds %struct.ttc_timer_clockevent, %struct.ttc_timer_clockevent* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %19, align 8
  %21 = load %struct.ttc_timer_clockevent*, %struct.ttc_timer_clockevent** %5, align 8
  %22 = getelementptr inbounds %struct.ttc_timer_clockevent, %struct.ttc_timer_clockevent* %21, i32 0, i32 0
  %23 = call i32 %20(%struct.TYPE_2__* %22)
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %24
}

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
