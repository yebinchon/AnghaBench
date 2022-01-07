; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_time.c_xen_timerop_set_next_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_time.c_xen_timerop_set_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @xen_timerop_set_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_timerop_set_next_event(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %5 = load %struct.clock_event_device*, %struct.clock_event_device** %4, align 8
  %6 = call i32 @clockevent_state_oneshot(%struct.clock_event_device* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @get_abs_timeout(i64 %11)
  %13 = call i64 @HYPERVISOR_set_timer_op(i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (...) @BUG()
  br label %17

17:                                               ; preds = %15, %2
  ret i32 0
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @clockevent_state_oneshot(%struct.clock_event_device*) #1

declare dso_local i64 @HYPERVISOR_set_timer_op(i32) #1

declare dso_local i32 @get_abs_timeout(i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
