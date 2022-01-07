; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-sp804.c_sp804_set_periodic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-sp804.c_sp804_set_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@TIMER_CTRL_32BIT = common dso_local global i64 0, align 8
@TIMER_CTRL_IE = common dso_local global i64 0, align 8
@TIMER_CTRL_PERIODIC = common dso_local global i64 0, align 8
@TIMER_CTRL_ENABLE = common dso_local global i64 0, align 8
@clkevt_reload = common dso_local global i64 0, align 8
@clkevt_base = common dso_local global i64 0, align 8
@TIMER_LOAD = common dso_local global i64 0, align 8
@TIMER_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_event_device*)* @sp804_set_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp804_set_periodic(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  %3 = alloca i64, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %4 = load i64, i64* @TIMER_CTRL_32BIT, align 8
  %5 = load i64, i64* @TIMER_CTRL_IE, align 8
  %6 = or i64 %4, %5
  %7 = load i64, i64* @TIMER_CTRL_PERIODIC, align 8
  %8 = or i64 %6, %7
  %9 = load i64, i64* @TIMER_CTRL_ENABLE, align 8
  %10 = or i64 %8, %9
  store i64 %10, i64* %3, align 8
  %11 = load %struct.clock_event_device*, %struct.clock_event_device** %2, align 8
  %12 = call i32 @timer_shutdown(%struct.clock_event_device* %11)
  %13 = load i64, i64* @clkevt_reload, align 8
  %14 = load i64, i64* @clkevt_base, align 8
  %15 = load i64, i64* @TIMER_LOAD, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i64 %13, i64 %16)
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @clkevt_base, align 8
  %20 = load i64, i64* @TIMER_CTRL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i64 %18, i64 %21)
  ret i32 0
}

declare dso_local i32 @timer_shutdown(%struct.clock_event_device*) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
