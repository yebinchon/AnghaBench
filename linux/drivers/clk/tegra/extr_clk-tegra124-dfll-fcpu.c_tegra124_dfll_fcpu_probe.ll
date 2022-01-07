; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra124-dfll-fcpu.c_tegra124_dfll_fcpu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra124-dfll-fcpu.c_tegra124_dfll_fcpu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.tegra_dfll_soc_data = type { i32, i32, i32, %struct.rail_alignment }
%struct.rail_alignment = type { i32 }
%struct.dfll_fcpu_data = type { i32, i32, i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@tegra_sku_info = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [39 x i8] c"unknown max CPU freq for speedo_id=%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"no CPU0 device\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"nvidia,pwm-to-pmic\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"couldn't add OPP table: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra124_dfll_fcpu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_dfll_fcpu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_dfll_soc_data*, align 8
  %9 = alloca %struct.dfll_fcpu_data*, align 8
  %10 = alloca %struct.rail_alignment, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.dfll_fcpu_data* @of_device_get_match_data(%struct.TYPE_8__* %12)
  store %struct.dfll_fcpu_data* %13, %struct.dfll_fcpu_data** %9, align 8
  %14 = load %struct.dfll_fcpu_data*, %struct.dfll_fcpu_data** %9, align 8
  %15 = icmp ne %struct.dfll_fcpu_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %147

19:                                               ; preds = %1
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tegra_sku_info, i32 0, i32 0), align 4
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tegra_sku_info, i32 0, i32 1), align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tegra_sku_info, i32 0, i32 2), align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.dfll_fcpu_data*, %struct.dfll_fcpu_data** %9, align 8
  %25 = getelementptr inbounds %struct.dfll_fcpu_data, %struct.dfll_fcpu_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %147

35:                                               ; preds = %19
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.tegra_dfll_soc_data* @devm_kzalloc(%struct.TYPE_8__* %37, i32 16, i32 %38)
  store %struct.tegra_dfll_soc_data* %39, %struct.tegra_dfll_soc_data** %8, align 8
  %40 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %8, align 8
  %41 = icmp ne %struct.tegra_dfll_soc_data* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %147

45:                                               ; preds = %35
  %46 = call i32 @get_cpu_device(i32 0)
  %47 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %8, align 8
  %48 = getelementptr inbounds %struct.tegra_dfll_soc_data, %struct.tegra_dfll_soc_data* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %8, align 8
  %50 = getelementptr inbounds %struct.tegra_dfll_soc_data, %struct.tegra_dfll_soc_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %45
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %147

59:                                               ; preds = %45
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @of_property_read_bool(i32 %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @get_alignment_from_dt(%struct.TYPE_8__* %68, %struct.rail_alignment* %10)
  br label %79

70:                                               ; preds = %59
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i32 @get_alignment_from_regulator(%struct.TYPE_8__* %72, %struct.rail_alignment* %10)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %147

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %66
  %80 = load %struct.dfll_fcpu_data*, %struct.dfll_fcpu_data** %9, align 8
  %81 = getelementptr inbounds %struct.dfll_fcpu_data, %struct.dfll_fcpu_data* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %8, align 8
  %88 = getelementptr inbounds %struct.tegra_dfll_soc_data, %struct.tegra_dfll_soc_data* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %8, align 8
  %90 = getelementptr inbounds %struct.tegra_dfll_soc_data, %struct.tegra_dfll_soc_data* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.dfll_fcpu_data*, %struct.dfll_fcpu_data** %9, align 8
  %93 = getelementptr inbounds %struct.dfll_fcpu_data, %struct.dfll_fcpu_data* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.dfll_fcpu_data*, %struct.dfll_fcpu_data** %9, align 8
  %96 = getelementptr inbounds %struct.dfll_fcpu_data, %struct.dfll_fcpu_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %8, align 8
  %102 = getelementptr inbounds %struct.tegra_dfll_soc_data, %struct.tegra_dfll_soc_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @tegra_cvb_add_opp_table(i32 %91, i32 %94, i32 %97, %struct.rail_alignment* %10, i32 %98, i32 %99, i32 %100, i32 %103)
  %105 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %8, align 8
  %106 = getelementptr inbounds %struct.tegra_dfll_soc_data, %struct.tegra_dfll_soc_data* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %8, align 8
  %108 = getelementptr inbounds %struct.tegra_dfll_soc_data, %struct.tegra_dfll_soc_data* %107, i32 0, i32 3
  %109 = bitcast %struct.rail_alignment* %108 to i8*
  %110 = bitcast %struct.rail_alignment* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %109, i8* align 4 %110, i64 4, i1 false)
  %111 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %8, align 8
  %112 = getelementptr inbounds %struct.tegra_dfll_soc_data, %struct.tegra_dfll_soc_data* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @IS_ERR(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %79
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %8, align 8
  %120 = getelementptr inbounds %struct.tegra_dfll_soc_data, %struct.tegra_dfll_soc_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @PTR_ERR(i32 %121)
  %123 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %118, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  %124 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %8, align 8
  %125 = getelementptr inbounds %struct.tegra_dfll_soc_data, %struct.tegra_dfll_soc_data* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @PTR_ERR(i32 %126)
  store i32 %127, i32* %2, align 4
  br label %147

128:                                              ; preds = %79
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %8, align 8
  %131 = call i32 @tegra_dfll_register(%struct.platform_device* %129, %struct.tegra_dfll_soc_data* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %128
  %135 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %8, align 8
  %136 = getelementptr inbounds %struct.tegra_dfll_soc_data, %struct.tegra_dfll_soc_data* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %8, align 8
  %139 = getelementptr inbounds %struct.tegra_dfll_soc_data, %struct.tegra_dfll_soc_data* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.tegra_dfll_soc_data*, %struct.tegra_dfll_soc_data** %8, align 8
  %142 = getelementptr inbounds %struct.tegra_dfll_soc_data, %struct.tegra_dfll_soc_data* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @tegra_cvb_remove_opp_table(i32 %137, i32 %140, i32 %143)
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %2, align 4
  br label %147

146:                                              ; preds = %128
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %146, %134, %116, %76, %53, %42, %28, %16
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.dfll_fcpu_data* @of_device_get_match_data(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local %struct.tegra_dfll_soc_data* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @get_cpu_device(i32) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @get_alignment_from_dt(%struct.TYPE_8__*, %struct.rail_alignment*) #1

declare dso_local i32 @get_alignment_from_regulator(%struct.TYPE_8__*, %struct.rail_alignment*) #1

declare dso_local i32 @tegra_cvb_add_opp_table(i32, i32, i32, %struct.rail_alignment*, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @tegra_dfll_register(%struct.platform_device*, %struct.tegra_dfll_soc_data*) #1

declare dso_local i32 @tegra_cvb_remove_opp_table(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
