; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_auto_serialize_method.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_auto_serialize_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%union.acpi_parse_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.acpi_namespace_node* }
%struct.acpi_walk_state = type { i32 }

@ds_auto_serialize_method = common dso_local global i32 0, align 4
@ACPI_DB_PARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Method auto-serialization parse [%4.4s] %p\0A\00", align 1
@AML_METHOD_OP = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@acpi_ds_detect_named_opcodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_auto_serialize_method(%struct.acpi_namespace_node* %0, %union.acpi_operand_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_namespace_node*, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_parse_object*, align 8
  %8 = alloca %struct.acpi_walk_state*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %4, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %5, align 8
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %7, align 8
  %9 = load i32, i32* @ds_auto_serialize_method, align 4
  %10 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %11 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %9, %struct.acpi_namespace_node* %10)
  %12 = load i32, i32* @ACPI_DB_PARSE, align 4
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %14 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %13)
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %16 = ptrtoint %struct.acpi_namespace_node* %15 to i32
  %17 = call i32 @ACPI_DEBUG_PRINT(i32 %16)
  %18 = load i32, i32* @AML_METHOD_OP, align 4
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %20 = bitcast %union.acpi_operand_object* %19 to %struct.TYPE_6__*
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i32 %18, i32 %22)
  store %union.acpi_parse_object* %23, %union.acpi_parse_object** %7, align 8
  %24 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %25 = icmp ne %union.acpi_parse_object* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @AE_NO_MEMORY, align 4
  %28 = call i32 @return_ACPI_STATUS(i32 %27)
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %31 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %32 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @acpi_ps_set_name(%union.acpi_parse_object* %30, i32 %34)
  %36 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %38 = bitcast %union.acpi_parse_object* %37 to %struct.TYPE_5__*
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store %struct.acpi_namespace_node* %36, %struct.acpi_namespace_node** %39, align 8
  %40 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %41 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.acpi_walk_state* @acpi_ds_create_walk_state(i32 %42, i32* null, i32* null, i32* null)
  store %struct.acpi_walk_state* %43, %struct.acpi_walk_state** %8, align 8
  %44 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %8, align 8
  %45 = icmp ne %struct.acpi_walk_state* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %29
  %47 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %48 = call i32 @acpi_ps_free_op(%union.acpi_parse_object* %47)
  %49 = load i32, i32* @AE_NO_MEMORY, align 4
  %50 = call i32 @return_ACPI_STATUS(i32 %49)
  br label %51

51:                                               ; preds = %46, %29
  %52 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %8, align 8
  %53 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %54 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %56 = bitcast %union.acpi_operand_object* %55 to %struct.TYPE_6__*
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %60 = bitcast %union.acpi_operand_object* %59 to %struct.TYPE_6__*
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state* %52, %union.acpi_parse_object* %53, %struct.acpi_namespace_node* %54, i32 %58, i32 %62, i32* null, i32 0)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @ACPI_FAILURE(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %51
  %68 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %8, align 8
  %69 = call i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %68)
  %70 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %71 = call i32 @acpi_ps_free_op(%union.acpi_parse_object* %70)
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @return_ACPI_STATUS(i32 %72)
  br label %74

74:                                               ; preds = %67, %51
  %75 = load i32, i32* @acpi_ds_detect_named_opcodes, align 4
  %76 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %8, align 8
  %77 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %8, align 8
  %79 = call i32 @acpi_ps_parse_aml(%struct.acpi_walk_state* %78)
  store i32 %79, i32* %6, align 4
  %80 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %81 = call i32 @acpi_ps_delete_parse_tree(%union.acpi_parse_object* %80)
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @return_ACPI_STATUS(i32 %82)
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_namespace_node*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node*) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_alloc_op(i32, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ps_set_name(%union.acpi_parse_object*, i32) #1

declare dso_local %struct.acpi_walk_state* @acpi_ds_create_walk_state(i32, i32*, i32*, i32*) #1

declare dso_local i32 @acpi_ps_free_op(%union.acpi_parse_object*) #1

declare dso_local i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, i32, i32, i32*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ps_parse_aml(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ps_delete_parse_tree(%union.acpi_parse_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
