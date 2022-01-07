; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpm_chip_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpm_chip_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, i32, i32, i32 }

@CONFIG_HW_RANDOM_TPM = common dso_local global i32 0, align 4
@TPM_CHIP_FLAG_TPM2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tpm_chip_unregister(%struct.tpm_chip* %0) #0 {
  %2 = alloca %struct.tpm_chip*, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %2, align 8
  %3 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %4 = call i32 @tpm_del_legacy_sysfs(%struct.tpm_chip* %3)
  %5 = load i32, i32* @CONFIG_HW_RANDOM_TPM, align 4
  %6 = call i64 @IS_ENABLED(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %10 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %9, i32 0, i32 3
  %11 = call i32 @hwrng_unregister(i32* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %14 = call i32 @tpm_bios_log_teardown(%struct.tpm_chip* %13)
  %15 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %16 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TPM_CHIP_FLAG_TPM2, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %23 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %22, i32 0, i32 2
  %24 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %25 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %24, i32 0, i32 1
  %26 = call i32 @cdev_device_del(i32* %23, i32* %25)
  br label %27

27:                                               ; preds = %21, %12
  %28 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %29 = call i32 @tpm_del_char_device(%struct.tpm_chip* %28)
  ret void
}

declare dso_local i32 @tpm_del_legacy_sysfs(%struct.tpm_chip*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @hwrng_unregister(i32*) #1

declare dso_local i32 @tpm_bios_log_teardown(%struct.tpm_chip*) #1

declare dso_local i32 @cdev_device_del(i32*, i32*) #1

declare dso_local i32 @tpm_del_char_device(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
