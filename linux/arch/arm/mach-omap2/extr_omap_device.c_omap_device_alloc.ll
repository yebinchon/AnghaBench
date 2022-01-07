; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_device.c_omap_device_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_device.c_omap_device_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_device = type { i32, %struct.platform_device*, %struct.omap_hwmod** }
%struct.platform_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.omap_device* }
%struct.omap_hwmod = type { %struct.omap_device* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"omap_device: build failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.omap_device* @omap_device_alloc(%struct.platform_device* %0, %struct.omap_hwmod** %1, i32 %2) #0 {
  %4 = alloca %struct.omap_device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.omap_hwmod**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.omap_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.omap_hwmod**, align 8
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.omap_hwmod** %1, %struct.omap_hwmod*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.omap_device* @kzalloc(i32 24, i32 %14)
  store %struct.omap_device* %15, %struct.omap_device** %9, align 8
  %16 = load %struct.omap_device*, %struct.omap_device** %9, align 8
  %17 = icmp ne %struct.omap_device* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  br label %73

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.omap_device*, %struct.omap_device** %9, align 8
  %24 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.omap_hwmod**, %struct.omap_hwmod*** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.omap_hwmod** @kmemdup(%struct.omap_hwmod** %25, i32 %29, i32 %30)
  store %struct.omap_hwmod** %31, %struct.omap_hwmod*** %11, align 8
  %32 = load %struct.omap_hwmod**, %struct.omap_hwmod*** %11, align 8
  %33 = icmp ne %struct.omap_hwmod** %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  br label %70

35:                                               ; preds = %21
  %36 = load %struct.omap_hwmod**, %struct.omap_hwmod*** %11, align 8
  %37 = load %struct.omap_device*, %struct.omap_device** %9, align 8
  %38 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %37, i32 0, i32 2
  store %struct.omap_hwmod** %36, %struct.omap_hwmod*** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %40 = load %struct.omap_device*, %struct.omap_device** %9, align 8
  %41 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %40, i32 0, i32 1
  store %struct.platform_device* %39, %struct.platform_device** %41, align 8
  %42 = load %struct.omap_device*, %struct.omap_device** %9, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store %struct.omap_device* %42, %struct.omap_device** %45, align 8
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %65, %35
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load %struct.omap_device*, %struct.omap_device** %9, align 8
  %52 = load %struct.omap_hwmod**, %struct.omap_hwmod*** %11, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.omap_hwmod*, %struct.omap_hwmod** %52, i64 %54
  %56 = load %struct.omap_hwmod*, %struct.omap_hwmod** %55, align 8
  %57 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %56, i32 0, i32 0
  store %struct.omap_device* %51, %struct.omap_device** %57, align 8
  %58 = load %struct.omap_device*, %struct.omap_device** %9, align 8
  %59 = load %struct.omap_hwmod**, %struct.omap_hwmod*** %11, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.omap_hwmod*, %struct.omap_hwmod** %59, i64 %61
  %63 = load %struct.omap_hwmod*, %struct.omap_hwmod** %62, align 8
  %64 = call i32 @_add_hwmod_clocks_clkdev(%struct.omap_device* %58, %struct.omap_hwmod* %63)
  br label %65

65:                                               ; preds = %50
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %46

68:                                               ; preds = %46
  %69 = load %struct.omap_device*, %struct.omap_device** %9, align 8
  store %struct.omap_device* %69, %struct.omap_device** %4, align 8
  br label %80

70:                                               ; preds = %34
  %71 = load %struct.omap_device*, %struct.omap_device** %9, align 8
  %72 = call i32 @kfree(%struct.omap_device* %71)
  br label %73

73:                                               ; preds = %70, %18
  %74 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = call %struct.omap_device* @ERR_PTR(i32 %78)
  store %struct.omap_device* %79, %struct.omap_device** %4, align 8
  br label %80

80:                                               ; preds = %73, %68
  %81 = load %struct.omap_device*, %struct.omap_device** %4, align 8
  ret %struct.omap_device* %81
}

declare dso_local %struct.omap_device* @kzalloc(i32, i32) #1

declare dso_local %struct.omap_hwmod** @kmemdup(%struct.omap_hwmod**, i32, i32) #1

declare dso_local i32 @_add_hwmod_clocks_clkdev(%struct.omap_device*, %struct.omap_hwmod*) #1

declare dso_local i32 @kfree(%struct.omap_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.omap_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
