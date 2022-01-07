; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_infineon.c_tpm_inf_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_infineon.c_tpm_inf_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }

@RESET_LP_IRQC_DISABLE = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Timeout while clearing FIFO\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@STAT_XFE = common dso_local global i32 0, align 4
@TPM_VL_VER = common dso_local global i64 0, align 8
@TPM_CTRL_DATA = common dso_local global i64 0, align 8
@TPM_VL_CHANNEL_TPM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i64*, i64)* @tpm_inf_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_inf_send(%struct.tpm_chip* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i32, i32* @RESET_LP_IRQC_DISABLE, align 4
  %17 = load i32, i32* @CMD, align 4
  %18 = call i32 @tpm_data_out(i32 %16, i32 %17)
  %19 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %20 = call i32 @empty_fifo(%struct.tpm_chip* %19, i32 1)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %25 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %104

29:                                               ; preds = %3
  %30 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %31 = load i32, i32* @STAT_XFE, align 4
  %32 = call i32 @wait(%struct.tpm_chip* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %104

38:                                               ; preds = %29
  %39 = load i64, i64* %7, align 8
  %40 = and i64 %39, 4278190080
  %41 = lshr i64 %40, 24
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %7, align 8
  %43 = and i64 %42, 16711680
  %44 = lshr i64 %43, 16
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %7, align 8
  %46 = and i64 %45, 65280
  %47 = lshr i64 %46, 8
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %7, align 8
  %49 = and i64 %48, 255
  store i64 %49, i64* %15, align 8
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 6
  %52 = and i64 %51, 4294967040
  %53 = lshr i64 %52, 8
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 6
  %56 = and i64 %55, 255
  store i64 %56, i64* %11, align 8
  %57 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %58 = load i64, i64* @TPM_VL_VER, align 8
  %59 = call i32 @wait_and_send(%struct.tpm_chip* %57, i64 %58)
  %60 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %61 = load i64, i64* @TPM_CTRL_DATA, align 8
  %62 = call i32 @wait_and_send(%struct.tpm_chip* %60, i64 %61)
  %63 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @wait_and_send(%struct.tpm_chip* %63, i64 %64)
  %66 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @wait_and_send(%struct.tpm_chip* %66, i64 %67)
  %69 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %70 = load i64, i64* @TPM_VL_VER, align 8
  %71 = call i32 @wait_and_send(%struct.tpm_chip* %69, i64 %70)
  %72 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %73 = load i64, i64* @TPM_VL_CHANNEL_TPM, align 8
  %74 = call i32 @wait_and_send(%struct.tpm_chip* %72, i64 %73)
  %75 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %76 = load i64, i64* %12, align 8
  %77 = call i32 @wait_and_send(%struct.tpm_chip* %75, i64 %76)
  %78 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %79 = load i64, i64* %13, align 8
  %80 = call i32 @wait_and_send(%struct.tpm_chip* %78, i64 %79)
  %81 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %82 = load i64, i64* %14, align 8
  %83 = call i32 @wait_and_send(%struct.tpm_chip* %81, i64 %82)
  %84 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %85 = load i64, i64* %15, align 8
  %86 = call i32 @wait_and_send(%struct.tpm_chip* %84, i64 %85)
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %100, %38
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %7, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %94 = load i64*, i64** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @wait_and_send(%struct.tpm_chip* %93, i64 %98)
  br label %100

100:                                              ; preds = %92
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %87

103:                                              ; preds = %87
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %35, %23
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @tpm_data_out(i32, i32) #1

declare dso_local i32 @empty_fifo(%struct.tpm_chip*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @wait(%struct.tpm_chip*, i32) #1

declare dso_local i32 @wait_and_send(%struct.tpm_chip*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
