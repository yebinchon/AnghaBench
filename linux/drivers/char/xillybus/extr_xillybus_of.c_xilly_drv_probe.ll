; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_of.c_xilly_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_of.c_xilly_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilly_endpoint_hardware = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.xilly_endpoint = type { i32, i32 }
%struct.resource = type { i32 }

@of_hw = common dso_local global %struct.xilly_endpoint_hardware zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c"dma-coherent\00", align 1
@of_hw_coherent = common dso_local global %struct.xilly_endpoint_hardware zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@xillybus_isr = common dso_local global i32 0, align 4
@xillyname = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to register IRQ handler. Aborting.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xilly_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilly_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.xilly_endpoint*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.xilly_endpoint_hardware*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  store %struct.xilly_endpoint_hardware* @of_hw, %struct.xilly_endpoint_hardware** %9, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @of_property_read_bool(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store %struct.xilly_endpoint_hardware* @of_hw_coherent, %struct.xilly_endpoint_hardware** %9, align 8
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.xilly_endpoint_hardware*, %struct.xilly_endpoint_hardware** %9, align 8
  %21 = call %struct.xilly_endpoint* @xillybus_init_endpoint(i32* null, %struct.device* %19, %struct.xilly_endpoint_hardware* %20)
  store %struct.xilly_endpoint* %21, %struct.xilly_endpoint** %5, align 8
  %22 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %23 = icmp ne %struct.xilly_endpoint* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %70

27:                                               ; preds = %18
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %30 = call i32 @dev_set_drvdata(%struct.device* %28, %struct.xilly_endpoint* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load i32, i32* @IORESOURCE_MEM, align 4
  %33 = call %struct.resource* @platform_get_resource(%struct.platform_device* %31, i32 %32, i32 0)
  store %struct.resource* %33, %struct.resource** %8, align 8
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.resource*, %struct.resource** %8, align 8
  %36 = call i32 @devm_ioremap_resource(%struct.device* %34, %struct.resource* %35)
  %37 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %38 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %40 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %27
  %45 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %46 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @PTR_ERR(i32 %47)
  store i32 %48, i32* %2, align 4
  br label %70

49:                                               ; preds = %27
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = call i32 @platform_get_irq(%struct.platform_device* %50, i32 0)
  store i32 %51, i32* %7, align 4
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @xillybus_isr, align 4
  %55 = load i32, i32* @xillyname, align 4
  %56 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %57 = call i32 @devm_request_irq(%struct.device* %52, i32 %53, i32 %54, i32 0, i32 %55, %struct.xilly_endpoint* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %49
  %61 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %62 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %70

67:                                               ; preds = %49
  %68 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %5, align 8
  %69 = call i32 @xillybus_endpoint_discovery(%struct.xilly_endpoint* %68)
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %67, %60, %44, %24
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local %struct.xilly_endpoint* @xillybus_init_endpoint(i32*, %struct.device*, %struct.xilly_endpoint_hardware*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.xilly_endpoint*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.xilly_endpoint*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @xillybus_endpoint_discovery(%struct.xilly_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
