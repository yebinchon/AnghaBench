; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_exynos-trng.c_exynos_trng_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_exynos-trng.c_exynos_trng_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.exynos_trng_dev = type { i32, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }
%struct.resource = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@exynos_trng_init = common dso_local global i32 0, align 4
@exynos_trng_do_read = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not get runtime PM.\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"secss\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Could not get clock.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Could not enable the clk.\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Could not register hwrng device.\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Exynos True Random Number Generator.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_trng_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_trng_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.exynos_trng_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.exynos_trng_dev* @devm_kzalloc(i32* %10, i32 48, i32 %11)
  store %struct.exynos_trng_dev* %12, %struct.exynos_trng_dev** %4, align 8
  %13 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %14 = icmp ne %struct.exynos_trng_dev* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %148

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @dev_name(i32* %21)
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @devm_kstrdup(i32* %19, i32 %22, i32 %23)
  %25 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %26 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 8
  %28 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %29 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %17
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %148

35:                                               ; preds = %17
  %36 = load i32, i32* @exynos_trng_init, align 4
  %37 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %38 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @exynos_trng_do_read, align 4
  %41 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %42 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 8
  %44 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %45 = ptrtoint %struct.exynos_trng_dev* %44 to i64
  %46 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %47 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %51 = call i32 @platform_set_drvdata(%struct.platform_device* %49, %struct.exynos_trng_dev* %50)
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %55 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %54, i32 0, i32 3
  store i32* %53, i32** %55, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = load i32, i32* @IORESOURCE_MEM, align 4
  %58 = call %struct.resource* @platform_get_resource(%struct.platform_device* %56, i32 %57, i32 0)
  store %struct.resource* %58, %struct.resource** %5, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load %struct.resource*, %struct.resource** %5, align 8
  %62 = call i32 @devm_ioremap_resource(i32* %60, %struct.resource* %61)
  %63 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %64 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %66 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @IS_ERR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %35
  %71 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %72 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @PTR_ERR(i32 %73)
  store i32 %74, i32* %2, align 4
  br label %148

75:                                               ; preds = %35
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 @pm_runtime_enable(i32* %77)
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call i32 @pm_runtime_get_sync(i32* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %143

88:                                               ; preds = %75
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @devm_clk_get(i32* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %93 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %95 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @IS_ERR(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %88
  %100 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %101 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @PTR_ERR(i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %139

107:                                              ; preds = %88
  %108 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %109 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @clk_prepare_enable(i32 %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i32 @dev_err(i32* %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %139

118:                                              ; preds = %107
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %122 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %121, i32 0, i32 1
  %123 = call i32 @devm_hwrng_register(i32* %120, %struct.TYPE_2__* %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %118
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = call i32 @dev_err(i32* %128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %134

130:                                              ; preds = %118
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = call i32 @dev_info(i32* %132, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %148

134:                                              ; preds = %126
  %135 = load %struct.exynos_trng_dev*, %struct.exynos_trng_dev** %4, align 8
  %136 = getelementptr inbounds %struct.exynos_trng_dev, %struct.exynos_trng_dev* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @clk_disable_unprepare(i32 %137)
  br label %139

139:                                              ; preds = %134, %114, %99
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i32 @pm_runtime_put_sync(i32* %141)
  br label %143

143:                                              ; preds = %139, %84
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = call i32 @pm_runtime_disable(i32* %145)
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %143, %130, %70, %33, %15
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.exynos_trng_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_kstrdup(i32*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.exynos_trng_dev*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @devm_hwrng_register(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
