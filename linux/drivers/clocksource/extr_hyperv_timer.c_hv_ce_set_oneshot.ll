; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_hyperv_timer.c_hv_ce_set_oneshot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_hyperv_timer.c_hv_ce_set_oneshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }
%union.hv_stimer_config = type { i64 }

@direct_mode_enabled = common dso_local global i64 0, align 8
@stimer0_vector = common dso_local global i32 0, align 4
@stimer0_irq = common dso_local global i32 0, align 4
@stimer0_message_sint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_event_device*)* @hv_ce_set_oneshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_ce_set_oneshot(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  %3 = alloca %union.hv_stimer_config, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %4 = bitcast %union.hv_stimer_config* %3 to i64*
  store i64 0, i64* %4, align 8
  %5 = bitcast %union.hv_stimer_config* %3 to i32*
  store i32 1, i32* %5, align 8
  %6 = bitcast %union.hv_stimer_config* %3 to i32*
  store i32 1, i32* %6, align 8
  %7 = load i64, i64* @direct_mode_enabled, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = bitcast %union.hv_stimer_config* %3 to i32*
  store i32 1, i32* %10, align 8
  %11 = load i32, i32* @stimer0_vector, align 4
  %12 = bitcast %union.hv_stimer_config* %3 to i32*
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* @stimer0_irq, align 4
  %14 = call i32 @hv_enable_stimer0_percpu_irq(i32 %13)
  br label %19

15:                                               ; preds = %1
  %16 = bitcast %union.hv_stimer_config* %3 to i32*
  store i32 0, i32* %16, align 8
  %17 = load i32, i32* @stimer0_message_sint, align 4
  %18 = bitcast %union.hv_stimer_config* %3 to i32*
  store i32 %17, i32* %18, align 8
  br label %19

19:                                               ; preds = %15, %9
  %20 = bitcast %union.hv_stimer_config* %3 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @hv_init_timer_config(i32 0, i64 %21)
  ret i32 0
}

declare dso_local i32 @hv_enable_stimer0_percpu_irq(i32) #1

declare dso_local i32 @hv_init_timer_config(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
