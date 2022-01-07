; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_i2c.c_st33zp24_i2c_request_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_i2c.c_st33zp24_i2c_request_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.st33zp24_platform_data* }
%struct.st33zp24_platform_data = type { i32 }
%struct.tpm_chip = type { i32 }
%struct.st33zp24_dev = type { %struct.st33zp24_i2c_phy* }
%struct.st33zp24_i2c_phy = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"No platform data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"TPM IO_LPCPD\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to request lpcpd pin\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @st33zp24_i2c_request_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st33zp24_i2c_request_resources(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca %struct.st33zp24_dev*, align 8
  %6 = alloca %struct.st33zp24_i2c_phy*, align 8
  %7 = alloca %struct.st33zp24_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call %struct.tpm_chip* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.tpm_chip* %10, %struct.tpm_chip** %4, align 8
  %11 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %12 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %11, i32 0, i32 0
  %13 = call %struct.st33zp24_dev* @dev_get_drvdata(i32* %12)
  store %struct.st33zp24_dev* %13, %struct.st33zp24_dev** %5, align 8
  %14 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %5, align 8
  %15 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %14, i32 0, i32 0
  %16 = load %struct.st33zp24_i2c_phy*, %struct.st33zp24_i2c_phy** %15, align 8
  store %struct.st33zp24_i2c_phy* %16, %struct.st33zp24_i2c_phy** %6, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.st33zp24_platform_data*, %struct.st33zp24_platform_data** %19, align 8
  store %struct.st33zp24_platform_data* %20, %struct.st33zp24_platform_data** %7, align 8
  %21 = load %struct.st33zp24_platform_data*, %struct.st33zp24_platform_data** %7, align 8
  %22 = icmp ne %struct.st33zp24_platform_data* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = call i32 @dev_err(%struct.TYPE_3__* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %57

29:                                               ; preds = %1
  %30 = load %struct.st33zp24_platform_data*, %struct.st33zp24_platform_data** %7, align 8
  %31 = getelementptr inbounds %struct.st33zp24_platform_data, %struct.st33zp24_platform_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.st33zp24_i2c_phy*, %struct.st33zp24_i2c_phy** %6, align 8
  %34 = getelementptr inbounds %struct.st33zp24_i2c_phy, %struct.st33zp24_i2c_phy* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.st33zp24_platform_data*, %struct.st33zp24_platform_data** %7, align 8
  %36 = getelementptr inbounds %struct.st33zp24_platform_data, %struct.st33zp24_platform_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @gpio_is_valid(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %29
  %41 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = load %struct.st33zp24_platform_data*, %struct.st33zp24_platform_data** %7, align 8
  %44 = getelementptr inbounds %struct.st33zp24_platform_data, %struct.st33zp24_platform_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %47 = call i32 @devm_gpio_request_one(%struct.TYPE_3__* %42, i32 %45, i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = call i32 @dev_err(%struct.TYPE_3__* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %57

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %29
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %50, %23
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.tpm_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.st33zp24_dev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_3__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
