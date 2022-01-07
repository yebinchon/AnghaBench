; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_i2c_infineon.c_tpm_tis_i2c_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_i2c_infineon.c_tpm_tis_i2c_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.tpm_chip = type { i32, i32 }

@TPM_HEADER_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unable to read header\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Unable to read remainder of result\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@TPM_STS_VALID = common dso_local global i32 0, align 4
@TPM_STS_DATA_AVAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Error left over data\0A\00", align 1
@SLEEP_DURATION_RESET_LOW = common dso_local global i32 0, align 4
@SLEEP_DURATION_RESET_HI = common dso_local global i32 0, align 4
@tpm_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32*, i64)* @tpm_tis_i2c_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_tis_i2c_recv(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  br label %83

16:                                               ; preds = %3
  %17 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %20 = call i32 @recv_data(%struct.tpm_chip* %17, i32* %18, i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %27 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %83

29:                                               ; preds = %16
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @be32_to_cpu(i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %29
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %83

44:                                               ; preds = %37
  %45 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %51 = sub i64 %49, %50
  %52 = call i32 @recv_data(%struct.tpm_chip* %45, i32* %48, i64 %51)
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %9, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %44
  %60 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %61 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @ETIME, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %83

65:                                               ; preds = %44
  %66 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %67 = load i32, i32* @TPM_STS_VALID, align 4
  %68 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %69 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @wait_for_stat(%struct.tpm_chip* %66, i32 %67, i32 %70, i32* %8)
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @TPM_STS_DATA_AVAIL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %65
  %77 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %78 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %77, i32 0, i32 0
  %79 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %83

82:                                               ; preds = %65
  br label %83

83:                                               ; preds = %82, %76, %59, %41, %25, %13
  %84 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %85 = call i32 @tpm_tis_i2c_ready(%struct.tpm_chip* %84)
  %86 = load i32, i32* @SLEEP_DURATION_RESET_LOW, align 4
  %87 = load i32, i32* @SLEEP_DURATION_RESET_HI, align 4
  %88 = call i32 @usleep_range(i32 %86, i32 %87)
  %89 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 0), align 4
  %91 = call i32 @release_locality(%struct.tpm_chip* %89, i32 %90, i32 0)
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @recv_data(%struct.tpm_chip*, i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @wait_for_stat(%struct.tpm_chip*, i32, i32, i32*) #1

declare dso_local i32 @tpm_tis_i2c_ready(%struct.tpm_chip*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @release_locality(%struct.tpm_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
