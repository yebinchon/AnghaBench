; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-vexpress-osc.c_vexpress_osc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/versatile/extr_clk-vexpress-osc.c_vexpress_osc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.clk_init_data = type { i32, i64, i64, i32* }
%struct.vexpress_osc = type { i8*, i8*, %struct.TYPE_8__, %struct.clk* }
%struct.TYPE_8__ = type { %struct.clk_init_data* }
%struct.clk = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"freq-range\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@vexpress_osc_ops = common dso_local global i32 0, align 4
@of_clk_src_simple_get = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Registered clock '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vexpress_osc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vexpress_osc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.clk_init_data, align 8
  %5 = alloca %struct.vexpress_osc*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca [2 x i8*], align 16
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.vexpress_osc* @devm_kzalloc(%struct.TYPE_7__* %9, i32 32, i32 %10)
  store %struct.vexpress_osc* %11, %struct.vexpress_osc** %5, align 8
  %12 = load %struct.vexpress_osc*, %struct.vexpress_osc** %5, align 8
  %13 = icmp ne %struct.vexpress_osc* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %103

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call %struct.clk* @devm_regmap_init_vexpress_config(%struct.TYPE_7__* %19)
  %21 = load %struct.vexpress_osc*, %struct.vexpress_osc** %5, align 8
  %22 = getelementptr inbounds %struct.vexpress_osc, %struct.vexpress_osc* %21, i32 0, i32 3
  store %struct.clk* %20, %struct.clk** %22, align 8
  %23 = load %struct.vexpress_osc*, %struct.vexpress_osc** %5, align 8
  %24 = getelementptr inbounds %struct.vexpress_osc, %struct.vexpress_osc* %23, i32 0, i32 3
  %25 = load %struct.clk*, %struct.clk** %24, align 8
  %26 = call i64 @IS_ERR(%struct.clk* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.vexpress_osc*, %struct.vexpress_osc** %5, align 8
  %30 = getelementptr inbounds %struct.vexpress_osc, %struct.vexpress_osc* %29, i32 0, i32 3
  %31 = load %struct.clk*, %struct.clk** %30, align 8
  %32 = call i32 @PTR_ERR(%struct.clk* %31)
  store i32 %32, i32* %2, align 4
  br label %103

33:                                               ; preds = %17
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %39 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %40 = call i32 @ARRAY_SIZE(i8** %39)
  %41 = call i64 @of_property_read_u32_array(i32 %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %38, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %33
  %44 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %45 = load i8*, i8** %44, align 16
  %46 = load %struct.vexpress_osc*, %struct.vexpress_osc** %5, align 8
  %47 = getelementptr inbounds %struct.vexpress_osc, %struct.vexpress_osc* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.vexpress_osc*, %struct.vexpress_osc** %5, align 8
  %51 = getelementptr inbounds %struct.vexpress_osc, %struct.vexpress_osc* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %43, %33
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 0
  %58 = call i64 @of_property_read_string(i32 %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @dev_name(%struct.TYPE_7__* %62)
  %64 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  br label %65

65:                                               ; preds = %60, %52
  %66 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 3
  store i32* @vexpress_osc_ops, i32** %66, align 8
  %67 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.vexpress_osc*, %struct.vexpress_osc** %5, align 8
  %70 = getelementptr inbounds %struct.vexpress_osc, %struct.vexpress_osc* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store %struct.clk_init_data* %4, %struct.clk_init_data** %71, align 8
  %72 = load %struct.vexpress_osc*, %struct.vexpress_osc** %5, align 8
  %73 = getelementptr inbounds %struct.vexpress_osc, %struct.vexpress_osc* %72, i32 0, i32 2
  %74 = call %struct.clk* @clk_register(i32* null, %struct.TYPE_8__* %73)
  store %struct.clk* %74, %struct.clk** %6, align 8
  %75 = load %struct.clk*, %struct.clk** %6, align 8
  %76 = call i64 @IS_ERR(%struct.clk* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %65
  %79 = load %struct.clk*, %struct.clk** %6, align 8
  %80 = call i32 @PTR_ERR(%struct.clk* %79)
  store i32 %80, i32* %2, align 4
  br label %103

81:                                               ; preds = %65
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @of_clk_src_simple_get, align 4
  %87 = load %struct.clk*, %struct.clk** %6, align 8
  %88 = call i32 @of_clk_add_provider(i32 %85, i32 %86, %struct.clk* %87)
  %89 = load %struct.vexpress_osc*, %struct.vexpress_osc** %5, align 8
  %90 = getelementptr inbounds %struct.vexpress_osc, %struct.vexpress_osc* %89, i32 0, i32 2
  %91 = load %struct.vexpress_osc*, %struct.vexpress_osc** %5, align 8
  %92 = getelementptr inbounds %struct.vexpress_osc, %struct.vexpress_osc* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.vexpress_osc*, %struct.vexpress_osc** %5, align 8
  %95 = getelementptr inbounds %struct.vexpress_osc, %struct.vexpress_osc* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @clk_hw_set_rate_range(%struct.TYPE_8__* %90, i8* %93, i8* %96)
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @dev_dbg(%struct.TYPE_7__* %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %81, %78, %28, %14
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.vexpress_osc* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.clk* @devm_regmap_init_vexpress_config(%struct.TYPE_7__*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i64 @of_property_read_u32_array(i32, i8*, i8**, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @of_property_read_string(i32, i8*, i32*) #1

declare dso_local i32 @dev_name(%struct.TYPE_7__*) #1

declare dso_local %struct.clk* @clk_register(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @of_clk_add_provider(i32, i32, %struct.clk*) #1

declare dso_local i32 @clk_hw_set_rate_range(%struct.TYPE_8__*, i8*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
