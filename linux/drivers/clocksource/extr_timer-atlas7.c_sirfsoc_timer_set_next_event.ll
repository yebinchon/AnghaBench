; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-atlas7.c_sirfsoc_timer_set_next_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-atlas7.c_sirfsoc_timer_set_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@sirfsoc_timer_base = common dso_local global i64 0, align 8
@SIRFSOC_TIMER_COUNTER_0 = common dso_local global i64 0, align 8
@SIRFSOC_TIMER_MATCH_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @sirfsoc_timer_set_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_timer_set_next_event(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %6 = call i32 (...) @smp_processor_id()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @sirfsoc_timer_count_disable(i32 %7)
  %9 = load i64, i64* @sirfsoc_timer_base, align 8
  %10 = load i64, i64* @SIRFSOC_TIMER_COUNTER_0, align 8
  %11 = add nsw i64 %9, %10
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 4, %12
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %11, %14
  %16 = call i32 @writel_relaxed(i64 0, i64 %15)
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @sirfsoc_timer_base, align 8
  %19 = load i64, i64* @SIRFSOC_TIMER_MATCH_0, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 4, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = call i32 @writel_relaxed(i64 %17, i64 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @sirfsoc_timer_count_enable(i32 %26)
  ret i32 0
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @sirfsoc_timer_count_disable(i32) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @sirfsoc_timer_count_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
