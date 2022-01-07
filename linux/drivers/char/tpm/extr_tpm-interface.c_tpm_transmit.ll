; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-interface.c_tpm_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-interface.c_tpm_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_header = type { i32 }

@TPM_HEADER_SIZE = common dso_local global i32 0, align 4
@TPM2_DURATION_SHORT = common dso_local global i32 0, align 4
@TPM2_RC_RETRY = common dso_local global i64 0, align 8
@TPM2_RC_TESTING = common dso_local global i64 0, align 8
@TPM2_CC_SELF_TEST = common dso_local global i64 0, align 8
@TPM2_DURATION_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"in retry loop\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"self test is still running\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tpm_transmit(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tpm_header*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = bitcast i32* %15 to %struct.tpm_header*
  store %struct.tpm_header* %16, %struct.tpm_header** %7, align 8
  %17 = load i32, i32* @TPM_HEADER_SIZE, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, 24
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load i32, i32* @TPM2_DURATION_SHORT, align 4
  store i32 %22, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %23 = mul nuw i64 4, %19
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @min(i32 %24, i64 %25)
  store i64 %26, i64* %13, align 8
  %27 = load %struct.tpm_header*, %struct.tpm_header** %7, align 8
  %28 = getelementptr inbounds %struct.tpm_header, %struct.tpm_header* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @be32_to_cpu(i32 %29)
  store i64 %30, i64* %14, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* %13, align 8
  %33 = call i32 @memcpy(i32* %21, i32* %31, i64 %32)
  br label %34

34:                                               ; preds = %81, %3
  %35 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @tpm_try_transmit(%struct.tpm_chip* %35, i32* %36, i64 %37)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %89

42:                                               ; preds = %34
  %43 = load %struct.tpm_header*, %struct.tpm_header** %7, align 8
  %44 = getelementptr inbounds %struct.tpm_header, %struct.tpm_header* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @be32_to_cpu(i32 %45)
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @TPM2_RC_RETRY, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* @TPM2_RC_TESTING, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %89

55:                                               ; preds = %50, %42
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @TPM2_RC_TESTING, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* @TPM2_CC_SELF_TEST, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %89

64:                                               ; preds = %59, %55
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @TPM2_DURATION_LONG, align 4
  %67 = icmp ugt i32 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* @TPM2_RC_RETRY, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %74 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %73, i32 0, i32 0
  %75 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %80

76:                                               ; preds = %68
  %77 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %78 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %77, i32 0, i32 0
  %79 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %76, %72
  br label %89

81:                                               ; preds = %64
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @tpm_msleep(i32 %82)
  %84 = load i32, i32* %10, align 4
  %85 = mul i32 %84, 2
  store i32 %85, i32* %10, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = load i64, i64* %13, align 8
  %88 = call i32 @memcpy(i32* %86, i32* %21, i64 %87)
  br label %34

89:                                               ; preds = %80, %63, %54, %41
  %90 = load i64, i64* %12, align 8
  %91 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %91)
  ret i64 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @min(i32, i64) #2

declare dso_local i64 @be32_to_cpu(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i64 @tpm_try_transmit(%struct.tpm_chip*, i32*, i64) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i32 @tpm_msleep(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
