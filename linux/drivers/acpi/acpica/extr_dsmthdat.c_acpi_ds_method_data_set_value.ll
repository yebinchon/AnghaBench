; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsmthdat.c_acpi_ds_method_data_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsmthdat.c_acpi_ds_method_data_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.acpi_walk_state = type { i32 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object* }

@ds_method_data_set_value = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"NewObj %p Type %2.2X, Refs=%u [%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %union.acpi_operand_object*, %struct.acpi_walk_state*)* @acpi_ds_method_data_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ds_method_data_set_value(i32 %0, i32 %1, %union.acpi_operand_object* %2, %struct.acpi_walk_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca %struct.acpi_walk_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.acpi_namespace_node*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %union.acpi_operand_object* %2, %union.acpi_operand_object** %8, align 8
  store %struct.acpi_walk_state* %3, %struct.acpi_walk_state** %9, align 8
  %12 = load i32, i32* @ds_method_data_set_value, align 4
  %13 = call i32 @ACPI_FUNCTION_TRACE(i32 %12)
  %14 = load i32, i32* @ACPI_DB_EXEC, align 4
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %18 = bitcast %union.acpi_operand_object* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %22 = bitcast %union.acpi_operand_object* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @acpi_ut_get_type_name(i32 %24)
  %26 = call i32 @ACPI_DEBUG_PRINT(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %30 = call i32 @acpi_ds_method_data_get_node(i32 %27, i32 %28, %struct.acpi_walk_state* %29, %struct.acpi_namespace_node** %11)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @ACPI_FAILURE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @return_ACPI_STATUS(i32 %35)
  br label %37

37:                                               ; preds = %34, %4
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %39 = call i32 @acpi_ut_add_reference(%union.acpi_operand_object* %38)
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %41 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %42 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %41, i32 0, i32 0
  store %union.acpi_operand_object* %40, %union.acpi_operand_object** %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @return_ACPI_STATUS(i32 %43)
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local i32 @acpi_ds_method_data_get_node(i32, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ut_add_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
