; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-armada-370-xp.c_armada_370_xp_timer_starting_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-armada-370-xp.c_armada_370_xp_timer_starting_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i8*, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i32 }

@armada_370_xp_evt = common dso_local global i32 0, align 4
@timer25Mhz = common dso_local global i64 0, align 8
@TIMER0_25MHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"armada_370_xp_per_cpu_tick\00", align 1
@CLOCK_EVT_FEAT_ONESHOT = common dso_local global i32 0, align 4
@CLOCK_EVT_FEAT_PERIODIC = common dso_local global i32 0, align 4
@armada_370_xp_clkevt_next_event = common dso_local global i32 0, align 4
@armada_370_xp_clkevt_shutdown = common dso_local global i8* null, align 8
@armada_370_xp_clkevt_set_periodic = common dso_local global i32 0, align 4
@armada_370_xp_clkevt_irq = common dso_local global i32 0, align 4
@timer_clk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @armada_370_xp_timer_starting_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_370_xp_timer_starting_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clock_event_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @armada_370_xp_evt, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.clock_event_device* @per_cpu_ptr(i32 %6, i32 %7)
  store %struct.clock_event_device* %8, %struct.clock_event_device** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load i64, i64* @timer25Mhz, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @TIMER0_25MHZ, align 4
  store i32 %12, i32* %5, align 4
  br label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @TIMER0_25MHZ, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @local_timer_ctrl_clrset(i32 %16, i32 %17)
  %19 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %20 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load i32, i32* @CLOCK_EVT_FEAT_ONESHOT, align 4
  %22 = load i32, i32* @CLOCK_EVT_FEAT_PERIODIC, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %25 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %27 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %26, i32 0, i32 2
  store i32 32, i32* %27, align 4
  %28 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %29 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %28, i32 0, i32 3
  store i32 300, i32* %29, align 8
  %30 = load i32, i32* @armada_370_xp_clkevt_next_event, align 4
  %31 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %32 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %31, i32 0, i32 10
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** @armada_370_xp_clkevt_shutdown, align 8
  %34 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %35 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %34, i32 0, i32 9
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @armada_370_xp_clkevt_set_periodic, align 4
  %37 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %38 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** @armada_370_xp_clkevt_shutdown, align 8
  %40 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %41 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %40, i32 0, i32 7
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** @armada_370_xp_clkevt_shutdown, align 8
  %43 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %44 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @armada_370_xp_clkevt_irq, align 4
  %46 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %47 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @cpumask_of(i32 %48)
  %50 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %51 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %53 = load i32, i32* @timer_clk, align 4
  %54 = call i32 @clockevents_config_and_register(%struct.clock_event_device* %52, i32 %53, i32 1, i32 -2)
  %55 = load %struct.clock_event_device*, %struct.clock_event_device** %3, align 8
  %56 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @enable_percpu_irq(i32 %57, i32 0)
  ret i32 0
}

declare dso_local %struct.clock_event_device* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @local_timer_ctrl_clrset(i32, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @clockevents_config_and_register(%struct.clock_event_device*, i32, i32, i32) #1

declare dso_local i32 @enable_percpu_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
