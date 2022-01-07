; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/boards/mach-dreamcast/extr_rtc.c_aica_rtc_settimeofday.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/boards/mach-dreamcast/extr_rtc.c_aica_rtc_settimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }

@TWENTY_YEARS = common dso_local global i32 0, align 4
@AICA_RTC_SECS_H = common dso_local global i32 0, align 4
@AICA_RTC_SECS_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @aica_rtc_settimeofday to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aica_rtc_settimeofday(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %9 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %10 = call i32 @rtc_tm_to_time64(%struct.rtc_time* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @TWENTY_YEARS, align 4
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %42, %2
  %15 = load i32, i32* %8, align 4
  %16 = and i32 %15, -65536
  %17 = lshr i32 %16, 16
  %18 = load i32, i32* @AICA_RTC_SECS_H, align 4
  %19 = call i32 @__raw_writel(i32 %17, i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 65535
  %22 = load i32, i32* @AICA_RTC_SECS_L, align 4
  %23 = call i32 @__raw_writel(i32 %21, i32 %22)
  %24 = load i32, i32* @AICA_RTC_SECS_H, align 4
  %25 = call i32 @__raw_readl(i32 %24)
  %26 = and i32 %25, 65535
  %27 = shl i32 %26, 16
  %28 = load i32, i32* @AICA_RTC_SECS_L, align 4
  %29 = call i32 @__raw_readl(i32 %28)
  %30 = and i32 %29, 65535
  %31 = or i32 %27, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %5, align 8
  %33 = load i32, i32* @AICA_RTC_SECS_H, align 4
  %34 = call i32 @__raw_readl(i32 %33)
  %35 = and i32 %34, 65535
  %36 = shl i32 %35, 16
  %37 = load i32, i32* @AICA_RTC_SECS_L, align 4
  %38 = call i32 @__raw_readl(i32 %37)
  %39 = and i32 %38, 65535
  %40 = or i32 %36, %39
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %14
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %14, label %46

46:                                               ; preds = %42
  ret i32 0
}

declare dso_local i32 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @__raw_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
