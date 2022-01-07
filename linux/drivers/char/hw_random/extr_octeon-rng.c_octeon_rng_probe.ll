; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_octeon-rng.c_octeon_rng_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_octeon-rng.c_octeon_rng_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.octeon_rng = type { %struct.hwrng, i8*, i8* }
%struct.hwrng = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"octeon\00", align 1
@octeon_rng_data_read = common dso_local global i32 0, align 4
@octeon_rng_cleanup = common dso_local global i32 0, align 4
@octeon_rng_init = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Octeon Random Number Generator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @octeon_rng_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_rng_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.octeon_rng*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hwrng, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %8, i32 0, i32 1
  %11 = load i32, i32* @octeon_rng_data_read, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %8, i32 0, i32 2
  %13 = load i32, i32* @octeon_rng_cleanup, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %8, i32 0, i32 3
  %15 = load i32, i32* @octeon_rng_init, align 4
  store i32 %15, i32* %14, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.octeon_rng* @devm_kzalloc(i32* %17, i32 40, i32 %18)
  store %struct.octeon_rng* %19, %struct.octeon_rng** %6, align 8
  %20 = load %struct.octeon_rng*, %struct.octeon_rng** %6, align 8
  %21 = icmp ne %struct.octeon_rng* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %98

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = call %struct.resource* @platform_get_resource(%struct.platform_device* %26, i32 %27, i32 0)
  store %struct.resource* %28, %struct.resource** %4, align 8
  %29 = load %struct.resource*, %struct.resource** %4, align 8
  %30 = icmp ne %struct.resource* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %98

34:                                               ; preds = %25
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load i32, i32* @IORESOURCE_MEM, align 4
  %37 = call %struct.resource* @platform_get_resource(%struct.platform_device* %35, i32 %36, i32 1)
  store %struct.resource* %37, %struct.resource** %5, align 8
  %38 = load %struct.resource*, %struct.resource** %5, align 8
  %39 = icmp ne %struct.resource* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %98

43:                                               ; preds = %34
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.resource*, %struct.resource** %4, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @devm_ioremap_nocache(i32* %45, i32 %48, i32 4)
  %50 = load %struct.octeon_rng*, %struct.octeon_rng** %6, align 8
  %51 = getelementptr inbounds %struct.octeon_rng, %struct.octeon_rng* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.octeon_rng*, %struct.octeon_rng** %6, align 8
  %53 = getelementptr inbounds %struct.octeon_rng, %struct.octeon_rng* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %43
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %98

59:                                               ; preds = %43
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.resource*, %struct.resource** %5, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @devm_ioremap_nocache(i32* %61, i32 %64, i32 4)
  %66 = load %struct.octeon_rng*, %struct.octeon_rng** %6, align 8
  %67 = getelementptr inbounds %struct.octeon_rng, %struct.octeon_rng* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.octeon_rng*, %struct.octeon_rng** %6, align 8
  %69 = getelementptr inbounds %struct.octeon_rng, %struct.octeon_rng* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %59
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %98

75:                                               ; preds = %59
  %76 = load %struct.octeon_rng*, %struct.octeon_rng** %6, align 8
  %77 = getelementptr inbounds %struct.octeon_rng, %struct.octeon_rng* %76, i32 0, i32 0
  %78 = bitcast %struct.hwrng* %77 to i8*
  %79 = bitcast %struct.hwrng* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 24, i1 false)
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = load %struct.octeon_rng*, %struct.octeon_rng** %6, align 8
  %82 = getelementptr inbounds %struct.octeon_rng, %struct.octeon_rng* %81, i32 0, i32 0
  %83 = call i32 @platform_set_drvdata(%struct.platform_device* %80, %struct.hwrng* %82)
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.octeon_rng*, %struct.octeon_rng** %6, align 8
  %87 = getelementptr inbounds %struct.octeon_rng, %struct.octeon_rng* %86, i32 0, i32 0
  %88 = call i32 @devm_hwrng_register(i32* %85, %struct.hwrng* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %75
  %92 = load i32, i32* @ENOENT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %98

94:                                               ; preds = %75
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @dev_info(i32* %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %94, %91, %72, %56, %40, %31, %22
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.octeon_rng* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_nocache(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hwrng*) #1

declare dso_local i32 @devm_hwrng_register(i32*, %struct.hwrng*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
