; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si514.c_si514_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si514.c_si514_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.clk_si514 = type { %struct.TYPE_9__, i32, %struct.i2c_client* }
%struct.TYPE_9__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i32, i64, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@si514_clk_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@si514_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to allocate register map\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"clock registration failed\0A\00", align 1
@of_clk_hw_simple_get = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"unable to add clk provider\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @si514_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si514_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.clk_si514*, align 8
  %7 = alloca %struct.clk_init_data, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.clk_si514* @devm_kzalloc(%struct.TYPE_10__* %10, i32 24, i32 %11)
  store %struct.clk_si514* %12, %struct.clk_si514** %6, align 8
  %13 = load %struct.clk_si514*, %struct.clk_si514** %6, align 8
  %14 = icmp ne %struct.clk_si514* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %94

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 3
  store i32* @si514_clk_ops, i32** %19, align 8
  %20 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.clk_si514*, %struct.clk_si514** %6, align 8
  %23 = getelementptr inbounds %struct.clk_si514, %struct.clk_si514* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store %struct.clk_init_data* %7, %struct.clk_init_data** %24, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load %struct.clk_si514*, %struct.clk_si514** %6, align 8
  %27 = getelementptr inbounds %struct.clk_si514, %struct.clk_si514* %26, i32 0, i32 2
  store %struct.i2c_client* %25, %struct.i2c_client** %27, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  %33 = call i64 @of_property_read_string(%struct.TYPE_8__* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %18
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  br label %43

43:                                               ; preds = %35, %18
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %44, i32* @si514_regmap_config)
  %46 = load %struct.clk_si514*, %struct.clk_si514** %6, align 8
  %47 = getelementptr inbounds %struct.clk_si514, %struct.clk_si514* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.clk_si514*, %struct.clk_si514** %6, align 8
  %49 = getelementptr inbounds %struct.clk_si514, %struct.clk_si514* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %43
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = call i32 @dev_err(%struct.TYPE_10__* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.clk_si514*, %struct.clk_si514** %6, align 8
  %58 = getelementptr inbounds %struct.clk_si514, %struct.clk_si514* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %3, align 4
  br label %94

61:                                               ; preds = %43
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = load %struct.clk_si514*, %struct.clk_si514** %6, align 8
  %64 = call i32 @i2c_set_clientdata(%struct.i2c_client* %62, %struct.clk_si514* %63)
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = load %struct.clk_si514*, %struct.clk_si514** %6, align 8
  %68 = getelementptr inbounds %struct.clk_si514, %struct.clk_si514* %67, i32 0, i32 0
  %69 = call i32 @devm_clk_hw_register(%struct.TYPE_10__* %66, %struct.TYPE_9__* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %61
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = call i32 @dev_err(%struct.TYPE_10__* %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %94

77:                                               ; preds = %61
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load i32, i32* @of_clk_hw_simple_get, align 4
  %83 = load %struct.clk_si514*, %struct.clk_si514** %6, align 8
  %84 = getelementptr inbounds %struct.clk_si514, %struct.clk_si514* %83, i32 0, i32 0
  %85 = call i32 @of_clk_add_hw_provider(%struct.TYPE_8__* %81, i32 %82, %struct.TYPE_9__* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = call i32 @dev_err(%struct.TYPE_10__* %90, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %94

93:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %88, %72, %53, %15
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.clk_si514* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @of_property_read_string(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.clk_si514*) #1

declare dso_local i32 @devm_clk_hw_register(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @of_clk_add_hw_provider(%struct.TYPE_8__*, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
