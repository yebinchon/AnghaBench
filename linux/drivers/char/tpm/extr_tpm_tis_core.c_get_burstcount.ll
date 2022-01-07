; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_get_burstcount.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_get_burstcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, i64, i64, i32 }
%struct.tpm_tis_data = type { i32 }

@TPM_CHIP_FLAG_TPM2 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TPM_TIMEOUT_USECS_MIN = common dso_local global i32 0, align 4
@TPM_TIMEOUT_USECS_MAX = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*)* @get_burstcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_burstcount(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca %struct.tpm_tis_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  %9 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %10 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %9, i32 0, i32 3
  %11 = call %struct.tpm_tis_data* @dev_get_drvdata(i32* %10)
  store %struct.tpm_tis_data* %11, %struct.tpm_tis_data** %4, align 8
  %12 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %13 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TPM_CHIP_FLAG_TPM2, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i64, i64* @jiffies, align 8
  %20 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %21 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %19, %22
  store i64 %23, i64* %5, align 8
  br label %30

24:                                               ; preds = %1
  %25 = load i64, i64* @jiffies, align 8
  %26 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %27 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %25, %28
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %24, %18
  br label %31

31:                                               ; preds = %54, %30
  %32 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %4, align 8
  %33 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %4, align 8
  %34 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @TPM_STS(i32 %35)
  %37 = call i32 @tpm_tis_read32(%struct.tpm_tis_data* %32, i32 %36, i32* %8)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %62

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  %44 = ashr i32 %43, 8
  %45 = and i32 %44, 65535
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %62

50:                                               ; preds = %42
  %51 = load i32, i32* @TPM_TIMEOUT_USECS_MIN, align 4
  %52 = load i32, i32* @TPM_TIMEOUT_USECS_MAX, align 4
  %53 = call i32 @usleep_range(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %50
  %55 = load i64, i64* @jiffies, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i64 @time_before(i64 %55, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %31, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %48, %40
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.tpm_tis_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @tpm_tis_read32(%struct.tpm_tis_data*, i32, i32*) #1

declare dso_local i32 @TPM_STS(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
