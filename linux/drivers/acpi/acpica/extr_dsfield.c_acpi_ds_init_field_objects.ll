; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsfield.c_acpi_ds_init_field_objects.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsfield.c_acpi_ds_init_field_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %union.acpi_parse_object*, %struct.acpi_namespace_node* }
%struct.acpi_namespace_node = type { i32 }
%struct.acpi_walk_state = type { i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@ds_init_field_objects = common dso_local global i32 0, align 4
@ACPI_PARSE_EXECUTE = common dso_local global i32 0, align 4
@ACPI_PARSE_DEFERRED_OP = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Parse deferred mode is not set\00", align 1
@AE_AML_INTERNAL = common dso_local global i64 0, align 8
@ACPI_TYPE_LOCAL_REGION_FIELD = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_BANK_FIELD = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_INDEX_FIELD = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i64 0, align 8
@ACPI_NS_NO_UPSEARCH = common dso_local global i32 0, align 4
@ACPI_NS_DONT_OPEN_SCOPE = common dso_local global i32 0, align 4
@ACPI_NS_ERROR_IF_FOUND = common dso_local global i32 0, align 4
@ACPI_PARSE_MODULE_LEVEL = common dso_local global i32 0, align 4
@ACPI_NS_TEMPORARY = common dso_local global i32 0, align 4
@AML_INT_NAMEDFIELD_OP = common dso_local global i64 0, align 8
@ACPI_IMODE_LOAD_PASS1 = common dso_local global i32 0, align 4
@AE_ALREADY_EXISTS = common dso_local global i64 0, align 8
@ACPI_NS_OVERRIDE_IF_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_ds_init_field_objects(%union.acpi_parse_object* %0, %struct.acpi_walk_state* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %union.acpi_parse_object*, align 8
  %5 = alloca %struct.acpi_walk_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.acpi_parse_object*, align 8
  %8 = alloca %struct.acpi_namespace_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %union.acpi_parse_object* %0, %union.acpi_parse_object** %4, align 8
  store %struct.acpi_walk_state* %1, %struct.acpi_walk_state** %5, align 8
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @ds_init_field_objects, align 4
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %13 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %11, %union.acpi_parse_object* %12)
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %15 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ACPI_PARSE_EXECUTE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %2
  %21 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %22 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ACPI_PARSE_DEFERRED_OP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i64, i64* @AE_OK, align 8
  %29 = call i32 @return_ACPI_STATUS(i64 %28)
  br label %30

30:                                               ; preds = %27, %20
  %31 = load i32, i32* @AE_INFO, align 4
  %32 = call i32 @ACPI_ERROR(i32 ptrtoint ([31 x i8]* @.str to i32))
  %33 = load i64, i64* @AE_AML_INTERNAL, align 8
  %34 = call i32 @return_ACPI_STATUS(i64 %33)
  br label %35

35:                                               ; preds = %30, %2
  %36 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %37 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %51 [
    i32 129, label %39
    i32 130, label %43
    i32 128, label %47
  ]

39:                                               ; preds = %35
  %40 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %41 = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %40, i32 2)
  store %union.acpi_parse_object* %41, %union.acpi_parse_object** %7, align 8
  %42 = load i32, i32* @ACPI_TYPE_LOCAL_REGION_FIELD, align 4
  store i32 %42, i32* %9, align 4
  br label %54

43:                                               ; preds = %35
  %44 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %45 = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %44, i32 4)
  store %union.acpi_parse_object* %45, %union.acpi_parse_object** %7, align 8
  %46 = load i32, i32* @ACPI_TYPE_LOCAL_BANK_FIELD, align 4
  store i32 %46, i32* %9, align 4
  br label %54

47:                                               ; preds = %35
  %48 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %49 = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %48, i32 3)
  store %union.acpi_parse_object* %49, %union.acpi_parse_object** %7, align 8
  %50 = load i32, i32* @ACPI_TYPE_LOCAL_INDEX_FIELD, align 4
  store i32 %50, i32* %9, align 4
  br label %54

51:                                               ; preds = %35
  %52 = load i64, i64* @AE_BAD_PARAMETER, align 8
  %53 = call i32 @return_ACPI_STATUS(i64 %52)
  br label %54

54:                                               ; preds = %51, %47, %43, %39
  %55 = load i32, i32* @ACPI_NS_NO_UPSEARCH, align 4
  %56 = load i32, i32* @ACPI_NS_DONT_OPEN_SCOPE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @ACPI_NS_ERROR_IF_FOUND, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %10, align 4
  %60 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %61 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %54
  %65 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %66 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ACPI_PARSE_MODULE_LEVEL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* @ACPI_NS_TEMPORARY, align 4
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %71, %64, %54
  br label %76

76:                                               ; preds = %125, %75
  %77 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %78 = icmp ne %union.acpi_parse_object* %77, null
  br i1 %78, label %79, label %130

79:                                               ; preds = %76
  %80 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %81 = bitcast %union.acpi_parse_object* %80 to %struct.TYPE_4__*
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @AML_INT_NAMEDFIELD_OP, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %125

86:                                               ; preds = %79
  %87 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %88 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %91 = bitcast %union.acpi_parse_object* %90 to %struct.TYPE_3__*
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = bitcast i32* %92 to i8*
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @ACPI_IMODE_LOAD_PASS1, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %98 = call i64 @acpi_ns_lookup(i32 %89, i8* %93, i32 %94, i32 %95, i32 %96, %struct.acpi_walk_state* %97, %struct.acpi_namespace_node** %8)
  store i64 %98, i64* %6, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i64 @ACPI_FAILURE(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %86
  %103 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %104 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %107 = bitcast %union.acpi_parse_object* %106 to %struct.TYPE_3__*
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = bitcast i32* %108 to i8*
  %110 = load i64, i64* %6, align 8
  %111 = call i32 @ACPI_ERROR_NAMESPACE(i32 %105, i8* %109, i64 %110)
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* @AE_ALREADY_EXISTS, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %102
  %116 = load i64, i64* %6, align 8
  %117 = call i32 @return_ACPI_STATUS(i64 %116)
  br label %118

118:                                              ; preds = %115, %102
  %119 = load i64, i64* @AE_OK, align 8
  store i64 %119, i64* %6, align 8
  br label %120

120:                                              ; preds = %118, %86
  %121 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %8, align 8
  %122 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %123 = bitcast %union.acpi_parse_object* %122 to %struct.TYPE_4__*
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  store %struct.acpi_namespace_node* %121, %struct.acpi_namespace_node** %124, align 8
  br label %125

125:                                              ; preds = %120, %79
  %126 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %127 = bitcast %union.acpi_parse_object* %126 to %struct.TYPE_4__*
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load %union.acpi_parse_object*, %union.acpi_parse_object** %128, align 8
  store %union.acpi_parse_object* %129, %union.acpi_parse_object** %7, align 8
  br label %76

130:                                              ; preds = %76
  %131 = load i64, i64* @AE_OK, align 8
  %132 = call i32 @return_ACPI_STATUS(i64 %131)
  %133 = load i64, i64* %3, align 8
  ret i64 %133
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_parse_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object*, i32) #1

declare dso_local i64 @acpi_ns_lookup(i32, i8*, i32, i32, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @ACPI_ERROR_NAMESPACE(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
