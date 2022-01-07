; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si544.c_si544_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si544.c_si544_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.clk_si544 = type { %struct.TYPE_10__, i32, i32, %struct.i2c_client* }
%struct.TYPE_10__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i32, i64, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@si544_clk_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@si544_regmap_config = common dso_local global i32 0, align 4
@SI544_REG_PAGE_SELECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"clock registration failed\0A\00", align 1
@of_clk_hw_simple_get = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"unable to add clk provider\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @si544_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si544_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.clk_si544*, align 8
  %7 = alloca %struct.clk_init_data, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.clk_si544* @devm_kzalloc(%struct.TYPE_9__* %10, i32 24, i32 %11)
  store %struct.clk_si544* %12, %struct.clk_si544** %6, align 8
  %13 = load %struct.clk_si544*, %struct.clk_si544** %6, align 8
  %14 = icmp ne %struct.clk_si544* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %104

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 3
  store i32* @si544_clk_ops, i32** %19, align 8
  %20 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.clk_si544*, %struct.clk_si544** %6, align 8
  %23 = getelementptr inbounds %struct.clk_si544, %struct.clk_si544* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store %struct.clk_init_data* %7, %struct.clk_init_data** %24, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load %struct.clk_si544*, %struct.clk_si544** %6, align 8
  %27 = getelementptr inbounds %struct.clk_si544, %struct.clk_si544* %26, i32 0, i32 3
  store %struct.i2c_client* %25, %struct.i2c_client** %27, align 8
  %28 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.clk_si544*, %struct.clk_si544** %6, align 8
  %32 = getelementptr inbounds %struct.clk_si544, %struct.clk_si544* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  %38 = call i64 @of_property_read_string(%struct.TYPE_8__* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %18
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %7, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  br label %48

48:                                               ; preds = %40, %18
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %49, i32* @si544_regmap_config)
  %51 = load %struct.clk_si544*, %struct.clk_si544** %6, align 8
  %52 = getelementptr inbounds %struct.clk_si544, %struct.clk_si544* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.clk_si544*, %struct.clk_si544** %6, align 8
  %54 = getelementptr inbounds %struct.clk_si544, %struct.clk_si544* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load %struct.clk_si544*, %struct.clk_si544** %6, align 8
  %60 = getelementptr inbounds %struct.clk_si544, %struct.clk_si544* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %3, align 4
  br label %104

63:                                               ; preds = %48
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = load %struct.clk_si544*, %struct.clk_si544** %6, align 8
  %66 = call i32 @i2c_set_clientdata(%struct.i2c_client* %64, %struct.clk_si544* %65)
  %67 = load %struct.clk_si544*, %struct.clk_si544** %6, align 8
  %68 = getelementptr inbounds %struct.clk_si544, %struct.clk_si544* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SI544_REG_PAGE_SELECT, align 4
  %71 = call i32 @regmap_write(i32 %69, i32 %70, i32 0)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %104

76:                                               ; preds = %63
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = load %struct.clk_si544*, %struct.clk_si544** %6, align 8
  %80 = getelementptr inbounds %struct.clk_si544, %struct.clk_si544* %79, i32 0, i32 0
  %81 = call i32 @devm_clk_hw_register(%struct.TYPE_9__* %78, %struct.TYPE_10__* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = call i32 @dev_err(%struct.TYPE_9__* %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %104

89:                                               ; preds = %76
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %90, i32 0, i32 0
  %92 = load i32, i32* @of_clk_hw_simple_get, align 4
  %93 = load %struct.clk_si544*, %struct.clk_si544** %6, align 8
  %94 = getelementptr inbounds %struct.clk_si544, %struct.clk_si544* %93, i32 0, i32 0
  %95 = call i32 @devm_of_clk_add_hw_provider(%struct.TYPE_9__* %91, i32 %92, %struct.TYPE_10__* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %89
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %99, i32 0, i32 0
  %101 = call i32 @dev_err(%struct.TYPE_9__* %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %104

103:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %98, %84, %74, %58, %15
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.clk_si544* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @of_property_read_string(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.clk_si544*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @devm_clk_hw_register(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @devm_of_clk_add_hw_provider(%struct.TYPE_9__*, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
