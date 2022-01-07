; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-bd718x7.c_bd71837_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-bd718x7.c_bd71837_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_init_data = type { i8*, i32, i8**, i32* }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.bd718xx_clk = type { %struct.TYPE_8__, %struct.platform_device*, %struct.rohm_regmap_dev*, i32, i32 }
%struct.TYPE_8__ = type { %struct.clk_init_data* }
%struct.rohm_regmap_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bd718xx-32k-out\00", align 1
@bd71837_clk_ops = common dso_local global i32 0, align 4
@__const.bd71837_clk_probe.init = private unnamed_addr constant %struct.clk_init_data { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 0, i8** null, i32* @bd71837_clk_ops }, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"No parent clk found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BD718XX_REG_OUT32K = common dso_local global i32 0, align 4
@BD718XX_OUT32K_EN = common dso_local global i32 0, align 4
@BD70528_REG_CLK_OUT = common dso_local global i32 0, align 4
@BD70528_CLK_OUT_EN_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Unknown clk chip\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to register 32K clk\00", align 1
@of_clk_hw_simple_get = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"adding clk provider failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bd71837_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd71837_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bd718xx_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.rohm_regmap_dev*, align 8
  %9 = alloca %struct.clk_init_data, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = call %struct.rohm_regmap_dev* @dev_get_drvdata(%struct.device* %16)
  store %struct.rohm_regmap_dev* %17, %struct.rohm_regmap_dev** %8, align 8
  %18 = bitcast %struct.clk_init_data* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.clk_init_data* @__const.bd71837_clk_probe.init to i8*), i64 32, i1 false)
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.bd718xx_clk* @devm_kzalloc(%struct.TYPE_7__* %20, i32 32, i32 %21)
  store %struct.bd718xx_clk* %22, %struct.bd718xx_clk** %4, align 8
  %23 = load %struct.bd718xx_clk*, %struct.bd718xx_clk** %4, align 8
  %24 = icmp ne %struct.bd718xx_clk* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %109

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 1
  store i32 1, i32* %29, align 8
  %30 = load %struct.device*, %struct.device** %7, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @of_clk_get_parent_name(i32 %32, i32 0)
  store i8* %33, i8** %6, align 8
  %34 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  store i8** %6, i8*** %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %28
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @dev_err(%struct.TYPE_7__* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %109

43:                                               ; preds = %28
  %44 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %8, align 8
  %45 = getelementptr inbounds %struct.rohm_regmap_dev, %struct.rohm_regmap_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %61 [
    i32 129, label %47
    i32 128, label %47
    i32 130, label %54
  ]

47:                                               ; preds = %43, %43
  %48 = load i32, i32* @BD718XX_REG_OUT32K, align 4
  %49 = load %struct.bd718xx_clk*, %struct.bd718xx_clk** %4, align 8
  %50 = getelementptr inbounds %struct.bd718xx_clk, %struct.bd718xx_clk* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @BD718XX_OUT32K_EN, align 4
  %52 = load %struct.bd718xx_clk*, %struct.bd718xx_clk** %4, align 8
  %53 = getelementptr inbounds %struct.bd718xx_clk, %struct.bd718xx_clk* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  br label %67

54:                                               ; preds = %43
  %55 = load i32, i32* @BD70528_REG_CLK_OUT, align 4
  %56 = load %struct.bd718xx_clk*, %struct.bd718xx_clk** %4, align 8
  %57 = getelementptr inbounds %struct.bd718xx_clk, %struct.bd718xx_clk* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @BD70528_CLK_OUT_EN_MASK, align 4
  %59 = load %struct.bd718xx_clk*, %struct.bd718xx_clk** %4, align 8
  %60 = getelementptr inbounds %struct.bd718xx_clk, %struct.bd718xx_clk* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  br label %67

61:                                               ; preds = %43
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @dev_err(%struct.TYPE_7__* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %109

67:                                               ; preds = %54, %47
  %68 = load %struct.rohm_regmap_dev*, %struct.rohm_regmap_dev** %8, align 8
  %69 = load %struct.bd718xx_clk*, %struct.bd718xx_clk** %4, align 8
  %70 = getelementptr inbounds %struct.bd718xx_clk, %struct.bd718xx_clk* %69, i32 0, i32 2
  store %struct.rohm_regmap_dev* %68, %struct.rohm_regmap_dev** %70, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = load %struct.bd718xx_clk*, %struct.bd718xx_clk** %4, align 8
  %73 = getelementptr inbounds %struct.bd718xx_clk, %struct.bd718xx_clk* %72, i32 0, i32 1
  store %struct.platform_device* %71, %struct.platform_device** %73, align 8
  %74 = load %struct.bd718xx_clk*, %struct.bd718xx_clk** %4, align 8
  %75 = getelementptr inbounds %struct.bd718xx_clk, %struct.bd718xx_clk* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store %struct.clk_init_data* %9, %struct.clk_init_data** %76, align 8
  %77 = load %struct.device*, %struct.device** %7, align 8
  %78 = getelementptr inbounds %struct.device, %struct.device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  %81 = call i32 @of_property_read_string_index(i32 %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 0, i8** %80)
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load %struct.bd718xx_clk*, %struct.bd718xx_clk** %4, align 8
  %85 = getelementptr inbounds %struct.bd718xx_clk, %struct.bd718xx_clk* %84, i32 0, i32 0
  %86 = call i32 @devm_clk_hw_register(%struct.TYPE_7__* %83, %struct.TYPE_8__* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %67
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 @dev_err(%struct.TYPE_7__* %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %109

94:                                               ; preds = %67
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = load i32, i32* @of_clk_hw_simple_get, align 4
  %98 = load %struct.bd718xx_clk*, %struct.bd718xx_clk** %4, align 8
  %99 = getelementptr inbounds %struct.bd718xx_clk, %struct.bd718xx_clk* %98, i32 0, i32 0
  %100 = call i32 @devm_of_clk_add_hw_provider(%struct.TYPE_7__* %96, i32 %97, %struct.TYPE_8__* %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %94
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i32 @dev_err(%struct.TYPE_7__* %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %107

107:                                              ; preds = %103, %94
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %89, %61, %37, %25
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.rohm_regmap_dev* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.bd718xx_clk* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i8* @of_clk_get_parent_name(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @of_property_read_string_index(i32, i8*, i32, i8**) #1

declare dso_local i32 @devm_clk_hw_register(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @devm_of_clk_add_hw_provider(%struct.TYPE_7__*, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
