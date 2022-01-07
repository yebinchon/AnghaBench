; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_get_timeouts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_get_timeouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, i8**, i8*, i8*, i8*, i8* }

@TPM2_TIMEOUT_A = common dso_local global i32 0, align 4
@TPM2_TIMEOUT_B = common dso_local global i32 0, align 4
@TPM2_TIMEOUT_C = common dso_local global i32 0, align 4
@TPM2_TIMEOUT_D = common dso_local global i32 0, align 4
@TPM2_DURATION_SHORT = common dso_local global i32 0, align 4
@TPM_SHORT = common dso_local global i64 0, align 8
@TPM2_DURATION_MEDIUM = common dso_local global i32 0, align 4
@TPM_MEDIUM = common dso_local global i64 0, align 8
@TPM2_DURATION_LONG = common dso_local global i32 0, align 4
@TPM_LONG = common dso_local global i64 0, align 8
@TPM2_DURATION_LONG_LONG = common dso_local global i32 0, align 4
@TPM_LONG_LONG = common dso_local global i64 0, align 8
@TPM_CHIP_FLAG_HAVE_TIMEOUTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm2_get_timeouts(%struct.tpm_chip* %0) #0 {
  %2 = alloca %struct.tpm_chip*, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %2, align 8
  %3 = load i32, i32* @TPM2_TIMEOUT_A, align 4
  %4 = call i8* @msecs_to_jiffies(i32 %3)
  %5 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %6 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %5, i32 0, i32 5
  store i8* %4, i8** %6, align 8
  %7 = load i32, i32* @TPM2_TIMEOUT_B, align 4
  %8 = call i8* @msecs_to_jiffies(i32 %7)
  %9 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %10 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %9, i32 0, i32 4
  store i8* %8, i8** %10, align 8
  %11 = load i32, i32* @TPM2_TIMEOUT_C, align 4
  %12 = call i8* @msecs_to_jiffies(i32 %11)
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %14 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %13, i32 0, i32 3
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* @TPM2_TIMEOUT_D, align 4
  %16 = call i8* @msecs_to_jiffies(i32 %15)
  %17 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %18 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @TPM2_DURATION_SHORT, align 4
  %20 = call i8* @msecs_to_jiffies(i32 %19)
  %21 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %22 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %21, i32 0, i32 1
  %23 = load i8**, i8*** %22, align 8
  %24 = load i64, i64* @TPM_SHORT, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  store i8* %20, i8** %25, align 8
  %26 = load i32, i32* @TPM2_DURATION_MEDIUM, align 4
  %27 = call i8* @msecs_to_jiffies(i32 %26)
  %28 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %29 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = load i64, i64* @TPM_MEDIUM, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  store i8* %27, i8** %32, align 8
  %33 = load i32, i32* @TPM2_DURATION_LONG, align 4
  %34 = call i8* @msecs_to_jiffies(i32 %33)
  %35 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %36 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %35, i32 0, i32 1
  %37 = load i8**, i8*** %36, align 8
  %38 = load i64, i64* @TPM_LONG, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  store i8* %34, i8** %39, align 8
  %40 = load i32, i32* @TPM2_DURATION_LONG_LONG, align 4
  %41 = call i8* @msecs_to_jiffies(i32 %40)
  %42 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %43 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = load i64, i64* @TPM_LONG_LONG, align 8
  %46 = getelementptr inbounds i8*, i8** %44, i64 %45
  store i8* %41, i8** %46, align 8
  %47 = load i32, i32* @TPM_CHIP_FLAG_HAVE_TIMEOUTS, align 4
  %48 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %49 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  ret i32 0
}

declare dso_local i8* @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
