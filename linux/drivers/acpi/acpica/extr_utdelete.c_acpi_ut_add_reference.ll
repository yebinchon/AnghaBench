; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utdelete.c_acpi_ut_add_reference.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utdelete.c_acpi_ut_add_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ut_add_reference = common dso_local global i32 0, align 4
@ACPI_DB_ALLOCATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Obj %p Current Refs=%X [To Be Incremented]\0A\00", align 1
@REF_INCREMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ut_add_reference(%union.acpi_operand_object* %0) #0 {
  %2 = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %2, align 8
  %3 = load i32, i32* @ut_add_reference, align 4
  %4 = call i32 @ACPI_FUNCTION_NAME(i32 %3)
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %6 = call i32 @acpi_ut_valid_internal_object(%union.acpi_operand_object* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %20

9:                                                ; preds = %1
  %10 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %13 = bitcast %union.acpi_operand_object* %12 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ACPI_DEBUG_PRINT(i32 %15)
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %18 = load i32, i32* @REF_INCREMENT, align 4
  %19 = call i32 @acpi_ut_update_object_reference(%union.acpi_operand_object* %17, i32 %18)
  br label %20

20:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @acpi_ut_valid_internal_object(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_update_object_reference(%union.acpi_operand_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
