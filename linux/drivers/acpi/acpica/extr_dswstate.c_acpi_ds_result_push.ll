; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dswstate.c_acpi_ds_result_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dswstate.c_acpi_ds_result_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { i32 }
%struct.acpi_walk_state = type { i64, i64, i32, %union.acpi_generic_state* }
%union.acpi_generic_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %union.acpi_operand_object** }

@ds_result_push = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Result stack is full\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to extend the result stack\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"No free elements in result stack\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"No result stack frame during push\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Null Object! Obj=%p State=%p Num=%u\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_RESULTS_FRAME_OBJ_NUM = common dso_local global i64 0, align 8
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Obj=%p [%s] State=%p Num=%X Cur=%X\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_result_push(%union.acpi_operand_object* %0, %struct.acpi_walk_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca %struct.acpi_walk_state*, align 8
  %6 = alloca %union.acpi_generic_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store %struct.acpi_walk_state* %1, %struct.acpi_walk_state** %5, align 8
  %9 = load i32, i32* @ds_result_push, align 4
  %10 = call i32 @ACPI_FUNCTION_NAME(i32 %9)
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %12 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %15 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @AE_INFO, align 4
  %20 = call i32 @ACPI_ERROR(i32 ptrtoint ([21 x i8]* @.str to i32))
  %21 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %21, i32* %3, align 4
  br label %107

22:                                               ; preds = %2
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %24 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %27 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %32 = call i32 @acpi_ds_result_stack_push(%struct.acpi_walk_state* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* @AE_INFO, align 4
  %38 = call i32 @ACPI_ERROR(i32 ptrtoint ([34 x i8]* @.str.1 to i32))
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %107

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %22
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %44 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %47 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @AE_INFO, align 4
  %52 = call i32 @ACPI_ERROR(i32 ptrtoint ([33 x i8]* @.str.2 to i32))
  %53 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %53, i32* %3, align 4
  br label %107

54:                                               ; preds = %42
  %55 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %56 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %55, i32 0, i32 3
  %57 = load %union.acpi_generic_state*, %union.acpi_generic_state** %56, align 8
  store %union.acpi_generic_state* %57, %union.acpi_generic_state** %6, align 8
  %58 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %59 = icmp ne %union.acpi_generic_state* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @AE_INFO, align 4
  %62 = call i32 @ACPI_ERROR(i32 ptrtoint ([34 x i8]* @.str.3 to i32))
  %63 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %63, i32* %3, align 4
  br label %107

64:                                               ; preds = %54
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %66 = icmp ne %union.acpi_operand_object* %65, null
  br i1 %66, label %77, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @AE_INFO, align 4
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %70 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %71 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %72 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @ACPI_ERROR(i32 %74)
  %76 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %76, i32* %3, align 4
  br label %107

77:                                               ; preds = %64
  %78 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %79 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ACPI_RESULTS_FRAME_OBJ_NUM, align 8
  %82 = urem i64 %80, %81
  store i64 %82, i64* %8, align 8
  %83 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %84 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %85 = bitcast %union.acpi_generic_state* %84 to %struct.TYPE_2__*
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %87, i64 %88
  store %union.acpi_operand_object* %83, %union.acpi_operand_object** %89, align 8
  %90 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %91 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = load i32, i32* @ACPI_DB_EXEC, align 4
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %96 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %97 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %96)
  %98 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %99 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %100 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %103 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @ACPI_DEBUG_PRINT(i32 %104)
  %106 = load i32, i32* @AE_OK, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %77, %67, %60, %50, %36, %18
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ds_result_stack_push(%struct.acpi_walk_state*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
