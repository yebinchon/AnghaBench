; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psxface.c_acpi_ps_execute_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psxface.c_acpi_ps_execute_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%union.acpi_parse_object = type { i32 }
%struct.acpi_walk_state = type { i32, i32, i32 }

@ps_execute_table = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ACPI_METHOD_MODULE_LEVEL = common dso_local global i32 0, align 4
@ACPI_PARSE_MODULE_LEVEL = common dso_local global i32 0, align 4
@acpi_gbl_root_node = common dso_local global i32 0, align 4
@ACPI_TYPE_METHOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ps_execute_table(%struct.acpi_evaluate_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_evaluate_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca %struct.acpi_walk_state*, align 8
  store %struct.acpi_evaluate_info* %0, %struct.acpi_evaluate_info** %3, align 8
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %5, align 8
  store %struct.acpi_walk_state* null, %struct.acpi_walk_state** %6, align 8
  %7 = load i32, i32* @ps_execute_table, align 4
  %8 = call i32 @ACPI_FUNCTION_TRACE(i32 %7)
  %9 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %union.acpi_parse_object* @acpi_ps_create_scope_op(i32 %14)
  store %union.acpi_parse_object* %15, %union.acpi_parse_object** %5, align 8
  %16 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %17 = icmp ne %union.acpi_parse_object* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %19, i32* %4, align 4
  br label %111

20:                                               ; preds = %1
  %21 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.acpi_walk_state* @acpi_ds_create_walk_state(i32 %26, i32* null, i32* null, i32* null)
  store %struct.acpi_walk_state* %27, %struct.acpi_walk_state** %6, align 8
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %29 = icmp ne %struct.acpi_walk_state* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %31, i32* %4, align 4
  br label %111

32:                                               ; preds = %20
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %34 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %35 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %36 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %39 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %45 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %51 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %52 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state* %33, %union.acpi_parse_object* %34, i32 %37, i32 %43, i32 %49, %struct.acpi_evaluate_info* %50, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @ACPI_FAILURE(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %32
  br label %111

59:                                               ; preds = %32
  %60 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %61 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %64 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @FALSE, align 4
  %66 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %67 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %69 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ACPI_METHOD_MODULE_LEVEL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %59
  %78 = load i32, i32* @ACPI_PARSE_MODULE_LEVEL, align 4
  %79 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %80 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %59
  %84 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %85 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %83
  %89 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %90 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @acpi_gbl_root_node, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %88
  %95 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %3, align 8
  %96 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %99 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %100 = call i32 @acpi_ds_scope_stack_push(i32 %97, i32 %98, %struct.acpi_walk_state* %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i64 @ACPI_FAILURE(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %111

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105, %88, %83
  %107 = call i32 (...) @acpi_ex_enter_interpreter()
  %108 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %109 = call i32 @acpi_ps_parse_aml(%struct.acpi_walk_state* %108)
  store i32 %109, i32* %4, align 4
  %110 = call i32 (...) @acpi_ex_exit_interpreter()
  store %struct.acpi_walk_state* null, %struct.acpi_walk_state** %6, align 8
  br label %111

111:                                              ; preds = %106, %104, %58, %30, %18
  %112 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %113 = icmp ne %struct.acpi_walk_state* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %116 = call i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %119 = icmp ne %union.acpi_parse_object* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %122 = call i32 @acpi_ps_delete_parse_tree(%union.acpi_parse_object* %121)
  br label %123

123:                                              ; preds = %120, %117
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @return_ACPI_STATUS(i32 %124)
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_create_scope_op(i32) #1

declare dso_local %struct.acpi_walk_state* @acpi_ds_create_walk_state(i32, i32*, i32*, i32*) #1

declare dso_local i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state*, %union.acpi_parse_object*, i32, i32, i32, %struct.acpi_evaluate_info*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ds_scope_stack_push(i32, i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ex_enter_interpreter(...) #1

declare dso_local i32 @acpi_ps_parse_aml(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ex_exit_interpreter(...) #1

declare dso_local i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ps_delete_parse_tree(%union.acpi_parse_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
