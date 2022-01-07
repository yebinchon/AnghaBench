; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exmisc.c_acpi_ex_get_object_reference.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exmisc.c_acpi_ex_get_object_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %union.acpi_operand_object*, i32 }
%struct.acpi_walk_state = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ex_get_object_reference = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i32 0, align 4
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid Reference Class 0x%2.2X\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid descriptor type 0x%X\00", align 1
@AE_TYPE = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_REFCLASS_REFOF = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Object %p Type [%s], returning Reference %p\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_get_object_reference(%union.acpi_operand_object* %0, %union.acpi_operand_object** %1, %struct.acpi_walk_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %union.acpi_operand_object**, align 8
  %7 = alloca %struct.acpi_walk_state*, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %5, align 8
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %6, align 8
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %7, align 8
  %10 = load i32, i32* @ex_get_object_reference, align 4
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %12 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %10, %union.acpi_operand_object* %11)
  %13 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %13, align 8
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %15 = call i32 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %14)
  switch i32 %15, label %48 [
    i32 131, label %16
    i32 132, label %46
  ]

16:                                               ; preds = %3
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %18 = bitcast %union.acpi_operand_object* %17 to %struct.TYPE_3__*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ACPI_TYPE_LOCAL_REFERENCE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %25 = call i32 @return_ACPI_STATUS(i32 %24)
  br label %26

26:                                               ; preds = %23, %16
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %28 = bitcast %union.acpi_operand_object* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %36 [
    i32 128, label %31
    i32 130, label %31
    i32 129, label %31
  ]

31:                                               ; preds = %26, %26, %26
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %33 = bitcast %union.acpi_operand_object* %32 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %34, align 8
  store %union.acpi_operand_object* %35, %union.acpi_operand_object** %9, align 8
  br label %45

36:                                               ; preds = %26
  %37 = load i32, i32* @AE_INFO, align 4
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %39 = bitcast %union.acpi_operand_object* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ACPI_ERROR(i32 %41)
  %43 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %44 = call i32 @return_ACPI_STATUS(i32 %43)
  br label %45

45:                                               ; preds = %36, %31
  br label %55

46:                                               ; preds = %3
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  store %union.acpi_operand_object* %47, %union.acpi_operand_object** %9, align 8
  br label %55

48:                                               ; preds = %3
  %49 = load i32, i32* @AE_INFO, align 4
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %51 = call i32 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %50)
  %52 = call i32 @ACPI_ERROR(i32 %51)
  %53 = load i32, i32* @AE_TYPE, align 4
  %54 = call i32 @return_ACPI_STATUS(i32 %53)
  br label %55

55:                                               ; preds = %48, %46, %45
  %56 = load i32, i32* @ACPI_TYPE_LOCAL_REFERENCE, align 4
  %57 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %56)
  store %union.acpi_operand_object* %57, %union.acpi_operand_object** %8, align 8
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %59 = icmp ne %union.acpi_operand_object* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @AE_NO_MEMORY, align 4
  %62 = call i32 @return_ACPI_STATUS(i32 %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* @ACPI_REFCLASS_REFOF, align 4
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %66 = bitcast %union.acpi_operand_object* %65 to %struct.TYPE_4__*
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 8
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %70 = bitcast %union.acpi_operand_object* %69 to %struct.TYPE_4__*
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store %union.acpi_operand_object* %68, %union.acpi_operand_object** %71, align 8
  %72 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %73 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  store %union.acpi_operand_object* %72, %union.acpi_operand_object** %73, align 8
  %74 = load i32, i32* @ACPI_DB_EXEC, align 4
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %77 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %76)
  %78 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %78, align 8
  %80 = ptrtoint %union.acpi_operand_object* %79 to i32
  %81 = call i32 @ACPI_DEBUG_PRINT(i32 %80)
  %82 = load i32, i32* @AE_OK, align 4
  %83 = call i32 @return_ACPI_STATUS(i32 %82)
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
