; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwsleep.c_acpi_hw_legacy_wake_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwsleep.c_acpi_hw_legacy_wake_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_bit_register_info = type { i32, i32 }

@hw_legacy_wake_prep = common dso_local global i32 0, align 4
@ACPI_STATE_S0 = common dso_local global i32 0, align 4
@acpi_gbl_sleep_type_a = common dso_local global i32 0, align 4
@acpi_gbl_sleep_type_b = common dso_local global i32 0, align 4
@ACPI_BITREG_SLEEP_TYPE = common dso_local global i32 0, align 4
@ACPI_BITREG_SLEEP_ENABLE = common dso_local global i32 0, align 4
@ACPI_REGISTER_PM1_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_hw_legacy_wake_prep(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_bit_register_info*, align 8
  %6 = alloca %struct.acpi_bit_register_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @hw_legacy_wake_prep, align 4
  %10 = call i32 @ACPI_FUNCTION_TRACE(i32 %9)
  %11 = load i32, i32* @ACPI_STATE_S0, align 4
  %12 = call i32 @acpi_get_sleep_type_data(i32 %11, i32* @acpi_gbl_sleep_type_a, i32* @acpi_gbl_sleep_type_b)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @ACPI_SUCCESS(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %1
  %17 = load i32, i32* @ACPI_BITREG_SLEEP_TYPE, align 4
  %18 = call %struct.acpi_bit_register_info* @acpi_hw_get_bit_register_info(i32 %17)
  store %struct.acpi_bit_register_info* %18, %struct.acpi_bit_register_info** %5, align 8
  %19 = load i32, i32* @ACPI_BITREG_SLEEP_ENABLE, align 4
  %20 = call %struct.acpi_bit_register_info* @acpi_hw_get_bit_register_info(i32 %19)
  store %struct.acpi_bit_register_info* %20, %struct.acpi_bit_register_info** %6, align 8
  %21 = load i32, i32* @ACPI_REGISTER_PM1_CONTROL, align 4
  %22 = call i32 @acpi_hw_register_read(i32 %21, i32* %7)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @ACPI_SUCCESS(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %16
  %27 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %5, align 8
  %28 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %6, align 8
  %31 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @acpi_gbl_sleep_type_a, align 4
  %39 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %5, align 8
  %40 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %38, %41
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @acpi_gbl_sleep_type_b, align 4
  %46 = load %struct.acpi_bit_register_info*, %struct.acpi_bit_register_info** %5, align 8
  %47 = getelementptr inbounds %struct.acpi_bit_register_info, %struct.acpi_bit_register_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %45, %48
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @acpi_hw_write_pm1_control(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %26, %16
  br label %56

56:                                               ; preds = %55, %1
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @return_ACPI_STATUS(i32 %57)
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_get_sleep_type_data(i32, i32*, i32*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local %struct.acpi_bit_register_info* @acpi_hw_get_bit_register_info(i32) #1

declare dso_local i32 @acpi_hw_register_read(i32, i32*) #1

declare dso_local i32 @acpi_hw_write_pm1_control(i32, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
