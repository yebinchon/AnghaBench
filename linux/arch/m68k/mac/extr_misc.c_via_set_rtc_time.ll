; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/mac/extr_misc.c_via_set_rtc_time.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/mac/extr_misc.c_via_set_rtc_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i64, i64 }
%union.anon = type { [4 x i32] }

@RTC_REG_WRITE_PROTECT = common dso_local global i32 0, align 4
@RTC_OFFSET = common dso_local global i64 0, align 8
@RTC_REG_SECONDS_0 = common dso_local global i32 0, align 4
@RTC_REG_SECONDS_1 = common dso_local global i32 0, align 4
@RTC_REG_SECONDS_2 = common dso_local global i32 0, align 4
@RTC_REG_SECONDS_3 = common dso_local global i32 0, align 4
@RTC_FLG_WRITE_PROTECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtc_time*)* @via_set_rtc_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_set_rtc_time(%struct.rtc_time* %0) #0 {
  %2 = alloca %struct.rtc_time*, align 8
  %3 = alloca %union.anon, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.rtc_time* %0, %struct.rtc_time** %2, align 8
  %6 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %7 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 1900
  %10 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %11 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 1
  %14 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %21 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @mktime64(i64 %9, i64 %13, i32 %16, i32 %19, i32 %22, i32 %25)
  store i64 %26, i64* %5, align 8
  store i32 85, i32* %4, align 4
  %27 = load i32, i32* @RTC_REG_WRITE_PROTECT, align 4
  %28 = call i32 @RTC_CMD_WRITE(i32 %27)
  %29 = call i32 @via_rtc_command(i32 %28, i32* %4)
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @RTC_OFFSET, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @lower_32_bits(i64 %32)
  %34 = bitcast %union.anon* %3 to i32*
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @RTC_REG_SECONDS_0, align 4
  %36 = call i32 @RTC_CMD_WRITE(i32 %35)
  %37 = bitcast %union.anon* %3 to [4 x i32]*
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i64 0, i64 3
  %39 = call i32 @via_rtc_command(i32 %36, i32* %38)
  %40 = load i32, i32* @RTC_REG_SECONDS_1, align 4
  %41 = call i32 @RTC_CMD_WRITE(i32 %40)
  %42 = bitcast %union.anon* %3 to [4 x i32]*
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i64 0, i64 2
  %44 = call i32 @via_rtc_command(i32 %41, i32* %43)
  %45 = load i32, i32* @RTC_REG_SECONDS_2, align 4
  %46 = call i32 @RTC_CMD_WRITE(i32 %45)
  %47 = bitcast %union.anon* %3 to [4 x i32]*
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i64 0, i64 1
  %49 = call i32 @via_rtc_command(i32 %46, i32* %48)
  %50 = load i32, i32* @RTC_REG_SECONDS_3, align 4
  %51 = call i32 @RTC_CMD_WRITE(i32 %50)
  %52 = bitcast %union.anon* %3 to [4 x i32]*
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i64 0, i64 0
  %54 = call i32 @via_rtc_command(i32 %51, i32* %53)
  %55 = load i32, i32* @RTC_FLG_WRITE_PROTECT, align 4
  %56 = or i32 85, %55
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @RTC_REG_WRITE_PROTECT, align 4
  %58 = call i32 @RTC_CMD_WRITE(i32 %57)
  %59 = call i32 @via_rtc_command(i32 %58, i32* %4)
  ret void
}

declare dso_local i64 @mktime64(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @via_rtc_command(i32, i32*) #1

declare dso_local i32 @RTC_CMD_WRITE(i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
