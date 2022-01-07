; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_get_tpm_pt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_get_tpm_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm2_get_cap_out = type { i32 }
%struct.tpm_buf = type { i32* }

@TPM2_ST_NO_SESSIONS = common dso_local global i32 0, align 4
@TPM2_CC_GET_CAPABILITY = common dso_local global i32 0, align 4
@TPM2_CAP_TPM_PROPERTIES = common dso_local global i32 0, align 4
@TPM_HEADER_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm2_get_tpm_pt(%struct.tpm_chip* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpm_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tpm2_get_cap_out*, align 8
  %11 = alloca %struct.tpm_buf, align 8
  %12 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* @TPM2_ST_NO_SESSIONS, align 4
  %14 = load i32, i32* @TPM2_CC_GET_CAPABILITY, align 4
  %15 = call i32 @tpm_buf_init(%struct.tpm_buf* %11, i32 %13, i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %5, align 4
  br label %44

20:                                               ; preds = %4
  %21 = load i32, i32* @TPM2_CAP_TPM_PROPERTIES, align 4
  %22 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %11, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %11, i32 %23)
  %25 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %11, i32 1)
  %26 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %27 = call i32 @tpm_transmit_cmd(%struct.tpm_chip* %26, %struct.tpm_buf* %11, i32 0, i32* null)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %11, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @TPM_HEADER_SIZE, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = bitcast i32* %34 to %struct.tpm2_get_cap_out*
  store %struct.tpm2_get_cap_out* %35, %struct.tpm2_get_cap_out** %10, align 8
  %36 = load %struct.tpm2_get_cap_out*, %struct.tpm2_get_cap_out** %10, align 8
  %37 = getelementptr inbounds %struct.tpm2_get_cap_out, %struct.tpm2_get_cap_out* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be32_to_cpu(i32 %38)
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %30, %20
  %42 = call i32 @tpm_buf_destroy(%struct.tpm_buf* %11)
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %18
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @tpm_buf_init(%struct.tpm_buf*, i32, i32) #1

declare dso_local i32 @tpm_buf_append_u32(%struct.tpm_buf*, i32) #1

declare dso_local i32 @tpm_transmit_cmd(%struct.tpm_chip*, %struct.tpm_buf*, i32, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @tpm_buf_destroy(%struct.tpm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
