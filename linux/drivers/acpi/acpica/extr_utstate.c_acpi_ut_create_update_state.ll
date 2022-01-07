; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utstate.c_acpi_ut_create_update_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utstate.c_acpi_ut_create_update_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_generic_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %union.acpi_operand_object* }
%union.acpi_operand_object = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ACPI_DESC_TYPE_STATE_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_generic_state* @acpi_ut_create_update_state(%union.acpi_operand_object* %0, i32 %1) #0 {
  %3 = alloca %union.acpi_generic_state*, align 8
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.acpi_generic_state*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %8 = call %union.acpi_generic_state* (...) @acpi_ut_create_generic_state()
  store %union.acpi_generic_state* %8, %union.acpi_generic_state** %6, align 8
  %9 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %10 = icmp ne %union.acpi_generic_state* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %union.acpi_generic_state* null, %union.acpi_generic_state** %3, align 8
  br label %26

12:                                               ; preds = %2
  %13 = load i32, i32* @ACPI_DESC_TYPE_STATE_UPDATE, align 4
  %14 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %15 = bitcast %union.acpi_generic_state* %14 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %18 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %19 = bitcast %union.acpi_generic_state* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store %union.acpi_operand_object* %17, %union.acpi_operand_object** %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %23 = bitcast %union.acpi_generic_state* %22 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  store %union.acpi_generic_state* %25, %union.acpi_generic_state** %3, align 8
  br label %26

26:                                               ; preds = %12, %11
  %27 = load %union.acpi_generic_state*, %union.acpi_generic_state** %3, align 8
  ret %union.acpi_generic_state* %27
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_create_generic_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
