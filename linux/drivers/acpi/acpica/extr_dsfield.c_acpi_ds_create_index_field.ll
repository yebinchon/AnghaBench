; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsfield.c_acpi_ds_create_index_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsfield.c_acpi_ds_create_index_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %union.acpi_parse_object*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, %union.acpi_parse_object* }
%struct.acpi_namespace_node = type { i32 }
%struct.acpi_walk_state = type { i32 }
%struct.acpi_create_field_info = type { %struct.acpi_namespace_node*, i32, i64, i32, i32 }

@ds_create_index_field = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@ACPI_NS_SEARCH_PARENT = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_INDEX_FIELD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_create_index_field(%union.acpi_parse_object* %0, %struct.acpi_namespace_node* %1, %struct.acpi_walk_state* %2) #0 {
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
  %11 = load i32, i32* @ds_create_index_field, align 4
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %13 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %11, %union.acpi_parse_object* %12)
  %14 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %15 = bitcast %union.acpi_parse_object* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load %union.acpi_parse_object*, %union.acpi_parse_object** %17, align 8
  store %union.acpi_parse_object* %18, %union.acpi_parse_object** %9, align 8
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %20 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %23 = bitcast %union.acpi_parse_object* %22 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %28 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %29 = load i32, i32* @ACPI_NS_SEARCH_PARENT, align 4
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %31 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 4
  %32 = call i32 @acpi_ns_lookup(i32 %21, i32 %26, i32 %27, i32 %28, i32 %29, %struct.acpi_walk_state* %30, i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %3
  %37 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %38 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %41 = bitcast %union.acpi_parse_object* %40 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @ACPI_ERROR_NAMESPACE(i32 %39, i32 %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @return_ACPI_STATUS(i32 %47)
  br label %49

49:                                               ; preds = %36, %3
  %50 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %51 = bitcast %union.acpi_parse_object* %50 to %struct.TYPE_4__*
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %union.acpi_parse_object*, %union.acpi_parse_object** %52, align 8
  store %union.acpi_parse_object* %53, %union.acpi_parse_object** %9, align 8
  %54 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %55 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %58 = bitcast %union.acpi_parse_object* %57 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %63 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %64 = load i32, i32* @ACPI_NS_SEARCH_PARENT, align 4
  %65 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %66 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 3
  %67 = call i32 @acpi_ns_lookup(i32 %56, i32 %61, i32 %62, i32 %63, i32 %64, %struct.acpi_walk_state* %65, i32* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @ACPI_FAILURE(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %49
  %72 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %73 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %76 = bitcast %union.acpi_parse_object* %75 to %struct.TYPE_4__*
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @ACPI_ERROR_NAMESPACE(i32 %74, i32 %79, i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @return_ACPI_STATUS(i32 %82)
  br label %84

84:                                               ; preds = %71, %49
  %85 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %86 = bitcast %union.acpi_parse_object* %85 to %struct.TYPE_4__*
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %union.acpi_parse_object*, %union.acpi_parse_object** %87, align 8
  store %union.acpi_parse_object* %88, %union.acpi_parse_object** %9, align 8
  %89 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %90 = bitcast %union.acpi_parse_object* %89 to %struct.TYPE_4__*
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 2
  store i64 %93, i64* %94, align 8
  %95 = load i32, i32* @ACPI_TYPE_LOCAL_INDEX_FIELD, align 4
  %96 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 1
  store i32 %95, i32* %96, align 8
  %97 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %98 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 0
  store %struct.acpi_namespace_node* %97, %struct.acpi_namespace_node** %98, align 8
  %99 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %100 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %101 = bitcast %union.acpi_parse_object* %100 to %struct.TYPE_4__*
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %union.acpi_parse_object*, %union.acpi_parse_object** %102, align 8
  %104 = call i32 @acpi_ds_get_field_names(%struct.acpi_create_field_info* %10, %struct.acpi_walk_state* %99, %union.acpi_parse_object* %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @return_ACPI_STATUS(i32 %105)
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_parse_object*) #1

declare dso_local i32 @acpi_ns_lookup(i32, i32, i32, i32, i32, %struct.acpi_walk_state*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR_NAMESPACE(i32, i32, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ds_get_field_names(%struct.acpi_create_field_info*, %struct.acpi_walk_state*, %union.acpi_parse_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
