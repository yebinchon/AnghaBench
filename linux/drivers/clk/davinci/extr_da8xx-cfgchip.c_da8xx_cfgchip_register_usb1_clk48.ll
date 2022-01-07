; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_da8xx-cfgchip.c_da8xx_cfgchip_register_usb1_clk48.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_da8xx-cfgchip.c_da8xx_cfgchip_register_usb1_clk48.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da8xx_usb1_clk48 = type { %struct.TYPE_2__, %struct.regmap* }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i8**, i32, i32* }
%struct.device = type { i32 }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"usb0_clk48\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"usb_refclkin\00", align 1
@__const.da8xx_cfgchip_register_usb1_clk48.parent_names = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"usb1_clk48\00", align 1
@da8xx_usb1_clk48_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.da8xx_usb1_clk48* (%struct.device*, %struct.regmap*)* @da8xx_cfgchip_register_usb1_clk48 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.da8xx_usb1_clk48* @da8xx_cfgchip_register_usb1_clk48(%struct.device* %0, %struct.regmap* %1) #0 {
  %3 = alloca %struct.da8xx_usb1_clk48*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca [2 x i8*], align 16
  %7 = alloca %struct.da8xx_usb1_clk48*, align 8
  %8 = alloca %struct.clk_init_data, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.regmap* %1, %struct.regmap** %5, align 8
  %10 = bitcast [2 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([2 x i8*]* @__const.da8xx_cfgchip_register_usb1_clk48.parent_names to i8*), i64 16, i1 false)
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.da8xx_usb1_clk48* @devm_kzalloc(%struct.device* %11, i32 16, i32 %12)
  store %struct.da8xx_usb1_clk48* %13, %struct.da8xx_usb1_clk48** %7, align 8
  %14 = load %struct.da8xx_usb1_clk48*, %struct.da8xx_usb1_clk48** %7, align 8
  %15 = icmp ne %struct.da8xx_usb1_clk48* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.da8xx_usb1_clk48* @ERR_PTR(i32 %18)
  store %struct.da8xx_usb1_clk48* %19, %struct.da8xx_usb1_clk48** %3, align 8
  br label %43

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %21, align 8
  %22 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 3
  store i32* @da8xx_usb1_clk48_ops, i32** %22, align 8
  %23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %24 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 1
  store i8** %23, i8*** %24, align 8
  %25 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %8, i32 0, i32 2
  store i32 2, i32* %25, align 8
  %26 = load %struct.da8xx_usb1_clk48*, %struct.da8xx_usb1_clk48** %7, align 8
  %27 = getelementptr inbounds %struct.da8xx_usb1_clk48, %struct.da8xx_usb1_clk48* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.clk_init_data* %8, %struct.clk_init_data** %28, align 8
  %29 = load %struct.regmap*, %struct.regmap** %5, align 8
  %30 = load %struct.da8xx_usb1_clk48*, %struct.da8xx_usb1_clk48** %7, align 8
  %31 = getelementptr inbounds %struct.da8xx_usb1_clk48, %struct.da8xx_usb1_clk48* %30, i32 0, i32 1
  store %struct.regmap* %29, %struct.regmap** %31, align 8
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.da8xx_usb1_clk48*, %struct.da8xx_usb1_clk48** %7, align 8
  %34 = getelementptr inbounds %struct.da8xx_usb1_clk48, %struct.da8xx_usb1_clk48* %33, i32 0, i32 0
  %35 = call i32 @devm_clk_hw_register(%struct.device* %32, %struct.TYPE_2__* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %20
  %39 = load i32, i32* %9, align 4
  %40 = call %struct.da8xx_usb1_clk48* @ERR_PTR(i32 %39)
  store %struct.da8xx_usb1_clk48* %40, %struct.da8xx_usb1_clk48** %3, align 8
  br label %43

41:                                               ; preds = %20
  %42 = load %struct.da8xx_usb1_clk48*, %struct.da8xx_usb1_clk48** %7, align 8
  store %struct.da8xx_usb1_clk48* %42, %struct.da8xx_usb1_clk48** %3, align 8
  br label %43

43:                                               ; preds = %41, %38, %16
  %44 = load %struct.da8xx_usb1_clk48*, %struct.da8xx_usb1_clk48** %3, align 8
  ret %struct.da8xx_usb1_clk48* %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.da8xx_usb1_clk48* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local %struct.da8xx_usb1_clk48* @ERR_PTR(i32) #2

declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.TYPE_2__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
