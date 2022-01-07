; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utobject.c_acpi_ut_create_integer_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utobject.c_acpi_ut_create_integer_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ut_create_integer_object = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_operand_object* @acpi_ut_create_integer_object(i32 %0) #0 {
  %2 = alloca %union.acpi_operand_object*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @ut_create_integer_object, align 4
  %6 = call i32 @ACPI_FUNCTION_TRACE(i32 %5)
  %7 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %8 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %7)
  store %union.acpi_operand_object* %8, %union.acpi_operand_object** %4, align 8
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %10 = icmp ne %union.acpi_operand_object* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @return_PTR(%union.acpi_operand_object* null)
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %16 = bitcast %union.acpi_operand_object* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %19 = call i32 @return_PTR(%union.acpi_operand_object* %18)
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  ret %union.acpi_operand_object* %20
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @return_PTR(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
