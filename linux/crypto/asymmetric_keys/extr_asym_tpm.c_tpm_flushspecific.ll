; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asym_tpm.c_tpm_flushspecific.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asym_tpm.c_tpm_flushspecific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_buf = type { i32 }

@TPM_TAG_RQU_COMMAND = common dso_local global i32 0, align 4
@TPM_FLUSHSPECIFIC_SIZE = common dso_local global i32 0, align 4
@TPM_ORD_FLUSHSPECIFIC = common dso_local global i32 0, align 4
@TPM_RT_KEY = common dso_local global i32 0, align 4
@MAX_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_buf*, i32)* @tpm_flushspecific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_flushspecific(%struct.tpm_buf* %0, i32 %1) #0 {
  %3 = alloca %struct.tpm_buf*, align 8
  %4 = alloca i32, align 4
  store %struct.tpm_buf* %0, %struct.tpm_buf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.tpm_buf*, %struct.tpm_buf** %3, align 8
  %6 = call i32 @INIT_BUF(%struct.tpm_buf* %5)
  %7 = load %struct.tpm_buf*, %struct.tpm_buf** %3, align 8
  %8 = load i32, i32* @TPM_TAG_RQU_COMMAND, align 4
  %9 = call i32 @store16(%struct.tpm_buf* %7, i32 %8)
  %10 = load %struct.tpm_buf*, %struct.tpm_buf** %3, align 8
  %11 = load i32, i32* @TPM_FLUSHSPECIFIC_SIZE, align 4
  %12 = call i32 @store32(%struct.tpm_buf* %10, i32 %11)
  %13 = load %struct.tpm_buf*, %struct.tpm_buf** %3, align 8
  %14 = load i32, i32* @TPM_ORD_FLUSHSPECIFIC, align 4
  %15 = call i32 @store32(%struct.tpm_buf* %13, i32 %14)
  %16 = load %struct.tpm_buf*, %struct.tpm_buf** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @store32(%struct.tpm_buf* %16, i32 %17)
  %19 = load %struct.tpm_buf*, %struct.tpm_buf** %3, align 8
  %20 = load i32, i32* @TPM_RT_KEY, align 4
  %21 = call i32 @store32(%struct.tpm_buf* %19, i32 %20)
  %22 = load %struct.tpm_buf*, %struct.tpm_buf** %3, align 8
  %23 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MAX_BUF_SIZE, align 4
  %26 = call i32 @trusted_tpm_send(i32 %24, i32 %25)
  ret i32 %26
}

declare dso_local i32 @INIT_BUF(%struct.tpm_buf*) #1

declare dso_local i32 @store16(%struct.tpm_buf*, i32) #1

declare dso_local i32 @store32(%struct.tpm_buf*, i32) #1

declare dso_local i32 @trusted_tpm_send(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
