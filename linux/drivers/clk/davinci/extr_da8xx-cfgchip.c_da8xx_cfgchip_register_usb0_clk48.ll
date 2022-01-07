; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_da8xx-cfgchip.c_da8xx_cfgchip_register_usb0_clk48.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_da8xx-cfgchip.c_da8xx_cfgchip_register_usb0_clk48.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da8xx_usb0_clk48 = type { %struct.TYPE_2__, %struct.regmap*, %struct.clk* }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i8**, i32, i32* }
%struct.clk = type { i32 }
%struct.device = type { i32 }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"usb_refclkin\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"pll0_auxclk\00", align 1
@__const.da8xx_cfgchip_register_usb0_clk48.parent_names = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Missing fck clock\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"usb0_clk48\00", align 1
@da8xx_usb0_clk48_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.da8xx_usb0_clk48* (%struct.device*, %struct.regmap*)* @da8xx_cfgchip_register_usb0_clk48 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.da8xx_usb0_clk48* @da8xx_cfgchip_register_usb0_clk48(%struct.device* %0, %struct.regmap* %1) #0 {
  %3 = alloca %struct.da8xx_usb0_clk48*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca [2 x i8*], align 16
  %7 = alloca %struct.clk*, align 8
  %8 = alloca %struct.da8xx_usb0_clk48*, align 8
  %9 = alloca %struct.clk_init_data, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.regmap* %1, %struct.regmap** %5, align 8
  %11 = bitcast [2 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([2 x i8*]* @__const.da8xx_cfgchip_register_usb0_clk48.parent_names to i8*), i64 16, i1 false)
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.clk* @devm_clk_get(%struct.device* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.clk* %13, %struct.clk** %7, align 8
  %14 = load %struct.clk*, %struct.clk** %7, align 8
  %15 = call i64 @IS_ERR(%struct.clk* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.clk*, %struct.clk** %7, align 8
  %19 = call i32 @PTR_ERR(%struct.clk* %18)
  %20 = load i32, i32* @EPROBE_DEFER, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %17
  %27 = load %struct.clk*, %struct.clk** %7, align 8
  %28 = call %struct.da8xx_usb0_clk48* @ERR_CAST(%struct.clk* %27)
  store %struct.da8xx_usb0_clk48* %28, %struct.da8xx_usb0_clk48** %3, align 8
  br label %65

29:                                               ; preds = %2
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.da8xx_usb0_clk48* @devm_kzalloc(%struct.device* %30, i32 24, i32 %31)
  store %struct.da8xx_usb0_clk48* %32, %struct.da8xx_usb0_clk48** %8, align 8
  %33 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %8, align 8
  %34 = icmp ne %struct.da8xx_usb0_clk48* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.da8xx_usb0_clk48* @ERR_PTR(i32 %37)
  store %struct.da8xx_usb0_clk48* %38, %struct.da8xx_usb0_clk48** %3, align 8
  br label %65

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %40, align 8
  %41 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 3
  store i32* @da8xx_usb0_clk48_ops, i32** %41, align 8
  %42 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %43 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 1
  store i8** %42, i8*** %43, align 8
  %44 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  store i32 2, i32* %44, align 8
  %45 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %8, align 8
  %46 = getelementptr inbounds %struct.da8xx_usb0_clk48, %struct.da8xx_usb0_clk48* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store %struct.clk_init_data* %9, %struct.clk_init_data** %47, align 8
  %48 = load %struct.clk*, %struct.clk** %7, align 8
  %49 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %8, align 8
  %50 = getelementptr inbounds %struct.da8xx_usb0_clk48, %struct.da8xx_usb0_clk48* %49, i32 0, i32 2
  store %struct.clk* %48, %struct.clk** %50, align 8
  %51 = load %struct.regmap*, %struct.regmap** %5, align 8
  %52 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %8, align 8
  %53 = getelementptr inbounds %struct.da8xx_usb0_clk48, %struct.da8xx_usb0_clk48* %52, i32 0, i32 1
  store %struct.regmap* %51, %struct.regmap** %53, align 8
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %8, align 8
  %56 = getelementptr inbounds %struct.da8xx_usb0_clk48, %struct.da8xx_usb0_clk48* %55, i32 0, i32 0
  %57 = call i32 @devm_clk_hw_register(%struct.device* %54, %struct.TYPE_2__* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %39
  %61 = load i32, i32* %10, align 4
  %62 = call %struct.da8xx_usb0_clk48* @ERR_PTR(i32 %61)
  store %struct.da8xx_usb0_clk48* %62, %struct.da8xx_usb0_clk48** %3, align 8
  br label %65

63:                                               ; preds = %39
  %64 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %8, align 8
  store %struct.da8xx_usb0_clk48* %64, %struct.da8xx_usb0_clk48** %3, align 8
  br label %65

65:                                               ; preds = %63, %60, %35, %26
  %66 = load %struct.da8xx_usb0_clk48*, %struct.da8xx_usb0_clk48** %3, align 8
  ret %struct.da8xx_usb0_clk48* %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i8*) #2

declare dso_local i64 @IS_ERR(%struct.clk*) #2

declare dso_local i32 @PTR_ERR(%struct.clk*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local %struct.da8xx_usb0_clk48* @ERR_CAST(%struct.clk*) #2

declare dso_local %struct.da8xx_usb0_clk48* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local %struct.da8xx_usb0_clk48* @ERR_PTR(i32) #2

declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.TYPE_2__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
