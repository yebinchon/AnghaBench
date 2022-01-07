; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_omap_l3_smx.c_omap3_l3_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_omap_l3_smx.c_omap3_l3_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.omap3_l3 = type { i32, i8*, i8* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"couldn't find resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"ioremap failed\0A\00", align 1
@omap3_l3_app_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"l3-debug-irq\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"couldn't request debug irq\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"l3-app-irq\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"couldn't request app irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap3_l3_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3_l3_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap3_l3*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.omap3_l3* @kzalloc(i32 24, i32 %7)
  store %struct.omap3_l3* %8, %struct.omap3_l3** %4, align 8
  %9 = load %struct.omap3_l3*, %struct.omap3_l3** %4, align 8
  %10 = icmp ne %struct.omap3_l3* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %100

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load %struct.omap3_l3*, %struct.omap3_l3** %4, align 8
  %17 = call i32 @platform_set_drvdata(%struct.platform_device* %15, %struct.omap3_l3* %16)
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %5, align 8
  %21 = load %struct.resource*, %struct.resource** %5, align 8
  %22 = icmp ne %struct.resource* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %14
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %96

29:                                               ; preds = %14
  %30 = load %struct.resource*, %struct.resource** %5, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.resource*, %struct.resource** %5, align 8
  %34 = call i32 @resource_size(%struct.resource* %33)
  %35 = call i32 @ioremap(i32 %32, i32 %34)
  %36 = load %struct.omap3_l3*, %struct.omap3_l3** %4, align 8
  %37 = getelementptr inbounds %struct.omap3_l3, %struct.omap3_l3* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.omap3_l3*, %struct.omap3_l3** %4, align 8
  %39 = getelementptr inbounds %struct.omap3_l3, %struct.omap3_l3* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %29
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %96

48:                                               ; preds = %29
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = call i8* @platform_get_irq(%struct.platform_device* %49, i32 0)
  %51 = load %struct.omap3_l3*, %struct.omap3_l3** %4, align 8
  %52 = getelementptr inbounds %struct.omap3_l3, %struct.omap3_l3* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.omap3_l3*, %struct.omap3_l3** %4, align 8
  %54 = getelementptr inbounds %struct.omap3_l3, %struct.omap3_l3* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* @omap3_l3_app_irq, align 4
  %57 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %58 = load %struct.omap3_l3*, %struct.omap3_l3** %4, align 8
  %59 = call i32 @request_irq(i8* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.omap3_l3* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %91

66:                                               ; preds = %48
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = call i8* @platform_get_irq(%struct.platform_device* %67, i32 1)
  %69 = load %struct.omap3_l3*, %struct.omap3_l3** %4, align 8
  %70 = getelementptr inbounds %struct.omap3_l3, %struct.omap3_l3* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.omap3_l3*, %struct.omap3_l3** %4, align 8
  %72 = getelementptr inbounds %struct.omap3_l3, %struct.omap3_l3* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* @omap3_l3_app_irq, align 4
  %75 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %76 = load %struct.omap3_l3*, %struct.omap3_l3** %4, align 8
  %77 = call i32 @request_irq(i8* %73, i32 %74, i32 %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), %struct.omap3_l3* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %66
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %85

84:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %100

85:                                               ; preds = %80
  %86 = load %struct.omap3_l3*, %struct.omap3_l3** %4, align 8
  %87 = getelementptr inbounds %struct.omap3_l3, %struct.omap3_l3* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.omap3_l3*, %struct.omap3_l3** %4, align 8
  %90 = call i32 @free_irq(i8* %88, %struct.omap3_l3* %89)
  br label %91

91:                                               ; preds = %85, %62
  %92 = load %struct.omap3_l3*, %struct.omap3_l3** %4, align 8
  %93 = getelementptr inbounds %struct.omap3_l3, %struct.omap3_l3* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @iounmap(i32 %94)
  br label %96

96:                                               ; preds = %91, %42, %23
  %97 = load %struct.omap3_l3*, %struct.omap3_l3** %4, align 8
  %98 = call i32 @kfree(%struct.omap3_l3* %97)
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %96, %84, %11
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.omap3_l3* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.omap3_l3*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @request_irq(i8*, i32, i32, i8*, %struct.omap3_l3*) #1

declare dso_local i32 @free_irq(i8*, %struct.omap3_l3*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.omap3_l3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
