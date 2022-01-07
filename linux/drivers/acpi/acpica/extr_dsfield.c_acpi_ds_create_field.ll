; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsfield.c_acpi_ds_create_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsfield.c_acpi_ds_create_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %union.acpi_parse_object*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, %union.acpi_parse_object* }
%struct.acpi_namespace_node = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.acpi_walk_state = type { i32 }
%struct.acpi_create_field_info = type { %struct.acpi_namespace_node*, i32, i64, i64 }

@ds_create_field = common dso_local global i32 0, align 4
@ACPI_TYPE_REGION = common dso_local global i32 0, align 4
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@ACPI_NS_SEARCH_PARENT = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_REGION_FIELD = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_PLATFORM_COMM = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_create_field(%union.acpi_parse_object* %0, %struct.acpi_namespace_node* %1, %struct.acpi_walk_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca %struct.acpi_namespace_node*, align 8
  %7 = alloca %struct.acpi_walk_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_parse_object*, align 8
  %10 = alloca %struct.acpi_create_field_info, align 8
  store %union.acpi_parse_object* %0, %union.acpi_parse_object** %5, align 8
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %6, align 8
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %7, align 8
  %11 = load i32, i32* @ds_create_field, align 4
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %13 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %11, %union.acpi_parse_object* %12)
  %14 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %15 = bitcast %union.acpi_parse_object* %14 to %struct.TYPE_7__*
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load %union.acpi_parse_object*, %union.acpi_parse_object** %17, align 8
  store %union.acpi_parse_object* %18, %union.acpi_parse_object** %9, align 8
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %20 = icmp ne %struct.acpi_namespace_node* %19, null
  br i1 %20, label %52, label %21

21:                                               ; preds = %3
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %23 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %26 = bitcast %union.acpi_parse_object* %25 to %struct.TYPE_7__*
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ACPI_TYPE_REGION, align 4
  %31 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %32 = load i32, i32* @ACPI_NS_SEARCH_PARENT, align 4
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %34 = call i32 @acpi_ns_lookup(i32 %24, i32 %29, i32 %30, i32 %31, i32 %32, %struct.acpi_walk_state* %33, %struct.acpi_namespace_node** %6)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @ACPI_FAILURE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %21
  %39 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %40 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %43 = bitcast %union.acpi_parse_object* %42 to %struct.TYPE_7__*
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @ACPI_ERROR_NAMESPACE(i32 %41, i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @return_ACPI_STATUS(i32 %49)
  br label %51

51:                                               ; preds = %38, %21
  br label %52

52:                                               ; preds = %51, %3
  %53 = call i32 @memset(%struct.acpi_create_field_info* %10, i32 0, i32 32)
  %54 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %55 = bitcast %union.acpi_parse_object* %54 to %struct.TYPE_7__*
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %union.acpi_parse_object*, %union.acpi_parse_object** %56, align 8
  store %union.acpi_parse_object* %57, %union.acpi_parse_object** %9, align 8
  %58 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %59 = bitcast %union.acpi_parse_object* %58 to %struct.TYPE_7__*
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 3
  store i64 %62, i64* %63, align 8
  %64 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* @ACPI_TYPE_LOCAL_REGION_FIELD, align 4
  %66 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 1
  store i32 %65, i32* %66, align 8
  %67 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %68 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 0
  store %struct.acpi_namespace_node* %67, %struct.acpi_namespace_node** %68, align 8
  %69 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %70 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %71 = bitcast %union.acpi_parse_object* %70 to %struct.TYPE_7__*
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load %union.acpi_parse_object*, %union.acpi_parse_object** %72, align 8
  %74 = call i32 @acpi_ds_get_field_names(%struct.acpi_create_field_info* %10, %struct.acpi_walk_state* %69, %union.acpi_parse_object* %73)
  store i32 %74, i32* %8, align 4
  %75 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 0
  %76 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %75, align 8
  %77 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ACPI_ADR_SPACE_PLATFORM_COMM, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %102

84:                                               ; preds = %52
  %85 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 0
  %86 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %85, align 8
  %87 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ACPI_ALLOCATE_ZEROED(i32 %91)
  %93 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %94 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %93, i32 0, i32 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  store i32 %92, i32* %97, align 8
  %98 = icmp ne i32 %92, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %84
  %100 = load i32, i32* @AE_NO_MEMORY, align 4
  %101 = call i32 @return_ACPI_STATUS(i32 %100)
  br label %102

102:                                              ; preds = %99, %84, %52
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @return_ACPI_STATUS(i32 %103)
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_parse_object*) #1

declare dso_local i32 @acpi_ns_lookup(i32, i32, i32, i32, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR_NAMESPACE(i32, i32, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @memset(%struct.acpi_create_field_info*, i32, i32) #1

declare dso_local i32 @acpi_ds_get_field_names(%struct.acpi_create_field_info*, %struct.acpi_walk_state*, %union.acpi_parse_object*) #1

declare dso_local i32 @ACPI_ALLOCATE_ZEROED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
