; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_tpm_tis_send_main.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_tpm_tis_send_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, i32 }
%struct.tpm_tis_data = type { i32, i32 }

@TPM_STS_GO = common dso_local global i32 0, align 4
@TPM_CHIP_FLAG_IRQ = common dso_local global i32 0, align 4
@TPM_STS_DATA_AVAIL = common dso_local global i32 0, align 4
@TPM_STS_VALID = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32*, i64)* @tpm_tis_send_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_tis_send_main(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tpm_tis_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %13 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %12, i32 0, i32 1
  %14 = call %struct.tpm_tis_data* @dev_get_drvdata(i32* %13)
  store %struct.tpm_tis_data* %14, %struct.tpm_tis_data** %8, align 8
  %15 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @tpm_tis_send_data(%struct.tpm_chip* %15, i32* %16, i64 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %67

23:                                               ; preds = %3
  %24 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %8, align 8
  %25 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %8, align 8
  %26 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @TPM_STS(i32 %27)
  %29 = load i32, i32* @TPM_STS_GO, align 4
  %30 = call i32 @tpm_tis_write8(%struct.tpm_tis_data* %24, i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %63

34:                                               ; preds = %23
  %35 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %36 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TPM_CHIP_FLAG_IRQ, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %34
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 6
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @be32_to_cpu(i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @tpm_calc_ordinal_duration(%struct.tpm_chip* %46, i32 %47)
  store i64 %48, i64* %11, align 8
  %49 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %50 = load i32, i32* @TPM_STS_DATA_AVAIL, align 4
  %51 = load i32, i32* @TPM_STS_VALID, align 4
  %52 = or i32 %50, %51
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %8, align 8
  %55 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %54, i32 0, i32 0
  %56 = call i64 @wait_for_tpm_stat(%struct.tpm_chip* %49, i32 %52, i64 %53, i32* %55, i32 0)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %41
  %59 = load i32, i32* @ETIME, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %63

61:                                               ; preds = %41
  br label %62

62:                                               ; preds = %61, %34
  store i32 0, i32* %4, align 4
  br label %67

63:                                               ; preds = %58, %33
  %64 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %65 = call i32 @tpm_tis_ready(%struct.tpm_chip* %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %62, %21
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.tpm_tis_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @tpm_tis_send_data(%struct.tpm_chip*, i32*, i64) #1

declare dso_local i32 @tpm_tis_write8(%struct.tpm_tis_data*, i32, i32) #1

declare dso_local i32 @TPM_STS(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @tpm_calc_ordinal_duration(%struct.tpm_chip*, i32) #1

declare dso_local i64 @wait_for_tpm_stat(%struct.tpm_chip*, i32, i64, i32*, i32) #1

declare dso_local i32 @tpm_tis_ready(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
