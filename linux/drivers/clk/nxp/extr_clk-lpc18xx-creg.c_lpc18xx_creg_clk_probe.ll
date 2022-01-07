; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc18xx-creg.c_lpc18xx_creg_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc18xx-creg.c_lpc18xx_creg_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"syscon lookup failed\0A\00", align 1
@clk_creg_early = common dso_local global i32* null, align 8
@CREG_CLK_32KHZ = common dso_local global i64 0, align 8
@clk_creg = common dso_local global i32* null, align 8
@clk_creg_clocks = common dso_local global %struct.TYPE_5__* null, align 8
@CREG_CLK_1KHZ = common dso_local global i64 0, align 8
@of_clk_src_onecell_get = common dso_local global i32 0, align 4
@clk_creg_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc18xx_creg_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_creg_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.regmap*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = getelementptr inbounds %struct.device_node, %struct.device_node* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.regmap* @syscon_node_to_regmap(i32 %12)
  store %struct.regmap* %13, %struct.regmap** %5, align 8
  %14 = load %struct.regmap*, %struct.regmap** %5, align 8
  %15 = call i64 @IS_ERR(%struct.regmap* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @dev_err(%struct.TYPE_4__* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.regmap*, %struct.regmap** %5, align 8
  %22 = call i32 @PTR_ERR(%struct.regmap* %21)
  store i32 %22, i32* %2, align 4
  br label %46

23:                                               ; preds = %1
  %24 = load i32*, i32** @clk_creg_early, align 8
  %25 = load i64, i64* @CREG_CLK_32KHZ, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @clk_creg, align 8
  %29 = load i64, i64* @CREG_CLK_32KHZ, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %27, i32* %30, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clk_creg_clocks, align 8
  %32 = load i64, i64* @CREG_CLK_1KHZ, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %32
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clk_creg_clocks, align 8
  %35 = load i64, i64* @CREG_CLK_32KHZ, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.regmap*, %struct.regmap** %5, align 8
  %39 = call i32 @clk_register_creg_clk(i32* null, %struct.TYPE_5__* %33, i32* %37, %struct.regmap* %38)
  %40 = load i32*, i32** @clk_creg, align 8
  %41 = load i64, i64* @CREG_CLK_1KHZ, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 %39, i32* %42, align 4
  %43 = load %struct.device_node*, %struct.device_node** %4, align 8
  %44 = load i32, i32* @of_clk_src_onecell_get, align 4
  %45 = call i32 @of_clk_add_provider(%struct.device_node* %43, i32 %44, i32* @clk_creg_data)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %23, %17
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.regmap* @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @clk_register_creg_clk(i32*, %struct.TYPE_5__*, i32*, %struct.regmap*) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
