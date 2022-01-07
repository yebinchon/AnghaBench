; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/char/hw_random/extr_mcs814x-rng.c_mcs814x_rng_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/char/hw_random/extr_mcs814x-rng.c_mcs814x_rng_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.resource = type { i32 }
%struct.mcs814x_rng_priv = type { i64, i32, i32, i32 }
%struct.hwrng = type { i64, i32, i32, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mcs814x_rng_data_read = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to register hwrng driver\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mcs814x_rng_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs814x_rng_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.mcs814x_rng_priv*, align 8
  %6 = alloca %struct.hwrng*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @IORESOURCE_MEM, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %8, i32 %9, i32 0)
  store %struct.resource* %10, %struct.resource** %4, align 8
  %11 = load %struct.resource*, %struct.resource** %4, align 8
  %12 = icmp ne %struct.resource* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %89

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mcs814x_rng_priv* @kzalloc(i32 24, i32 %17)
  store %struct.mcs814x_rng_priv* %18, %struct.mcs814x_rng_priv** %5, align 8
  %19 = load %struct.mcs814x_rng_priv*, %struct.mcs814x_rng_priv** %5, align 8
  %20 = icmp ne %struct.mcs814x_rng_priv* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %87

24:                                               ; preds = %16
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.mcs814x_rng_priv* @kzalloc(i32 24, i32 %25)
  %27 = bitcast %struct.mcs814x_rng_priv* %26 to %struct.hwrng*
  store %struct.hwrng* %27, %struct.hwrng** %6, align 8
  %28 = load %struct.hwrng*, %struct.hwrng** %6, align 8
  %29 = icmp ne %struct.hwrng* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %84

33:                                               ; preds = %24
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load %struct.hwrng*, %struct.hwrng** %6, align 8
  %36 = bitcast %struct.hwrng* %35 to %struct.mcs814x_rng_priv*
  %37 = call i32 @platform_set_drvdata(%struct.platform_device* %34, %struct.mcs814x_rng_priv* %36)
  %38 = load %struct.mcs814x_rng_priv*, %struct.mcs814x_rng_priv** %5, align 8
  %39 = ptrtoint %struct.mcs814x_rng_priv* %38 to i64
  %40 = load %struct.hwrng*, %struct.hwrng** %6, align 8
  %41 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hwrng*, %struct.hwrng** %6, align 8
  %46 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @mcs814x_rng_data_read, align 4
  %48 = load %struct.hwrng*, %struct.hwrng** %6, align 8
  %49 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.resource*, %struct.resource** %4, align 8
  %53 = call i32 @devm_ioremap_resource(i32* %51, %struct.resource* %52)
  %54 = load %struct.mcs814x_rng_priv*, %struct.mcs814x_rng_priv** %5, align 8
  %55 = getelementptr inbounds %struct.mcs814x_rng_priv, %struct.mcs814x_rng_priv* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.mcs814x_rng_priv*, %struct.mcs814x_rng_priv** %5, align 8
  %57 = getelementptr inbounds %struct.mcs814x_rng_priv, %struct.mcs814x_rng_priv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %33
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %78

63:                                               ; preds = %33
  %64 = load %struct.hwrng*, %struct.hwrng** %6, align 8
  %65 = bitcast %struct.hwrng* %64 to %struct.mcs814x_rng_priv*
  %66 = call i32 @hwrng_register(%struct.mcs814x_rng_priv* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %87

73:                                               ; preds = %63
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = call i32 @dev_info(i32* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %89

78:                                               ; preds = %60
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = call i32 @platform_set_drvdata(%struct.platform_device* %79, %struct.mcs814x_rng_priv* null)
  %81 = load %struct.hwrng*, %struct.hwrng** %6, align 8
  %82 = bitcast %struct.hwrng* %81 to %struct.mcs814x_rng_priv*
  %83 = call i32 @kfree(%struct.mcs814x_rng_priv* %82)
  br label %84

84:                                               ; preds = %78, %30
  %85 = load %struct.mcs814x_rng_priv*, %struct.mcs814x_rng_priv** %5, align 8
  %86 = call i32 @kfree(%struct.mcs814x_rng_priv* %85)
  br label %87

87:                                               ; preds = %84, %69, %21
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %73, %13
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.mcs814x_rng_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mcs814x_rng_priv*) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @hwrng_register(%struct.mcs814x_rng_priv*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @kfree(%struct.mcs814x_rng_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
