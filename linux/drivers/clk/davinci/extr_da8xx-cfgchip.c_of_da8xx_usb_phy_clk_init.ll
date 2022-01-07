; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_da8xx-cfgchip.c_of_da8xx_usb_phy_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_da8xx-cfgchip.c_of_da8xx_usb_phy_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.clk_hw_onecell_data = type { i32, i32** }
%struct.da8xx_usb0_clk48 = type { i32 }
%struct.da8xx_usb1_clk48 = type { i32 }

@hws = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to register usb0_clk48 (%ld)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to register usb1_clk48 (%ld)\0A\00", align 1
@of_clk_hw_onecell_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.regmap*)* @of_da8xx_usb_phy_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_da8xx_usb_phy_clk_init(%struct.device* %0, %struct.regmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.clk_hw_onecell_data*, align 8
  %7 = alloca %struct.da8xx_usb0_clk48*, align 8
  %8 = alloca %struct.da8xx_usb1_clk48*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.regmap* %1, %struct.regmap** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %6, align 8
  %11 = load i32, i32* @hws, align 4
  %12 = call i32 @struct_size(%struct.clk_hw_onecell_data* %10, i32 %11, i32 2)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.clk_hw_onecell_data* @devm_kzalloc(%struct.device* %9, i32 %12, i32 %13)
  store %struct.clk_hw_onecell_data* %14, %struct.clk_hw_onecell_data** %6, align 8
  %15 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %6, align 8
  %16 = icmp ne %struct.clk_hw_onecell_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %103

20:                                               ; preds = %2
  %21 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %6, align 8
  %22 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %21, i32 0, i32 0
  store i32 2, i32* %22, align 8
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.regmap*, %struct.regmap** %5, align 8
  %25 = call %struct.da8xx_usb1_clk48* @da8xx_cfgchip_register_usb0_clk48(%struct.device* %23, %struct.regmap* %24)
  %26 = bitcast %struct.da8xx_usb1_clk48* %25 to %struct.da8xx_usb0_clk48*
  store %struct.da8xx_usb0_clk48* %26, %struct.da8xx_usb0_clk48** %7, align 8
  %27 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %7, align 8
  %28 = bitcast %struct.da8xx_usb0_clk48* %27 to %struct.da8xx_usb1_clk48*
  %29 = call i64 @IS_ERR(%struct.da8xx_usb1_clk48* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %20
  %32 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %7, align 8
  %33 = bitcast %struct.da8xx_usb0_clk48* %32 to %struct.da8xx_usb1_clk48*
  %34 = call i32 @PTR_ERR(%struct.da8xx_usb1_clk48* %33)
  %35 = load i32, i32* @EPROBE_DEFER, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EPROBE_DEFER, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %103

41:                                               ; preds = %31
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %7, align 8
  %44 = bitcast %struct.da8xx_usb0_clk48* %43 to %struct.da8xx_usb1_clk48*
  %45 = call i32 @PTR_ERR(%struct.da8xx_usb1_clk48* %44)
  %46 = call i32 @dev_warn(%struct.device* %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @ENOENT, align 4
  %48 = sub nsw i32 0, %47
  %49 = call i8* @ERR_PTR(i32 %48)
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %6, align 8
  %52 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %51, i32 0, i32 1
  %53 = load i32**, i32*** %52, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  store i32* %50, i32** %54, align 8
  br label %62

55:                                               ; preds = %20
  %56 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %7, align 8
  %57 = getelementptr inbounds %struct.da8xx_usb0_clk48, %struct.da8xx_usb0_clk48* %56, i32 0, i32 0
  %58 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %6, align 8
  %59 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %58, i32 0, i32 1
  %60 = load i32**, i32*** %59, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 0
  store i32* %57, i32** %61, align 8
  br label %62

62:                                               ; preds = %55, %41
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load %struct.regmap*, %struct.regmap** %5, align 8
  %65 = call %struct.da8xx_usb1_clk48* @da8xx_cfgchip_register_usb1_clk48(%struct.device* %63, %struct.regmap* %64)
  store %struct.da8xx_usb1_clk48* %65, %struct.da8xx_usb1_clk48** %8, align 8
  %66 = load %struct.da8xx_usb1_clk48*, %struct.da8xx_usb1_clk48** %8, align 8
  %67 = call i64 @IS_ERR(%struct.da8xx_usb1_clk48* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %62
  %70 = load %struct.da8xx_usb1_clk48*, %struct.da8xx_usb1_clk48** %8, align 8
  %71 = call i32 @PTR_ERR(%struct.da8xx_usb1_clk48* %70)
  %72 = load i32, i32* @EPROBE_DEFER, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @EPROBE_DEFER, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %103

78:                                               ; preds = %69
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load %struct.da8xx_usb1_clk48*, %struct.da8xx_usb1_clk48** %8, align 8
  %81 = call i32 @PTR_ERR(%struct.da8xx_usb1_clk48* %80)
  %82 = call i32 @dev_warn(%struct.device* %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @ENOENT, align 4
  %84 = sub nsw i32 0, %83
  %85 = call i8* @ERR_PTR(i32 %84)
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %6, align 8
  %88 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %87, i32 0, i32 1
  %89 = load i32**, i32*** %88, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 1
  store i32* %86, i32** %90, align 8
  br label %98

91:                                               ; preds = %62
  %92 = load %struct.da8xx_usb1_clk48*, %struct.da8xx_usb1_clk48** %8, align 8
  %93 = getelementptr inbounds %struct.da8xx_usb1_clk48, %struct.da8xx_usb1_clk48* %92, i32 0, i32 0
  %94 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %6, align 8
  %95 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %94, i32 0, i32 1
  %96 = load i32**, i32*** %95, align 8
  %97 = getelementptr inbounds i32*, i32** %96, i64 1
  store i32* %93, i32** %97, align 8
  br label %98

98:                                               ; preds = %91, %78
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load i32, i32* @of_clk_hw_onecell_get, align 4
  %101 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %6, align 8
  %102 = call i32 @devm_of_clk_add_hw_provider(%struct.device* %99, i32 %100, %struct.clk_hw_onecell_data* %101)
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %98, %75, %38, %17
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.clk_hw_onecell_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.clk_hw_onecell_data*, i32, i32) #1

declare dso_local %struct.da8xx_usb1_clk48* @da8xx_cfgchip_register_usb0_clk48(%struct.device*, %struct.regmap*) #1

declare dso_local i64 @IS_ERR(%struct.da8xx_usb1_clk48*) #1

declare dso_local i32 @PTR_ERR(%struct.da8xx_usb1_clk48*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local %struct.da8xx_usb1_clk48* @da8xx_cfgchip_register_usb1_clk48(%struct.device*, %struct.regmap*) #1

declare dso_local i32 @devm_of_clk_add_hw_provider(%struct.device*, i32, %struct.clk_hw_onecell_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
