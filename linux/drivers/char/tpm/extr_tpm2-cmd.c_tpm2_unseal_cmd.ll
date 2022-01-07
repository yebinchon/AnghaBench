; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_unseal_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_unseal_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.trusted_key_payload = type { i32, i32, i32 }
%struct.trusted_key_options = type { i32, i64 }
%struct.tpm_buf = type { i32* }

@TPM2_ST_SESSIONS = common dso_local global i32 0, align 4
@TPM2_CC_UNSEAL = common dso_local global i32 0, align 4
@TPM2_RS_PW = common dso_local global i64 0, align 8
@TPM2_SA_CONTINUE_SESSION = common dso_local global i32 0, align 4
@TPM_DIGEST_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"unsealing\00", align 1
@EPERM = common dso_local global i32 0, align 4
@TPM_HEADER_SIZE = common dso_local global i32 0, align 4
@MIN_KEY_SIZE = common dso_local global i32 0, align 4
@MAX_KEY_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, %struct.trusted_key_payload*, %struct.trusted_key_options*, i32)* @tpm2_unseal_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm2_unseal_cmd(%struct.tpm_chip* %0, %struct.trusted_key_payload* %1, %struct.trusted_key_options* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpm_chip*, align 8
  %7 = alloca %struct.trusted_key_payload*, align 8
  %8 = alloca %struct.trusted_key_options*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tpm_buf, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %6, align 8
  store %struct.trusted_key_payload* %1, %struct.trusted_key_payload** %7, align 8
  store %struct.trusted_key_options* %2, %struct.trusted_key_options** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @TPM2_ST_SESSIONS, align 4
  %15 = load i32, i32* @TPM2_CC_UNSEAL, align 4
  %16 = call i32 @tpm_buf_init(%struct.tpm_buf* %10, i32 %14, i32 %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %13, align 4
  store i32 %20, i32* %5, align 4
  br label %111

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %10, i32 %22)
  %24 = load %struct.trusted_key_options*, %struct.trusted_key_options** %8, align 8
  %25 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.trusted_key_options*, %struct.trusted_key_options** %8, align 8
  %30 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  br label %34

32:                                               ; preds = %21
  %33 = load i64, i64* @TPM2_RS_PW, align 8
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi i64 [ %31, %28 ], [ %33, %32 ]
  %36 = load i32, i32* @TPM2_SA_CONTINUE_SESSION, align 4
  %37 = load %struct.trusted_key_options*, %struct.trusted_key_options** %8, align 8
  %38 = getelementptr inbounds %struct.trusted_key_options, %struct.trusted_key_options* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @TPM_DIGEST_SIZE, align 4
  %41 = call i32 @tpm2_buf_append_auth(%struct.tpm_buf* %10, i64 %35, i32* null, i32 0, i32 %36, i32 %39, i32 %40)
  %42 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %43 = call i32 @tpm_transmit_cmd(%struct.tpm_chip* %42, %struct.tpm_buf* %10, i32 6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i32, i32* @EPERM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %46, %34
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %107, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %10, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @TPM_HEADER_SIZE, align 4
  %56 = add nsw i32 %55, 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = call i32 @be16_to_cpup(i32* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @MIN_KEY_SIZE, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @MAX_KEY_SIZE, align 4
  %66 = add nsw i32 %65, 1
  %67 = icmp sgt i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63, %52
  %69 = load i32, i32* @EFAULT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %13, align 4
  br label %108

71:                                               ; preds = %63
  %72 = call i32 @tpm_buf_length(%struct.tpm_buf* %10)
  %73 = load i32, i32* @TPM_HEADER_SIZE, align 4
  %74 = add nsw i32 %73, 6
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %74, %75
  %77 = icmp slt i32 %72, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* @EFAULT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %13, align 4
  br label %108

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %10, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @TPM_HEADER_SIZE, align 4
  %85 = add nsw i32 %84, 6
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  store i32* %87, i32** %12, align 8
  %88 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %7, align 8
  %89 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %92, 1
  %94 = call i32 @memcpy(i32 %90, i32* %91, i32 %93)
  %95 = load i32, i32* %11, align 4
  %96 = sub nsw i32 %95, 1
  %97 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %7, align 8
  %98 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %7, align 8
  %106 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %81, %49
  br label %108

108:                                              ; preds = %107, %78, %68
  %109 = call i32 @tpm_buf_destroy(%struct.tpm_buf* %10)
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %108, %19
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @tpm_buf_init(%struct.tpm_buf*, i32, i32) #1

declare dso_local i32 @tpm_buf_append_u32(%struct.tpm_buf*, i32) #1

declare dso_local i32 @tpm2_buf_append_auth(%struct.tpm_buf*, i64, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @tpm_transmit_cmd(%struct.tpm_chip*, %struct.tpm_buf*, i32, i8*) #1

declare dso_local i32 @be16_to_cpup(i32*) #1

declare dso_local i32 @tpm_buf_length(%struct.tpm_buf*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @tpm_buf_destroy(%struct.tpm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
