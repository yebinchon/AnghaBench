; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_tpm_tis_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_tpm_tis_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_tis_data = type { i64, i32 }

@TPM_GLOBAL_INT_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tpm_tis_remove(%struct.tpm_chip* %0) #0 {
  %2 = alloca %struct.tpm_chip*, align 8
  %3 = alloca %struct.tpm_tis_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %2, align 8
  %7 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %8 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %7, i32 0, i32 0
  %9 = call %struct.tpm_tis_data* @dev_get_drvdata(i32* %8)
  store %struct.tpm_tis_data* %9, %struct.tpm_tis_data** %3, align 8
  %10 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %3, align 8
  %11 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @TPM_INT_ENABLE(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %15 = call i32 @tpm_tis_clkrun_enable(%struct.tpm_chip* %14, i32 1)
  %16 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @tpm_tis_read32(%struct.tpm_tis_data* %16, i32 %17, i32* %5)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @TPM_GLOBAL_INT_ENABLE, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @tpm_tis_write32(%struct.tpm_tis_data* %23, i32 %24, i32 %28)
  %30 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %31 = call i32 @tpm_tis_clkrun_enable(%struct.tpm_chip* %30, i32 0)
  %32 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %3, align 8
  %33 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %22
  %37 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %3, align 8
  %38 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @iounmap(i64 %39)
  br label %41

41:                                               ; preds = %36, %22
  ret void
}

declare dso_local %struct.tpm_tis_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @TPM_INT_ENABLE(i32) #1

declare dso_local i32 @tpm_tis_clkrun_enable(%struct.tpm_chip*, i32) #1

declare dso_local i32 @tpm_tis_read32(%struct.tpm_tis_data*, i32, i32*) #1

declare dso_local i32 @tpm_tis_write32(%struct.tpm_tis_data*, i32, i32) #1

declare dso_local i32 @iounmap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
