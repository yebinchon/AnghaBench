; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsargs.c_acpi_ds_execute_arguments.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsargs.c_acpi_ds_execute_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%union.acpi_parse_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.acpi_namespace_node* }
%struct.acpi_walk_state = type { %struct.acpi_namespace_node*, i32 }

@ds_execute_arguments = common dso_local global i32 0, align 4
@AML_INT_EVAL_SUBTREE_OP = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_IMODE_LOAD_PASS1 = common dso_local global i32 0, align 4
@ACPI_PARSE_DEFERRED_OP = common dso_local global i32 0, align 4
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i32, i32*)* @acpi_ds_execute_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ds_execute_arguments(%struct.acpi_namespace_node* %0, %struct.acpi_namespace_node* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_namespace_node*, align 8
  %7 = alloca %struct.acpi_namespace_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.acpi_parse_object*, align 8
  %12 = alloca %struct.acpi_walk_state*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %6, align 8
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* @ds_execute_arguments, align 4
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %13, i32* %14)
  %16 = load i32, i32* @AML_INT_EVAL_SUBTREE_OP, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i32 %16, i32* %17)
  store %union.acpi_parse_object* %18, %union.acpi_parse_object** %11, align 8
  %19 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %20 = icmp ne %union.acpi_parse_object* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @AE_NO_MEMORY, align 4
  %23 = call i32 @return_ACPI_STATUS(i32 %22)
  br label %24

24:                                               ; preds = %21, %4
  %25 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %26 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %27 = bitcast %union.acpi_parse_object* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.acpi_namespace_node* %25, %struct.acpi_namespace_node** %28, align 8
  %29 = call %struct.acpi_walk_state* @acpi_ds_create_walk_state(i32 0, i32* null, i32* null, i32* null)
  store %struct.acpi_walk_state* %29, %struct.acpi_walk_state** %12, align 8
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %31 = icmp ne %struct.acpi_walk_state* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %33, i32* %10, align 4
  br label %104

34:                                               ; preds = %24
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %36 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @ACPI_IMODE_LOAD_PASS1, align 4
  %40 = call i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state* %35, %union.acpi_parse_object* %36, i32* null, i32* %37, i32 %38, i32* null, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @ACPI_FAILURE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %46 = call i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %45)
  br label %104

47:                                               ; preds = %34
  %48 = load i32, i32* @ACPI_PARSE_DEFERRED_OP, align 4
  %49 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %50 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %52 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %53 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %52, i32 0, i32 0
  store %struct.acpi_namespace_node* %51, %struct.acpi_namespace_node** %53, align 8
  %54 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %55 = call i32 @acpi_ps_parse_aml(%struct.acpi_walk_state* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @ACPI_FAILURE(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %104

60:                                               ; preds = %47
  %61 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %62 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %63 = bitcast %union.acpi_parse_object* %62 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store %struct.acpi_namespace_node* %61, %struct.acpi_namespace_node** %64, align 8
  %65 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %66 = call i32 @acpi_ps_delete_parse_tree(%union.acpi_parse_object* %65)
  %67 = load i32, i32* @AML_INT_EVAL_SUBTREE_OP, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i32 %67, i32* %68)
  store %union.acpi_parse_object* %69, %union.acpi_parse_object** %11, align 8
  %70 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %71 = icmp ne %union.acpi_parse_object* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %60
  %73 = load i32, i32* @AE_NO_MEMORY, align 4
  %74 = call i32 @return_ACPI_STATUS(i32 %73)
  br label %75

75:                                               ; preds = %72, %60
  %76 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %77 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %78 = bitcast %union.acpi_parse_object* %77 to %struct.TYPE_2__*
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store %struct.acpi_namespace_node* %76, %struct.acpi_namespace_node** %79, align 8
  %80 = call %struct.acpi_walk_state* @acpi_ds_create_walk_state(i32 0, i32* null, i32* null, i32* null)
  store %struct.acpi_walk_state* %80, %struct.acpi_walk_state** %12, align 8
  %81 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %82 = icmp ne %struct.acpi_walk_state* %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %75
  %84 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %84, i32* %10, align 4
  br label %104

85:                                               ; preds = %75
  %86 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %87 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %91 = call i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state* %86, %union.acpi_parse_object* %87, i32* null, i32* %88, i32 %89, i32* null, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i64 @ACPI_FAILURE(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %97 = call i32 @acpi_ds_delete_walk_state(%struct.acpi_walk_state* %96)
  br label %104

98:                                               ; preds = %85
  %99 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %100 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %101 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %100, i32 0, i32 0
  store %struct.acpi_namespace_node* %99, %struct.acpi_namespace_node** %101, align 8
  %102 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %12, align 8
  %103 = call i32 @acpi_ps_parse_aml(%struct.acpi_walk_state* %102)
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %98, %95, %83, %59, %44, %32
  %105 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %106 = call i32 @acpi_ps_delete_parse_tree(%union.acpi_parse_object* %105)
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @return_ACPI_STATUS(i32 %107)
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, i32*) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_alloc_op(i32, i32*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %struct.acpi_walk_state* @acpi_ds_create_walk_state(i32, i32*, i32*, i32*) #1

declare dso_local i32 @acpi_ds_init_aml_walk(%struct.acpi_walk_state*, %union.acpi_parse_object*, i32*, i32*, i32, i32*, i32) #1

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
