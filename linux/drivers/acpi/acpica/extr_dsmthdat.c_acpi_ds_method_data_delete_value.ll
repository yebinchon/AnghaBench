; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsmthdat.c_acpi_ds_method_data_delete_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsmthdat.c_acpi_ds_method_data_delete_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32 }
%struct.acpi_namespace_node = type { i32* }
%union.acpi_operand_object = type { i32 }

@ds_method_data_delete_value = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_OPERAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.acpi_walk_state*)* @acpi_ds_method_data_delete_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_ds_method_data_delete_value(i32 %0, i32 %1, %struct.acpi_walk_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_walk_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_namespace_node*, align 8
  %9 = alloca %union.acpi_operand_object*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %6, align 8
  %10 = load i32, i32* @ds_method_data_delete_value, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %15 = call i32 @acpi_ds_method_data_get_node(i32 %12, i32 %13, %struct.acpi_walk_state* %14, %struct.acpi_namespace_node** %8)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @ACPI_FAILURE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @return_VOID, align 4
  br label %21

21:                                               ; preds = %19, %3
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %8, align 8
  %23 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %22)
  store %union.acpi_operand_object* %23, %union.acpi_operand_object** %9, align 8
  %24 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %8, align 8
  %25 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %27 = icmp ne %union.acpi_operand_object* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %30 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %29)
  %31 = load i64, i64* @ACPI_DESC_TYPE_OPERAND, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %35 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %34)
  br label %36

36:                                               ; preds = %33, %28, %21
  %37 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ds_method_data_get_node(i32, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
