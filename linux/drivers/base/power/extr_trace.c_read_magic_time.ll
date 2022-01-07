; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_trace.c_read_magic_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_trace.c_read_magic_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"RTC time: %ptRt, date: %ptRd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_magic_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_magic_time() #0 {
  %1 = alloca %struct.rtc_time, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @mc146818_get_time(%struct.rtc_time* %1)
  %4 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.rtc_time* %1, %struct.rtc_time* %1)
  %5 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %1, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ugt i32 %7, 100
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = sub i32 %10, 100
  store i32 %11, i32* %2, align 4
  br label %12

12:                                               ; preds = %9, %0
  %13 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %1, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %14, 100
  %16 = load i32, i32* %2, align 4
  %17 = add i32 %16, %15
  store i32 %17, i32* %2, align 4
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %1, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = mul nsw i32 %20, 100
  %22 = mul nsw i32 %21, 12
  %23 = load i32, i32* %2, align 4
  %24 = add i32 %23, %22
  store i32 %24, i32* %2, align 4
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %1, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 100
  %28 = mul nsw i32 %27, 12
  %29 = mul nsw i32 %28, 28
  %30 = load i32, i32* %2, align 4
  %31 = add i32 %30, %29
  store i32 %31, i32* %2, align 4
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %1, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 3
  %35 = mul nsw i32 %34, 100
  %36 = mul nsw i32 %35, 12
  %37 = mul nsw i32 %36, 28
  %38 = mul nsw i32 %37, 24
  %39 = load i32, i32* %2, align 4
  %40 = add i32 %39, %38
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @mc146818_get_time(%struct.rtc_time*) #1

declare dso_local i32 @pr_info(i8*, %struct.rtc_time*, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
