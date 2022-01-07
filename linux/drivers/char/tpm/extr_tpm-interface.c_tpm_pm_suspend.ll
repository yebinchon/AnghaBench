; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-interface.c_tpm_pm_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-interface.c_tpm_pm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tpm_chip = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@TPM_CHIP_FLAG_ALWAYS_POWERED = common dso_local global i32 0, align 4
@TPM_CHIP_FLAG_TPM2 = common dso_local global i32 0, align 4
@TPM2_SU_STATE = common dso_local global i32 0, align 4
@tpm_suspend_pcr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_pm_suspend(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.tpm_chip* @dev_get_drvdata(%struct.device* %6)
  store %struct.tpm_chip* %7, %struct.tpm_chip** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %9 = icmp ne %struct.tpm_chip* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %45

13:                                               ; preds = %1
  %14 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %15 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TPM_CHIP_FLAG_ALWAYS_POWERED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %45

21:                                               ; preds = %13
  %22 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %23 = call i32 @tpm_chip_start(%struct.tpm_chip* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %21
  %26 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %27 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TPM_CHIP_FLAG_TPM2, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %34 = load i32, i32* @TPM2_SU_STATE, align 4
  %35 = call i32 @tpm2_shutdown(%struct.tpm_chip* %33, i32 %34)
  br label %40

36:                                               ; preds = %25
  %37 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %38 = load i32, i32* @tpm_suspend_pcr, align 4
  %39 = call i32 @tpm1_pm_suspend(%struct.tpm_chip* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %42 = call i32 @tpm_chip_stop(%struct.tpm_chip* %41)
  br label %43

43:                                               ; preds = %40, %21
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %20, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.tpm_chip* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @tpm_chip_start(%struct.tpm_chip*) #1

declare dso_local i32 @tpm2_shutdown(%struct.tpm_chip*, i32) #1

declare dso_local i32 @tpm1_pm_suspend(%struct.tpm_chip*, i32) #1

declare dso_local i32 @tpm_chip_stop(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
