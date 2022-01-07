; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_asm9260_timer.c_asm9260_timer_set_oneshot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_asm9260_timer.c_asm9260_timer_set_oneshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.clock_event_device = type { i32 }

@priv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HW_MCR = common dso_local global i64 0, align 8
@SET_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_event_device*)* @asm9260_timer_set_oneshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asm9260_timer_set_oneshot(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %3 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %4 = call i32 @__asm9260_timer_shutdown(%struct.clock_event_device* %3)
  %5 = call i32 @BM_MCR_RES_EN(i32 0)
  %6 = call i32 @BM_MCR_STOP_EN(i32 0)
  %7 = or i32 %5, %6
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @priv, i32 0, i32 0), align 8
  %9 = load i64, i64* @HW_MCR, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i64, i64* @SET_REG, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel_relaxed(i32 %7, i64 %12)
  ret i32 0
}

declare dso_local i32 @__asm9260_timer_shutdown(%struct.clock_event_device*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @BM_MCR_RES_EN(i32) #1

declare dso_local i32 @BM_MCR_STOP_EN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
