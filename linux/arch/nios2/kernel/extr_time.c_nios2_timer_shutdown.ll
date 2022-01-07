; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_time.c_nios2_timer_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_time.c_nios2_timer_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }
%struct.nios2_clockevent_dev = type { %struct.nios2_timer }
%struct.nios2_timer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_event_device*)* @nios2_timer_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nios2_timer_shutdown(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  %3 = alloca %struct.nios2_clockevent_dev*, align 8
  %4 = alloca %struct.nios2_timer*, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %5 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %6 = call %struct.nios2_clockevent_dev* @to_nios2_clkevent(%struct.clock_event_device* %5)
  store %struct.nios2_clockevent_dev* %6, %struct.nios2_clockevent_dev** %3, align 8
  %7 = load %struct.nios2_clockevent_dev*, %struct.nios2_clockevent_dev** %3, align 8
  %8 = getelementptr inbounds %struct.nios2_clockevent_dev, %struct.nios2_clockevent_dev* %7, i32 0, i32 0
  store %struct.nios2_timer* %8, %struct.nios2_timer** %4, align 8
  %9 = load %struct.nios2_timer*, %struct.nios2_timer** %4, align 8
  %10 = call i32 @nios2_timer_stop(%struct.nios2_timer* %9)
  ret i32 0
}

declare dso_local %struct.nios2_clockevent_dev* @to_nios2_clkevent(%struct.clock_event_device*) #1

declare dso_local i32 @nios2_timer_stop(%struct.nios2_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
