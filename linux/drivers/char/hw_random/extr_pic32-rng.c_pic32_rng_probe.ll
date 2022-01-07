; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_pic32-rng.c_pic32_rng_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_pic32-rng.c_pic32_rng_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.pic32_rng = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@TRNGEN = common dso_local global i32 0, align 4
@TRNGMOD = common dso_local global i32 0, align 4
@RNGCON = common dso_local global i64 0, align 8
@pic32_rng_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pic32_rng_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_rng_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pic32_rng*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.pic32_rng* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  store %struct.pic32_rng* %11, %struct.pic32_rng** %4, align 8
  %12 = load %struct.pic32_rng*, %struct.pic32_rng** %4, align 8
  %13 = icmp ne %struct.pic32_rng* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %99

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %5, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 1
  %23 = load %struct.resource*, %struct.resource** %5, align 8
  %24 = call i64 @devm_ioremap_resource(i32* %22, %struct.resource* %23)
  %25 = load %struct.pic32_rng*, %struct.pic32_rng** %4, align 8
  %26 = getelementptr inbounds %struct.pic32_rng, %struct.pic32_rng* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load %struct.pic32_rng*, %struct.pic32_rng** %4, align 8
  %28 = getelementptr inbounds %struct.pic32_rng, %struct.pic32_rng* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @IS_ERR(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.pic32_rng*, %struct.pic32_rng** %4, align 8
  %34 = getelementptr inbounds %struct.pic32_rng, %struct.pic32_rng* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @PTR_ERR(i64 %35)
  store i32 %36, i32* %2, align 4
  br label %99

37:                                               ; preds = %17
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 1
  %40 = call i64 @devm_clk_get(i32* %39, i32* null)
  %41 = load %struct.pic32_rng*, %struct.pic32_rng** %4, align 8
  %42 = getelementptr inbounds %struct.pic32_rng, %struct.pic32_rng* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.pic32_rng*, %struct.pic32_rng** %4, align 8
  %44 = getelementptr inbounds %struct.pic32_rng, %struct.pic32_rng* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @IS_ERR(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load %struct.pic32_rng*, %struct.pic32_rng** %4, align 8
  %50 = getelementptr inbounds %struct.pic32_rng, %struct.pic32_rng* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @PTR_ERR(i64 %51)
  store i32 %52, i32* %2, align 4
  br label %99

53:                                               ; preds = %37
  %54 = load %struct.pic32_rng*, %struct.pic32_rng** %4, align 8
  %55 = getelementptr inbounds %struct.pic32_rng, %struct.pic32_rng* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @clk_prepare_enable(i64 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %99

62:                                               ; preds = %53
  %63 = load i32, i32* @TRNGEN, align 4
  %64 = load i32, i32* @TRNGMOD, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.pic32_rng*, %struct.pic32_rng** %4, align 8
  %68 = getelementptr inbounds %struct.pic32_rng, %struct.pic32_rng* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RNGCON, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.pic32_rng*, %struct.pic32_rng** %4, align 8
  %77 = getelementptr inbounds %struct.pic32_rng, %struct.pic32_rng* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @pic32_rng_read, align 4
  %80 = load %struct.pic32_rng*, %struct.pic32_rng** %4, align 8
  %81 = getelementptr inbounds %struct.pic32_rng, %struct.pic32_rng* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.pic32_rng*, %struct.pic32_rng** %4, align 8
  %84 = getelementptr inbounds %struct.pic32_rng, %struct.pic32_rng* %83, i32 0, i32 1
  %85 = call i32 @hwrng_register(%struct.TYPE_2__* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %62
  br label %93

89:                                               ; preds = %62
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = load %struct.pic32_rng*, %struct.pic32_rng** %4, align 8
  %92 = call i32 @platform_set_drvdata(%struct.platform_device* %90, %struct.pic32_rng* %91)
  store i32 0, i32* %2, align 4
  br label %99

93:                                               ; preds = %88
  %94 = load %struct.pic32_rng*, %struct.pic32_rng** %4, align 8
  %95 = getelementptr inbounds %struct.pic32_rng, %struct.pic32_rng* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @clk_disable_unprepare(i64 %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %93, %89, %60, %48, %32, %14
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.pic32_rng* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @hwrng_register(%struct.TYPE_2__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pic32_rng*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
