; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_i2c_infineon.c_request_locality.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_i2c_infineon.c_request_locality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i64 }

@TPM_ACCESS_REQUEST_USE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TPM_TIMEOUT_US_LOW = common dso_local global i32 0, align 4
@TPM_TIMEOUT_US_HI = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32)* @request_locality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_locality(%struct.tpm_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @TPM_ACCESS_REQUEST_USE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @check_locality(%struct.tpm_chip* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %3, align 4
  br label %43

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @TPM_ACCESS(i32 %16)
  %18 = call i32 @iic_tpm_write(i32 %17, i32* %7, i32 1)
  %19 = load i64, i64* @jiffies, align 8
  %20 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %21 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %19, %22
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %35, %15
  %25 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @check_locality(%struct.tpm_chip* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %3, align 4
  br label %43

31:                                               ; preds = %24
  %32 = load i32, i32* @TPM_TIMEOUT_US_LOW, align 4
  %33 = load i32, i32* @TPM_TIMEOUT_US_HI, align 4
  %34 = call i32 @usleep_range(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %31
  %36 = load i64, i64* @jiffies, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @time_before(i64 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %24, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ETIME, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %29, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @check_locality(%struct.tpm_chip*, i32) #1

declare dso_local i32 @iic_tpm_write(i32, i32*, i32) #1

declare dso_local i32 @TPM_ACCESS(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
