; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_atmel-rng.c_atmel_trng_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_atmel-rng.c_atmel_trng_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.atmel_trng = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@atmel_trng_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_trng_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_trng_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.atmel_trng*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.atmel_trng* @devm_kzalloc(i32* %8, i32 16, i32 %9)
  store %struct.atmel_trng* %10, %struct.atmel_trng** %4, align 8
  %11 = load %struct.atmel_trng*, %struct.atmel_trng** %4, align 8
  %12 = icmp ne %struct.atmel_trng* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %92

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %5, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = call i32 @devm_ioremap_resource(i32* %21, %struct.resource* %22)
  %24 = load %struct.atmel_trng*, %struct.atmel_trng** %4, align 8
  %25 = getelementptr inbounds %struct.atmel_trng, %struct.atmel_trng* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.atmel_trng*, %struct.atmel_trng** %4, align 8
  %27 = getelementptr inbounds %struct.atmel_trng, %struct.atmel_trng* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.atmel_trng*, %struct.atmel_trng** %4, align 8
  %33 = getelementptr inbounds %struct.atmel_trng, %struct.atmel_trng* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %92

36:                                               ; preds = %16
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @devm_clk_get(i32* %38, i32* null)
  %40 = load %struct.atmel_trng*, %struct.atmel_trng** %4, align 8
  %41 = getelementptr inbounds %struct.atmel_trng, %struct.atmel_trng* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.atmel_trng*, %struct.atmel_trng** %4, align 8
  %43 = getelementptr inbounds %struct.atmel_trng, %struct.atmel_trng* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  %48 = load %struct.atmel_trng*, %struct.atmel_trng** %4, align 8
  %49 = getelementptr inbounds %struct.atmel_trng, %struct.atmel_trng* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %92

52:                                               ; preds = %36
  %53 = load %struct.atmel_trng*, %struct.atmel_trng** %4, align 8
  %54 = getelementptr inbounds %struct.atmel_trng, %struct.atmel_trng* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @clk_prepare_enable(i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %92

61:                                               ; preds = %52
  %62 = load %struct.atmel_trng*, %struct.atmel_trng** %4, align 8
  %63 = call i32 @atmel_trng_enable(%struct.atmel_trng* %62)
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.atmel_trng*, %struct.atmel_trng** %4, align 8
  %68 = getelementptr inbounds %struct.atmel_trng, %struct.atmel_trng* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @atmel_trng_read, align 4
  %71 = load %struct.atmel_trng*, %struct.atmel_trng** %4, align 8
  %72 = getelementptr inbounds %struct.atmel_trng, %struct.atmel_trng* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load %struct.atmel_trng*, %struct.atmel_trng** %4, align 8
  %77 = getelementptr inbounds %struct.atmel_trng, %struct.atmel_trng* %76, i32 0, i32 1
  %78 = call i32 @devm_hwrng_register(i32* %75, %struct.TYPE_2__* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %61
  br label %86

82:                                               ; preds = %61
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = load %struct.atmel_trng*, %struct.atmel_trng** %4, align 8
  %85 = call i32 @platform_set_drvdata(%struct.platform_device* %83, %struct.atmel_trng* %84)
  store i32 0, i32* %2, align 4
  br label %92

86:                                               ; preds = %81
  %87 = load %struct.atmel_trng*, %struct.atmel_trng** %4, align 8
  %88 = getelementptr inbounds %struct.atmel_trng, %struct.atmel_trng* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @clk_disable_unprepare(i32 %89)
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %86, %82, %59, %47, %31, %13
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.atmel_trng* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @atmel_trng_enable(%struct.atmel_trng*) #1

declare dso_local i32 @devm_hwrng_register(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.atmel_trng*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
