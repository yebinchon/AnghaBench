; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gcc-ipq806x.c_gcc_ipq806x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gcc-ipq806x.c_gcc_ipq806x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"cxo_board\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cxo\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"pxo_board\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pxo\00", align 1
@gcc_ipq806x_desc = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gcc_ipq806x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcc_ipq806x_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i32 @qcom_cc_register_board_clk(%struct.device* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 25000000)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @qcom_cc_register_board_clk(%struct.device* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 25000000)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %50

22:                                               ; preds = %15
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = call i32 @qcom_cc_probe(%struct.platform_device* %23, i32* @gcc_ipq806x_desc)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %50

29:                                               ; preds = %22
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call %struct.regmap* @dev_get_regmap(%struct.device* %30, i32* null)
  store %struct.regmap* %31, %struct.regmap** %5, align 8
  %32 = load %struct.regmap*, %struct.regmap** %5, align 8
  %33 = icmp ne %struct.regmap* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %50

37:                                               ; preds = %29
  %38 = load %struct.regmap*, %struct.regmap** %5, align 8
  %39 = call i32 @regmap_update_bits(%struct.regmap* %38, i32 12708, i32 -64, i32 1073742848)
  %40 = load %struct.regmap*, %struct.regmap** %5, align 8
  %41 = call i32 @regmap_write(%struct.regmap* %40, i32 12720, i32 12416)
  %42 = load %struct.regmap*, %struct.regmap** %5, align 8
  %43 = call i32 @regmap_write(%struct.regmap* %42, i32 15544, i32 8)
  %44 = load %struct.regmap*, %struct.regmap** %5, align 8
  %45 = call i32 @regmap_write(%struct.regmap* %44, i32 15576, i32 8)
  %46 = load %struct.regmap*, %struct.regmap** %5, align 8
  %47 = call i32 @regmap_write(%struct.regmap* %46, i32 15608, i32 8)
  %48 = load %struct.regmap*, %struct.regmap** %5, align 8
  %49 = call i32 @regmap_write(%struct.regmap* %48, i32 15640, i32 8)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %37, %34, %27, %20, %13
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @qcom_cc_register_board_clk(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @qcom_cc_probe(%struct.platform_device*, i32*) #1

declare dso_local %struct.regmap* @dev_get_regmap(%struct.device*, i32*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
