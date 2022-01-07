; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_extrace.c_acpi_ex_stop_trace_method.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_extrace.c_acpi_ex_stop_trace_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.acpi_namespace_node = type { i32 }
%struct.acpi_walk_state = type { i32 }

@ex_stop_trace_method = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ACPI_TRACE_AML_METHOD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@acpi_gbl_trace_method_object = common dso_local global %union.acpi_operand_object* null, align 8
@acpi_gbl_trace_flags = common dso_local global i32 0, align 4
@ACPI_TRACE_ONESHOT = common dso_local global i32 0, align 4
@acpi_gbl_trace_method_name = common dso_local global i32* null, align 8
@acpi_gbl_original_dbg_level = common dso_local global i32 0, align 4
@acpi_dbg_level = common dso_local global i32 0, align 4
@acpi_gbl_original_dbg_layer = common dso_local global i32 0, align 4
@acpi_dbg_layer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ex_stop_trace_method(%struct.acpi_namespace_node* %0, %union.acpi_operand_object* %1, %struct.acpi_walk_state* %2) #0 {
  %4 = alloca %struct.acpi_namespace_node*, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %struct.acpi_walk_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %4, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %5, align 8
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %6, align 8
  store i8* null, i8** %7, align 8
  %9 = load i32, i32* @ex_stop_trace_method, align 4
  %10 = call i32 @ACPI_FUNCTION_NAME(i32 %9)
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %12 = icmp ne %struct.acpi_namespace_node* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %15 = load i32, i32* @TRUE, align 4
  %16 = call i8* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node* %14, i32 %15)
  store i8* %16, i8** %7, align 8
  br label %17

17:                                               ; preds = %13, %3
  %18 = call i64 @acpi_ex_interpreter_trace_enabled(i32* null)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load i32, i32* @ACPI_TRACE_AML_METHOD, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %25 = icmp ne %union.acpi_operand_object* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %28 = bitcast %union.acpi_operand_object* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  br label %32

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %26
  %33 = phi i32* [ %30, %26 ], [ null, %31 ]
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @ACPI_TRACE_POINT(i32 %22, i32 %23, i32* %33, i8* %34)
  br label %36

36:                                               ; preds = %32, %17
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_trace_method_object, align 8
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %39 = icmp eq %union.acpi_operand_object* %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32, i32* @acpi_gbl_trace_flags, align 4
  %42 = load i32, i32* @ACPI_TRACE_ONESHOT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32* null, i32** @acpi_gbl_trace_method_name, align 8
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i32, i32* @acpi_gbl_original_dbg_level, align 4
  store i32 %47, i32* @acpi_dbg_level, align 4
  %48 = load i32, i32* @acpi_gbl_original_dbg_layer, align 4
  store i32 %48, i32* @acpi_dbg_layer, align 4
  store %union.acpi_operand_object* null, %union.acpi_operand_object** @acpi_gbl_trace_method_object, align 8
  br label %49

49:                                               ; preds = %46, %36
  %50 = load i8*, i8** %7, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @ACPI_FREE(i8* %53)
  br label %55

55:                                               ; preds = %52, %49
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i8* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node*, i32) #1

declare dso_local i64 @acpi_ex_interpreter_trace_enabled(i32*) #1

declare dso_local i32 @ACPI_TRACE_POINT(i32, i32, i32*, i8*) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
