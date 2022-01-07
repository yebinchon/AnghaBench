; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_rtc.c_get_rtc_alm_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_rtc.c_get_rtc_alm_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i8*, i8*, i8* }

@rtc_lock = common dso_local global i32 0, align 4
@RTC_SECONDS_ALARM = common dso_local global i32 0, align 4
@RTC_MINUTES_ALARM = common dso_local global i32 0, align 4
@RTC_HOURS_ALARM = common dso_local global i32 0, align 4
@RTC_CONTROL = common dso_local global i32 0, align 4
@RTC_DM_BINARY = common dso_local global i8 0, align 1
@RTC_ALWAYS_BCD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtc_time*)* @get_rtc_alm_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_rtc_alm_time(%struct.rtc_time* %0) #0 {
  %2 = alloca %struct.rtc_time*, align 8
  %3 = alloca i8, align 1
  store %struct.rtc_time* %0, %struct.rtc_time** %2, align 8
  %4 = call i32 @spin_lock_irq(i32* @rtc_lock)
  %5 = load i32, i32* @RTC_SECONDS_ALARM, align 4
  %6 = call i8* @CMOS_READ(i32 %5)
  %7 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %8 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %7, i32 0, i32 2
  store i8* %6, i8** %8, align 8
  %9 = load i32, i32* @RTC_MINUTES_ALARM, align 4
  %10 = call i8* @CMOS_READ(i32 %9)
  %11 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %12 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* @RTC_HOURS_ALARM, align 4
  %14 = call i8* @CMOS_READ(i32 %13)
  %15 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %16 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @RTC_CONTROL, align 4
  %18 = call i8* @CMOS_READ(i32 %17)
  %19 = ptrtoint i8* %18 to i8
  store i8 %19, i8* %3, align 1
  %20 = call i32 @spin_unlock_irq(i32* @rtc_lock)
  %21 = load i8, i8* %3, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @RTC_DM_BINARY, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i64, i64* @RTC_ALWAYS_BCD, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %27, %1
  %31 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @bcd2bin(i8* %33)
  %35 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @bcd2bin(i8* %39)
  %41 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %42 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @bcd2bin(i8* %45)
  %47 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i8* @CMOS_READ(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i8* @bcd2bin(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
