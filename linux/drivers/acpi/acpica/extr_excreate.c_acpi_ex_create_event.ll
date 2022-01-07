; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_excreate.c_acpi_ex_create_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_excreate.c_acpi_ex_create_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i64* }
%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_namespace_node = type { i32 }

@ex_create_event = common dso_local global i32 0, align 4
@ACPI_TYPE_EVENT = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_NO_UNIT_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_create_event(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_walk_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  %6 = load i32, i32* @ex_create_event, align 4
  %7 = call i32 @ACPI_FUNCTION_TRACE(i32 %6)
  %8 = load i32, i32* @ACPI_TYPE_EVENT, align 4
  %9 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %8)
  store %union.acpi_operand_object* %9, %union.acpi_operand_object** %5, align 8
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %11 = icmp ne %union.acpi_operand_object* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %13, i32* %4, align 4
  br label %34

14:                                               ; preds = %1
  %15 = load i32, i32* @ACPI_NO_UNIT_LIMIT, align 4
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %17 = bitcast %union.acpi_operand_object* %16 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @acpi_os_create_semaphore(i32 %15, i32 0, i32* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @ACPI_FAILURE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %34

24:                                               ; preds = %14
  %25 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %26 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.acpi_namespace_node*
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %32 = load i32, i32* @ACPI_TYPE_EVENT, align 4
  %33 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %30, %union.acpi_operand_object* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %24, %23, %12
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %36 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %35)
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @return_ACPI_STATUS(i32 %37)
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @acpi_os_create_semaphore(i32, i32, i32*) #1

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
