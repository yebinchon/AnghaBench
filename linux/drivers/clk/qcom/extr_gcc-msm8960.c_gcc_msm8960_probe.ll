; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gcc-msm8960.c_gcc_msm8960_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gcc-msm8960.c_gcc_msm8960_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.of_device_id = type { i32* }

@gcc_msm8960_match_table = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cxo_board\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cxo\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"pxo_board\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pxo\00", align 1
@gcc_apq8064_desc = common dso_local global i32 0, align 4
@hfpll1_8064_data = common dso_local global i32 0, align 4
@hfpll1 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@hfpll_l2_8064_data = common dso_local global i32 0, align 4
@hfpll_l2 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"qcom-tsens\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gcc_msm8960_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcc_msm8960_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load i32, i32* @gcc_msm8960_match_table, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.of_device_id* @of_match_device(i32 %10, %struct.device* %12)
  store %struct.of_device_id* %13, %struct.of_device_id** %5, align 8
  %14 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %15 = icmp ne %struct.of_device_id* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %63

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @qcom_cc_register_board_clk(%struct.device* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 19200000)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %63

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 @qcom_cc_register_board_clk(%struct.device* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 27000000)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %63

33:                                               ; preds = %26
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %36 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @qcom_cc_probe(%struct.platform_device* %34, i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %63

43:                                               ; preds = %33
  %44 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %45 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, @gcc_apq8064_desc
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32* @hfpll1_8064_data, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hfpll1, i32 0, i32 0), align 8
  store i32* @hfpll_l2_8064_data, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @hfpll_l2, i32 0, i32 0), align 8
  br label %49

49:                                               ; preds = %48, %43
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call %struct.platform_device* @platform_device_register_data(%struct.device* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 -1, i32* null, i32 0)
  store %struct.platform_device* %52, %struct.platform_device** %6, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %54 = call i64 @IS_ERR(%struct.platform_device* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %58 = call i32 @PTR_ERR(%struct.platform_device* %57)
  store i32 %58, i32* %2, align 4
  br label %63

59:                                               ; preds = %49
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %62 = call i32 @platform_set_drvdata(%struct.platform_device* %60, %struct.platform_device* %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %56, %41, %31, %24, %16
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @qcom_cc_register_board_clk(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @qcom_cc_probe(%struct.platform_device*, i32*) #1

declare dso_local %struct.platform_device* @platform_device_register_data(%struct.device*, i8*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
