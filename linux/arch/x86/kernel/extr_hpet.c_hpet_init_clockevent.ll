; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hpet.c_hpet_init_clockevent.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hpet.c_hpet_init_clockevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpet_channel = type { i32, i32, i32, i32, %struct.clock_event_device }
%struct.clock_event_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@hpet_clkevt_set_state_oneshot = common dso_local global i32 0, align 4
@hpet_clkevt_set_next_event = common dso_local global i32 0, align 4
@hpet_clkevt_set_state_shutdown = common dso_local global i32 0, align 4
@CLOCK_EVT_FEAT_ONESHOT = common dso_local global i32 0, align 4
@HPET_TN_PERIODIC = common dso_local global i32 0, align 4
@CLOCK_EVT_FEAT_PERIODIC = common dso_local global i32 0, align 4
@hpet_clkevt_set_state_periodic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpet_channel*, i32)* @hpet_init_clockevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpet_init_clockevent(%struct.hpet_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.hpet_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clock_event_device*, align 8
  store %struct.hpet_channel* %0, %struct.hpet_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hpet_channel*, %struct.hpet_channel** %3, align 8
  %7 = getelementptr inbounds %struct.hpet_channel, %struct.hpet_channel* %6, i32 0, i32 4
  store %struct.clock_event_device* %7, %struct.clock_event_device** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %10 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.hpet_channel*, %struct.hpet_channel** %3, align 8
  %12 = getelementptr inbounds %struct.hpet_channel, %struct.hpet_channel* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %15 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 4
  %16 = load %struct.hpet_channel*, %struct.hpet_channel** %3, align 8
  %17 = getelementptr inbounds %struct.hpet_channel, %struct.hpet_channel* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %20 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 4
  %21 = load %struct.hpet_channel*, %struct.hpet_channel** %3, align 8
  %22 = getelementptr inbounds %struct.hpet_channel, %struct.hpet_channel* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cpumask_of(i32 %23)
  %25 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %26 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @hpet_clkevt_set_state_oneshot, align 4
  %28 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %29 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @hpet_clkevt_set_next_event, align 4
  %31 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %32 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @hpet_clkevt_set_state_shutdown, align 4
  %34 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %35 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @CLOCK_EVT_FEAT_ONESHOT, align 4
  %37 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %38 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.hpet_channel*, %struct.hpet_channel** %3, align 8
  %40 = getelementptr inbounds %struct.hpet_channel, %struct.hpet_channel* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HPET_TN_PERIODIC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %2
  %46 = load i32, i32* @CLOCK_EVT_FEAT_PERIODIC, align 4
  %47 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %48 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @hpet_clkevt_set_state_periodic, align 4
  %52 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %53 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %45, %2
  ret void
}

declare dso_local i32 @cpumask_of(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
