; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwsleep.c_acpi_hw_legacy_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwsleep.c_acpi_hw_legacy_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@hw_legacy_wake = common dso_local global i32 0, align 4
@ACPI_SLEEP_TYPE_INVALID = common dso_local global i32 0, align 4
@acpi_gbl_sleep_type_a = common dso_local global i32 0, align 4
@METHOD_PATHNAME__SST = common dso_local global i32 0, align 4
@ACPI_SST_WAKING = common dso_local global i32 0, align 4
@METHOD_PATHNAME__WAK = common dso_local global i32 0, align 4
@ACPI_BITREG_WAKE_STATUS = common dso_local global i32 0, align 4
@ACPI_CLEAR_STATUS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@acpi_gbl_system_awake_and_running = common dso_local global i32 0, align 4
@acpi_gbl_fixed_event_info = common dso_local global %struct.TYPE_2__* null, align 8
@ACPI_EVENT_POWER_BUTTON = common dso_local global i64 0, align 8
@ACPI_ENABLE_EVENT = common dso_local global i32 0, align 4
@ACPI_SST_WORKING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_hw_legacy_wake(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @hw_legacy_wake, align 4
  %6 = call i32 @ACPI_FUNCTION_TRACE(i32 %5)
  %7 = load i32, i32* @ACPI_SLEEP_TYPE_INVALID, align 4
  store i32 %7, i32* @acpi_gbl_sleep_type_a, align 4
  %8 = load i32, i32* @METHOD_PATHNAME__SST, align 4
  %9 = load i32, i32* @ACPI_SST_WAKING, align 4
  %10 = call i32 @acpi_hw_execute_sleep_method(i32 %8, i32 %9)
  %11 = call i32 (...) @acpi_hw_disable_all_gpes()
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @ACPI_FAILURE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @return_ACPI_STATUS(i32 %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = call i32 (...) @acpi_hw_enable_all_runtime_gpes()
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @ACPI_FAILURE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @return_ACPI_STATUS(i32 %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* @METHOD_PATHNAME__WAK, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @acpi_hw_execute_sleep_method(i32 %27, i32 %28)
  %30 = load i32, i32* @ACPI_BITREG_WAKE_STATUS, align 4
  %31 = load i32, i32* @ACPI_CLEAR_STATUS, align 4
  %32 = call i32 @acpi_write_bit_register(i32 %30, i32 %31)
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* @acpi_gbl_system_awake_and_running, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_gbl_fixed_event_info, align 8
  %35 = load i64, i64* @ACPI_EVENT_POWER_BUTTON, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ACPI_ENABLE_EVENT, align 4
  %40 = call i32 @acpi_write_bit_register(i32 %38, i32 %39)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_gbl_fixed_event_info, align 8
  %42 = load i64, i64* @ACPI_EVENT_POWER_BUTTON, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ACPI_CLEAR_STATUS, align 4
  %47 = call i32 @acpi_write_bit_register(i32 %45, i32 %46)
  %48 = load i32, i32* @METHOD_PATHNAME__SST, align 4
  %49 = load i32, i32* @ACPI_SST_WORKING, align 4
  %50 = call i32 @acpi_hw_execute_sleep_method(i32 %48, i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @return_ACPI_STATUS(i32 %51)
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_hw_execute_sleep_method(i32, i32) #1

declare dso_local i32 @acpi_hw_disable_all_gpes(...) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_hw_enable_all_runtime_gpes(...) #1

declare dso_local i32 @acpi_write_bit_register(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
