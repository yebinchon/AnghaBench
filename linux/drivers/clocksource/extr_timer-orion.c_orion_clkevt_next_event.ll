; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-orion.c_orion_clkevt_next_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-orion.c_orion_clkevt_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@timer_base = common dso_local global i64 0, align 8
@TIMER1_VAL = common dso_local global i64 0, align 8
@TIMER_CTRL = common dso_local global i64 0, align 8
@TIMER1_RELOAD_EN = common dso_local global i32 0, align 4
@TIMER1_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @orion_clkevt_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orion_clkevt_next_event(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @timer_base, align 8
  %7 = load i64, i64* @TIMER1_VAL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writel(i64 %5, i64 %8)
  %10 = load i64, i64* @timer_base, align 8
  %11 = load i64, i64* @TIMER_CTRL, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i32, i32* @TIMER1_RELOAD_EN, align 4
  %14 = load i32, i32* @TIMER1_EN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @TIMER1_EN, align 4
  %17 = call i32 @atomic_io_modify(i64 %12, i32 %15, i32 %16)
  ret i32 0
}

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @atomic_io_modify(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
