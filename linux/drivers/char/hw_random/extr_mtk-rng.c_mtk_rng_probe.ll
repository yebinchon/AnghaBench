; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_mtk-rng.c_mtk_rng_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_mtk-rng.c_mtk_rng_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.resource = type { i32 }
%struct.mtk_rng = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"no iomem resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mtk_rng_init = common dso_local global i32 0, align 4
@mtk_rng_cleanup = common dso_local global i32 0, align 4
@mtk_rng_read = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"rng\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"no clock for device: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to register rng device: %d\0A\00", align 1
@RNG_AUTOSUSPEND_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"registered RNG driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_rng_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_rng_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_rng*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @IORESOURCE_MEM, align 4
  %9 = call %struct.resource* @platform_get_resource(%struct.platform_device* %7, i32 %8, i32 0)
  store %struct.resource* %9, %struct.resource** %4, align 8
  %10 = load %struct.resource*, %struct.resource** %4, align 8
  %11 = icmp ne %struct.resource* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 (i32*, i8*, ...) @dev_err(i32* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %125

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mtk_rng* @devm_kzalloc(i32* %20, i32 40, i32 %21)
  store %struct.mtk_rng* %22, %struct.mtk_rng** %6, align 8
  %23 = load %struct.mtk_rng*, %struct.mtk_rng** %6, align 8
  %24 = icmp ne %struct.mtk_rng* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %125

28:                                               ; preds = %18
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mtk_rng*, %struct.mtk_rng** %6, align 8
  %33 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* @mtk_rng_init, align 4
  %36 = load %struct.mtk_rng*, %struct.mtk_rng** %6, align 8
  %37 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @mtk_rng_cleanup, align 4
  %40 = load %struct.mtk_rng*, %struct.mtk_rng** %6, align 8
  %41 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 8
  %43 = load i32, i32* @mtk_rng_read, align 4
  %44 = load %struct.mtk_rng*, %struct.mtk_rng** %6, align 8
  %45 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 4
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = ptrtoint i32* %48 to i64
  %50 = load %struct.mtk_rng*, %struct.mtk_rng** %6, align 8
  %51 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  %53 = load %struct.mtk_rng*, %struct.mtk_rng** %6, align 8
  %54 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 900, i32* %55, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @devm_clk_get(i32* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.mtk_rng*, %struct.mtk_rng** %6, align 8
  %60 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mtk_rng*, %struct.mtk_rng** %6, align 8
  %62 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @IS_ERR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %28
  %67 = load %struct.mtk_rng*, %struct.mtk_rng** %6, align 8
  %68 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @PTR_ERR(i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load i32, i32* %5, align 4
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %125

76:                                               ; preds = %28
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load %struct.resource*, %struct.resource** %4, align 8
  %80 = call i32 @devm_ioremap_resource(i32* %78, %struct.resource* %79)
  %81 = load %struct.mtk_rng*, %struct.mtk_rng** %6, align 8
  %82 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.mtk_rng*, %struct.mtk_rng** %6, align 8
  %84 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @IS_ERR(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %76
  %89 = load %struct.mtk_rng*, %struct.mtk_rng** %6, align 8
  %90 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @PTR_ERR(i32 %91)
  store i32 %92, i32* %2, align 4
  br label %125

93:                                               ; preds = %76
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load %struct.mtk_rng*, %struct.mtk_rng** %6, align 8
  %97 = getelementptr inbounds %struct.mtk_rng, %struct.mtk_rng* %96, i32 0, i32 0
  %98 = call i32 @devm_hwrng_register(i32* %95, %struct.TYPE_2__* %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load i32, i32* %5, align 4
  %105 = call i32 (i32*, i8*, ...) @dev_err(i32* %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %125

107:                                              ; preds = %93
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = load %struct.mtk_rng*, %struct.mtk_rng** %6, align 8
  %111 = call i32 @dev_set_drvdata(i32* %109, %struct.mtk_rng* %110)
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load i32, i32* @RNG_AUTOSUSPEND_TIMEOUT, align 4
  %115 = call i32 @pm_runtime_set_autosuspend_delay(i32* %113, i32 %114)
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = call i32 @pm_runtime_use_autosuspend(i32* %117)
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 @pm_runtime_enable(i32* %120)
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = call i32 @dev_info(i32* %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %107, %101, %88, %66, %25, %12
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.mtk_rng* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @devm_hwrng_register(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.mtk_rng*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
