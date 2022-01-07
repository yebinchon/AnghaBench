; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exutils.c_acpi_ex_truncate_for32bit_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exutils.c_acpi_ex_truncate_for32bit_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@ACPI_DESC_TYPE_OPERAND = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@acpi_gbl_integer_byte_width = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_truncate_for32bit_table(%union.acpi_operand_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  %4 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %5 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %6 = icmp ne %union.acpi_operand_object* %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %9 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %8)
  %10 = load i64, i64* @ACPI_DESC_TYPE_OPERAND, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %14 = bitcast %union.acpi_operand_object* %13 to %struct.TYPE_3__*
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12, %7, %1
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %2, align 4
  br label %43

21:                                               ; preds = %12
  %22 = load i32, i32* @acpi_gbl_integer_byte_width, align 4
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %26 = bitcast %union.acpi_operand_object* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* @ACPI_UINT32_MAX, align 8
  %30 = trunc i64 %29 to i32
  %31 = icmp sgt i32 %28, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load i64, i64* @ACPI_UINT32_MAX, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %36 = bitcast %union.acpi_operand_object* %35 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %34
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %2, align 4
  br label %43

41:                                               ; preds = %24, %21
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %32, %19
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
