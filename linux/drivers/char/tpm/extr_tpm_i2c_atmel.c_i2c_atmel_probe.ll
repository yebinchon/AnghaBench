; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_i2c_atmel.c_i2c_atmel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_i2c_atmel.c_i2c_atmel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tpm_chip = type { i32, i8*, i8*, i8*, i8* }
%struct.priv_data = type { i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@i2c_atmel = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TPM_I2C_SHORT_TIMEOUT = common dso_local global i32 0, align 4
@TPM_I2C_LONG_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @i2c_atmel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_atmel_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tpm_chip*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.priv_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @I2C_FUNC_I2C, align 4
  %15 = call i32 @i2c_check_functionality(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %61

20:                                               ; preds = %2
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = call %struct.tpm_chip* @tpmm_chip_alloc(%struct.device* %21, i32* @i2c_atmel)
  store %struct.tpm_chip* %22, %struct.tpm_chip** %6, align 8
  %23 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %24 = call i64 @IS_ERR(%struct.tpm_chip* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %28 = call i32 @PTR_ERR(%struct.tpm_chip* %27)
  store i32 %28, i32* %3, align 4
  br label %61

29:                                               ; preds = %20
  %30 = load %struct.device*, %struct.device** %7, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.priv_data* @devm_kzalloc(%struct.device* %30, i32 4, i32 %31)
  store %struct.priv_data* %32, %struct.priv_data** %8, align 8
  %33 = load %struct.priv_data*, %struct.priv_data** %8, align 8
  %34 = icmp ne %struct.priv_data* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %61

38:                                               ; preds = %29
  %39 = load i32, i32* @TPM_I2C_SHORT_TIMEOUT, align 4
  %40 = call i8* @msecs_to_jiffies(i32 %39)
  %41 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %42 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @TPM_I2C_LONG_TIMEOUT, align 4
  %44 = call i8* @msecs_to_jiffies(i32 %43)
  %45 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %46 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @TPM_I2C_SHORT_TIMEOUT, align 4
  %48 = call i8* @msecs_to_jiffies(i32 %47)
  %49 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %50 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @TPM_I2C_SHORT_TIMEOUT, align 4
  %52 = call i8* @msecs_to_jiffies(i32 %51)
  %53 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %54 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %56 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %55, i32 0, i32 0
  %57 = load %struct.priv_data*, %struct.priv_data** %8, align 8
  %58 = call i32 @dev_set_drvdata(i32* %56, %struct.priv_data* %57)
  %59 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %60 = call i32 @tpm_chip_register(%struct.tpm_chip* %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %38, %35, %26, %17
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.tpm_chip* @tpmm_chip_alloc(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.tpm_chip*) #1

declare dso_local i32 @PTR_ERR(%struct.tpm_chip*) #1

declare dso_local %struct.priv_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.priv_data*) #1

declare dso_local i32 @tpm_chip_register(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
