; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm1-cmd.c_tpm1_pcr_extend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm1-cmd.c_tpm1_pcr_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_buf = type { i32 }

@TPM_TAG_RQU_COMMAND = common dso_local global i32 0, align 4
@TPM_ORD_PCR_EXTEND = common dso_local global i32 0, align 4
@TPM_DIGEST_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm1_pcr_extend(%struct.tpm_chip* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpm_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tpm_buf, align 4
  %11 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* @TPM_TAG_RQU_COMMAND, align 4
  %13 = load i32, i32* @TPM_ORD_PCR_EXTEND, align 4
  %14 = call i32 @tpm_buf_init(%struct.tpm_buf* %10, i32 %12, i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %5, align 4
  br label %31

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %10, i32 %20)
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @TPM_DIGEST_SIZE, align 4
  %24 = call i32 @tpm_buf_append(%struct.tpm_buf* %10, i32* %22, i32 %23)
  %25 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %26 = load i32, i32* @TPM_DIGEST_SIZE, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @tpm_transmit_cmd(%struct.tpm_chip* %25, %struct.tpm_buf* %10, i32 %26, i8* %27)
  store i32 %28, i32* %11, align 4
  %29 = call i32 @tpm_buf_destroy(%struct.tpm_buf* %10)
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %19, %17
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @tpm_buf_init(%struct.tpm_buf*, i32, i32) #1

declare dso_local i32 @tpm_buf_append_u32(%struct.tpm_buf*, i32) #1

declare dso_local i32 @tpm_buf_append(%struct.tpm_buf*, i32*, i32) #1

declare dso_local i32 @tpm_transmit_cmd(%struct.tpm_chip*, %struct.tpm_buf*, i32, i8*) #1

declare dso_local i32 @tpm_buf_destroy(%struct.tpm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
