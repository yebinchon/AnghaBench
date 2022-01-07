; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cdce706.c_cdce706_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cdce706.c_cdce706_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_3__, %struct.i2c_adapter* }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.cdce706_dev_data = type { i32, %struct.i2c_client* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cdce706_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to initialize regmap\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@of_clk_cdce_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @cdce706_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdce706_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.cdce706_dev_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  store %struct.i2c_adapter* %11, %struct.i2c_adapter** %6, align 8
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %13 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %14 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %87

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.cdce706_dev_data* @devm_kzalloc(%struct.TYPE_3__* %21, i32 16, i32 %22)
  store %struct.cdce706_dev_data* %23, %struct.cdce706_dev_data** %7, align 8
  %24 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %7, align 8
  %25 = icmp ne %struct.cdce706_dev_data* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %87

29:                                               ; preds = %19
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %7, align 8
  %32 = getelementptr inbounds %struct.cdce706_dev_data, %struct.cdce706_dev_data* %31, i32 0, i32 1
  store %struct.i2c_client* %30, %struct.i2c_client** %32, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %33, i32* @cdce706_regmap_config)
  %35 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %7, align 8
  %36 = getelementptr inbounds %struct.cdce706_dev_data, %struct.cdce706_dev_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %7, align 8
  %38 = getelementptr inbounds %struct.cdce706_dev_data, %struct.cdce706_dev_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %29
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = call i32 @dev_err(%struct.TYPE_3__* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %87

48:                                               ; preds = %29
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %7, align 8
  %51 = call i32 @i2c_set_clientdata(%struct.i2c_client* %49, %struct.cdce706_dev_data* %50)
  %52 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %7, align 8
  %53 = call i32 @cdce706_register_clkin(%struct.cdce706_dev_data* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %87

58:                                               ; preds = %48
  %59 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %7, align 8
  %60 = call i32 @cdce706_register_plls(%struct.cdce706_dev_data* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %87

65:                                               ; preds = %58
  %66 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %7, align 8
  %67 = call i32 @cdce706_register_dividers(%struct.cdce706_dev_data* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %87

72:                                               ; preds = %65
  %73 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %7, align 8
  %74 = call i32 @cdce706_register_clkouts(%struct.cdce706_dev_data* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %87

79:                                               ; preds = %72
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @of_clk_cdce_get, align 4
  %85 = load %struct.cdce706_dev_data*, %struct.cdce706_dev_data** %7, align 8
  %86 = call i32 @of_clk_add_hw_provider(i32 %83, i32 %84, %struct.cdce706_dev_data* %85)
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %79, %77, %70, %63, %56, %42, %26, %16
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.cdce706_dev_data* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.cdce706_dev_data*) #1

declare dso_local i32 @cdce706_register_clkin(%struct.cdce706_dev_data*) #1

declare dso_local i32 @cdce706_register_plls(%struct.cdce706_dev_data*) #1

declare dso_local i32 @cdce706_register_dividers(%struct.cdce706_dev_data*) #1

declare dso_local i32 @cdce706_register_clkouts(%struct.cdce706_dev_data*) #1

declare dso_local i32 @of_clk_add_hw_provider(i32, i32, %struct.cdce706_dev_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
