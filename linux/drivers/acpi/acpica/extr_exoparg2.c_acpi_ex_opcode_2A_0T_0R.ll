; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exoparg2.c_acpi_ex_opcode_2A_0T_0R.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exoparg2.c_acpi_ex_opcode_2A_0T_0R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, %union.acpi_operand_object** }
%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_namespace_node = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_opcode_2A_0T_0R = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unexpected notify object type [%s]\00", align 1
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unknown AML opcode 0x%X\00", align 1
@AE_AML_BAD_OPCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_opcode_2A_0T_0R(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_walk_state*, align 8
  %4 = alloca %union.acpi_operand_object**, align 8
  %5 = alloca %struct.acpi_namespace_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 1
  %10 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %9, align 8
  %11 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %10, i64 0
  store %union.acpi_operand_object** %11, %union.acpi_operand_object*** %4, align 8
  %12 = load i32, i32* @AE_OK, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @ex_opcode_2A_0T_0R, align 4
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %15 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @acpi_ps_get_opcode_name(i32 %16)
  %18 = call i32 @ACPI_FUNCTION_TRACE_STR(i32 %13, i32 %17)
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %20 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %48 [
    i32 128, label %22
  ]

22:                                               ; preds = %1
  %23 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %24 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %23, i64 0
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %24, align 8
  %26 = bitcast %union.acpi_operand_object* %25 to %struct.acpi_namespace_node*
  store %struct.acpi_namespace_node* %26, %struct.acpi_namespace_node** %5, align 8
  %27 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %28 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %27, i64 1
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %28, align 8
  %30 = bitcast %union.acpi_operand_object* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %34 = call i32 @acpi_ev_is_notify_object(%struct.acpi_namespace_node* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %22
  %37 = load i32, i32* @AE_INFO, align 4
  %38 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %39 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @acpi_ut_get_type_name(i32 %40)
  %42 = call i32 @ACPI_ERROR(i32 %41)
  %43 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %43, i32* %7, align 4
  br label %55

44:                                               ; preds = %22
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @acpi_ev_queue_notify_request(%struct.acpi_namespace_node* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %55

48:                                               ; preds = %1
  %49 = load i32, i32* @AE_INFO, align 4
  %50 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %51 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ACPI_ERROR(i32 %52)
  %54 = load i32, i32* @AE_AML_BAD_OPCODE, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %48, %44, %36
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @return_ACPI_STATUS(i32 %56)
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_STR(i32, i32) #1

declare dso_local i32 @acpi_ps_get_opcode_name(i32) #1

declare dso_local i32 @acpi_ev_is_notify_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local i32 @acpi_ev_queue_notify_request(%struct.acpi_namespace_node*, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
