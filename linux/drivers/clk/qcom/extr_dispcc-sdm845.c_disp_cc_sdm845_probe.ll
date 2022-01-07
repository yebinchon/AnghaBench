; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_dispcc-sdm845.c_disp_cc_sdm845_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_dispcc-sdm845.c_disp_cc_sdm845_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.regmap = type { i32 }
%struct.alpha_pll_config = type { i32, i32 }

@disp_cc_sdm845_desc = common dso_local global i32 0, align 4
@disp_cc_pll0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @disp_cc_sdm845_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disp_cc_sdm845_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca %struct.alpha_pll_config, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = bitcast %struct.alpha_pll_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.regmap* @qcom_cc_map(%struct.platform_device* %7, i32* @disp_cc_sdm845_desc)
  store %struct.regmap* %8, %struct.regmap** %4, align 8
  %9 = load %struct.regmap*, %struct.regmap** %4, align 8
  %10 = call i64 @IS_ERR(%struct.regmap* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.regmap*, %struct.regmap** %4, align 8
  %14 = call i32 @PTR_ERR(%struct.regmap* %13)
  store i32 %14, i32* %2, align 4
  br label %25

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %5, i32 0, i32 0
  store i32 44, i32* %16, align 4
  %17 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %5, i32 0, i32 1
  store i32 51882, i32* %17, align 4
  %18 = load %struct.regmap*, %struct.regmap** %4, align 8
  %19 = call i32 @clk_fabia_pll_configure(i32* @disp_cc_pll0, %struct.regmap* %18, %struct.alpha_pll_config* %5)
  %20 = load %struct.regmap*, %struct.regmap** %4, align 8
  %21 = call i32 @regmap_update_bits(%struct.regmap* %20, i32 32768, i32 2032, i32 2032)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.regmap*, %struct.regmap** %4, align 8
  %24 = call i32 @qcom_cc_really_probe(%struct.platform_device* %22, i32* @disp_cc_sdm845_desc, %struct.regmap* %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %15, %12
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.regmap* @qcom_cc_map(%struct.platform_device*, i32*) #2

declare dso_local i64 @IS_ERR(%struct.regmap*) #2

declare dso_local i32 @PTR_ERR(%struct.regmap*) #2

declare dso_local i32 @clk_fabia_pll_configure(i32*, %struct.regmap*, %struct.alpha_pll_config*) #2

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #2

declare dso_local i32 @qcom_cc_really_probe(%struct.platform_device*, i32*, %struct.regmap*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
