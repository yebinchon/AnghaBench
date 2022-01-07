; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_excreate.c_acpi_ex_create_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_excreate.c_acpi_ex_create_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.acpi_namespace_node* }
%struct.acpi_namespace_node = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.acpi_namespace_node* }
%union.acpi_operand_object = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32*, %struct.acpi_namespace_node*, i64, i64, i32 }
%struct.TYPE_12__ = type { %struct.acpi_namespace_node*, i32*, i32, i32* }
%struct.TYPE_14__ = type { i32 }

@ex_create_region = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Invalid/unknown Address Space ID: 0x%2.2X\00", align 1
@ACPI_DB_LOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Region Type - %s (0x%X)\0A\00", align 1
@ACPI_TYPE_REGION = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AOPOBJ_SETUP_COMPLETE = common dso_local global i32 0, align 4
@AOPOBJ_REG_CONNECTED = common dso_local global i32 0, align 4
@AOPOBJ_OBJECT_INITIALIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_create_region(i32* %0, i32 %1, i32 %2, %struct.acpi_walk_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.acpi_walk_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.acpi_operand_object*, align 8
  %12 = alloca %struct.acpi_namespace_node*, align 8
  %13 = alloca %union.acpi_operand_object*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.acpi_walk_state* %3, %struct.acpi_walk_state** %9, align 8
  %14 = load i32, i32* @ex_create_region, align 4
  %15 = call i32 @ACPI_FUNCTION_TRACE(i32 %14)
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %17 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %20, align 8
  store %struct.acpi_namespace_node* %21, %struct.acpi_namespace_node** %12, align 8
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %12, align 8
  %23 = call i64 @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @AE_OK, align 4
  %27 = call i32 @return_ACPI_STATUS(i32 %26)
  br label %28

28:                                               ; preds = %25, %4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @acpi_is_valid_space_id(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @AE_INFO, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @ACPI_ERROR(i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* @ACPI_DB_LOAD, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @acpi_ut_get_region_name(i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ACPI_DEBUG_PRINT(i32 %40)
  %42 = load i32, i32* @ACPI_TYPE_REGION, align 4
  %43 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %42)
  store %union.acpi_operand_object* %43, %union.acpi_operand_object** %11, align 8
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %45 = icmp ne %union.acpi_operand_object* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %47, i32* %10, align 4
  br label %114

48:                                               ; preds = %36
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %50 = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %49)
  store %union.acpi_operand_object* %50, %union.acpi_operand_object** %13, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %53 = bitcast %union.acpi_operand_object* %52 to %struct.TYPE_12__*
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  store i32* %51, i32** %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %57 = bitcast %union.acpi_operand_object* %56 to %struct.TYPE_12__*
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 8
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %60 = bitcast %union.acpi_operand_object* %59 to %struct.TYPE_12__*
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  %62 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %63 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = icmp ne %struct.TYPE_11__* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %48
  %67 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %68 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %71, align 8
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %74 = bitcast %union.acpi_operand_object* %73 to %struct.TYPE_12__*
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  store %struct.acpi_namespace_node* %72, %struct.acpi_namespace_node** %75, align 8
  br label %81

76:                                               ; preds = %48
  %77 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %12, align 8
  %78 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %79 = bitcast %union.acpi_operand_object* %78 to %struct.TYPE_12__*
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  store %struct.acpi_namespace_node* %77, %struct.acpi_namespace_node** %80, align 8
  br label %81

81:                                               ; preds = %76, %66
  %82 = load i32, i32* %8, align 4
  %83 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %84 = bitcast %union.acpi_operand_object* %83 to %struct.TYPE_13__*
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 4
  store i32 %82, i32* %85, align 8
  %86 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %87 = bitcast %union.acpi_operand_object* %86 to %struct.TYPE_13__*
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 3
  store i64 0, i64* %88, align 8
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %90 = bitcast %union.acpi_operand_object* %89 to %struct.TYPE_13__*
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %12, align 8
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %94 = bitcast %union.acpi_operand_object* %93 to %struct.TYPE_13__*
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  store %struct.acpi_namespace_node* %92, %struct.acpi_namespace_node** %95, align 8
  %96 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %97 = bitcast %union.acpi_operand_object* %96 to %struct.TYPE_13__*
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  store i32* null, i32** %98, align 8
  %99 = load i32, i32* @AOPOBJ_SETUP_COMPLETE, align 4
  %100 = load i32, i32* @AOPOBJ_REG_CONNECTED, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @AOPOBJ_OBJECT_INITIALIZED, align 4
  %103 = or i32 %101, %102
  %104 = xor i32 %103, -1
  %105 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %106 = bitcast %union.acpi_operand_object* %105 to %struct.TYPE_14__*
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, %104
  store i32 %109, i32* %107, align 8
  %110 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %12, align 8
  %111 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %112 = load i32, i32* @ACPI_TYPE_REGION, align 4
  %113 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %110, %union.acpi_operand_object* %111, i32 %112)
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %81, %46
  %115 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %116 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %115)
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @return_ACPI_STATUS(i32 %117)
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i64 @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_is_valid_space_id(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_region_name(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
