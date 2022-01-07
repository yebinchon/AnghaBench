; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exconvrt.c_acpi_ex_convert_to_target_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exconvrt.c_acpi_ex_convert_to_target_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.acpi_walk_state = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@AE_OK = common dso_local global i64 0, align 8
@ex_convert_to_target_type = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Explicit operator, will store (%s) over existing type (%s)\0A\00", align 1
@AE_TYPE = common dso_local global i64 0, align 8
@ACPI_IMPLICIT_CONVERSION = common dso_local global i32 0, align 4
@ACPI_IMPLICIT_CONVERT_HEX = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Bad destination type during conversion: 0x%X\00", align 1
@AE_AML_INTERNAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"Unknown Target type ID 0x%X AmlOpcode 0x%X DestType %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_ex_convert_to_target_type(i32 %0, %union.acpi_operand_object* %1, %union.acpi_operand_object** %2, %struct.acpi_walk_state* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca %union.acpi_operand_object**, align 8
  %9 = alloca %struct.acpi_walk_state*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %7, align 8
  store %union.acpi_operand_object** %2, %union.acpi_operand_object*** %8, align 8
  store %struct.acpi_walk_state* %3, %struct.acpi_walk_state** %9, align 8
  %11 = load i64, i64* @AE_OK, align 8
  store i64 %11, i64* %10, align 8
  %12 = load i32, i32* @ex_convert_to_target_type, align 4
  %13 = call i32 @ACPI_FUNCTION_TRACE(i32 %12)
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %15 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  store %union.acpi_operand_object* %14, %union.acpi_operand_object** %15, align 8
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %17 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @GET_CURRENT_ARG_TYPE(i32 %20)
  switch i32 %21, label %65 [
    i32 130, label %22
    i32 133, label %22
    i32 132, label %22
    i32 128, label %42
    i32 129, label %42
    i32 131, label %64
  ]

22:                                               ; preds = %4, %4, %4
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %25 [
    i32 135, label %24
  ]

24:                                               ; preds = %22
  br label %41

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %28 = bitcast %union.acpi_operand_object* %27 to %struct.TYPE_3__*
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %26, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load i32, i32* @ACPI_DB_INFO, align 4
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %35 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @acpi_ut_get_type_name(i32 %36)
  %38 = call i32 @ACPI_DEBUG_PRINT(i32 %37)
  %39 = load i64, i64* @AE_TYPE, align 8
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %32, %25
  br label %41

41:                                               ; preds = %40, %24
  br label %80

42:                                               ; preds = %4, %4
  %43 = load i32, i32* %6, align 4
  switch i32 %43, label %58 [
    i32 138, label %44
    i32 139, label %44
    i32 137, label %44
    i32 136, label %44
    i32 134, label %49
    i32 140, label %54
  ]

44:                                               ; preds = %42, %42, %42, %42
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %46 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %47 = load i32, i32* @ACPI_IMPLICIT_CONVERSION, align 4
  %48 = call i64 @acpi_ex_convert_to_integer(%union.acpi_operand_object* %45, %union.acpi_operand_object** %46, i32 %47)
  store i64 %48, i64* %10, align 8
  br label %63

49:                                               ; preds = %42
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %51 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %52 = load i32, i32* @ACPI_IMPLICIT_CONVERT_HEX, align 4
  %53 = call i64 @acpi_ex_convert_to_string(%union.acpi_operand_object* %50, %union.acpi_operand_object** %51, i32 %52)
  store i64 %53, i64* %10, align 8
  br label %63

54:                                               ; preds = %42
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %56 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %57 = call i64 @acpi_ex_convert_to_buffer(%union.acpi_operand_object* %55, %union.acpi_operand_object** %56)
  store i64 %57, i64* %10, align 8
  br label %63

58:                                               ; preds = %42
  %59 = load i32, i32* @AE_INFO, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @ACPI_ERROR(i32 %60)
  %62 = load i64, i64* @AE_AML_INTERNAL, align 8
  store i64 %62, i64* %10, align 8
  br label %63

63:                                               ; preds = %58, %54, %49, %44
  br label %80

64:                                               ; preds = %4
  br label %80

65:                                               ; preds = %4
  %66 = load i32, i32* @AE_INFO, align 4
  %67 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %68 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @GET_CURRENT_ARG_TYPE(i32 %71)
  %73 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %74 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @acpi_ut_get_type_name(i32 %76)
  %78 = call i32 @ACPI_ERROR(i32 %77)
  %79 = load i64, i64* @AE_AML_INTERNAL, align 8
  store i64 %79, i64* %10, align 8
  br label %80

80:                                               ; preds = %65, %64, %63, %41
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* @AE_TYPE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i64, i64* @AE_OK, align 8
  store i64 %85, i64* %10, align 8
  br label %86

86:                                               ; preds = %84, %80
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @return_ACPI_STATUS(i64 %87)
  %89 = load i64, i64* %5, align 8
  ret i64 %89
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @GET_CURRENT_ARG_TYPE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local i64 @acpi_ex_convert_to_integer(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #1

declare dso_local i64 @acpi_ex_convert_to_string(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #1

declare dso_local i64 @acpi_ex_convert_to_buffer(%union.acpi_operand_object*, %union.acpi_operand_object**) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
