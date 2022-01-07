; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsparse.c_acpi_ns_one_complete_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsparse.c_acpi_ns_one_complete_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%union.acpi_parse_object = type { i32 }
%struct.acpi_walk_state = type { i32 }
%struct.acpi_table_header = type { i32, i32 }

@ns_one_complete_parse = common dso_local global i32 0, align 4
@AE_BAD_HEADER = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_SIG_OSDT = common dso_local global i32 0, align 4
@ACPI_IMODE_LOAD_PASS1 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@acpi_gbl_root_node = common dso_local global %struct.acpi_namespace_node* null, align 8
@ACPI_TYPE_METHOD = common dso_local global i32 0, align 4
@ACPI_DB_PARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"*PARSE* pass %u parse\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_one_complete_parse(i64 %0, i64 %1, %struct.acpi_namespace_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.acpi_namespace_node*, align 8
  %8 = alloca %union.acpi_parse_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.acpi_walk_state*, align 8
  %13 = alloca %struct.acpi_table_header*, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.acpi_namespace_node* %2, %struct.acpi_namespace_node** %7, align 8
  %15 = load i32, i32* @ns_one_complete_parse, align 4
  %16 = call i32 @ACPI_FUNCTION_TRACE(i32 %15)
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @acpi_get_table_by_index(i64 %17, %struct.acpi_table_header** %13)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @ACPI_FAILURE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @return_ACPI_STATUS(i32 %23)
  br label %25

25:                                               ; preds = %22, %3
  %26 = load %struct.acpi_table_header*, %struct.acpi_table_header** %13, align 8
  %27 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 8
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @AE_BAD_HEADER, align 4
  %33 = call i32 @return_ACPI_STATUS(i32 %32)
  br label %34

34:                                               ; preds = %31, %25
  %35 = load %struct.acpi_table_header*, %struct.acpi_table_header** %13, align 8
  %36 = bitcast %struct.acpi_table_header* %35 to i32*
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  store i32* %37, i32** %11, align 8
  %38 = load %struct.acpi_table_header*, %struct.acpi_table_header** %13, align 8
  %39 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, 8
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @acpi_tb_get_owner_id(i64 %43, i32* %14)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @ACPI_FAILURE(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @return_ACPI_STATUS(i32 %49)
  br label %51

51:                                               ; preds = %48, %34
  %52 = load i32*, i32** %11, align 8
  %53 = call %union.acpi_parse_object* @acpi_ps_create_scope_op(i32* %52)
  store %union.acpi_parse_object* %53, %union.acpi_parse_object** %8, align 8
  %54 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %55 = icmp ne %union.acpi_parse_object* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @AE_NO_MEMORY, align 4
  %58 = call i32 @return_ACPI_STATUS(i32 %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %14, align 4
  %61 = call %struct.acpi_walk_state* @acpi_ds_create_walk_state(i32 %60, i32* null, i32* null, i32* null)
  store %struct.acpi_walk_state* %61, %struct.acpi_walk_state** %12, align 8
  %62 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %63 = icmp ne %struct.acpi_walk_state* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %66 = call i32 @acpi_ps_free_op(%union.acpi_parse_object* %65)
  %67 = load i32, i32* @AE_NO_MEMORY, align 4
  %68 = call i32 @return_ACPI_STATUS(i32 %67)
  br label %69

69:                                               ; preds = %64, %59
  %70 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %71 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %5, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state* %70, %union.acpi_parse_object* %71, i32* null, i32* %72, i64 %73, i32* null, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @ACPI_FAILURE(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %69
  %81 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %82 = call i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %81)
  br label %126

83:                                               ; preds = %69
  %84 = load %struct.acpi_table_header*, %struct.acpi_table_header** %13, align 8
  %85 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ACPI_SIG_OSDT, align 4
  %88 = call i64 @ACPI_COMPARE_NAMESEG(i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* @ACPI_IMODE_LOAD_PASS1, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* @TRUE, align 4
  %96 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %97 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %94, %90, %83
  %99 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %100 = icmp ne %struct.acpi_namespace_node* %99, null
  br i1 %100, label %101, label %117

101:                                              ; preds = %98
  %102 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %103 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8
  %104 = icmp ne %struct.acpi_namespace_node* %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %107 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %108 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %109 = call i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node* %106, i32 %107, %struct.acpi_walk_state* %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i64 @ACPI_FAILURE(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %115 = call i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %114)
  br label %126

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116, %101, %98
  %118 = load i32, i32* @ACPI_DB_PARSE, align 4
  %119 = load i64, i64* %5, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @ACPI_DEBUG_PRINT(i32 %120)
  %122 = call i32 (...) @acpi_ex_enter_interpreter()
  %123 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %124 = call i32 @acpi_ps_parse_aml(%struct.acpi_walk_state* %123)
  store i32 %124, i32* %9, align 4
  %125 = call i32 (...) @acpi_ex_exit_interpreter()
  br label %126

126:                                              ; preds = %117, %113, %80
  %127 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %128 = call i32 @acpi_ps_delete_parse_tree(%union.acpi_parse_object* %127)
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @return_ACPI_STATUS(i32 %129)
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_get_table_by_index(i64, %struct.acpi_table_header**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_tb_get_owner_id(i64, i32*) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_create_scope_op(i32*) #1

declare dso_local %struct.acpi_walk_state* @acpi_ds_create_walk_state(i32, i32*, i32*, i32*) #1

declare dso_local i32 @acpi_ps_free_op(%union.acpi_parse_object*) #1

declare dso_local i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state*, %union.acpi_parse_object*, i32*, i32*, i64, i32*, i32) #1

declare dso_local i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state*) #1

declare dso_local i64 @ACPI_COMPARE_NAMESEG(i32, i32) #1

declare dso_local i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node*, i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ex_enter_interpreter(...) #1

declare dso_local i32 @acpi_ps_parse_aml(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ex_exit_interpreter(...) #1

declare dso_local i32 @acpi_ps_delete_parse_tree(%union.acpi_parse_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
