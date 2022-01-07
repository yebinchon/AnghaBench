; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_apcs-msm8916.c_qcom_apcs_msm8916_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_apcs-msm8916.c_qcom_apcs_msm8916_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device* }
%struct.clk_regmap_mux_div = type { i32, i32, i32, i32, %struct.TYPE_7__, i32, %struct.TYPE_6__, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.regmap* }
%struct.TYPE_5__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i32, i32*, i32, i32 }
%struct.regmap = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to get regmap: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"a53mux\00", align 1
@gpll0_a53cc = common dso_local global i32 0, align 4
@clk_regmap_mux_div_ops = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@gpll0_a53cc_map = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to get clk: %d\0A\00", align 1
@a53cc_notifier_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to register clock notifier: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to register regmap clock: %d\0A\00", align 1
@of_clk_hw_simple_get = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to add clock provider: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_apcs_msm8916_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_apcs_msm8916_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.clk_regmap_mux_div*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.clk_init_data, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = bitcast %struct.clk_init_data* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call %struct.regmap* @dev_get_regmap(%struct.device* %18, i32* null)
  store %struct.regmap* %19, %struct.regmap** %7, align 8
  %20 = load %struct.regmap*, %struct.regmap** %7, align 8
  %21 = icmp ne %struct.regmap* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %2, align 4
  br label %139

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.clk_regmap_mux_div* @devm_kzalloc(%struct.device* %28, i32 56, i32 %29)
  store %struct.clk_regmap_mux_div* %30, %struct.clk_regmap_mux_div** %6, align 8
  %31 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %32 = icmp ne %struct.clk_regmap_mux_div* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %139

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %37, align 8
  %38 = load i32, i32* @gpll0_a53cc, align 4
  %39 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 4
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @gpll0_a53cc, align 4
  %41 = call i32 @ARRAY_SIZE(i32 %40)
  %42 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 3
  store i32 %41, i32* %42, align 8
  %43 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 2
  store i32* @clk_regmap_mux_div_ops, i32** %43, align 8
  %44 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %45 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 1
  store i32 %44, i32* %45, align 8
  %46 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %47 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store %struct.clk_init_data* %8, %struct.clk_init_data** %49, align 8
  %50 = load %struct.regmap*, %struct.regmap** %7, align 8
  %51 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %52 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store %struct.regmap* %50, %struct.regmap** %53, align 8
  %54 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %55 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %54, i32 0, i32 0
  store i32 80, i32* %55, align 8
  %56 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %57 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %56, i32 0, i32 1
  store i32 5, i32* %57, align 4
  %58 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %59 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %58, i32 0, i32 8
  store i64 0, i64* %59, align 8
  %60 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %61 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %60, i32 0, i32 2
  store i32 3, i32* %61, align 8
  %62 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %63 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %62, i32 0, i32 3
  store i32 8, i32* %63, align 4
  %64 = load i32, i32* @gpll0_a53cc_map, align 4
  %65 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %66 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 8
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = call i32 @devm_clk_get(%struct.device* %67, i32* null)
  %69 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %70 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %72 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %36
  %77 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %78 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %2, align 4
  br label %139

85:                                               ; preds = %36
  %86 = load i32, i32* @a53cc_notifier_cb, align 4
  %87 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %88 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %91 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %94 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %93, i32 0, i32 4
  %95 = call i32 @clk_notifier_register(i32 %92, %struct.TYPE_7__* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %85
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @dev_err(%struct.device* %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %2, align 4
  br label %139

103:                                              ; preds = %85
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %106 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %105, i32 0, i32 6
  %107 = call i32 @devm_clk_register_regmap(%struct.device* %104, %struct.TYPE_6__* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @dev_err(%struct.device* %111, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  br label %131

114:                                              ; preds = %103
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = load i32, i32* @of_clk_hw_simple_get, align 4
  %117 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %118 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %117, i32 0, i32 6
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = call i32 @devm_of_clk_add_hw_provider(%struct.device* %115, i32 %116, %struct.TYPE_5__* %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %114
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @dev_err(%struct.device* %124, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  br label %131

127:                                              ; preds = %114
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %130 = call i32 @platform_set_drvdata(%struct.platform_device* %128, %struct.clk_regmap_mux_div* %129)
  store i32 0, i32* %2, align 4
  br label %139

131:                                              ; preds = %123, %110
  %132 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %133 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %6, align 8
  %136 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %135, i32 0, i32 4
  %137 = call i32 @clk_notifier_unregister(i32 %134, %struct.TYPE_7__* %136)
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %131, %127, %98, %76, %33, %22
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.regmap* @dev_get_regmap(%struct.device*, i32*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

declare dso_local %struct.clk_regmap_mux_div* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @clk_notifier_register(i32, %struct.TYPE_7__*) #2

declare dso_local i32 @devm_clk_register_regmap(%struct.device*, %struct.TYPE_6__*) #2

declare dso_local i32 @devm_of_clk_add_hw_provider(%struct.device*, i32, %struct.TYPE_5__*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.clk_regmap_mux_div*) #2

declare dso_local i32 @clk_notifier_unregister(i32, %struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
