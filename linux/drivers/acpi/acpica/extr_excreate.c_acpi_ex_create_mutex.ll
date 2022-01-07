; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_excreate.c_acpi_ex_create_mutex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_excreate.c_acpi_ex_create_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%union.acpi_operand_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.acpi_namespace_node*, i64, i32 }
%struct.acpi_namespace_node = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_create_mutex = common dso_local global i32 0, align 4
@ACPI_WALK_OPERANDS = common dso_local global i32 0, align 4
@ACPI_TYPE_MUTEX = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_create_mutex(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_walk_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  %6 = load i32, i32* @AE_OK, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @ex_create_mutex, align 4
  %8 = load i32, i32* @ACPI_WALK_OPERANDS, align 4
  %9 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %7, i32 %8)
  %10 = load i32, i32* @ACPI_TYPE_MUTEX, align 4
  %11 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %10)
  store %union.acpi_operand_object* %11, %union.acpi_operand_object** %5, align 8
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %13 = icmp ne %union.acpi_operand_object* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %15, i32* %4, align 4
  br label %53

16:                                               ; preds = %1
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %18 = bitcast %union.acpi_operand_object* %17 to %struct.TYPE_6__*
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = call i32 @acpi_os_create_mutex(i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @ACPI_FAILURE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %53

25:                                               ; preds = %16
  %26 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %27 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %28, i64 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %35 = bitcast %union.acpi_operand_object* %34 to %struct.TYPE_6__*
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i64 %33, i64* %36, align 8
  %37 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %39, i64 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = bitcast %struct.TYPE_5__* %41 to %struct.acpi_namespace_node*
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %44 = bitcast %union.acpi_operand_object* %43 to %struct.TYPE_6__*
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store %struct.acpi_namespace_node* %42, %struct.acpi_namespace_node** %45, align 8
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %47 = bitcast %union.acpi_operand_object* %46 to %struct.TYPE_6__*
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %48, align 8
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %51 = load i32, i32* @ACPI_TYPE_MUTEX, align 4
  %52 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %49, %union.acpi_operand_object* %50, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %25, %24, %14
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %55 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %54)
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @return_ACPI_STATUS(i32 %56)
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @acpi_os_create_mutex(i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
