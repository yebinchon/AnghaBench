; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/83xx/extr_mcu_mpc8349emitx.c_mcu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/83xx/extr_mcu_mpc8349emitx.c_mcu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcu = type { i32, %struct.i2c_client*, i32 }
%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MCU_REG_CTRL = common dso_local global i32 0, align 4
@pm_power_off = common dso_local global i64 0, align 8
@glob_mcu = common dso_local global %struct.mcu* null, align 8
@mcu_power_off = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"will provide power-off service\0A\00", align 1
@dev_attr_status = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"couldn't create device file for status\0A\00", align 1
@shutdown_thread_fn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"mcu-i2c-shdn\00", align 1
@shutdown_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mcu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcu_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mcu*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mcu* @kzalloc(i32 24, i32 %8)
  store %struct.mcu* %9, %struct.mcu** %6, align 8
  %10 = load %struct.mcu*, %struct.mcu** %6, align 8
  %11 = icmp ne %struct.mcu* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %67

15:                                               ; preds = %2
  %16 = load %struct.mcu*, %struct.mcu** %6, align 8
  %17 = getelementptr inbounds %struct.mcu, %struct.mcu* %16, i32 0, i32 2
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.mcu*, %struct.mcu** %6, align 8
  %21 = getelementptr inbounds %struct.mcu, %struct.mcu* %20, i32 0, i32 1
  store %struct.i2c_client* %19, %struct.i2c_client** %21, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.mcu*, %struct.mcu** %6, align 8
  %24 = call i32 @i2c_set_clientdata(%struct.i2c_client* %22, %struct.mcu* %23)
  %25 = load %struct.mcu*, %struct.mcu** %6, align 8
  %26 = getelementptr inbounds %struct.mcu, %struct.mcu* %25, i32 0, i32 1
  %27 = load %struct.i2c_client*, %struct.i2c_client** %26, align 8
  %28 = load i32, i32* @MCU_REG_CTRL, align 4
  %29 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %15
  br label %63

33:                                               ; preds = %15
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.mcu*, %struct.mcu** %6, align 8
  %36 = getelementptr inbounds %struct.mcu, %struct.mcu* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mcu*, %struct.mcu** %6, align 8
  %38 = call i32 @mcu_gpiochip_add(%struct.mcu* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %63

42:                                               ; preds = %33
  %43 = load i64, i64* @pm_power_off, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load %struct.mcu*, %struct.mcu** %6, align 8
  store %struct.mcu* %46, %struct.mcu** @glob_mcu, align 8
  %47 = load i64, i64* @mcu_power_off, align 8
  store i64 %47, i64* @pm_power_off, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = call i32 @dev_info(i32* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %45, %42
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = call i64 @device_create_file(i32* %53, i32* @dev_attr_status)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* @shutdown_thread_fn, align 4
  %62 = call i32 @kthread_run(i32 %61, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %62, i32* @shutdown_thread, align 4
  store i32 0, i32* %3, align 4
  br label %67

63:                                               ; preds = %41, %32
  %64 = load %struct.mcu*, %struct.mcu** %6, align 8
  %65 = call i32 @kfree(%struct.mcu* %64)
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %60, %12
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.mcu* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.mcu*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mcu_gpiochip_add(%struct.mcu*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i64 @device_create_file(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kthread_run(i32, i32*, i8*) #1

declare dso_local i32 @kfree(%struct.mcu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
