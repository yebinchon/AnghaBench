; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_call_control_method.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_call_control_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_thread_state = type { i32 }
%struct.acpi_walk_state = type { i64, i32, i32*, i32, i32**, %struct.acpi_namespace_node*, i32 }
%struct.acpi_namespace_node = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.acpi_parse_object = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 (%struct.acpi_walk_state.0*)* }
%struct.acpi_walk_state.0 = type opaque
%struct.acpi_evaluate_info = type { i32** }

@ds_call_control_method = common dso_local global i32 0, align 4
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Calling method %p, currentstate=%p\0A\00", align 1
@AE_NULL_ENTRY = common dso_local global i64 0, align 8
@AE_NULL_OBJECT = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i64 0, align 8
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"**** Begin nested execution of [%4.4s] **** WalkState=%p\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@ACPI_DB_EVALUATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"%-26s:  %*s%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"   Nested method call\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@ACPI_METHOD_INTERNAL_ONLY = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@AE_CTRL_TERMINATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_ds_call_control_method(%struct.acpi_thread_state* %0, %struct.acpi_walk_state* %1, %union.acpi_parse_object* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.acpi_thread_state*, align 8
  %6 = alloca %struct.acpi_walk_state*, align 8
  %7 = alloca %union.acpi_parse_object*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.acpi_namespace_node*, align 8
  %10 = alloca %struct.acpi_walk_state*, align 8
  %11 = alloca %union.acpi_operand_object*, align 8
  %12 = alloca %struct.acpi_evaluate_info*, align 8
  %13 = alloca i64, align 8
  store %struct.acpi_thread_state* %0, %struct.acpi_thread_state** %5, align 8
  store %struct.acpi_walk_state* %1, %struct.acpi_walk_state** %6, align 8
  store %union.acpi_parse_object* %2, %union.acpi_parse_object** %7, align 8
  store %struct.acpi_walk_state* null, %struct.acpi_walk_state** %10, align 8
  %14 = load i32, i32* @ds_call_control_method, align 4
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %16 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %14, %struct.acpi_walk_state* %15)
  %17 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %19 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %22 = ptrtoint %struct.acpi_walk_state* %21 to i32
  %23 = call i32 @ACPI_DEBUG_PRINT(i32 %22)
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %25 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %24, i32 0, i32 5
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %25, align 8
  store %struct.acpi_namespace_node* %26, %struct.acpi_namespace_node** %9, align 8
  %27 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %28 = icmp ne %struct.acpi_namespace_node* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i64, i64* @AE_NULL_ENTRY, align 8
  %31 = call i32 @return_ACPI_STATUS(i64 %30)
  br label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %34 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %33)
  store %union.acpi_operand_object* %34, %union.acpi_operand_object** %11, align 8
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %36 = icmp ne %union.acpi_operand_object* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* @AE_NULL_OBJECT, align 8
  %39 = call i32 @return_ACPI_STATUS(i64 %38)
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %43 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %44 = call i64 @acpi_ds_begin_method_execution(%struct.acpi_namespace_node* %41, %union.acpi_operand_object* %42, %struct.acpi_walk_state* %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @ACPI_FAILURE(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @return_ACPI_STATUS(i64 %49)
  br label %51

51:                                               ; preds = %48, %40
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %53 = bitcast %union.acpi_operand_object* %52 to %struct.TYPE_6__*
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %57 = load %struct.acpi_thread_state*, %struct.acpi_thread_state** %5, align 8
  %58 = call %struct.acpi_walk_state* @acpi_ds_create_walk_state(i32 %55, i32* null, %union.acpi_operand_object* %56, %struct.acpi_thread_state* %57)
  store %struct.acpi_walk_state* %58, %struct.acpi_walk_state** %10, align 8
  %59 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %60 = icmp ne %struct.acpi_walk_state* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %51
  %62 = load i64, i64* @AE_NO_MEMORY, align 8
  store i64 %62, i64* %8, align 8
  br label %187

63:                                               ; preds = %51
  %64 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %65 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %64, i32 0, i32 4
  %66 = load i32**, i32*** %65, align 8
  %67 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %68 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32*, i32** %66, i64 %69
  store i32* null, i32** %70, align 8
  %71 = call %struct.acpi_evaluate_info* @ACPI_ALLOCATE_ZEROED(i32 8)
  store %struct.acpi_evaluate_info* %71, %struct.acpi_evaluate_info** %12, align 8
  %72 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %12, align 8
  %73 = icmp ne %struct.acpi_evaluate_info* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %63
  %75 = load i64, i64* @AE_NO_MEMORY, align 8
  store i64 %75, i64* %8, align 8
  br label %187

76:                                               ; preds = %63
  %77 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %78 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %77, i32 0, i32 4
  %79 = load i32**, i32*** %78, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 0
  %81 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %12, align 8
  %82 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %81, i32 0, i32 0
  store i32** %80, i32*** %82, align 8
  %83 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %84 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %86 = bitcast %union.acpi_operand_object* %85 to %struct.TYPE_6__*
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %90 = bitcast %union.acpi_operand_object* %89 to %struct.TYPE_6__*
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %12, align 8
  %94 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %95 = call i64 @acpi_ds_init_aml_walk(%struct.acpi_walk_state* %83, i32* null, %struct.acpi_namespace_node* %84, i32 %88, i32 %92, %struct.acpi_evaluate_info* %93, i32 %94)
  store i64 %95, i64* %8, align 8
  %96 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %12, align 8
  %97 = call i32 @ACPI_FREE(%struct.acpi_evaluate_info* %96)
  %98 = load i64, i64* %8, align 8
  %99 = call i64 @ACPI_FAILURE(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %76
  br label %187

102:                                              ; preds = %76
  %103 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %104 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  %107 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %108 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  store i64 0, i64* %13, align 8
  br label %109

109:                                              ; preds = %129, %102
  %110 = load i64, i64* %13, align 8
  %111 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %112 = bitcast %union.acpi_operand_object* %111 to %struct.TYPE_6__*
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ult i64 %110, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %109
  %117 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %118 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %117, i32 0, i32 4
  %119 = load i32**, i32*** %118, align 8
  %120 = load i64, i64* %13, align 8
  %121 = getelementptr inbounds i32*, i32** %119, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @acpi_ut_remove_reference(i32* %122)
  %124 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %125 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %124, i32 0, i32 4
  %126 = load i32**, i32*** %125, align 8
  %127 = load i64, i64* %13, align 8
  %128 = getelementptr inbounds i32*, i32** %126, i64 %127
  store i32* null, i32** %128, align 8
  br label %129

129:                                              ; preds = %116
  %130 = load i64, i64* %13, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %13, align 8
  br label %109

132:                                              ; preds = %109
  %133 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %134 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %133, i32 0, i32 0
  store i64 0, i64* %134, align 8
  %135 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %136 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %137 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %141 = ptrtoint %struct.acpi_walk_state* %140 to i32
  %142 = call i32 @ACPI_DEBUG_PRINT(i32 %141)
  %143 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %144 = load i32, i32* @TRUE, align 4
  %145 = call i32* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node* %143, i32 %144)
  %146 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %147 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %146, i32 0, i32 2
  store i32* %145, i32** %147, align 8
  %148 = load i32, i32* @TRUE, align 4
  %149 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %150 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* @ACPI_DB_EVALUATION, align 4
  %152 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %153 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = mul nsw i32 %154, 3
  %156 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %157 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = ptrtoint i32* %159 to i32
  %161 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %160)
  %162 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %163 = bitcast %union.acpi_operand_object* %162 to %struct.TYPE_6__*
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @ACPI_METHOD_INTERNAL_ONLY, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %184

169:                                              ; preds = %132
  %170 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %171 = bitcast %union.acpi_operand_object* %170 to %struct.TYPE_6__*
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i64 (%struct.acpi_walk_state.0*)*, i64 (%struct.acpi_walk_state.0*)** %173, align 8
  %175 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %176 = bitcast %struct.acpi_walk_state* %175 to %struct.acpi_walk_state.0*
  %177 = call i64 %174(%struct.acpi_walk_state.0* %176)
  store i64 %177, i64* %8, align 8
  %178 = load i64, i64* %8, align 8
  %179 = load i64, i64* @AE_OK, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %169
  %182 = load i64, i64* @AE_CTRL_TERMINATE, align 8
  store i64 %182, i64* %8, align 8
  br label %183

183:                                              ; preds = %181, %169
  br label %184

184:                                              ; preds = %183, %132
  %185 = load i64, i64* %8, align 8
  %186 = call i32 @return_ACPI_STATUS(i64 %185)
  br label %187

187:                                              ; preds = %184, %101, %74, %61
  %188 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %189 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %190 = call i32 @acpi_ds_terminate_control_method(%union.acpi_operand_object* %188, %struct.acpi_walk_state* %189)
  %191 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %192 = call i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %191)
  %193 = load i64, i64* %8, align 8
  %194 = call i32 @return_ACPI_STATUS(i64 %193)
  %195 = load i64, i64* %4, align 8
  ret i64 %195
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i64 @acpi_ds_begin_method_execution(%struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_walk_state*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local %struct.acpi_walk_state* @acpi_ds_create_walk_state(i32, i32*, %union.acpi_operand_object*, %struct.acpi_thread_state*) #1

declare dso_local %struct.acpi_evaluate_info* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i64 @acpi_ds_init_aml_walk(%struct.acpi_walk_state*, i32*, %struct.acpi_namespace_node*, i32, i32, %struct.acpi_evaluate_info*, i32) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_evaluate_info*) #1

declare dso_local i32 @acpi_ut_remove_reference(i32*) #1

declare dso_local i32* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node*, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local i32 @acpi_ds_terminate_control_method(%union.acpi_operand_object*, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
