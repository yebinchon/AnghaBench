; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_disable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis_core.c_disable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tpm_tis_data = type { i64, i32 }

@TPM_GLOBAL_INT_ENABLE = common dso_local global i32 0, align 4
@TPM_CHIP_FLAG_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpm_chip*)* @disable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_interrupts(%struct.tpm_chip* %0) #0 {
  %2 = alloca %struct.tpm_chip*, align 8
  %3 = alloca %struct.tpm_tis_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %2, align 8
  %6 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %7 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %6, i32 0, i32 1
  %8 = call %struct.tpm_tis_data* @dev_get_drvdata(%struct.TYPE_2__* %7)
  store %struct.tpm_tis_data* %8, %struct.tpm_tis_data** %3, align 8
  %9 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %3, align 8
  %10 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %3, align 8
  %11 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @TPM_INT_ENABLE(i32 %12)
  %14 = call i32 @tpm_tis_read32(%struct.tpm_tis_data* %9, i32 %13, i32* %4)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %1
  %19 = load i32, i32* @TPM_GLOBAL_INT_ENABLE, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %3, align 8
  %24 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %3, align 8
  %25 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @TPM_INT_ENABLE(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @tpm_tis_write32(%struct.tpm_tis_data* %23, i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %31 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %3, align 8
  %35 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %38 = call i32 @devm_free_irq(i32 %33, i64 %36, %struct.tpm_chip* %37)
  %39 = load %struct.tpm_tis_data*, %struct.tpm_tis_data** %3, align 8
  %40 = getelementptr inbounds %struct.tpm_tis_data, %struct.tpm_tis_data* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @TPM_CHIP_FLAG_IRQ, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %44 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  ret void
}

declare dso_local %struct.tpm_tis_data* @dev_get_drvdata(%struct.TYPE_2__*) #1

declare dso_local i32 @tpm_tis_read32(%struct.tpm_tis_data*, i32, i32*) #1

declare dso_local i32 @TPM_INT_ENABLE(i32) #1

declare dso_local i32 @tpm_tis_write32(%struct.tpm_tis_data*, i32, i32) #1

declare dso_local i32 @devm_free_irq(i32, i64, %struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
