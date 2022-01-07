; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-atlas7.c_sirfsoc_timer_count_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-atlas7.c_sirfsoc_timer_count_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sirfsoc_timer_base = common dso_local global i64 0, align 8
@SIRFSOC_TIMER_32COUNTER_0_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sirfsoc_timer_count_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirfsoc_timer_count_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @sirfsoc_timer_base, align 8
  %4 = load i64, i64* @SIRFSOC_TIMER_32COUNTER_0_CTRL, align 8
  %5 = add nsw i64 %3, %4
  %6 = load i32, i32* %2, align 4
  %7 = mul nsw i32 4, %6
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %5, %8
  %10 = call i32 @readl_relaxed(i64 %9)
  %11 = or i32 %10, 3
  %12 = load i64, i64* @sirfsoc_timer_base, align 8
  %13 = load i64, i64* @SIRFSOC_TIMER_32COUNTER_0_CTRL, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* %2, align 4
  %16 = mul nsw i32 4, %15
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %14, %17
  %19 = call i32 @writel_relaxed(i32 %11, i64 %18)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
