; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_i2c.c_st33zp24_i2c_of_request_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_i2c.c_st33zp24_i2c_of_request_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.tpm_chip = type { i32 }
%struct.st33zp24_dev = type { %struct.st33zp24_i2c_phy* }
%struct.st33zp24_i2c_phy = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"No platform data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"lpcpd-gpios\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to retrieve lpcpd-gpios from dts.\0A\00", align 1
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"TPM IO LPCPD\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to request lpcpd pin\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @st33zp24_i2c_of_request_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st33zp24_i2c_of_request_resources(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca %struct.st33zp24_dev*, align 8
  %6 = alloca %struct.st33zp24_i2c_phy*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = call %struct.tpm_chip* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.tpm_chip* %11, %struct.tpm_chip** %4, align 8
  %12 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %13 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %12, i32 0, i32 0
  %14 = call %struct.st33zp24_dev* @dev_get_drvdata(i32* %13)
  store %struct.st33zp24_dev* %14, %struct.st33zp24_dev** %5, align 8
  %15 = load %struct.st33zp24_dev*, %struct.st33zp24_dev** %5, align 8
  %16 = getelementptr inbounds %struct.st33zp24_dev, %struct.st33zp24_dev* %15, i32 0, i32 0
  %17 = load %struct.st33zp24_i2c_phy*, %struct.st33zp24_i2c_phy** %16, align 8
  store %struct.st33zp24_i2c_phy* %17, %struct.st33zp24_i2c_phy** %6, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  store %struct.device_node* %21, %struct.device_node** %7, align 8
  %22 = load %struct.device_node*, %struct.device_node** %7, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call i32 @dev_err(%struct.TYPE_3__* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %59

30:                                               ; preds = %1
  %31 = load %struct.device_node*, %struct.device_node** %7, align 8
  %32 = call i32 @of_get_named_gpio(%struct.device_node* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 @dev_err(%struct.TYPE_3__* %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.st33zp24_i2c_phy*, %struct.st33zp24_i2c_phy** %6, align 8
  %40 = getelementptr inbounds %struct.st33zp24_i2c_phy, %struct.st33zp24_i2c_phy* %39, i32 0, i32 0
  store i32 -1, i32* %40, align 4
  store i32 0, i32* %2, align 4
  br label %59

41:                                               ; preds = %30
  %42 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %46 = call i32 @devm_gpio_request_one(%struct.TYPE_3__* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = call i32 @dev_err(%struct.TYPE_3__* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %59

55:                                               ; preds = %41
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.st33zp24_i2c_phy*, %struct.st33zp24_i2c_phy** %6, align 8
  %58 = getelementptr inbounds %struct.st33zp24_i2c_phy, %struct.st33zp24_i2c_phy* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %49, %35, %24
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.tpm_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.st33zp24_dev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_3__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
