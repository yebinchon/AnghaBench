; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_timer8.c_timer8_clock_event_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_h8300_timer8.c_timer8_clock_event_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }
%struct.timer8_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @timer8_clock_event_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer8_clock_event_next(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca %struct.timer8_priv*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %6 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %7 = call %struct.timer8_priv* @ced_to_priv(%struct.clock_event_device* %6)
  store %struct.timer8_priv* %7, %struct.timer8_priv** %5, align 8
  %8 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %9 = call i32 @clockevent_state_oneshot(%struct.clock_event_device* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.timer8_priv*, %struct.timer8_priv** %5, align 8
  %15 = load i64, i64* %3, align 8
  %16 = sub i64 %15, 1
  %17 = call i32 @timer8_set_next(%struct.timer8_priv* %14, i64 %16)
  ret i32 0
}

declare dso_local %struct.timer8_priv* @ced_to_priv(%struct.clock_event_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clockevent_state_oneshot(%struct.clock_event_device*) #1

declare dso_local i32 @timer8_set_next(%struct.timer8_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
