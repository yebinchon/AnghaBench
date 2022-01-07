; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-cadence-ttc.c_ttc_set_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-cadence-ttc.c_ttc_set_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttc_timer = type { i64 }

@TTC_CNT_CNTRL_OFFSET = common dso_local global i64 0, align 8
@TTC_CNT_CNTRL_DISABLE_MASK = common dso_local global i64 0, align 8
@TTC_INTR_VAL_OFFSET = common dso_local global i64 0, align 8
@CNT_CNTRL_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttc_timer*, i64)* @ttc_set_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttc_set_interval(%struct.ttc_timer* %0, i64 %1) #0 {
  %3 = alloca %struct.ttc_timer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ttc_timer* %0, %struct.ttc_timer** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ttc_timer*, %struct.ttc_timer** %3, align 8
  %7 = getelementptr inbounds %struct.ttc_timer, %struct.ttc_timer* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TTC_CNT_CNTRL_OFFSET, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i64 @readl_relaxed(i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* @TTC_CNT_CNTRL_DISABLE_MASK, align 8
  %13 = load i64, i64* %5, align 8
  %14 = or i64 %13, %12
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.ttc_timer*, %struct.ttc_timer** %3, align 8
  %17 = getelementptr inbounds %struct.ttc_timer, %struct.ttc_timer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TTC_CNT_CNTRL_OFFSET, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel_relaxed(i64 %15, i64 %20)
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.ttc_timer*, %struct.ttc_timer** %3, align 8
  %24 = getelementptr inbounds %struct.ttc_timer, %struct.ttc_timer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TTC_INTR_VAL_OFFSET, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel_relaxed(i64 %22, i64 %27)
  %29 = load i64, i64* @CNT_CNTRL_RESET, align 8
  %30 = load i64, i64* %5, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* @TTC_CNT_CNTRL_DISABLE_MASK, align 8
  %33 = xor i64 %32, -1
  %34 = load i64, i64* %5, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.ttc_timer*, %struct.ttc_timer** %3, align 8
  %38 = getelementptr inbounds %struct.ttc_timer, %struct.ttc_timer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TTC_CNT_CNTRL_OFFSET, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel_relaxed(i64 %36, i64 %41)
  ret void
}

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
