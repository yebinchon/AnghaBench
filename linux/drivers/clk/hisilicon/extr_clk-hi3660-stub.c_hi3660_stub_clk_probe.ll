; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3660-stub.c_hi3660_stub_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3660-stub.c_hi3660_stub_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32*, %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.resource = type { i32 }

@stub_clk_chan = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@freq_reg = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@HI3660_STUB_CLOCK_DATA = common dso_local global i64 0, align 8
@HI3660_CLK_STUB_NUM = common dso_local global i32 0, align 4
@hi3660_stub_clks = common dso_local global %struct.TYPE_7__* null, align 8
@hi3660_stub_clk_hw_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hi3660_stub_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3660_stub_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %10, %struct.device** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stub_clk_chan, i32 0, i32 1, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stub_clk_chan, i32 0, i32 1, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stub_clk_chan, i32 0, i32 1, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stub_clk_chan, i32 0, i32 1, i32 1), align 4
  %11 = call i32 @mbox_request_channel(%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stub_clk_chan, i32 0, i32 1), i32 0)
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stub_clk_chan, i32 0, i32 0), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stub_clk_chan, i32 0, i32 0), align 8
  %13 = call i64 @IS_ERR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stub_clk_chan, i32 0, i32 0), align 8
  %17 = call i32 @PTR_ERR(i32 %16)
  store i32 %17, i32* %2, align 4
  br label %71

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %5, align 8
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = icmp ne %struct.resource* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %71

27:                                               ; preds = %18
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.resource*, %struct.resource** %5, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.resource*, %struct.resource** %5, align 8
  %33 = call i32 @resource_size(%struct.resource* %32)
  %34 = call i64 @devm_ioremap(%struct.device* %28, i32 %31, i32 %33)
  store i64 %34, i64* @freq_reg, align 8
  %35 = load i64, i64* @freq_reg, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %71

40:                                               ; preds = %27
  %41 = load i64, i64* @HI3660_STUB_CLOCK_DATA, align 8
  %42 = load i64, i64* @freq_reg, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* @freq_reg, align 8
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %62, %40
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @HI3660_CLK_STUB_NUM, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hi3660_stub_clks, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = call i32 @devm_clk_hw_register(%struct.device* %50, i32* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %71

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %44

65:                                               ; preds = %44
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load i32, i32* @hi3660_stub_clk_hw_get, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hi3660_stub_clks, align 8
  %70 = call i32 @devm_of_clk_add_hw_provider(%struct.device* %67, i32 %68, %struct.TYPE_7__* %69)
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %65, %59, %37, %24, %15
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @mbox_request_channel(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_clk_hw_register(%struct.device*, i32*) #1

declare dso_local i32 @devm_of_clk_add_hw_provider(%struct.device*, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
