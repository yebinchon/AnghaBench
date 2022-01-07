; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsparse.c_acpi_ns_execute_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsparse.c_acpi_ns_execute_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%struct.acpi_table_header = type { i32, i32 }
%struct.acpi_evaluate_info = type { %struct.acpi_evaluate_info*, %struct.acpi_namespace_node*, i32, %union.acpi_operand_object*, i32 }
%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@ns_execute_table = common dso_local global i32 0, align 4
@AE_BAD_HEADER = common dso_local global i32 0, align 4
@ACPI_TYPE_METHOD = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_DB_PARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"%s: Create table pseudo-method for [%4.4s] @%p, method %p\0A\00", align 1
@ACPI_GET_FUNCTION_NAME = common dso_local global i32 0, align 4
@ACPI_METHOD_MODULE_LEVEL = common dso_local global i32 0, align 4
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ACPI_DB_EVALUATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%-26s:  (Definition Block level)\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Module-level evaluation\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Module-level complete\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_execute_table(i32 %0, %struct.acpi_namespace_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_namespace_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_table_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.acpi_evaluate_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %union.acpi_operand_object*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %5, align 8
  store %struct.acpi_evaluate_info* null, %struct.acpi_evaluate_info** %9, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %12, align 8
  %13 = load i32, i32* @ns_execute_table, align 4
  %14 = call i32 @ACPI_FUNCTION_TRACE(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @acpi_get_table_by_index(i32 %15, %struct.acpi_table_header** %7)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @ACPI_FAILURE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @return_ACPI_STATUS(i32 %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.acpi_table_header*, %struct.acpi_table_header** %7, align 8
  %25 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 8
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @AE_BAD_HEADER, align 4
  %31 = call i32 @return_ACPI_STATUS(i32 %30)
  br label %32

32:                                               ; preds = %29, %23
  %33 = load %struct.acpi_table_header*, %struct.acpi_table_header** %7, align 8
  %34 = bitcast %struct.acpi_table_header* %33 to i32*
  %35 = getelementptr inbounds i32, i32* %34, i64 8
  store i32* %35, i32** %11, align 8
  %36 = load %struct.acpi_table_header*, %struct.acpi_table_header** %7, align 8
  %37 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = sub i64 %39, 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @acpi_tb_get_owner_id(i32 %42, i32* %8)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @ACPI_FAILURE(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @return_ACPI_STATUS(i32 %48)
  br label %50

50:                                               ; preds = %47, %32
  %51 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %52 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %51)
  store %union.acpi_operand_object* %52, %union.acpi_operand_object** %12, align 8
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %54 = icmp ne %union.acpi_operand_object* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @AE_NO_MEMORY, align 4
  %57 = call i32 @return_ACPI_STATUS(i32 %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = call %struct.acpi_evaluate_info* @ACPI_ALLOCATE_ZEROED(i32 40)
  store %struct.acpi_evaluate_info* %59, %struct.acpi_evaluate_info** %9, align 8
  %60 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %9, align 8
  %61 = icmp ne %struct.acpi_evaluate_info* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %63, i32* %6, align 4
  br label %128

64:                                               ; preds = %58
  %65 = load i32, i32* @ACPI_DB_PARSE, align 4
  %66 = load i32, i32* @ACPI_GET_FUNCTION_NAME, align 4
  %67 = load %struct.acpi_table_header*, %struct.acpi_table_header** %7, align 8
  %68 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.acpi_table_header*, %struct.acpi_table_header** %7, align 8
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %72 = ptrtoint %union.acpi_operand_object* %71 to i32
  %73 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %72)
  %74 = load i32*, i32** %11, align 8
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %76 = bitcast %union.acpi_operand_object* %75 to %struct.TYPE_2__*
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  store i32* %74, i32** %77, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %80 = bitcast %union.acpi_operand_object* %79 to %struct.TYPE_2__*
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %84 = bitcast %union.acpi_operand_object* %83 to %struct.TYPE_2__*
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store i32 %82, i32* %85, align 8
  %86 = load i32, i32* @ACPI_METHOD_MODULE_LEVEL, align 4
  %87 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %88 = bitcast %union.acpi_operand_object* %87 to %struct.TYPE_2__*
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %86
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %93 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %9, align 8
  %94 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %96 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %9, align 8
  %97 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %96, i32 0, i32 1
  store %struct.acpi_namespace_node* %95, %struct.acpi_namespace_node** %97, align 8
  %98 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %99 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %9, align 8
  %100 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %99, i32 0, i32 3
  store %union.acpi_operand_object* %98, %union.acpi_operand_object** %100, align 8
  %101 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %9, align 8
  %102 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %101, i32 0, i32 1
  %103 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %102, align 8
  %104 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %9, align 8
  %107 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %9, align 8
  %109 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %108, i32 0, i32 1
  %110 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %109, align 8
  %111 = load i32, i32* @TRUE, align 4
  %112 = call %struct.acpi_evaluate_info* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node* %110, i32 %111)
  %113 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %9, align 8
  %114 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %113, i32 0, i32 0
  store %struct.acpi_evaluate_info* %112, %struct.acpi_evaluate_info** %114, align 8
  %115 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %9, align 8
  %116 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %115, i32 0, i32 0
  %117 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %116, align 8
  %118 = icmp ne %struct.acpi_evaluate_info* %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %64
  %120 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %120, i32* %6, align 4
  br label %128

121:                                              ; preds = %64
  %122 = load i32, i32* @ACPI_DB_EVALUATION, align 4
  %123 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 ptrtoint ([24 x i8]* @.str.2 to i32))
  %124 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %9, align 8
  %125 = call i32 @acpi_ps_execute_table(%struct.acpi_evaluate_info* %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* @ACPI_DB_EVALUATION, align 4
  %127 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 ptrtoint ([22 x i8]* @.str.3 to i32))
  br label %128

128:                                              ; preds = %121, %119, %62
  %129 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %9, align 8
  %130 = icmp ne %struct.acpi_evaluate_info* %129, null
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %9, align 8
  %133 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %132, i32 0, i32 0
  %134 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %133, align 8
  %135 = call i32 @ACPI_FREE(%struct.acpi_evaluate_info* %134)
  %136 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %9, align 8
  %137 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %136, i32 0, i32 0
  store %struct.acpi_evaluate_info* null, %struct.acpi_evaluate_info** %137, align 8
  br label %138

138:                                              ; preds = %131, %128
  %139 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %9, align 8
  %140 = call i32 @ACPI_FREE(%struct.acpi_evaluate_info* %139)
  %141 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %142 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %141)
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @return_ACPI_STATUS(i32 %143)
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_get_table_by_index(i32, %struct.acpi_table_header**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_tb_get_owner_id(i32, i32*) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local %struct.acpi_evaluate_info* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local %struct.acpi_evaluate_info* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node*, i32) #1

declare dso_local i32 @acpi_ps_execute_table(%struct.acpi_evaluate_info*) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_evaluate_info*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
