; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_h1940-bluetooth.c_h1940bt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_h1940-bluetooth.c_h1940bt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rfkill = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"could not get GPH1\0A\00", align 1
@H1940_LATCH_BLUETOOTH_POWER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"could not get BT_POWER\0A\00", align 1
@S3C2410_GPH0_nCTS0 = common dso_local global i32 0, align 4
@S3C_GPIO_PULL_NONE = common dso_local global i32 0, align 4
@S3C2410_GPIO_OUTPUT = common dso_local global i32 0, align 4
@S3C2410_GPH2_TXD0 = common dso_local global i32 0, align 4
@S3C2410_GPH3_RXD0 = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@RFKILL_TYPE_BLUETOOTH = common dso_local global i32 0, align 4
@h1940bt_rfkill_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @h1940bt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h1940bt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rfkill*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 @S3C2410_GPH(i32 1)
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call i32 @dev_name(i32* %8)
  %10 = call i32 @gpio_request(i32 %6, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %83

18:                                               ; preds = %1
  %19 = load i32, i32* @H1940_LATCH_BLUETOOTH_POWER, align 4
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @dev_name(i32* %21)
  %23 = call i32 @gpio_request(i32 %19, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = call i32 @S3C2410_GPH(i32 1)
  %28 = call i32 @gpio_free(i32 %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %83

33:                                               ; preds = %18
  %34 = call i32 @S3C2410_GPH(i32 0)
  %35 = load i32, i32* @S3C2410_GPH0_nCTS0, align 4
  %36 = call i32 @s3c_gpio_cfgpin(i32 %34, i32 %35)
  %37 = call i32 @S3C2410_GPH(i32 0)
  %38 = load i32, i32* @S3C_GPIO_PULL_NONE, align 4
  %39 = call i32 @s3c_gpio_setpull(i32 %37, i32 %38)
  %40 = call i32 @S3C2410_GPH(i32 1)
  %41 = load i32, i32* @S3C2410_GPIO_OUTPUT, align 4
  %42 = call i32 @s3c_gpio_cfgpin(i32 %40, i32 %41)
  %43 = call i32 @S3C2410_GPH(i32 1)
  %44 = load i32, i32* @S3C_GPIO_PULL_NONE, align 4
  %45 = call i32 @s3c_gpio_setpull(i32 %43, i32 %44)
  %46 = call i32 @S3C2410_GPH(i32 2)
  %47 = load i32, i32* @S3C2410_GPH2_TXD0, align 4
  %48 = call i32 @s3c_gpio_cfgpin(i32 %46, i32 %47)
  %49 = call i32 @S3C2410_GPH(i32 2)
  %50 = load i32, i32* @S3C_GPIO_PULL_NONE, align 4
  %51 = call i32 @s3c_gpio_setpull(i32 %49, i32 %50)
  %52 = call i32 @S3C2410_GPH(i32 3)
  %53 = load i32, i32* @S3C2410_GPH3_RXD0, align 4
  %54 = call i32 @s3c_gpio_cfgpin(i32 %52, i32 %53)
  %55 = call i32 @S3C2410_GPH(i32 3)
  %56 = load i32, i32* @S3C_GPIO_PULL_NONE, align 4
  %57 = call i32 @s3c_gpio_setpull(i32 %55, i32 %56)
  %58 = load i32, i32* @DRV_NAME, align 4
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load i32, i32* @RFKILL_TYPE_BLUETOOTH, align 4
  %62 = call %struct.rfkill* @rfkill_alloc(i32 %58, i32* %60, i32 %61, i32* @h1940bt_rfkill_ops, i32* null)
  store %struct.rfkill* %62, %struct.rfkill** %4, align 8
  %63 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %64 = icmp ne %struct.rfkill* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %33
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %81

68:                                               ; preds = %33
  %69 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %70 = call i32 @rfkill_register(%struct.rfkill* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %78

74:                                               ; preds = %68
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %77 = call i32 @platform_set_drvdata(%struct.platform_device* %75, %struct.rfkill* %76)
  store i32 0, i32* %2, align 4
  br label %83

78:                                               ; preds = %73
  %79 = load %struct.rfkill*, %struct.rfkill** %4, align 8
  %80 = call i32 @rfkill_destroy(%struct.rfkill* %79)
  br label %81

81:                                               ; preds = %78, %65
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %74, %26, %13
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @gpio_request(i32, i32) #1

declare dso_local i32 @S3C2410_GPH(i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @s3c_gpio_cfgpin(i32, i32) #1

declare dso_local i32 @s3c_gpio_setpull(i32, i32) #1

declare dso_local %struct.rfkill* @rfkill_alloc(i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @rfkill_register(%struct.rfkill*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rfkill*) #1

declare dso_local i32 @rfkill_destroy(%struct.rfkill*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
