; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utstate.c_acpi_ut_create_generic_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utstate.c_acpi_ut_create_generic_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_generic_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@acpi_gbl_state_cache = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_generic_state* @acpi_ut_create_generic_state() #0 {
  %1 = alloca %union.acpi_generic_state*, align 8
  %2 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %3 = load i32, i32* @acpi_gbl_state_cache, align 4
  %4 = call %union.acpi_generic_state* @acpi_os_acquire_object(i32 %3)
  store %union.acpi_generic_state* %4, %union.acpi_generic_state** %1, align 8
  %5 = load %union.acpi_generic_state*, %union.acpi_generic_state** %1, align 8
  %6 = icmp ne %union.acpi_generic_state* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i32, i32* @ACPI_DESC_TYPE_STATE, align 4
  %9 = load %union.acpi_generic_state*, %union.acpi_generic_state** %1, align 8
  %10 = bitcast %union.acpi_generic_state* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  br label %12

12:                                               ; preds = %7, %0
  %13 = load %union.acpi_generic_state*, %union.acpi_generic_state** %1, align 8
  ret %union.acpi_generic_state* %13
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local %union.acpi_generic_state* @acpi_os_acquire_object(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
