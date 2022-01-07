; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gdsc.c_gdsc_poll_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gdsc.c_gdsc_poll_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdsc = type { i32 }

@TIMEOUT_US = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdsc*, i32)* @gdsc_poll_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdsc_poll_status(%struct.gdsc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gdsc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gdsc* %0, %struct.gdsc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @ktime_get()
  store i32 %7, i32* %6, align 4
  br label %8

8:                                                ; preds = %15, %2
  %9 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @gdsc_check_status(%struct.gdsc* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %30

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %14
  %16 = call i32 (...) @ktime_get()
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @ktime_us_delta(i32 %16, i32 %17)
  %19 = load i64, i64* @TIMEOUT_US, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %8, label %21

21:                                               ; preds = %15
  %22 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @gdsc_check_status(%struct.gdsc* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @ETIMEDOUT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %26, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @gdsc_check_status(%struct.gdsc*, i32) #1

declare dso_local i64 @ktime_us_delta(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
