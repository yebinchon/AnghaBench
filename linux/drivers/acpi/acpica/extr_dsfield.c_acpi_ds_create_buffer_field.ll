; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsfield.c_acpi_ds_create_buffer_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsfield.c_acpi_ds_create_buffer_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.acpi_namespace_node*, %struct.TYPE_7__ }
%struct.acpi_namespace_node = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.acpi_walk_state = type { i32, i32, i64, %struct.acpi_namespace_node* }
%union.acpi_operand_object = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.acpi_namespace_node* }
%struct.TYPE_9__ = type { %union.acpi_operand_object* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@ds_create_buffer_field = common dso_local global i32 0, align 4
@AML_CREATE_FIELD_OP = common dso_local global i64 0, align 8
@AE_AML_NO_OPERAND = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_PARSE_EXECUTE = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Parse execute mode is not set\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@ACPI_NS_NO_UPSEARCH = common dso_local global i32 0, align 4
@ACPI_NS_DONT_OPEN_SCOPE = common dso_local global i32 0, align 4
@ACPI_NS_ERROR_IF_FOUND = common dso_local global i32 0, align 4
@ACPI_PARSE_MODULE_LEVEL = common dso_local global i32 0, align 4
@ACPI_NS_TEMPORARY = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_IMODE_LOAD_PASS1 = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER_FIELD = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_create_buffer_field(%union.acpi_parse_object* %0, %struct.acpi_walk_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_parse_object*, align 8
  %5 = alloca %struct.acpi_walk_state*, align 8
  %6 = alloca %union.acpi_parse_object*, align 8
  %7 = alloca %struct.acpi_namespace_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_operand_object*, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca i32, align 4
  store %union.acpi_parse_object* %0, %union.acpi_parse_object** %4, align 8
  store %struct.acpi_walk_state* %1, %struct.acpi_walk_state** %5, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %10, align 8
  %12 = load i32, i32* @ds_create_buffer_field, align 4
  %13 = call i32 @ACPI_FUNCTION_TRACE(i32 %12)
  %14 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %15 = bitcast %union.acpi_parse_object* %14 to %struct.TYPE_8__*
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AML_CREATE_FIELD_OP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %22 = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %21, i32 3)
  store %union.acpi_parse_object* %22, %union.acpi_parse_object** %6, align 8
  br label %26

23:                                               ; preds = %2
  %24 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %25 = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %24, i32 2)
  store %union.acpi_parse_object* %25, %union.acpi_parse_object** %6, align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %28 = icmp ne %union.acpi_parse_object* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @AE_AML_NO_OPERAND, align 4
  %31 = call i32 @return_ACPI_STATUS(i32 %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %34 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %33, i32 0, i32 3
  %35 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %34, align 8
  %36 = icmp ne %struct.acpi_namespace_node* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %39 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %38, i32 0, i32 3
  %40 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %39, align 8
  store %struct.acpi_namespace_node* %40, %struct.acpi_namespace_node** %7, align 8
  %41 = load i32, i32* @AE_OK, align 4
  store i32 %41, i32* %8, align 4
  br label %106

42:                                               ; preds = %32
  %43 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %44 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ACPI_PARSE_EXECUTE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @AE_INFO, align 4
  %51 = call i32 @ACPI_ERROR(i32 ptrtoint ([30 x i8]* @.str to i32))
  %52 = load i32, i32* @AE_AML_INTERNAL, align 4
  %53 = call i32 @return_ACPI_STATUS(i32 %52)
  br label %54

54:                                               ; preds = %49, %42
  %55 = load i32, i32* @ACPI_NS_NO_UPSEARCH, align 4
  %56 = load i32, i32* @ACPI_NS_DONT_OPEN_SCOPE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @ACPI_NS_ERROR_IF_FOUND, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %11, align 4
  %60 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %61 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %60, i32 0, i32 2
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
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %71, %64, %54
  %76 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %77 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %80 = bitcast %union.acpi_parse_object* %79 to %struct.TYPE_8__*
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %85 = load i32, i32* @ACPI_IMODE_LOAD_PASS1, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %88 = call i32 @acpi_ns_lookup(i32 %78, i32 %83, i32 %84, i32 %85, i32 %86, %struct.acpi_walk_state* %87, %struct.acpi_namespace_node** %7)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @ACPI_FAILURE(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %75
  %93 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %94 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %97 = bitcast %union.acpi_parse_object* %96 to %struct.TYPE_8__*
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @ACPI_ERROR_NAMESPACE(i32 %95, i32 %100, i32 %101)
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @return_ACPI_STATUS(i32 %103)
  br label %105

105:                                              ; preds = %92, %75
  br label %106

106:                                              ; preds = %105, %37
  %107 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %108 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %109 = bitcast %union.acpi_parse_object* %108 to %struct.TYPE_8__*
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  store %struct.acpi_namespace_node* %107, %struct.acpi_namespace_node** %110, align 8
  %111 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %112 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %111)
  store %union.acpi_operand_object* %112, %union.acpi_operand_object** %9, align 8
  %113 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %114 = icmp ne %union.acpi_operand_object* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load i32, i32* @AE_OK, align 4
  %117 = call i32 @return_ACPI_STATUS(i32 %116)
  br label %118

118:                                              ; preds = %115, %106
  %119 = load i32, i32* @ACPI_TYPE_BUFFER_FIELD, align 4
  %120 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %119)
  store %union.acpi_operand_object* %120, %union.acpi_operand_object** %9, align 8
  %121 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %122 = icmp ne %union.acpi_operand_object* %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %124, i32* %8, align 4
  br label %157

125:                                              ; preds = %118
  %126 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %127 = bitcast %union.acpi_operand_object* %126 to %struct.TYPE_9__*
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load %union.acpi_operand_object*, %union.acpi_operand_object** %128, align 8
  store %union.acpi_operand_object* %129, %union.acpi_operand_object** %10, align 8
  %130 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %131 = bitcast %union.acpi_parse_object* %130 to %struct.TYPE_11__*
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %135 = bitcast %union.acpi_operand_object* %134 to %struct.TYPE_10__*
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 4
  %137 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %138 = bitcast %union.acpi_parse_object* %137 to %struct.TYPE_11__*
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %142 = bitcast %union.acpi_operand_object* %141 to %struct.TYPE_10__*
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  store i32 %140, i32* %143, align 8
  %144 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %145 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %146 = bitcast %union.acpi_operand_object* %145 to %struct.TYPE_12__*
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  store %struct.acpi_namespace_node* %144, %struct.acpi_namespace_node** %147, align 8
  %148 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %149 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %150 = load i32, i32* @ACPI_TYPE_BUFFER_FIELD, align 4
  %151 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %148, %union.acpi_operand_object* %149, i32 %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = call i64 @ACPI_FAILURE(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %125
  br label %157

156:                                              ; preds = %125
  br label %157

157:                                              ; preds = %156, %155, %123
  %158 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %159 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %158)
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @return_ACPI_STATUS(i32 %160)
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object*, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ns_lookup(i32, i32, i32, i32, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR_NAMESPACE(i32, i32, i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
