; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/intel-mid/extr_intel_mid_vrtc.c_vrtc_get_time.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/intel-mid/extr_intel_mid_vrtc.c_vrtc_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i64, i32 }

@rtc_lock = common dso_local global i32 0, align 4
@RTC_FREQ_SELECT = common dso_local global i32 0, align 4
@RTC_UIP = common dso_local global i32 0, align 4
@RTC_SECONDS = common dso_local global i32 0, align 4
@RTC_MINUTES = common dso_local global i32 0, align 4
@RTC_HOURS = common dso_local global i32 0, align 4
@RTC_DAY_OF_MONTH = common dso_local global i32 0, align 4
@RTC_MONTH = common dso_local global i32 0, align 4
@RTC_YEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"vRTC: sec: %d min: %d hour: %d day: %d mon: %d year: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vrtc_get_time(%struct.timespec64* %0) #0 {
  %2 = alloca %struct.timespec64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.timespec64* %0, %struct.timespec64** %2, align 8
  %10 = load i64, i64* %8, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @rtc_lock, i64 %10)
  br label %12

12:                                               ; preds = %18, %1
  %13 = load i32, i32* @RTC_FREQ_SELECT, align 4
  %14 = call i32 @vrtc_cmos_read(i32 %13)
  %15 = load i32, i32* @RTC_UIP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 (...) @cpu_relax()
  br label %12

20:                                               ; preds = %12
  %21 = load i32, i32* @RTC_SECONDS, align 4
  %22 = call i32 @vrtc_cmos_read(i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @RTC_MINUTES, align 4
  %24 = call i32 @vrtc_cmos_read(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @RTC_HOURS, align 4
  %26 = call i32 @vrtc_cmos_read(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @RTC_DAY_OF_MONTH, align 4
  %28 = call i32 @vrtc_cmos_read(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @RTC_MONTH, align 4
  %30 = call i32 @vrtc_cmos_read(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @RTC_YEAR, align 4
  %32 = call i32 @vrtc_cmos_read(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* @rtc_lock, i64 %33)
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1972
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @pr_info(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @mktime64(i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %52 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %54 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vrtc_cmos_read(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mktime64(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
