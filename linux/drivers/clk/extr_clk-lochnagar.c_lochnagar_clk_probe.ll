; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-lochnagar.c_lochnagar_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-lochnagar.c_lochnagar_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_init_data = type { i64, i32, i32, i32* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.lochnagar_clk_priv = type { %struct.lochnagar_clk*, i32, %struct.device* }
%struct.lochnagar_clk = type { i64, %struct.TYPE_2__, %struct.lochnagar_clk_priv* }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.of_device_id = type { i64 }
%struct.lochnagar_config = type { i32, i32, i32 }

@lochnagar_clk_ops = common dso_local global i32 0, align 4
@__const.lochnagar_clk_probe.clk_init = private unnamed_addr constant %struct.clk_init_data { i64 0, i32 0, i32 0, i32* @lochnagar_clk_ops }, align 8
@lochnagar_of_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to register %s: %d\0A\00", align 1
@lochnagar_of_clk_hw_get = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to register provider: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lochnagar_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lochnagar_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.clk_init_data, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.lochnagar_clk_priv*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca %struct.lochnagar_clk*, align 8
  %9 = alloca %struct.lochnagar_config*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = bitcast %struct.clk_init_data* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.clk_init_data* @__const.lochnagar_clk_probe.clk_init to i8*), i64 24, i1 false)
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load i32, i32* @lochnagar_of_match, align 4
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.of_device_id* @of_match_device(i32 %15, %struct.device* %16)
  store %struct.of_device_id* %17, %struct.of_device_id** %7, align 8
  %18 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %19 = icmp ne %struct.of_device_id* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %123

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.lochnagar_clk_priv* @devm_kzalloc(%struct.device* %24, i32 24, i32 %25)
  store %struct.lochnagar_clk_priv* %26, %struct.lochnagar_clk_priv** %6, align 8
  %27 = load %struct.lochnagar_clk_priv*, %struct.lochnagar_clk_priv** %6, align 8
  %28 = icmp ne %struct.lochnagar_clk_priv* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %123

32:                                               ; preds = %23
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load %struct.lochnagar_clk_priv*, %struct.lochnagar_clk_priv** %6, align 8
  %35 = getelementptr inbounds %struct.lochnagar_clk_priv, %struct.lochnagar_clk_priv* %34, i32 0, i32 2
  store %struct.device* %33, %struct.device** %35, align 8
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_get_regmap(i32 %38, i32* null)
  %40 = load %struct.lochnagar_clk_priv*, %struct.lochnagar_clk_priv** %6, align 8
  %41 = getelementptr inbounds %struct.lochnagar_clk_priv, %struct.lochnagar_clk_priv* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %43 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.lochnagar_config*
  store %struct.lochnagar_config* %45, %struct.lochnagar_config** %9, align 8
  %46 = load %struct.lochnagar_clk_priv*, %struct.lochnagar_clk_priv** %6, align 8
  %47 = getelementptr inbounds %struct.lochnagar_clk_priv, %struct.lochnagar_clk_priv* %46, i32 0, i32 0
  %48 = load %struct.lochnagar_clk*, %struct.lochnagar_clk** %47, align 8
  %49 = load %struct.lochnagar_config*, %struct.lochnagar_config** %9, align 8
  %50 = getelementptr inbounds %struct.lochnagar_config, %struct.lochnagar_config* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(%struct.lochnagar_clk* %48, i32 %51, i32 8)
  %53 = load %struct.lochnagar_config*, %struct.lochnagar_config** %9, align 8
  %54 = getelementptr inbounds %struct.lochnagar_config, %struct.lochnagar_config* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 2
  store i32 %55, i32* %56, align 4
  %57 = load %struct.lochnagar_config*, %struct.lochnagar_config** %9, align 8
  %58 = getelementptr inbounds %struct.lochnagar_config, %struct.lochnagar_config* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 1
  store i32 %59, i32* %60, align 8
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %107, %32
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.lochnagar_clk_priv*, %struct.lochnagar_clk_priv** %6, align 8
  %64 = getelementptr inbounds %struct.lochnagar_clk_priv, %struct.lochnagar_clk_priv* %63, i32 0, i32 0
  %65 = load %struct.lochnagar_clk*, %struct.lochnagar_clk** %64, align 8
  %66 = call i32 @ARRAY_SIZE(%struct.lochnagar_clk* %65)
  %67 = icmp slt i32 %62, %66
  br i1 %67, label %68, label %110

