; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm1-cmd.c_tpm1_pcr_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm1-cmd.c_tpm1_pcr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_buf = type { i32* }

@TPM_TAG_RQU_COMMAND = common dso_local global i32 0, align 4
@TPM_ORD_PCRREAD = common dso_local global i32 0, align 4
@TPM_DIGEST_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"attempting to read a pcr value\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@TPM_HEADER_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm1_pcr_read(%struct.tpm_chip* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tpm_buf, align 8
  %9 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @TPM_TAG_RQU_COMMAND, align 4
  %11 = load i32, i32* @TPM_ORD_PCRREAD, align 4
  %12 = call i32 @tpm_buf_init(%struct.tpm_buf* %8, i32 %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %44

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %8, i32 %18)
  %20 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %21 = load i64, i64* @TPM_DIGEST_SIZE, align 8
  %22 = call i32 @tpm_transmit_cmd(%struct.tpm_chip* %20, %struct.tpm_buf* %8, i64 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %41

26:                                               ; preds = %17
  %27 = call i64 @tpm_buf_length(%struct.tpm_buf* %8)
  %28 = load i64, i64* @TPM_DIGEST_SIZE, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EFAULT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %41

33:                                               ; preds = %26
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %8, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i64, i64* @TPM_DIGEST_SIZE, align 8
  %40 = call i32 @memcpy(i32* %34, i32* %38, i64 %39)
  br label %41

41:                                               ; preds = %33, %30, %25
  %42 = call i32 @tpm_buf_destroy(%struct.tpm_buf* %8)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %15
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @tpm_buf_init(%struct.tpm_buf*, i32, i32) #1

declare dso_local i32 @tpm_buf_append_u32(%struct.tpm_buf*, i32) #1

declare dso_local i32 @tpm_transmit_cmd(%struct.tpm_chip*, %struct.tpm_buf*, i64, i8*) #1

declare dso_local i64 @tpm_buf_length(%struct.tpm_buf*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @tpm_buf_destroy(%struct.tpm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
