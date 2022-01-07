; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-interface.c_tpm_calc_ordinal_duration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-interface.c_tpm_calc_ordinal_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }

@TPM_CHIP_FLAG_TPM2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tpm_calc_ordinal_duration(%struct.tpm_chip* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %7 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TPM_CHIP_FLAG_TPM2, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @tpm2_calc_ordinal_duration(%struct.tpm_chip* %13, i32 %14)
  store i64 %15, i64* %3, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @tpm1_calc_ordinal_duration(%struct.tpm_chip* %17, i32 %18)
  store i64 %19, i64* %3, align 8
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i64, i64* %3, align 8
  ret i64 %21
}

declare dso_local i64 @tpm2_calc_ordinal_duration(%struct.tpm_chip*, i32) #1

declare dso_local i64 @tpm1_calc_ordinal_duration(%struct.tpm_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