68:                                               ; preds = %61
  %69 = load %struct.lochnagar_clk_priv*, %struct.lochnagar_clk_priv** %6, align 8
  %70 = getelementptr inbounds %struct.lochnagar_clk_priv, %struct.lochnagar_clk_priv* %69, i32 0, i32 0
  %71 = load %struct.lochnagar_clk*, %struct.lochnagar_clk** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.lochnagar_clk, %struct.lochnagar_clk* %71, i64 %73
  store %struct.lochnagar_clk* %74, %struct.lochnagar_clk** %8, align 8
  %75 = load %struct.lochnagar_clk*, %struct.lochnagar_clk** %8, align 8
  %76 = getelementptr inbounds %struct.lochnagar_clk, %struct.lochnagar_clk* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %68
  br label %107

80:                                               ; preds = %68
  %81 = load %struct.lochnagar_clk*, %struct.lochnagar_clk** %8, align 8
  %82 = getelementptr inbounds %struct.lochnagar_clk, %struct.lochnagar_clk* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 0
  store i64 %83, i64* %84, align 8
  %85 = load %struct.lochnagar_clk_priv*, %struct.lochnagar_clk_priv** %6, align 8
  %86 = load %struct.lochnagar_clk*, %struct.lochnagar_clk** %8, align 8
  %87 = getelementptr inbounds %struct.lochnagar_clk, %struct.lochnagar_clk* %86, i32 0, i32 2
  store %struct.lochnagar_clk_priv* %85, %struct.lochnagar_clk_priv** %87, align 8
  %88 = load %struct.lochnagar_clk*, %struct.lochnagar_clk** %8, align 8
  %89 = getelementptr inbounds %struct.lochnagar_clk, %struct.lochnagar_clk* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store %struct.clk_init_data* %4, %struct.clk_init_data** %90, align 8
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = load %struct.lochnagar_clk*, %struct.lochnagar_clk** %8, align 8
  %93 = getelementptr inbounds %struct.lochnagar_clk, %struct.lochnagar_clk* %92, i32 0, i32 1
  %94 = call i32 @devm_clk_hw_register(%struct.device* %91, %struct.TYPE_2__* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %80
  %98 = load %struct.device*, %struct.device** %5, align 8
  %99 = load %struct.lochnagar_clk*, %struct.lochnagar_clk** %8, align 8
  %100 = getelementptr inbounds %struct.lochnagar_clk, %struct.lochnagar_clk* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = load i32, i32* %10, align 4
  %104 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %2, align 4
  br label %123

106:                                              ; preds = %80
  br label %107

107:                                              ; preds = %106, %79
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %61

110:                                              ; preds = %61
  %111 = load %struct.device*, %struct.device** %5, align 8
  %112 = load i32, i32* @lochnagar_of_clk_hw_get, align 4
  %113 = load %struct.lochnagar_clk_priv*, %struct.lochnagar_clk_priv** %6, align 8
  %114 = call i32 @devm_of_clk_add_hw_provider(%struct.device* %111, i32 %112, %struct.lochnagar_clk_priv* %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load %struct.device*, %struct.device** %5, align 8
  %119 = load i32, i32* %10, align 4
  %120 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %118, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %117, %110
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %121, %97, %29, %20
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #2

declare dso_local %struct.lochnagar_clk_priv* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @dev_get_regmap(i32, i32*) #2

declare dso_local i32 @memcpy(%struct.lochnagar_clk*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.lochnagar_clk*) #2

declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.TYPE_2__*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #2

declare dso_local i32 @devm_of_clk_add_hw_provider(%struct.device*, i32, %struct.lochnagar_clk_priv*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
