; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpm_chip_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpm_chip_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@CONFIG_HW_RANDOM_TPM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_chip_register(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  %5 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %6 = call i32 @tpm_chip_start(%struct.tpm_chip* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %80

11:                                               ; preds = %1
  %12 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %13 = call i32 @tpm_auto_startup(%struct.tpm_chip* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %18 = call i32 @tpm_chip_stop(%struct.tpm_chip* %17)
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %80

20:                                               ; preds = %11
  %21 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %22 = call i32 @tpm_get_pcr_allocation(%struct.tpm_chip* %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %24 = call i32 @tpm_chip_stop(%struct.tpm_chip* %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %80

29:                                               ; preds = %20
  %30 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %31 = call i32 @tpm_sysfs_add_device(%struct.tpm_chip* %30)
  %32 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %33 = call i32 @tpm_bios_log_setup(%struct.tpm_chip* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %80

43:                                               ; preds = %36, %29
  %44 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %45 = call i32 @tpm_add_ppi(%struct.tpm_chip* %44)
  %46 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %47 = call i32 @tpm_add_hwrng(%struct.tpm_chip* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %76

51:                                               ; preds = %43
  %52 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %53 = call i32 @tpm_add_char_device(%struct.tpm_chip* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %67

57:                                               ; preds = %51
  %58 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %59 = call i32 @tpm_add_legacy_sysfs(%struct.tpm_chip* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %64 = call i32 @tpm_chip_unregister(%struct.tpm_chip* %63)
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %80

66:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %80

67:                                               ; preds = %56
  %68 = load i32, i32* @CONFIG_HW_RANDOM_TPM, align 4
  %69 = call i64 @IS_ENABLED(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %73 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %72, i32 0, i32 0
  %74 = call i32 @hwrng_unregister(i32* %73)
  br label %75

75:                                               ; preds = %71, %67
  br label %76

76:                                               ; preds = %75, %50
  %77 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %78 = call i32 @tpm_bios_log_teardown(%struct.tpm_chip* %77)
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %76, %66, %62, %41, %27, %16, %9
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @tpm_chip_start(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_auto_startup(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_chip_stop(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_get_pcr_allocation(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_sysfs_add_device(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_bios_log_setup(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_add_ppi(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_add_hwrng(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_add_char_device(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_add_legacy_sysfs(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_chip_unregister(%struct.tpm_chip*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @hwrng_unregister(i32*) #1

declare dso_local i32 @tpm_bios_log_teardown(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
