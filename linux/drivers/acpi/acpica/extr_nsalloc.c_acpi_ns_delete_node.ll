; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsalloc.c_acpi_ns_delete_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsalloc.c_acpi_ns_delete_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { %union.acpi_operand_object* }
%union.acpi_operand_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %union.acpi_operand_object* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 (%struct.acpi_namespace_node.0*, i32)* }
%struct.acpi_namespace_node.0 = type opaque

@ns_delete_node = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_DATA = common dso_local global i64 0, align 8
@acpi_gbl_root_node = common dso_local global %struct.acpi_namespace_node* null, align 8
@acpi_gbl_namespace_cache = common dso_local global i32 0, align 4
@acpi_gbl_ns_node_list = common dso_local global %struct.TYPE_6__* null, align 8
@ACPI_DB_ALLOCATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Node %p, Remaining %X\0A\00", align 1
@acpi_gbl_current_node_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ns_delete_node(%struct.acpi_namespace_node* %0) #0 {
  %2 = alloca %struct.acpi_namespace_node*, align 8
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %2, align 8
  %5 = load i32, i32* @ns_delete_node, align 4
  %6 = call i32 @ACPI_FUNCTION_NAME(i32 %5)
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %8 = icmp ne %struct.acpi_namespace_node* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @return_VOID, align 4
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %13 = call i32 @acpi_ns_detach_object(%struct.acpi_namespace_node* %12)
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %15 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %14, i32 0, i32 0
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %15, align 8
  store %union.acpi_operand_object* %16, %union.acpi_operand_object** %3, align 8
  br label %17

17:                                               ; preds = %47, %11
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %19 = icmp ne %union.acpi_operand_object* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %22 = bitcast %union.acpi_operand_object* %21 to %struct.TYPE_5__*
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ACPI_TYPE_LOCAL_DATA, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %20, %17
  %28 = phi i1 [ false, %17 ], [ %26, %20 ]
  br i1 %28, label %29, label %55

29:                                               ; preds = %27
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %31 = bitcast %union.acpi_operand_object* %30 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32 (%struct.acpi_namespace_node.0*, i32)*, i32 (%struct.acpi_namespace_node.0*, i32)** %32, align 8
  %34 = icmp ne i32 (%struct.acpi_namespace_node.0*, i32)* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %37 = bitcast %union.acpi_operand_object* %36 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32 (%struct.acpi_namespace_node.0*, i32)*, i32 (%struct.acpi_namespace_node.0*, i32)** %38, align 8
  %40 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %41 = bitcast %struct.acpi_namespace_node* %40 to %struct.acpi_namespace_node.0*
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %43 = bitcast %union.acpi_operand_object* %42 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %39(%struct.acpi_namespace_node.0* %41, i32 %45)
  br label %47

47:                                               ; preds = %35, %29
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %49 = bitcast %union.acpi_operand_object* %48 to %struct.TYPE_5__*
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %50, align 8
  store %union.acpi_operand_object* %51, %union.acpi_operand_object** %4, align 8
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %53 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %52)
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  store %union.acpi_operand_object* %54, %union.acpi_operand_object** %3, align 8
  br label %17

55:                                               ; preds = %27
  %56 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %57 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8
  %58 = icmp eq %struct.acpi_namespace_node* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %73

60:                                               ; preds = %55
  %61 = load i32, i32* @acpi_gbl_namespace_cache, align 4
  %62 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %63 = call i32 @acpi_os_release_object(i32 %61, %struct.acpi_namespace_node* %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @acpi_gbl_ns_node_list, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = call i32 @ACPI_MEM_TRACKING(i32 %66)
  %69 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %70 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %71 = load i32, i32* @acpi_gbl_current_node_count, align 4
  %72 = call i32 @ACPI_DEBUG_PRINT(i32 %71)
  br label %73

73:                                               ; preds = %60, %59
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @acpi_ns_detach_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_os_release_object(i32, %struct.acpi_namespace_node*) #1

declare dso_local i32 @ACPI_MEM_TRACKING(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
