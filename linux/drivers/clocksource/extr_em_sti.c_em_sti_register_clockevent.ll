; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_em_sti.c_em_sti_register_clockevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_em_sti.c_em_sti_register_clockevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em_sti_priv = type { i32, %struct.TYPE_2__*, %struct.clock_event_device }
%struct.TYPE_2__ = type { i32 }
%struct.clock_event_device = type { i32, i32, i32, i32, i32, i32, i32 }

@CLOCK_EVT_FEAT_ONESHOT = common dso_local global i32 0, align 4
@cpu_possible_mask = common dso_local global i32 0, align 4
@em_sti_clock_event_next = common dso_local global i32 0, align 4
@em_sti_clock_event_shutdown = common dso_local global i32 0, align 4
@em_sti_clock_event_set_oneshot = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"used for clock events\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em_sti_priv*)* @em_sti_register_clockevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_sti_register_clockevent(%struct.em_sti_priv* %0) #0 {
  %2 = alloca %struct.em_sti_priv*, align 8
  %3 = alloca %struct.clock_event_device*, align 8
  store %struct.em_sti_priv* %0, %struct.em_sti_priv** %2, align 8
  %4 = load %struct.em_sti_priv*, %struct.em_sti_priv** %2, align 8
  %5 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %4, i32 0, i32 2
  store %struct.clock_event_device* %5, %struct.clock_event_device** %3, align 8
  %6 = load %struct.em_sti_priv*, %struct.em_sti_priv** %2, align 8
  %7 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @dev_name(i32* %9)
  %11 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %12 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %11, i32 0, i32 6
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @CLOCK_EVT_FEAT_ONESHOT, align 4
  %14 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %15 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %17 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %16, i32 0, i32 0
  store i32 200, i32* %17, align 4
  %18 = load i32, i32* @cpu_possible_mask, align 4
  %19 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %20 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @em_sti_clock_event_next, align 4
  %22 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %23 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @em_sti_clock_event_shutdown, align 4
  %25 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %26 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @em_sti_clock_event_set_oneshot, align 4
  %28 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %29 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.em_sti_priv*, %struct.em_sti_priv** %2, align 8
  %31 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @dev_info(i32* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %36 = load %struct.em_sti_priv*, %struct.em_sti_priv** %2, align 8
  %37 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @clockevents_config_and_register(%struct.clock_event_device* %35, i32 %38, i32 2, i32 -1)
  ret void
}

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @clockevents_config_and_register(%struct.clock_event_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
