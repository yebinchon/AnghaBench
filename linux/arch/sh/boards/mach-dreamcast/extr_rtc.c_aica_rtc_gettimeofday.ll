; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/boards/mach-dreamcast/extr_rtc.c_aica_rtc_gettimeofday.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/boards/mach-dreamcast/extr_rtc.c_aica_rtc_gettimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }

@AICA_RTC_SECS_H = common dso_local global i32 0, align 4
@AICA_RTC_SECS_L = common dso_local global i32 0, align 4
@TWENTY_YEARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @aica_rtc_gettimeofday to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aica_rtc_gettimeofday(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  br label %8

8:                                                ; preds = %27, %2
  %9 = load i32, i32* @AICA_RTC_SECS_H, align 4
  %10 = call i32 @__raw_readl(i32 %9)
  %11 = and i32 %10, 65535
  %12 = shl i32 %11, 16
  %13 = load i32, i32* @AICA_RTC_SECS_L, align 4
  %14 = call i32 @__raw_readl(i32 %13)
  %15 = and i32 %14, 65535
  %16 = or i32 %12, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %5, align 8
  %18 = load i32, i32* @AICA_RTC_SECS_H, align 4
  %19 = call i32 @__raw_readl(i32 %18)
  %20 = and i32 %19, 65535
  %21 = shl i32 %20, 16
  %22 = load i32, i32* @AICA_RTC_SECS_L, align 4
  %23 = call i32 @__raw_readl(i32 %22)
  %24 = and i32 %23, 65535
  %25 = or i32 %21, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %8, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @TWENTY_YEARS, align 8
  %34 = sub i64 %32, %33
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %37 = call i32 @rtc_time64_to_tm(i64 %35, %struct.rtc_time* %36)
  ret i32 0
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @rtc_time64_to_tm(i64, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
