; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsfield.c_acpi_ds_create_bank_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsfield.c_acpi_ds_create_bank_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %union.acpi_parse_object*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, %union.acpi_parse_object* }
%struct.acpi_namespace_node = type { i32 }
%struct.acpi_walk_state = type { i32 }
%struct.acpi_create_field_info = type { %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i32, i64, %struct.acpi_namespace_node* }

@ds_create_bank_field = common dso_local global i32 0, align 4
@ACPI_TYPE_REGION = common dso_local global i32 0, align 4
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@ACPI_NS_SEARCH_PARENT = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_BANK_FIELD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_create_bank_field(%union.acpi_parse_object* %0, %struct.acpi_namespace_node* %1, %struct.acpi_walk_state* %2) #0 {
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
  %11 = load i32, i32* @ds_create_bank_field, align 4
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %13 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %11, %union.acpi_parse_object* %12)
  %14 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %15 = bitcast %union.acpi_parse_object* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
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
  %26 = bitcast %union.acpi_parse_object* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
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
  %43 = bitcast %union.acpi_parse_object* %42 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @ACPI_ERROR_NAMESPACE(i32 %41, i32 %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @return_ACPI_STATUS(i32 %49)
  br label %51

51:                                               ; preds = %38, %21
  br label %52

52:                                               ; preds = %51, %3
  %53 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %54 = bitcast %union.acpi_parse_object* %53 to %struct.TYPE_4__*
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %union.acpi_parse_object*, %union.acpi_parse_object** %55, align 8
  store %union.acpi_parse_object* %56, %union.acpi_parse_object** %9, align 8
  %57 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %58 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %61 = bitcast %union.acpi_parse_object* %60 to %struct.TYPE_4__*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %66 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %67 = load i32, i32* @ACPI_NS_SEARCH_PARENT, align 4
  %68 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %69 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 4
  %70 = call i32 @acpi_ns_lookup(i32 %59, i32 %64, i32 %65, i32 %66, i32 %67, %struct.acpi_walk_state* %68, %struct.acpi_namespace_node** %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @ACPI_FAILURE(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %52
  %75 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %76 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %79 = bitcast %union.acpi_parse_object* %78 to %struct.TYPE_4__*
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @ACPI_ERROR_NAMESPACE(i32 %77, i32 %82, i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @return_ACPI_STATUS(i32 %85)
  br label %87

87:                                               ; preds = %74, %52
  %88 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %89 = bitcast %union.acpi_parse_object* %88 to %struct.TYPE_4__*
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %union.acpi_parse_object*, %union.acpi_parse_object** %90, align 8
  store %union.acpi_parse_object* %91, %union.acpi_parse_object** %9, align 8
  %92 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %93 = bitcast %union.acpi_parse_object* %92 to %struct.TYPE_4__*
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load %union.acpi_parse_object*, %union.acpi_parse_object** %94, align 8
  store %union.acpi_parse_object* %95, %union.acpi_parse_object** %9, align 8
  %96 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %97 = bitcast %union.acpi_parse_object* %96 to %struct.TYPE_4__*
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 3
  store i64 %100, i64* %101, align 8
  %102 = load i32, i32* @ACPI_TYPE_LOCAL_BANK_FIELD, align 4
  %103 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 2
  store i32 %102, i32* %103, align 8
  %104 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %105 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 1
  store %struct.acpi_namespace_node* %104, %struct.acpi_namespace_node** %105, align 8
  %106 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %107 = bitcast %union.acpi_parse_object* %106 to %struct.acpi_namespace_node*
  %108 = getelementptr inbounds %struct.acpi_create_field_info, %struct.acpi_create_field_info* %10, i32 0, i32 0
  store %struct.acpi_namespace_node* %107, %struct.acpi_namespace_node** %108, align 8
  %109 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %110 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %111 = bitcast %union.acpi_parse_object* %110 to %struct.TYPE_4__*
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %union.acpi_parse_object*, %union.acpi_parse_object** %112, align 8
  %114 = call i32 @acpi_ds_get_field_names(%struct.acpi_create_field_info* %10, %struct.acpi_walk_state* %109, %union.acpi_parse_object* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @return_ACPI_STATUS(i32 %115)
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_parse_object*) #1

declare dso_local i32 @acpi_ns_lookup(i32, i32, i32, i32, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #1

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
