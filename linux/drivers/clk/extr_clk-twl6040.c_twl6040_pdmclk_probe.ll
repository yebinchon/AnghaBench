; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-twl6040.c_twl6040_pdmclk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-twl6040.c_twl6040_pdmclk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.twl6040 = type { i32 }
%struct.twl6040_pdmclk = type { %struct.TYPE_7__, %struct.twl6040*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@twl6040_pdmclk_init = common dso_local global i32 0, align 4
@of_clk_hw_simple_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @twl6040_pdmclk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6040_pdmclk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.twl6040*, align 8
  %5 = alloca %struct.twl6040_pdmclk*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.twl6040* @dev_get_drvdata(i32 %10)
  store %struct.twl6040* %11, %struct.twl6040** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.twl6040_pdmclk* @devm_kzalloc(%struct.TYPE_6__* %13, i32 24, i32 %14)
  store %struct.twl6040_pdmclk* %15, %struct.twl6040_pdmclk** %5, align 8
  %16 = load %struct.twl6040_pdmclk*, %struct.twl6040_pdmclk** %5, align 8
  %17 = icmp ne %struct.twl6040_pdmclk* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %51

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.twl6040_pdmclk*, %struct.twl6040_pdmclk** %5, align 8
  %25 = getelementptr inbounds %struct.twl6040_pdmclk, %struct.twl6040_pdmclk* %24, i32 0, i32 2
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %25, align 8
  %26 = load %struct.twl6040*, %struct.twl6040** %4, align 8
  %27 = load %struct.twl6040_pdmclk*, %struct.twl6040_pdmclk** %5, align 8
  %28 = getelementptr inbounds %struct.twl6040_pdmclk, %struct.twl6040_pdmclk* %27, i32 0, i32 1
  store %struct.twl6040* %26, %struct.twl6040** %28, align 8
  %29 = load %struct.twl6040_pdmclk*, %struct.twl6040_pdmclk** %5, align 8
  %30 = getelementptr inbounds %struct.twl6040_pdmclk, %struct.twl6040_pdmclk* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32* @twl6040_pdmclk_init, i32** %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load %struct.twl6040_pdmclk*, %struct.twl6040_pdmclk** %5, align 8
  %35 = getelementptr inbounds %struct.twl6040_pdmclk, %struct.twl6040_pdmclk* %34, i32 0, i32 0
  %36 = call i32 @devm_clk_hw_register(%struct.TYPE_6__* %33, %struct.TYPE_7__* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %21
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %51

41:                                               ; preds = %21
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load %struct.twl6040_pdmclk*, %struct.twl6040_pdmclk** %5, align 8
  %44 = call i32 @platform_set_drvdata(%struct.platform_device* %42, %struct.twl6040_pdmclk* %43)
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load i32, i32* @of_clk_hw_simple_get, align 4
  %48 = load %struct.twl6040_pdmclk*, %struct.twl6040_pdmclk** %5, align 8
  %49 = getelementptr inbounds %struct.twl6040_pdmclk, %struct.twl6040_pdmclk* %48, i32 0, i32 0
  %50 = call i32 @devm_of_clk_add_hw_provider(%struct.TYPE_6__* %46, i32 %47, %struct.TYPE_7__* %49)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %41, %39, %18
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.twl6040* @dev_get_drvdata(i32) #1

declare dso_local %struct.twl6040_pdmclk* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @devm_clk_hw_register(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.twl6040_pdmclk*) #1

declare dso_local i32 @devm_of_clk_add_hw_provider(%struct.TYPE_6__*, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
