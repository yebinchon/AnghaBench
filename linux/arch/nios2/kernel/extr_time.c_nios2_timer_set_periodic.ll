; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_time.c_nios2_timer_set_periodic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_time.c_nios2_timer_set_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }
%struct.nios2_clockevent_dev = type { %struct.nios2_timer }
%struct.nios2_timer = type { i32 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_event_device*)* @nios2_timer_set_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nios2_timer_set_periodic(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.nios2_clockevent_dev*, align 8
  %5 = alloca %struct.nios2_timer*, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %6 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %7 = call %struct.nios2_clockevent_dev* @to_nios2_clkevent(%struct.clock_event_device* %6)
  store %struct.nios2_clockevent_dev* %7, %struct.nios2_clockevent_dev** %4, align 8
  %8 = load %struct.nios2_clockevent_dev*, %struct.nios2_clockevent_dev** %4, align 8
  %9 = getelementptr inbounds %struct.nios2_clockevent_dev, %struct.nios2_clockevent_dev* %8, i32 0, i32 0
  store %struct.nios2_timer* %9, %struct.nios2_timer** %5, align 8
  %10 = load %struct.nios2_timer*, %struct.nios2_timer** %5, align 8
  %11 = getelementptr inbounds %struct.nios2_timer, %struct.nios2_timer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HZ, align 4
  %14 = call i64 @DIV_ROUND_UP(i32 %12, i32 %13)
  store i64 %14, i64* %3, align 8
  %15 = load %struct.nios2_timer*, %struct.nios2_timer** %5, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @nios2_timer_config(%struct.nios2_timer* %15, i64 %16, i32 1)
  ret i32 0
}

declare dso_local %struct.nios2_clockevent_dev* @to_nios2_clkevent(%struct.clock_event_device*) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @nios2_timer_config(%struct.nios2_timer*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
