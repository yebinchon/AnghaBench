; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gcc-msm8974.c_gcc_msm8974_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gcc-msm8974.c_gcc_msm8974_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.of_device_id = type { i32 }

@gcc_msm8974_match_table = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"xo_board\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"xo\00", align 1
@gcc_msm8974_desc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gcc_msm8974_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcc_msm8974_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load i32, i32* @gcc_msm8974_match_table, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.of_device_id* @of_match_device(i32 %10, %struct.device* %11)
  store %struct.of_device_id* %12, %struct.of_device_id** %7, align 8
  %13 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %14 = icmp ne %struct.of_device_id* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %47

18:                                               ; preds = %1
  %19 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %20 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = call i32 (...) @msm8974_pro_clock_override()
  br label %30

30:                                               ; preds = %28, %18
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = call i32 @qcom_cc_register_board_clk(%struct.device* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 19200000)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %47

37:                                               ; preds = %30
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = call i32 @qcom_cc_register_sleep_clk(%struct.device* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %47

44:                                               ; preds = %37
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = call i32 @qcom_cc_probe(%struct.platform_device* %45, i32* @gcc_msm8974_desc)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %42, %35, %15
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @msm8974_pro_clock_override(...) #1

declare dso_local i32 @qcom_cc_register_board_clk(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @qcom_cc_register_sleep_clk(%struct.device*) #1

declare dso_local i32 @qcom_cc_probe(%struct.platform_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
