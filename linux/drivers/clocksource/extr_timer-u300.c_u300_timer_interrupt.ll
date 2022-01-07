; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-u300.c_u300_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-u300.c_u300_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.clock_event_device }
%struct.clock_event_device = type { i32 (%struct.clock_event_device*)* }

@u300_clockevent_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@U300_TIMER_APP_GPT1IA_IRQ_ACK = common dso_local global i32 0, align 4
@u300_timer_base = common dso_local global i64 0, align 8
@U300_TIMER_APP_GPT1IA = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @u300_timer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u300_timer_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.clock_event_device*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store %struct.clock_event_device* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @u300_clockevent_data, i32 0, i32 0), %struct.clock_event_device** %5, align 8
  %6 = load i32, i32* @U300_TIMER_APP_GPT1IA_IRQ_ACK, align 4
  %7 = load i64, i64* @u300_timer_base, align 8
  %8 = load i64, i64* @U300_TIMER_APP_GPT1IA, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel(i32 %6, i64 %9)
  %11 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %12 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %11, i32 0, i32 0
  %13 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %12, align 8
  %14 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %15 = call i32 %13(%struct.clock_event_device* %14)
  %16 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %16
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
