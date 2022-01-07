; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_hisi-rng.c_hisi_rng_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_hisi-rng.c_hisi_rng_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.hisi_rng = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@hisi_rng_init = common dso_local global i32 0, align 4
@hisi_rng_cleanup = common dso_local global i32 0, align 4
@hisi_rng_read = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to register hwrng\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hisi_rng_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_rng_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hisi_rng*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.hisi_rng* @devm_kzalloc(i32* %8, i32 20, i32 %9)
  store %struct.hisi_rng* %10, %struct.hisi_rng** %4, align 8
  %11 = load %struct.hisi_rng*, %struct.hisi_rng** %4, align 8
  %12 = icmp ne %struct.hisi_rng* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %71

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.hisi_rng*, %struct.hisi_rng** %4, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.hisi_rng* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %5, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.resource*, %struct.resource** %5, align 8
  %26 = call i32 @devm_ioremap_resource(i32* %24, %struct.resource* %25)
  %27 = load %struct.hisi_rng*, %struct.hisi_rng** %4, align 8
  %28 = getelementptr inbounds %struct.hisi_rng, %struct.hisi_rng* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.hisi_rng*, %struct.hisi_rng** %4, align 8
  %30 = getelementptr inbounds %struct.hisi_rng, %struct.hisi_rng* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %16
  %35 = load %struct.hisi_rng*, %struct.hisi_rng** %4, align 8
  %36 = getelementptr inbounds %struct.hisi_rng, %struct.hisi_rng* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %71

39:                                               ; preds = %16
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.hisi_rng*, %struct.hisi_rng** %4, align 8
  %44 = getelementptr inbounds %struct.hisi_rng, %struct.hisi_rng* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @hisi_rng_init, align 4
  %47 = load %struct.hisi_rng*, %struct.hisi_rng** %4, align 8
  %48 = getelementptr inbounds %struct.hisi_rng, %struct.hisi_rng* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @hisi_rng_cleanup, align 4
  %51 = load %struct.hisi_rng*, %struct.hisi_rng** %4, align 8
  %52 = getelementptr inbounds %struct.hisi_rng, %struct.hisi_rng* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @hisi_rng_read, align 4
  %55 = load %struct.hisi_rng*, %struct.hisi_rng** %4, align 8
  %56 = getelementptr inbounds %struct.hisi_rng, %struct.hisi_rng* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load %struct.hisi_rng*, %struct.hisi_rng** %4, align 8
  %61 = getelementptr inbounds %struct.hisi_rng, %struct.hisi_rng* %60, i32 0, i32 0
  %62 = call i32 @devm_hwrng_register(i32* %59, %struct.TYPE_2__* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %39
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %65, %34, %13
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.hisi_rng* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hisi_rng*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_hwrng_register(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
