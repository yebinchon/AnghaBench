; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/dec/extr_time.c_read_persistent_clock64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/dec/extr_time.c_read_persistent_clock64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i64, i32 }

@rtc_lock = common dso_local global i32 0, align 4
@RTC_SECONDS = common dso_local global i32 0, align 4
@RTC_MINUTES = common dso_local global i32 0, align 4
@RTC_HOURS = common dso_local global i32 0, align 4
@RTC_DAY_OF_MONTH = common dso_local global i32 0, align 4
@RTC_MONTH = common dso_local global i32 0, align 4
@RTC_YEAR = common dso_local global i32 0, align 4
@RTC_DEC_YEAR = common dso_local global i32 0, align 4
@RTC_CONTROL = common dso_local global i32 0, align 4
@RTC_DM_BINARY = common dso_local global i32 0, align 4
@RTC_ALWAYS_BCD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_persistent_clock64(%struct.timespec64* %0) #0 {
  %2 = alloca %struct.timespec64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.timespec64* %0, %struct.timespec64** %2, align 8
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @spin_lock_irqsave(i32* @rtc_lock, i64 %11)
  br label %13

13:                                               ; preds = %28, %1
  %14 = load i32, i32* @RTC_SECONDS, align 4
  %15 = call i32 @CMOS_READ(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @RTC_MINUTES, align 4
  %17 = call i32 @CMOS_READ(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @RTC_HOURS, align 4
  %19 = call i32 @CMOS_READ(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @RTC_DAY_OF_MONTH, align 4
  %21 = call i32 @CMOS_READ(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @RTC_MONTH, align 4
  %23 = call i32 @CMOS_READ(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @RTC_YEAR, align 4
  %25 = call i32 @CMOS_READ(i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @RTC_DEC_YEAR, align 4
  %27 = call i32 @CMOS_READ(i32 %26)
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %13
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @RTC_SECONDS, align 4
  %31 = call i32 @CMOS_READ(i32 %30)
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %13, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* @rtc_lock, i64 %34)
  %36 = load i32, i32* @RTC_CONTROL, align 4
  %37 = call i32 @CMOS_READ(i32 %36)
  %38 = load i32, i32* @RTC_DM_BINARY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i64, i64* @RTC_ALWAYS_BCD, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %41, %33
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @bcd2bin(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @bcd2bin(i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @bcd2bin(i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @bcd2bin(i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @bcd2bin(i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @bcd2bin(i32 %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %44, %41
  %58 = load i32, i32* %9, align 4
  %59 = sub i32 %58, 72
  %60 = add i32 %59, 2000
  %61 = load i32, i32* %3, align 4
  %62 = add i32 %61, %60
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @mktime64(i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %71 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %73 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @CMOS_READ(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bcd2bin(i32) #1

declare dso_local i32 @mktime64(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
