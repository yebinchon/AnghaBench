; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_rtc.c_rtc_get_rtc_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_rtc.c_rtc_get_rtc_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@rtc_lock = common dso_local global i32 0, align 4
@RTC_SECONDS = common dso_local global i32 0, align 4
@RTC_MINUTES = common dso_local global i32 0, align 4
@RTC_HOURS = common dso_local global i32 0, align 4
@RTC_DAY_OF_MONTH = common dso_local global i32 0, align 4
@RTC_MONTH = common dso_local global i32 0, align 4
@RTC_YEAR = common dso_local global i32 0, align 4
@RTC_DAY_OF_WEEK = common dso_local global i32 0, align 4
@RTC_CONTROL = common dso_local global i32 0, align 4
@RTC_DM_BINARY = common dso_local global i8 0, align 1
@RTC_ALWAYS_BCD = common dso_local global i64 0, align 8
@epoch = common dso_local global i32 0, align 4
@RTC_DEC_YEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtc_time*)* @rtc_get_rtc_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc_get_rtc_time(%struct.rtc_time* %0) #0 {
  %2 = alloca %struct.rtc_time*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store %struct.rtc_time* %0, %struct.rtc_time** %2, align 8
  %6 = load i64, i64* @jiffies, align 8
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %22, %1
  %8 = call i64 (...) @rtc_is_updating()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i32, i32* @HZ, align 4
  %14 = mul nsw i32 2, %13
  %15 = sdiv i32 %14, 100
  %16 = sext i32 %15 to i64
  %17 = add i64 %12, %16
  %18 = call i64 @time_before(i64 %11, i64 %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %10, %7
  %21 = phi i1 [ false, %7 ], [ %19, %10 ]
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = call i32 (...) @cpu_relax()
  br label %7

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_lock_irqsave(i32* @rtc_lock, i64 %25)
  %27 = load i32, i32* @RTC_SECONDS, align 4
  %28 = call i8* @CMOS_READ(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @RTC_MINUTES, align 4
  %33 = call i8* @CMOS_READ(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %36 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @RTC_HOURS, align 4
  %38 = call i8* @CMOS_READ(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @RTC_DAY_OF_MONTH, align 4
  %43 = call i8* @CMOS_READ(i32 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @RTC_MONTH, align 4
  %48 = call i8* @CMOS_READ(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @RTC_YEAR, align 4
  %53 = call i8* @CMOS_READ(i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @RTC_DAY_OF_WEEK, align 4
  %58 = call i8* @CMOS_READ(i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @RTC_CONTROL, align 4
  %63 = call i8* @CMOS_READ(i32 %62)
  %64 = ptrtoint i8* %63 to i8
  store i8 %64, i8* %5, align 1
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* @rtc_lock, i64 %65)
  %67 = load i8, i8* %5, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* @RTC_DM_BINARY, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %24
  %74 = load i64, i64* @RTC_ALWAYS_BCD, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %126

76:                                               ; preds = %73, %24
  %77 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %78 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @bcd2bin(i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %83 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %85 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @bcd2bin(i32 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %90 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %92 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @bcd2bin(i32 %93)
  %95 = ptrtoint i8* %94 to i32
  %96 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %97 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %99 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @bcd2bin(i32 %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %104 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %106 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @bcd2bin(i32 %107)
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %111 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 4
  %112 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %113 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @bcd2bin(i32 %114)
  %116 = ptrtoint i8* %115 to i32
  %117 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %118 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  %119 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %120 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @bcd2bin(i32 %121)
  %123 = ptrtoint i8* %122 to i32
  %124 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %125 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %76, %73
  %127 = load i32, i32* @epoch, align 4
  %128 = sub nsw i32 %127, 1900
  %129 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %130 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = add i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %134 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = icmp ule i32 %135, 69
  br i1 %136, label %137, label %142

137:                                              ; preds = %126
  %138 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %139 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = add i32 %140, 100
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %137, %126
  %143 = load %struct.rtc_time*, %struct.rtc_time** %2, align 8
  %144 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = add i32 %145, -1
  store i32 %146, i32* %144, align 4
  ret void
}

declare dso_local i64 @rtc_is_updating(...) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @CMOS_READ(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
