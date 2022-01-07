; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_rtc.c_mach_get_cmos_time.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_rtc.c_mach_get_cmos_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.timespec64 = type { i64, i64 }

@rtc_lock = common dso_local global i32 0, align 4
@RTC_FREQ_SELECT = common dso_local global i64 0, align 8
@RTC_UIP = common dso_local global i32 0, align 4
@RTC_SECONDS = common dso_local global i64 0, align 8
@RTC_MINUTES = common dso_local global i64 0, align 8
@RTC_HOURS = common dso_local global i64 0, align 8
@RTC_DAY_OF_MONTH = common dso_local global i64 0, align 8
@RTC_MONTH = common dso_local global i64 0, align 8
@RTC_YEAR = common dso_local global i64 0, align 8
@RTC_CONTROL = common dso_local global i64 0, align 8
@RTC_ALWAYS_BCD = common dso_local global i64 0, align 8
@RTC_DM_BINARY = common dso_local global i32 0, align 4
@CMOS_YEARS_OFFS = common dso_local global i64 0, align 8
@FADT2_REVISION_ID = common dso_local global i64 0, align 8
@acpi_gbl_FADT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mach_get_cmos_time(%struct.timespec64* %0) #0 {
  %2 = alloca %struct.timespec64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.timespec64* %0, %struct.timespec64** %2, align 8
  store i32 0, i32* %10, align 4
  %12 = call i32 (...) @pm_trace_rtc_valid()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %16 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %18 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  br label %106

19:                                               ; preds = %1
  %20 = load i64, i64* %11, align 8
  %21 = call i32 @spin_lock_irqsave(i32* @rtc_lock, i64 %20)
  br label %22

22:                                               ; preds = %28, %19
  %23 = load i64, i64* @RTC_FREQ_SELECT, align 8
  %24 = call i32 @CMOS_READ(i64 %23)
  %25 = load i32, i32* @RTC_UIP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 (...) @cpu_relax()
  br label %22

30:                                               ; preds = %22
  %31 = load i64, i64* @RTC_SECONDS, align 8
  %32 = call i32 @CMOS_READ(i64 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i64, i64* @RTC_MINUTES, align 8
  %34 = call i32 @CMOS_READ(i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i64, i64* @RTC_HOURS, align 8
  %36 = call i32 @CMOS_READ(i64 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i64, i64* @RTC_DAY_OF_MONTH, align 8
  %38 = call i32 @CMOS_READ(i64 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i64, i64* @RTC_MONTH, align 8
  %40 = call i32 @CMOS_READ(i64 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i64, i64* @RTC_YEAR, align 8
  %42 = call i32 @CMOS_READ(i64 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i64, i64* @RTC_CONTROL, align 8
  %44 = call i32 @CMOS_READ(i64 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i64, i64* @RTC_ALWAYS_BCD, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %30
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @RTC_DM_BINARY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %47, %30
  %53 = phi i1 [ false, %30 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @WARN_ON_ONCE(i32 %54)
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* @rtc_lock, i64 %56)
  %58 = load i64, i64* @RTC_ALWAYS_BCD, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @RTC_DM_BINARY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %60, %52
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @bcd2bin(i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @bcd2bin(i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @bcd2bin(i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @bcd2bin(i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @bcd2bin(i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @bcd2bin(i32 %76)
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %65, %60
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @bcd2bin(i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = mul i32 %84, 100
  %86 = load i32, i32* %4, align 4
  %87 = add i32 %86, %85
  store i32 %87, i32* %4, align 4
  br label %94

88:                                               ; preds = %78
  %89 = load i64, i64* @CMOS_YEARS_OFFS, align 8
  %90 = load i32, i32* %4, align 4
  %91 = zext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %88, %81
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i64 @mktime64(i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %103 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load %struct.timespec64*, %struct.timespec64** %2, align 8
  %105 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  br label %106

106:                                              ; preds = %94, %14
  ret void
}

declare dso_local i32 @pm_trace_rtc_valid(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @CMOS_READ(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bcd2bin(i32) #1

declare dso_local i64 @mktime64(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
