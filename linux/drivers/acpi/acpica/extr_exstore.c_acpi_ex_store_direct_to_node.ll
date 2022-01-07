; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exstore.c_acpi_ex_store_direct_to_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exstore.c_acpi_ex_store_direct_to_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_namespace_node = type { i32 }
%struct.acpi_walk_state = type { i32 }

@ex_store_direct_to_node = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Storing [%s] (%p) directly into node [%s] (%p) with no implicit conversion\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.acpi_operand_object*, %struct.acpi_namespace_node*, %struct.acpi_walk_state*)* @acpi_ex_store_direct_to_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ex_store_direct_to_node(%union.acpi_operand_object* %0, %struct.acpi_namespace_node* %1, %struct.acpi_walk_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %struct.acpi_namespace_node*, align 8
  %7 = alloca %struct.acpi_walk_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %5, align 8
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %6, align 8
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %7, align 8
  %10 = load i32, i32* @ex_store_direct_to_node, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load i32, i32* @ACPI_DB_EXEC, align 4
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %14 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %13)
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %17 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @acpi_ut_get_type_name(i32 %18)
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %21 = ptrtoint %struct.acpi_namespace_node* %20 to i32
  %22 = call i32 @ACPI_DEBUG_PRINT(i32 %21)
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %24 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %25 = call i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object* %23, %union.acpi_operand_object** %9, %struct.acpi_walk_state* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @ACPI_FAILURE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @return_ACPI_STATUS(i32 %30)
  br label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %36 = bitcast %union.acpi_operand_object* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %33, %union.acpi_operand_object* %34, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %41 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %40)
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @return_ACPI_STATUS(i32 %42)
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object*, %union.acpi_operand_object**, %struct.acpi_walk_state*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
