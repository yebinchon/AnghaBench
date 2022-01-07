; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_da8xx-cfgchip.c_da8xx_cfgchip_register_usb_phy_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_da8xx-cfgchip.c_da8xx_cfgchip_register_usb_phy_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.da8xx_usb0_clk48 = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.da8xx_usb1_clk48 = type { %struct.TYPE_3__ }
%struct.clk_hw = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to find usb0 parent clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to find usb1 parent clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"usb0_clk48\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"da8xx-usb-phy\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"usb1_clk48\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.regmap*)* @da8xx_cfgchip_register_usb_phy_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da8xx_cfgchip_register_usb_phy_clk(%struct.device* %0, %struct.regmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.da8xx_usb0_clk48*, align 8
  %7 = alloca %struct.da8xx_usb1_clk48*, align 8
  %8 = alloca %struct.clk_hw*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.regmap* %1, %struct.regmap** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load %struct.regmap*, %struct.regmap** %5, align 8
  %11 = call %struct.da8xx_usb1_clk48* @da8xx_cfgchip_register_usb0_clk48(%struct.device* %9, %struct.regmap* %10)
  %12 = bitcast %struct.da8xx_usb1_clk48* %11 to %struct.da8xx_usb0_clk48*
  store %struct.da8xx_usb0_clk48* %12, %struct.da8xx_usb0_clk48** %6, align 8
  %13 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %6, align 8
  %14 = bitcast %struct.da8xx_usb0_clk48* %13 to %struct.da8xx_usb1_clk48*
  %15 = call i64 @IS_ERR(%struct.da8xx_usb1_clk48* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %6, align 8
  %19 = bitcast %struct.da8xx_usb0_clk48* %18 to %struct.da8xx_usb1_clk48*
  %20 = call i32 @PTR_ERR(%struct.da8xx_usb1_clk48* %19)
  store i32 %20, i32* %3, align 4
  br label %74

21:                                               ; preds = %2
  %22 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %6, align 8
  %23 = getelementptr inbounds %struct.da8xx_usb0_clk48, %struct.da8xx_usb0_clk48* %22, i32 0, i32 0
  %24 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.TYPE_3__* %23, i32 1)
  store %struct.clk_hw* %24, %struct.clk_hw** %8, align 8
  %25 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %26 = icmp ne %struct.clk_hw* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %6, align 8
  %29 = getelementptr inbounds %struct.da8xx_usb0_clk48, %struct.da8xx_usb0_clk48* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %33 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clk_set_parent(i32 %31, i32 %34)
  br label %39

36:                                               ; preds = %21
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 @dev_warn(%struct.device* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %27
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.regmap*, %struct.regmap** %5, align 8
  %42 = call %struct.da8xx_usb1_clk48* @da8xx_cfgchip_register_usb1_clk48(%struct.device* %40, %struct.regmap* %41)
  store %struct.da8xx_usb1_clk48* %42, %struct.da8xx_usb1_clk48** %7, align 8
  %43 = load %struct.da8xx_usb1_clk48*, %struct.da8xx_usb1_clk48** %7, align 8
  %44 = call i64 @IS_ERR(%struct.da8xx_usb1_clk48* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.da8xx_usb1_clk48*, %struct.da8xx_usb1_clk48** %7, align 8
  %48 = call i32 @PTR_ERR(%struct.da8xx_usb1_clk48* %47)
  store i32 %48, i32* %3, align 4
  br label %74

49:                                               ; preds = %39
  %50 = load %struct.da8xx_usb1_clk48*, %struct.da8xx_usb1_clk48** %7, align 8
  %51 = getelementptr inbounds %struct.da8xx_usb1_clk48, %struct.da8xx_usb1_clk48* %50, i32 0, i32 0
  %52 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.TYPE_3__* %51, i32 0)
  store %struct.clk_hw* %52, %struct.clk_hw** %8, align 8
  %53 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %54 = icmp ne %struct.clk_hw* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load %struct.da8xx_usb1_clk48*, %struct.da8xx_usb1_clk48** %7, align 8
  %57 = getelementptr inbounds %struct.da8xx_usb1_clk48, %struct.da8xx_usb1_clk48* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %61 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @clk_set_parent(i32 %59, i32 %62)
  br label %67

64:                                               ; preds = %49
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = call i32 @dev_warn(%struct.device* %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %55
  %68 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %6, align 8
  %69 = getelementptr inbounds %struct.da8xx_usb0_clk48, %struct.da8xx_usb0_clk48* %68, i32 0, i32 0
  %70 = call i32 @clk_hw_register_clkdev(%struct.TYPE_3__* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.da8xx_usb1_clk48*, %struct.da8xx_usb1_clk48** %7, align 8
  %72 = getelementptr inbounds %struct.da8xx_usb1_clk48, %struct.da8xx_usb1_clk48* %71, i32 0, i32 0
  %73 = call i32 @clk_hw_register_clkdev(%struct.TYPE_3__* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %67, %46, %17
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.da8xx_usb1_clk48* @da8xx_cfgchip_register_usb0_clk48(%struct.device*, %struct.regmap*) #1

declare dso_local i64 @IS_ERR(%struct.da8xx_usb1_clk48*) #1

declare dso_local i32 @PTR_ERR(%struct.da8xx_usb1_clk48*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @clk_set_parent(i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local %struct.da8xx_usb1_clk48* @da8xx_cfgchip_register_usb1_clk48(%struct.device*, %struct.regmap*) #1

declare dso_local i32 @clk_hw_register_clkdev(%struct.TYPE_3__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
