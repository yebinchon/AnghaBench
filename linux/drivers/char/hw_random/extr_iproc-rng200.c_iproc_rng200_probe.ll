; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_iproc-rng200.c_iproc_rng200_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_iproc-rng200.c_iproc_rng200_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.iproc_rng200_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to get rng resources\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to remap rng regs\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"iproc-rng200\00", align 1
@iproc_rng200_read = common dso_local global i32 0, align 4
@iproc_rng200_init = common dso_local global i32 0, align 4
@iproc_rng200_cleanup = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"hwrng registration failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"hwrng registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @iproc_rng200_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_rng200_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.iproc_rng200_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.iproc_rng200_dev* @devm_kzalloc(%struct.device* %10, i32 32, i32 %11)
  store %struct.iproc_rng200_dev* %12, %struct.iproc_rng200_dev** %4, align 8
  %13 = load %struct.iproc_rng200_dev*, %struct.iproc_rng200_dev** %4, align 8
  %14 = icmp ne %struct.iproc_rng200_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %76

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %5, align 8
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = icmp ne %struct.resource* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %76

29:                                               ; preds = %18
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load %struct.resource*, %struct.resource** %5, align 8
  %32 = call i32 @devm_ioremap_resource(%struct.device* %30, %struct.resource* %31)
  %33 = load %struct.iproc_rng200_dev*, %struct.iproc_rng200_dev** %4, align 8
  %34 = getelementptr inbounds %struct.iproc_rng200_dev, %struct.iproc_rng200_dev* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.iproc_rng200_dev*, %struct.iproc_rng200_dev** %4, align 8
  %36 = getelementptr inbounds %struct.iproc_rng200_dev, %struct.iproc_rng200_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.iproc_rng200_dev*, %struct.iproc_rng200_dev** %4, align 8
  %44 = getelementptr inbounds %struct.iproc_rng200_dev, %struct.iproc_rng200_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %76

47:                                               ; preds = %29
  %48 = load %struct.iproc_rng200_dev*, %struct.iproc_rng200_dev** %4, align 8
  %49 = getelementptr inbounds %struct.iproc_rng200_dev, %struct.iproc_rng200_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %50, align 8
  %51 = load i32, i32* @iproc_rng200_read, align 4
  %52 = load %struct.iproc_rng200_dev*, %struct.iproc_rng200_dev** %4, align 8
  %53 = getelementptr inbounds %struct.iproc_rng200_dev, %struct.iproc_rng200_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* @iproc_rng200_init, align 4
  %56 = load %struct.iproc_rng200_dev*, %struct.iproc_rng200_dev** %4, align 8
  %57 = getelementptr inbounds %struct.iproc_rng200_dev, %struct.iproc_rng200_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @iproc_rng200_cleanup, align 4
  %60 = load %struct.iproc_rng200_dev*, %struct.iproc_rng200_dev** %4, align 8
  %61 = getelementptr inbounds %struct.iproc_rng200_dev, %struct.iproc_rng200_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 8
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = load %struct.iproc_rng200_dev*, %struct.iproc_rng200_dev** %4, align 8
  %65 = getelementptr inbounds %struct.iproc_rng200_dev, %struct.iproc_rng200_dev* %64, i32 0, i32 0
  %66 = call i32 @devm_hwrng_register(%struct.device* %63, %struct.TYPE_2__* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %47
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %2, align 4
  br label %76

73:                                               ; preds = %47
  %74 = load %struct.device*, %struct.device** %6, align 8
  %75 = call i32 @dev_info(%struct.device* %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %73, %69, %40, %24, %15
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.iproc_rng200_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_hwrng_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
