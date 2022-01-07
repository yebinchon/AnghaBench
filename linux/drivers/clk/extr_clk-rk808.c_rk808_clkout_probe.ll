; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-rk808.c_rk808_clkout_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-rk808.c_rk808_clkout_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.rk808 = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.clk_init_data = type { i8*, i32*, i64, i32* }
%struct.rk808_clkout = type { %struct.TYPE_7__, %struct.TYPE_7__, %struct.rk808* }
%struct.TYPE_7__ = type { %struct.clk_init_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"rk808-clkout1\00", align 1
@rk808_clkout1_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"rk808-clkout2\00", align 1
@of_clk_rk808_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rk808_clkout_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk808_clkout_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rk808*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.clk_init_data, align 8
  %8 = alloca %struct.rk808_clkout*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.rk808* @dev_get_drvdata(i32 %13)
  store %struct.rk808* %14, %struct.rk808** %4, align 8
  %15 = load %struct.rk808*, %struct.rk808** %4, align 8
  %16 = getelementptr inbounds %struct.rk808, %struct.rk808* %15, i32 0, i32 1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %5, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  store %struct.device_node* %21, %struct.device_node** %6, align 8
  %22 = bitcast %struct.clk_init_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 32, i1 false)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.rk808_clkout* @devm_kzalloc(%struct.TYPE_6__* %24, i32 24, i32 %25)
  store %struct.rk808_clkout* %26, %struct.rk808_clkout** %8, align 8
  %27 = load %struct.rk808_clkout*, %struct.rk808_clkout** %8, align 8
  %28 = icmp ne %struct.rk808_clkout* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %83

32:                                               ; preds = %1
  %33 = load %struct.rk808*, %struct.rk808** %4, align 8
  %34 = load %struct.rk808_clkout*, %struct.rk808_clkout** %8, align 8
  %35 = getelementptr inbounds %struct.rk808_clkout, %struct.rk808_clkout* %34, i32 0, i32 2
  store %struct.rk808* %33, %struct.rk808** %35, align 8
  %36 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 3
  store i32* null, i32** %36, align 8
  %37 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %38, align 8
  %39 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 1
  store i32* @rk808_clkout1_ops, i32** %39, align 8
  %40 = load %struct.rk808_clkout*, %struct.rk808_clkout** %8, align 8
  %41 = getelementptr inbounds %struct.rk808_clkout, %struct.rk808_clkout* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store %struct.clk_init_data* %7, %struct.clk_init_data** %42, align 8
  %43 = load %struct.device_node*, %struct.device_node** %6, align 8
  %44 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  %45 = call i32 @of_property_read_string_index(%struct.device_node* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 0, i8** %44)
  %46 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load %struct.rk808_clkout*, %struct.rk808_clkout** %8, align 8
  %49 = getelementptr inbounds %struct.rk808_clkout, %struct.rk808_clkout* %48, i32 0, i32 1
  %50 = call i32 @devm_clk_hw_register(%struct.TYPE_6__* %47, %struct.TYPE_7__* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %32
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %2, align 4
  br label %83

55:                                               ; preds = %32
  %56 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %56, align 8
  %57 = load %struct.rk808*, %struct.rk808** %4, align 8
  %58 = getelementptr inbounds %struct.rk808, %struct.rk808* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32* @rkpmic_get_ops(i32 %59)
  %61 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 1
  store i32* %60, i32** %61, align 8
  %62 = load %struct.rk808_clkout*, %struct.rk808_clkout** %8, align 8
  %63 = getelementptr inbounds %struct.rk808_clkout, %struct.rk808_clkout* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store %struct.clk_init_data* %7, %struct.clk_init_data** %64, align 8
  %65 = load %struct.device_node*, %struct.device_node** %6, align 8
  %66 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  %67 = call i32 @of_property_read_string_index(%struct.device_node* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 1, i8** %66)
  %68 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = load %struct.rk808_clkout*, %struct.rk808_clkout** %8, align 8
  %71 = getelementptr inbounds %struct.rk808_clkout, %struct.rk808_clkout* %70, i32 0, i32 0
  %72 = call i32 @devm_clk_hw_register(%struct.TYPE_6__* %69, %struct.TYPE_7__* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %55
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %2, align 4
  br label %83

77:                                               ; preds = %55
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load i32, i32* @of_clk_rk808_get, align 4
  %81 = load %struct.rk808_clkout*, %struct.rk808_clkout** %8, align 8
  %82 = call i32 @devm_of_clk_add_hw_provider(%struct.TYPE_5__* %79, i32 %80, %struct.rk808_clkout* %81)
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %77, %75, %53, %29
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.rk808* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.rk808_clkout* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @of_property_read_string_index(%struct.device_node*, i8*, i32, i8**) #1

declare dso_local i32 @devm_clk_hw_register(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32* @rkpmic_get_ops(i32) #1

declare dso_local i32 @devm_of_clk_add_hw_provider(%struct.TYPE_5__*, i32, %struct.rk808_clkout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
