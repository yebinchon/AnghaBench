; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-hsdk-pll.c_hsdk_pll_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-hsdk-pll.c_hsdk_pll_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.resource = type { i32 }
%struct.hsdk_pll_clk = type { %struct.TYPE_7__, i32, %struct.device*, i32 }
%struct.TYPE_7__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i32, i8**, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@hsdk_pll_ops = common dso_local global i32 0, align 4
@CGU_PLL_SOURCE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"wrong clock parents number: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"No OF match data provided\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to register %s clock\0A\00", align 1
@of_clk_hw_simple_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hsdk_pll_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsdk_pll_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hsdk_pll_clk*, align 8
  %9 = alloca %struct.clk_init_data, align 8
  %10 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = bitcast %struct.clk_init_data* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %10, align 8
  %14 = load %struct.device*, %struct.device** %10, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.hsdk_pll_clk* @devm_kzalloc(%struct.device* %14, i32 32, i32 %15)
  store %struct.hsdk_pll_clk* %16, %struct.hsdk_pll_clk** %8, align 8
  %17 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %8, align 8
  %18 = icmp ne %struct.hsdk_pll_clk* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %113

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 0)
  store %struct.resource* %25, %struct.resource** %5, align 8
  %26 = load %struct.device*, %struct.device** %10, align 8
  %27 = load %struct.resource*, %struct.resource** %5, align 8
  %28 = call i32 @devm_ioremap_resource(%struct.device* %26, %struct.resource* %27)
  %29 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %8, align 8
  %30 = getelementptr inbounds %struct.hsdk_pll_clk, %struct.hsdk_pll_clk* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %8, align 8
  %32 = getelementptr inbounds %struct.hsdk_pll_clk, %struct.hsdk_pll_clk* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %22
  %37 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %8, align 8
  %38 = getelementptr inbounds %struct.hsdk_pll_clk, %struct.hsdk_pll_clk* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %113

41:                                               ; preds = %22
  %42 = load %struct.device*, %struct.device** %10, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 3
  store i32* @hsdk_pll_ops, i32** %48, align 8
  %49 = load %struct.device*, %struct.device** %10, align 8
  %50 = getelementptr inbounds %struct.device, %struct.device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = call i8* @of_clk_get_parent_name(%struct.TYPE_6__* %51, i32 0)
  store i8* %52, i8** %6, align 8
  %53 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 1
  store i8** %6, i8*** %53, align 8
  %54 = load %struct.device*, %struct.device** %10, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = call i32 @of_clk_get_parent_count(%struct.TYPE_6__* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %41
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @CGU_PLL_SOURCE_MAX, align 4
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60, %41
  %65 = load %struct.device*, %struct.device** %10, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %113

70:                                               ; preds = %60
  %71 = load i32, i32* %7, align 4
  %72 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  store i32 %71, i32* %72, align 8
  %73 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %8, align 8
  %74 = getelementptr inbounds %struct.hsdk_pll_clk, %struct.hsdk_pll_clk* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store %struct.clk_init_data* %9, %struct.clk_init_data** %75, align 8
  %76 = load %struct.device*, %struct.device** %10, align 8
  %77 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %8, align 8
  %78 = getelementptr inbounds %struct.hsdk_pll_clk, %struct.hsdk_pll_clk* %77, i32 0, i32 2
  store %struct.device* %76, %struct.device** %78, align 8
  %79 = load %struct.device*, %struct.device** %10, align 8
  %80 = call i32 @of_device_get_match_data(%struct.device* %79)
  %81 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %8, align 8
  %82 = getelementptr inbounds %struct.hsdk_pll_clk, %struct.hsdk_pll_clk* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %8, align 8
  %84 = getelementptr inbounds %struct.hsdk_pll_clk, %struct.hsdk_pll_clk* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %70
  %88 = load %struct.device*, %struct.device** %10, align 8
  %89 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %113

92:                                               ; preds = %70
  %93 = load %struct.device*, %struct.device** %10, align 8
  %94 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %8, align 8
  %95 = getelementptr inbounds %struct.hsdk_pll_clk, %struct.hsdk_pll_clk* %94, i32 0, i32 0
  %96 = call i32 @devm_clk_hw_register(%struct.device* %93, %struct.TYPE_7__* %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load %struct.device*, %struct.device** %10, align 8
  %101 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %113

105:                                              ; preds = %92
  %106 = load %struct.device*, %struct.device** %10, align 8
  %107 = getelementptr inbounds %struct.device, %struct.device* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* @of_clk_hw_simple_get, align 4
  %110 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %8, align 8
  %111 = getelementptr inbounds %struct.hsdk_pll_clk, %struct.hsdk_pll_clk* %110, i32 0, i32 0
  %112 = call i32 @of_clk_add_hw_provider(%struct.TYPE_6__* %108, i32 %109, %struct.TYPE_7__* %111)
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %105, %99, %87, %64, %36, %19
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.hsdk_pll_clk* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #2

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i8* @of_clk_get_parent_name(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @of_clk_get_parent_count(%struct.TYPE_6__*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i32 @of_device_get_match_data(%struct.device*) #2

declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.TYPE_7__*) #2

declare dso_local i32 @of_clk_add_hw_provider(%struct.TYPE_6__*, i32, %struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
