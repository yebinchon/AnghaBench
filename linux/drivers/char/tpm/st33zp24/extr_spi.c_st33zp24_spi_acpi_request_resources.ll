; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_spi.c_st33zp24_spi_acpi_request_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_spi.c_st33zp24_spi_acpi_request_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.device }
%struct.device = type { i32 }
%struct.tpm_chip = type { i32 }
%struct.st33zp24_dev = type { %struct.st33zp24_spi_phy* }
%struct.st33zp24_spi_phy = type { i32 }
%struct.gpio_desc = type { i32 }

@acpi_st33zp24_gpios = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"lpcpd\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to retrieve lpcpd-gpios from acpi.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @st33zp24_spi_acpi_request_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st33zp24_spi_acpi_request_resources(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca %struct.st33zp24_dev*, align 8
  %6 = alloca %struct.st33zp24_spi_phy*, align 8
  %7 = alloca %struct.gpio_desc*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = call %struct.tpm_chip* @spi_get_drvdata(%struct.spi_device* %10)
  store %struct.tpm_chip* %11, %struct.tpm_chip** %4, align 8
  %12 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %13 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %12, i32 0, i32 0
  %14 = call %struct.st33zp24_dev* @dev_get_drvdata(i32* %13)
  store %struct.st33zp24_dev* %14, %struct.st33zp24_dev** %5, align 8
  %15 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %5, align 8
  %16 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %15, i32 0, i32 0
  %17 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %16, align 8
  store %struct.st33zp24_spi_phy* %17, %struct.st33zp24_spi_phy** %6, align 8
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %8, align 8
  %20 = load %struct.device*, %struct.device** %8, align 8
  %21 = load i32, i32* @acpi_st33zp24_gpios, align 4
  %22 = call i32 @devm_acpi_dev_add_driver_gpios(%struct.device* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %2, align 4
  br label %44

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %8, align 8
  %29 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %30 = call %struct.gpio_desc* @devm_gpiod_get(%struct.device* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %29)
  store %struct.gpio_desc* %30, %struct.gpio_desc** %7, align 8
  %31 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %32 = call i64 @IS_ERR(%struct.gpio_desc* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.device*, %struct.device** %8, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %6, align 8
  %38 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 4
  store i32 0, i32* %2, align 4
  br label %44

39:                                               ; preds = %27
  %40 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %41 = call i32 @desc_to_gpio(%struct.gpio_desc* %40)
  %42 = load %struct.st33zp24_spi_phy*, %struct.st33zp24_spi_phy** %6, align 8
  %43 = getelementptr inbounds %struct.st33zp24_spi_phy, %struct.st33zp24_spi_phy* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %39, %34, %25
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.tpm_chip* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local %struct.st33zp24_dev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @devm_acpi_dev_add_driver_gpios(%struct.device*, i32) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @desc_to_gpio(%struct.gpio_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
