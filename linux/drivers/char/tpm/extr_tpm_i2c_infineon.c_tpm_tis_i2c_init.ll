; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_i2c_infineon.c_tpm_tis_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_i2c_infineon.c_tpm_tis_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, %struct.tpm_chip*, i32 }
%struct.tpm_chip = type { i8*, i8*, i8*, i8* }
%struct.device = type { i32 }

@tpm_tis_i2c = common dso_local global i32 0, align 4
@TIS_SHORT_TIMEOUT = common dso_local global i32 0, align 4
@TIS_LONG_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"could not request locality\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"could not read vendor id\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TPM_TIS_I2C_DID_VID_9645 = common dso_local global i32 0, align 4
@SLB9645 = common dso_local global i32 0, align 4
@tpm_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TPM_TIS_I2C_DID_VID_9635 = common dso_local global i32 0, align 4
@SLB9635 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"vendor id did not match! ID was %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"1.2 TPM (device-id 0x%X)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @tpm_tis_i2c_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_tis_i2c_init(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpm_chip*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.tpm_chip* @tpmm_chip_alloc(%struct.device* %7, i32* @tpm_tis_i2c)
  store %struct.tpm_chip* %8, %struct.tpm_chip** %6, align 8
  %9 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %10 = call i64 @IS_ERR(%struct.tpm_chip* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %14 = call i32 @PTR_ERR(%struct.tpm_chip* %13)
  store i32 %14, i32* %2, align 4
  br label %82

15:                                               ; preds = %1
  %16 = load i32, i32* @TIS_SHORT_TIMEOUT, align 4
  %17 = call i8* @msecs_to_jiffies(i32 %16)
  %18 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %19 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @TIS_LONG_TIMEOUT, align 4
  %21 = call i8* @msecs_to_jiffies(i32 %20)
  %22 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %23 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @TIS_SHORT_TIMEOUT, align 4
  %25 = call i8* @msecs_to_jiffies(i32 %24)
  %26 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %27 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @TIS_SHORT_TIMEOUT, align 4
  %29 = call i8* @msecs_to_jiffies(i32 %28)
  %30 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %31 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %33 = call i64 @request_locality(%struct.tpm_chip* %32, i32 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %15
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %80

40:                                               ; preds = %15
  %41 = call i32 @TPM_DID_VID(i32 0)
  %42 = call i64 @iic_tpm_read(i32 %41, i32* %4, i32 4)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %76

49:                                               ; preds = %40
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @TPM_TIS_I2C_DID_VID_9645, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @SLB9645, align 4
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 3), align 8
  br label %68

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @TPM_TIS_I2C_DID_VID_9635, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @SLB9635, align 4
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 3), align 8
  br label %67

61:                                               ; preds = %55
  %62 = load %struct.device*, %struct.device** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %76

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %53
  %69 = load %struct.device*, %struct.device** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = ashr i32 %70, 16
  %72 = call i32 @dev_info(%struct.device* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  store %struct.tpm_chip* %73, %struct.tpm_chip** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 2), align 8
  %74 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %75 = call i32 @tpm_chip_register(%struct.tpm_chip* %74)
  store i32 %75, i32* %2, align 4
  br label %82

76:                                               ; preds = %61, %44
  %77 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 1), align 8
  %79 = call i32 @release_locality(%struct.tpm_chip* %77, i32 %78, i32 1)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 0), align 8
  br label %80

80:                                               ; preds = %76, %35
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %68, %12
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.tpm_chip* @tpmm_chip_alloc(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.tpm_chip*) #1

declare dso_local i32 @PTR_ERR(%struct.tpm_chip*) #1

declare dso_local i8* @msecs_to_jiffies(i32) #1

declare dso_local i64 @request_locality(%struct.tpm_chip*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @iic_tpm_read(i32, i32*, i32) #1

declare dso_local i32 @TPM_DID_VID(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @tpm_chip_register(%struct.tpm_chip*) #1

declare dso_local i32 @release_locality(%struct.tpm_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
