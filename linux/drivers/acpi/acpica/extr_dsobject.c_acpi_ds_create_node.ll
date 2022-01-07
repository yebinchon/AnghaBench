; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsobject.c_acpi_ds_create_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsobject.c_acpi_ds_create_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32 }
%struct.acpi_namespace_node = type { i32 }
%union.acpi_parse_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ds_create_node = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_create_node(%struct.acpi_walk_state* %0, %struct.acpi_namespace_node* %1, %union.acpi_parse_object* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_walk_state*, align 8
  %6 = alloca %struct.acpi_namespace_node*, align 8
  %7 = alloca %union.acpi_parse_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %5, align 8
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %6, align 8
  store %union.acpi_parse_object* %2, %union.acpi_parse_object** %7, align 8
  %10 = load i32, i32* @ds_create_node, align 4
  %11 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %12 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %10, %union.acpi_parse_object* %11)
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %14 = call i64 @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @AE_OK, align 4
  %18 = call i32 @return_ACPI_STATUS(i32 %17)
  br label %19

19:                                               ; preds = %16, %3
  %20 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %21 = bitcast %union.acpi_parse_object* %20 to %struct.TYPE_5__*
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @AE_OK, align 4
  %28 = call i32 @return_ACPI_STATUS(i32 %27)
  br label %29

29:                                               ; preds = %26, %19
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %31 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %32 = bitcast %union.acpi_parse_object* %31 to %struct.TYPE_5__*
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @acpi_ds_build_internal_object(%struct.acpi_walk_state* %30, i32 %35, %union.acpi_operand_object** %9)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @ACPI_FAILURE(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @return_ACPI_STATUS(i32 %41)
  br label %43

43:                                               ; preds = %40, %29
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %45 = bitcast %union.acpi_operand_object* %44 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %49 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %52 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %53 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %50, %union.acpi_operand_object* %51, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %57 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %56)
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @return_ACPI_STATUS(i32 %58)
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_parse_object*) #1

declare dso_local i64 @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ds_build_internal_object(%struct.acpi_walk_state*, i32, %union.acpi_operand_object**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
