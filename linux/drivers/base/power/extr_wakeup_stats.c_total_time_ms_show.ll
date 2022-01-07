; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup_stats.c_total_time_ms_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup_stats.c_total_time_ms_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.wakeup_source = type { i32, i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @total_time_ms_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @total_time_ms_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wakeup_source*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.wakeup_source* @dev_get_drvdata(%struct.device* %10)
  store %struct.wakeup_source* %11, %struct.wakeup_source** %7, align 8
  %12 = load %struct.wakeup_source*, %struct.wakeup_source** %7, align 8
  %13 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load %struct.wakeup_source*, %struct.wakeup_source** %7, align 8
  %16 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = call i32 (...) @ktime_get()
  %21 = load %struct.wakeup_source*, %struct.wakeup_source** %7, align 8
  %22 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ktime_sub(i32 %20, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @ktime_add(i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %19, %3
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @ktime_to_ms(i32 %30)
  %32 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %31)
  ret i32 %32
}

declare dso_local %struct.wakeup_source* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_add(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ktime_to_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
