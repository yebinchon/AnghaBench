; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_exynos_mct.c_exynos4_mct_tick_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_exynos_mct.c_exynos4_mct_tick_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mct_clock_event_device = type { i64 }

@MCT_L_ICNTB_OFFSET = common dso_local global i64 0, align 8
@MCT_L_INT_ENB_OFFSET = common dso_local global i64 0, align 8
@reg_base = common dso_local global i64 0, align 8
@MCT_L_TCON_OFFSET = common dso_local global i64 0, align 8
@MCT_L_TCON_INT_START = common dso_local global i64 0, align 8
@MCT_L_TCON_TIMER_START = common dso_local global i64 0, align 8
@MCT_L_TCON_INTERVAL_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.mct_clock_event_device*)* @exynos4_mct_tick_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos4_mct_tick_start(i64 %0, %struct.mct_clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mct_clock_event_device*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.mct_clock_event_device* %1, %struct.mct_clock_event_device** %4, align 8
  %6 = load %struct.mct_clock_event_device*, %struct.mct_clock_event_device** %4, align 8
  %7 = call i32 @exynos4_mct_tick_stop(%struct.mct_clock_event_device* %6)
  %8 = load i64, i64* %3, align 8
  %9 = or i64 -2147483648, %8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.mct_clock_event_device*, %struct.mct_clock_event_device** %4, align 8
  %12 = getelementptr inbounds %struct.mct_clock_event_device, %struct.mct_clock_event_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MCT_L_ICNTB_OFFSET, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @exynos4_mct_write(i64 %10, i64 %15)
  %17 = load %struct.mct_clock_event_device*, %struct.mct_clock_event_device** %4, align 8
  %18 = getelementptr inbounds %struct.mct_clock_event_device, %struct.mct_clock_event_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MCT_L_INT_ENB_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @exynos4_mct_write(i64 1, i64 %21)
  %23 = load i64, i64* @reg_base, align 8
  %24 = load %struct.mct_clock_event_device*, %struct.mct_clock_event_device** %4, align 8
  %25 = getelementptr inbounds %struct.mct_clock_event_device, %struct.mct_clock_event_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load i64, i64* @MCT_L_TCON_OFFSET, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i64 @readl_relaxed(i64 %29)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* @MCT_L_TCON_INT_START, align 8
  %32 = load i64, i64* @MCT_L_TCON_TIMER_START, align 8
  %33 = or i64 %31, %32
  %34 = load i64, i64* @MCT_L_TCON_INTERVAL_MODE, align 8
  %35 = or i64 %33, %34
  %36 = load i64, i64* %5, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.mct_clock_event_device*, %struct.mct_clock_event_device** %4, align 8
  %40 = getelementptr inbounds %struct.mct_clock_event_device, %struct.mct_clock_event_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MCT_L_TCON_OFFSET, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @exynos4_mct_write(i64 %38, i64 %43)
  ret void
}

declare dso_local i32 @exynos4_mct_tick_stop(%struct.mct_clock_event_device*) #1

declare dso_local i32 @exynos4_mct_write(i64, i64) #1

declare dso_local i64 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
