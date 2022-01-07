; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-interface.c_tpm_transmit_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-interface.c_tpm_transmit_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_buf = type { i64 }
%struct.tpm_header = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@TPM_ERR_DISABLED = common dso_local global i32 0, align 4
@TPM_ERR_DEACTIVATED = common dso_local global i32 0, align 4
@TPM2_RC_TESTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"A TPM error (%d) occurred %s\0A\00", align 1
@TPM_HEADER_SIZE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tpm_transmit_cmd(%struct.tpm_chip* %0, %struct.tpm_buf* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.tpm_chip*, align 8
  %7 = alloca %struct.tpm_buf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tpm_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %6, align 8
  store %struct.tpm_buf* %1, %struct.tpm_buf** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.tpm_buf*, %struct.tpm_buf** %7, align 8
  %14 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.tpm_header*
  store %struct.tpm_header* %16, %struct.tpm_header** %10, align 8
  %17 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %18 = load %struct.tpm_buf*, %struct.tpm_buf** %7, align 8
  %19 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = call i64 @tpm_transmit(%struct.tpm_chip* %17, i64 %20, i32 %21)
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i64, i64* %12, align 8
  store i64 %26, i64* %5, align 8
  br label %71

27:                                               ; preds = %4
  %28 = load %struct.tpm_header*, %struct.tpm_header** %10, align 8
  %29 = getelementptr inbounds %struct.tpm_header, %struct.tpm_header* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @be32_to_cpu(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @TPM_ERR_DISABLED, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @TPM_ERR_DEACTIVATED, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @TPM2_RC_TESTING, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %51 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %50, i32 0, i32 0
  %52 = load i32, i32* %11, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %52, i8* %53)
  br label %55

55:                                               ; preds = %49, %46, %42, %38, %34, %27
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %5, align 8
  br label %71

61:                                               ; preds = %55
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %65 = add i64 %63, %64
  %66 = icmp ult i64 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i64, i64* @EFAULT, align 8
  %69 = sub nsw i64 0, %68
  store i64 %69, i64* %5, align 8
  br label %71

70:                                               ; preds = %61
  store i64 0, i64* %5, align 8
  br label %71

71:                                               ; preds = %70, %67, %58, %25
  %72 = load i64, i64* %5, align 8
  ret i64 %72
}

declare dso_local i64 @tpm_transmit(%struct.tpm_chip*, i64, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
