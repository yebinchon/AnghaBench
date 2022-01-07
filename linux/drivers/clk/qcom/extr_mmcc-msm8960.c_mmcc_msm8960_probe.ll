; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_mmcc-msm8960.c_mmcc_msm8960_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_mmcc-msm8960.c_mmcc_msm8960_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.of_device_id = type { i32 }
%struct.regmap = type { i32 }

@mmcc_msm8960_match_table = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"qcom,mmcc-apq8064\00", align 1
@clk_tbl_gfx3d_8064 = common dso_local global i32 0, align 4
@gfx3d_src = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@gfx3d_8064_init = common dso_local global i32 0, align 4
@mmcc_pxo_pll8_pll2_pll15_map = common dso_local global i8* null, align 8
@pll15 = common dso_local global i32 0, align 4
@pll15_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mmcc_msm8960_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmcc_msm8960_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %7, align 8
  %10 = load i32, i32* @mmcc_msm8960_match_table, align 4
  %11 = load %struct.device*, %struct.device** %7, align 8
  %12 = call %struct.of_device_id* @of_match_device(i32 %10, %struct.device* %11)
  store %struct.of_device_id* %12, %struct.of_device_id** %4, align 8
  %13 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %14 = icmp ne %struct.of_device_id* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %56

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %7, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @of_device_is_compatible(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load i32, i32* @clk_tbl_gfx3d_8064, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx3d_src, i32 0, i32 2), align 8
  store i32* @gfx3d_8064_init, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx3d_src, i32 0, i32 1, i32 0, i32 0), align 8
  %27 = load i8*, i8** @mmcc_pxo_pll8_pll2_pll15_map, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx3d_src, i32 0, i32 0), align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load i8*, i8** @mmcc_pxo_pll8_pll2_pll15_map, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gfx3d_src, i32 0, i32 0), align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  br label %35

35:                                               ; preds = %25, %18
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %38 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.regmap* @qcom_cc_map(%struct.platform_device* %36, i32 %39)
  store %struct.regmap* %40, %struct.regmap** %5, align 8
  %41 = load %struct.regmap*, %struct.regmap** %5, align 8
  %42 = call i64 @IS_ERR(%struct.regmap* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load %struct.regmap*, %struct.regmap** %5, align 8
  %46 = call i32 @PTR_ERR(%struct.regmap* %45)
  store i32 %46, i32* %2, align 4
  br label %56

47:                                               ; preds = %35
  %48 = load %struct.regmap*, %struct.regmap** %5, align 8
  %49 = call i32 @clk_pll_configure_sr(i32* @pll15, %struct.regmap* %48, i32* @pll15_config, i32 0)
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %52 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.regmap*, %struct.regmap** %5, align 8
  %55 = call i32 @qcom_cc_really_probe(%struct.platform_device* %50, i32 %53, %struct.regmap* %54)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %47, %44, %15
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @of_device_is_compatible(i32, i8*) #1

declare dso_local %struct.regmap* @qcom_cc_map(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @clk_pll_configure_sr(i32*, %struct.regmap*, i32*, i32) #1

declare dso_local i32 @qcom_cc_really_probe(%struct.platform_device*, i32, %struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
