; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair.c_acpi_ns_repair_null_element.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsrepair.c_acpi_ns_repair_null_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ns_repair_null_element = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_RTYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_RTYPE_STRING = common dso_local global i32 0, align 4
@ACPI_RTYPE_BUFFER = common dso_local global i32 0, align 4
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_DB_REPAIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"%s: Converted NULL package element to expected %s at index %u\0A\00", align 1
@ACPI_OBJECT_REPAIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_repair_null_element(%struct.acpi_evaluate_info* %0, i32 %1, i32 %2, %union.acpi_operand_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_evaluate_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_operand_object**, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_evaluate_info* %0, %struct.acpi_evaluate_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %union.acpi_operand_object** %3, %union.acpi_operand_object*** %9, align 8
  %12 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %9, align 8
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  store %union.acpi_operand_object* %13, %union.acpi_operand_object** %10, align 8
  %14 = load i32, i32* @ns_repair_null_element, align 4
  %15 = call i32 @ACPI_FUNCTION_NAME(i32 %14)
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %17 = icmp ne %union.acpi_operand_object* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @AE_OK, align 4
  store i32 %19, i32* %5, align 4
  br label %76

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @ACPI_RTYPE_INTEGER, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call %union.acpi_operand_object* @acpi_ut_create_integer_object(i32 0)
  store %union.acpi_operand_object* %26, %union.acpi_operand_object** %11, align 8
  br label %45

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ACPI_RTYPE_STRING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call %union.acpi_operand_object* @acpi_ut_create_string_object(i32 0)
  store %union.acpi_operand_object* %33, %union.acpi_operand_object** %11, align 8
  br label %44

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @ACPI_RTYPE_BUFFER, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i32 0)
  store %union.acpi_operand_object* %40, %union.acpi_operand_object** %11, align 8
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %42, i32* %5, align 4
  br label %76

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %44, %25
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %47 = icmp ne %union.acpi_operand_object* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %49, i32* %5, align 4
  br label %76

50:                                               ; preds = %45
  %51 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %52 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %58 = bitcast %union.acpi_operand_object* %57 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @ACPI_DB_REPAIR, align 4
  %61 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %62 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %65 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %64)
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @ACPI_DEBUG_PRINT(i32 %66)
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %69 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %9, align 8
  store %union.acpi_operand_object* %68, %union.acpi_operand_object** %69, align 8
  %70 = load i32, i32* @ACPI_OBJECT_REPAIRED, align 4
  %71 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %72 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load i32, i32* @AE_OK, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %50, %48, %41, %18
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_integer_object(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_string_object(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_buffer_object(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
