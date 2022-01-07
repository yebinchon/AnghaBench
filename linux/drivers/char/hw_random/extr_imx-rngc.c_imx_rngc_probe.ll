; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_imx-rngc.c_imx_rngc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_imx-rngc.c_imx_rngc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.imx_rngc = type { i32, %struct.TYPE_2__, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Can not get rng_clk\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Couldn't get irq %d\0A\00", align 1
@imx_rngc_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Can't get interrupt working.\0A\00", align 1
@imx_rngc_init = common dso_local global i32 0, align 4
@imx_rngc_read = common dso_local global i32 0, align 4
@self_test = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"FSL RNGC self test failed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"FSL RNGC registering failed (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Freescale RNGC registered.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_rngc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_rngc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.imx_rngc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.imx_rngc* @devm_kzalloc(i32* %8, i32 32, i32 %9)
  store %struct.imx_rngc* %10, %struct.imx_rngc** %4, align 8
  %11 = load %struct.imx_rngc*, %struct.imx_rngc** %4, align 8
  %12 = icmp ne %struct.imx_rngc* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %149

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %17, i32 0)
  %19 = load %struct.imx_rngc*, %struct.imx_rngc** %4, align 8
  %20 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.imx_rngc*, %struct.imx_rngc** %4, align 8
  %22 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @IS_ERR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.imx_rngc*, %struct.imx_rngc** %4, align 8
  %28 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PTR_ERR(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %149

31:                                               ; preds = %16
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @devm_clk_get(i32* %33, i32* null)
  %35 = load %struct.imx_rngc*, %struct.imx_rngc** %4, align 8
  %36 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.imx_rngc*, %struct.imx_rngc** %4, align 8
  %38 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %31
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.imx_rngc*, %struct.imx_rngc** %4, align 8
  %47 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %2, align 4
  br label %149

50:                                               ; preds = %31
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = call i32 @platform_get_irq(%struct.platform_device* %51, i32 0)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i32*, i8*, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %149

61:                                               ; preds = %50
  %62 = load %struct.imx_rngc*, %struct.imx_rngc** %4, align 8
  %63 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @clk_prepare_enable(i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %149

70:                                               ; preds = %61
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @imx_rngc_irq, align 4
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.imx_rngc*, %struct.imx_rngc** %4, align 8
  %79 = bitcast %struct.imx_rngc* %78 to i8*
  %80 = call i32 @devm_request_irq(i32* %72, i32 %73, i32 %74, i32 0, i32 %77, i8* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %70
  %84 = load %struct.imx_rngc*, %struct.imx_rngc** %4, align 8
  %85 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 (i32*, i8*, ...) @dev_err(i32* %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %143

88:                                               ; preds = %70
  %89 = load %struct.imx_rngc*, %struct.imx_rngc** %4, align 8
  %90 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %89, i32 0, i32 3
  %91 = call i32 @init_completion(i32* %90)
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.imx_rngc*, %struct.imx_rngc** %4, align 8
  %96 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* @imx_rngc_init, align 4
  %99 = load %struct.imx_rngc*, %struct.imx_rngc** %4, align 8
  %100 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* @imx_rngc_read, align 4
  %103 = load %struct.imx_rngc*, %struct.imx_rngc** %4, align 8
  %104 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 4
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = load %struct.imx_rngc*, %struct.imx_rngc** %4, align 8
  %109 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %108, i32 0, i32 2
  store i32* %107, i32** %109, align 8
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = load %struct.imx_rngc*, %struct.imx_rngc** %4, align 8
  %112 = call i32 @platform_set_drvdata(%struct.platform_device* %110, %struct.imx_rngc* %111)
  %113 = load %struct.imx_rngc*, %struct.imx_rngc** %4, align 8
  %114 = call i32 @imx_rngc_irq_mask_clear(%struct.imx_rngc* %113)
  %115 = load i64, i64* @self_test, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %88
  %118 = load %struct.imx_rngc*, %struct.imx_rngc** %4, align 8
  %119 = call i32 @imx_rngc_self_test(%struct.imx_rngc* %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.imx_rngc*, %struct.imx_rngc** %4, align 8
  %124 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 (i32*, i8*, ...) @dev_err(i32* %125, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %143

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %127, %88
  %129 = load %struct.imx_rngc*, %struct.imx_rngc** %4, align 8
  %130 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %129, i32 0, i32 1
  %131 = call i32 @hwrng_register(%struct.TYPE_2__* %130)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = load i32, i32* %5, align 4
  %138 = call i32 (i32*, i8*, ...) @dev_err(i32* %136, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  br label %143

139:                                              ; preds = %128
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i32 @dev_info(i32* %141, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %149

143:                                              ; preds = %134, %122, %83
  %144 = load %struct.imx_rngc*, %struct.imx_rngc** %4, align 8
  %145 = getelementptr inbounds %struct.imx_rngc, %struct.imx_rngc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @clk_disable_unprepare(i32 %146)
  %148 = load i32, i32* %5, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %143, %139, %68, %55, %42, %26, %13
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.imx_rngc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.imx_rngc*) #1

declare dso_local i32 @imx_rngc_irq_mask_clear(%struct.imx_rngc*) #1

declare dso_local i32 @imx_rngc_self_test(%struct.imx_rngc*) #1

declare dso_local i32 @hwrng_register(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
