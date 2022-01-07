; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_mips-gic-timer.c_gic_clockevent_cpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_mips-gic-timer.c_gic_clockevent_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"MIPS GIC\00", align 1
@CLOCK_EVT_FEAT_ONESHOT = common dso_local global i32 0, align 4
@CLOCK_EVT_FEAT_C3STOP = common dso_local global i32 0, align 4
@gic_timer_irq = common dso_local global i32 0, align 4
@gic_next_event = common dso_local global i32 0, align 4
@gic_frequency = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clock_event_device*)* @gic_clockevent_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gic_clockevent_cpu_init(i32 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %5 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %6 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load i32, i32* @CLOCK_EVT_FEAT_ONESHOT, align 4
  %8 = load i32, i32* @CLOCK_EVT_FEAT_C3STOP, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %11 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %13 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %12, i32 0, i32 2
  store i32 350, i32* %13, align 4
  %14 = load i32, i32* @gic_timer_irq, align 4
  %15 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %16 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @cpumask_of(i32 %17)
  %19 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %20 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @gic_next_event, align 4
  %22 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %23 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %25 = load i32, i32* @gic_frequency, align 4
  %26 = call i32 @clockevents_config_and_register(%struct.clock_event_device* %24, i32 %25, i32 768, i32 2147483647)
  %27 = load i32, i32* @gic_timer_irq, align 4
  %28 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %29 = call i32 @enable_percpu_irq(i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @clockevents_config_and_register(%struct.clock_event_device*, i32, i32, i32) #1

declare dso_local i32 @enable_percpu_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
