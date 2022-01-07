; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_header = type { i32 }
%struct.tpm_buf = type { i64 }

@TPM2_ST_NO_SESSIONS = common dso_local global i64 0, align 8
@TPM2_CC_GET_CAPABILITY = common dso_local global i32 0, align 4
@TPM2_CAP_TPM_PROPERTIES = common dso_local global i32 0, align 4
@TPM_PT_TOTAL_COMMANDS = common dso_local global i32 0, align 4
@TPM_CHIP_FLAG_TPM2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm2_probe(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca %struct.tpm_header*, align 8
  %5 = alloca %struct.tpm_buf, align 8
  %6 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  %7 = load i64, i64* @TPM2_ST_NO_SESSIONS, align 8
  %8 = load i32, i32* @TPM2_CC_GET_CAPABILITY, align 4
  %9 = call i32 @tpm_buf_init(%struct.tpm_buf* %5, i64 %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %43

14:                                               ; preds = %1
  %15 = load i32, i32* @TPM2_CAP_TPM_PROPERTIES, align 4
  %16 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %5, i32 %15)
  %17 = load i32, i32* @TPM_PT_TOTAL_COMMANDS, align 4
  %18 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %5, i32 %17)
  %19 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %5, i32 1)
  %20 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %21 = call i32 @tpm_transmit_cmd(%struct.tpm_chip* %20, %struct.tpm_buf* %5, i32 0, i32* null)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %5, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.tpm_header*
  store %struct.tpm_header* %27, %struct.tpm_header** %4, align 8
  %28 = load %struct.tpm_header*, %struct.tpm_header** %4, align 8
  %29 = getelementptr inbounds %struct.tpm_header, %struct.tpm_header* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @be16_to_cpu(i32 %30)
  %32 = load i64, i64* @TPM2_ST_NO_SESSIONS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load i32, i32* @TPM_CHIP_FLAG_TPM2, align 4
  %36 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %37 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %24
  br label %41

41:                                               ; preds = %40, %14
  %42 = call i32 @tpm_buf_destroy(%struct.tpm_buf* %5)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @tpm_buf_init(%struct.tpm_buf*, i64, i32) #1

declare dso_local i32 @tpm_buf_append_u32(%struct.tpm_buf*, i32) #1

declare dso_local i32 @tpm_transmit_cmd(%struct.tpm_chip*, %struct.tpm_buf*, i32, i32*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @tpm_buf_destroy(%struct.tpm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
