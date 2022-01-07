; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_debug-leds.c_fpga_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-omap/extr_debug-leds.c_fpga_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.dbg_led = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@fpga = common dso_local global %struct.TYPE_7__* null, align 8
@dbg_leds = common dso_local global %struct.TYPE_8__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@dbg_led_set = common dso_local global i32 0, align 4
@dbg_led_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fpga_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpga_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dbg_led*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @IORESOURCE_MEM, align 4
  %9 = call %struct.resource* @platform_get_resource(%struct.platform_device* %7, i32 %8, i32 0)
  store %struct.resource* %9, %struct.resource** %4, align 8
  %10 = load %struct.resource*, %struct.resource** %4, align 8
  %11 = icmp ne %struct.resource* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %79

15:                                               ; preds = %1
  %16 = load %struct.resource*, %struct.resource** %4, align 8
  %17 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.resource*, %struct.resource** %4, align 8
  %20 = call i32 @resource_size(%struct.resource* %19)
  %21 = call %struct.TYPE_7__* @ioremap(i32 %18, i32 %20)
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** @fpga, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fpga, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = call i32 @writew_relaxed(i32 255, i32* %23)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %75, %15
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dbg_leds, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %78

30:                                               ; preds = %25
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.dbg_led* @kzalloc(i32 20, i32 %31)
  store %struct.dbg_led* %32, %struct.dbg_led** %6, align 8
  %33 = load %struct.dbg_led*, %struct.dbg_led** %6, align 8
  %34 = icmp ne %struct.dbg_led* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %78

36:                                               ; preds = %30
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dbg_leds, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dbg_led*, %struct.dbg_led** %6, align 8
  %44 = getelementptr inbounds %struct.dbg_led, %struct.dbg_led* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @dbg_led_set, align 4
  %47 = load %struct.dbg_led*, %struct.dbg_led** %6, align 8
  %48 = getelementptr inbounds %struct.dbg_led, %struct.dbg_led* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @dbg_led_get, align 4
  %51 = load %struct.dbg_led*, %struct.dbg_led** %6, align 8
  %52 = getelementptr inbounds %struct.dbg_led, %struct.dbg_led* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dbg_leds, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.dbg_led*, %struct.dbg_led** %6, align 8
  %61 = getelementptr inbounds %struct.dbg_led, %struct.dbg_led* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @BIT(i32 %63)
  %65 = load %struct.dbg_led*, %struct.dbg_led** %6, align 8
  %66 = getelementptr inbounds %struct.dbg_led, %struct.dbg_led* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.dbg_led*, %struct.dbg_led** %6, align 8
  %68 = getelementptr inbounds %struct.dbg_led, %struct.dbg_led* %67, i32 0, i32 0
  %69 = call i64 @led_classdev_register(i32* null, %struct.TYPE_6__* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %36
  %72 = load %struct.dbg_led*, %struct.dbg_led** %6, align 8
  %73 = call i32 @kfree(%struct.dbg_led* %72)
  br label %78

74:                                               ; preds = %36
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %25

78:                                               ; preds = %71, %35, %25
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %12
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @writew_relaxed(i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local %struct.dbg_led* @kzalloc(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @led_classdev_register(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.dbg_led*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
