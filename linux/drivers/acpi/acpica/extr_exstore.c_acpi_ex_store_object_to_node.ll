; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exstore.c_acpi_ex_store_object_to_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exstore.c_acpi_ex_store_object_to_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_namespace_node = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.acpi_walk_state = type { i64, i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_store_object_to_node = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Storing %p [%s] to node %p [%s]\0A\00", align 1
@AML_COPY_OBJECT_OP = common dso_local global i64 0, align 8
@AML_STORE_OP = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Cannot assign type [%s] to [Package] (source must be type Pkg)\00", align 1
@AE_AML_TARGET_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"Target must be [Buffer/Integer/String/Reference], found [%s] (%4.4s)\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Store type [%s] into [%s] via Convert/Attach\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_store_object_to_node(%union.acpi_operand_object* %0, %struct.acpi_namespace_node* %1, %struct.acpi_walk_state* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %struct.acpi_namespace_node*, align 8
  %8 = alloca %struct.acpi_walk_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.acpi_operand_object*, align 8
  %12 = alloca %union.acpi_operand_object*, align 8
  %13 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %6, align 8
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %7, align 8
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @AE_OK, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @ex_store_object_to_node, align 4
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %17 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %15, %union.acpi_operand_object* %16)
  %18 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %19 = call i32 @acpi_ns_get_type(%struct.acpi_namespace_node* %18)
  store i32 %19, i32* %13, align 4
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %21 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %20)
  store %union.acpi_operand_object* %21, %union.acpi_operand_object** %11, align 8
  %22 = load i32, i32* @ACPI_DB_EXEC, align 4
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %25 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %24)
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @acpi_ut_get_type_name(i32 %27)
  %29 = call i32 @ACPI_DEBUG_PRINT(i32 %28)
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %8, align 8
  %31 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AML_COPY_OBJECT_OP, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %73

35:                                               ; preds = %4
  %36 = load i32, i32* %13, align 4
  switch i32 %36, label %71 [
    i32 133, label %37
    i32 140, label %58
    i32 139, label %58
    i32 134, label %58
    i32 130, label %58
    i32 132, label %58
    i32 131, label %58
    i32 128, label %58
  ]

37:                                               ; preds = %35
  %38 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %8, align 8
  %39 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AML_STORE_OP, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %45 = bitcast %union.acpi_operand_object* %44 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 133
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i32, i32* @AE_INFO, align 4
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %52 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %51)
  %53 = call i32 @ACPI_ERROR(i32 %52)
  %54 = load i32, i32* @AE_AML_TARGET_TYPE, align 4
  %55 = call i32 @return_ACPI_STATUS(i32 %54)
  br label %56

56:                                               ; preds = %49, %43
  br label %72

57:                                               ; preds = %37
  br label %58

58:                                               ; preds = %35, %35, %35, %35, %35, %35, %35, %57
  %59 = load i32, i32* @AE_INFO, align 4
  %60 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %61 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @acpi_ut_get_type_name(i32 %62)
  %64 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %65 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ACPI_ERROR(i32 %67)
  %69 = load i32, i32* @AE_AML_TARGET_TYPE, align 4
  %70 = call i32 @return_ACPI_STATUS(i32 %69)
  br label %71

71:                                               ; preds = %35, %58
  br label %72

72:                                               ; preds = %71, %56
  br label %73

73:                                               ; preds = %72, %4
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %8, align 8
  %76 = call i32 @acpi_ex_resolve_object(%union.acpi_operand_object** %6, i32 %74, %struct.acpi_walk_state* %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i64 @ACPI_FAILURE(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @return_ACPI_STATUS(i32 %81)
  br label %83

83:                                               ; preds = %80, %73
  %84 = load i32, i32* %13, align 4
  switch i32 %84, label %135 [
    i32 138, label %85
    i32 129, label %85
    i32 142, label %85
    i32 141, label %129
    i32 135, label %129
    i32 137, label %129
    i32 136, label %129
  ]

85:                                               ; preds = %83, %83, %83
  %86 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %8, align 8
  %87 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AML_COPY_OBJECT_OP, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %91, %85
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %96 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %97 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %8, align 8
  %98 = call i32 @acpi_ex_store_direct_to_node(%union.acpi_operand_object* %95, %struct.acpi_namespace_node* %96, %struct.acpi_walk_state* %97)
  store i32 %98, i32* %10, align 4
  br label %140

99:                                               ; preds = %91
  %100 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %101 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %102 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %8, align 8
  %103 = call i32 @acpi_ex_store_object_to_object(%union.acpi_operand_object* %100, %union.acpi_operand_object* %101, %union.acpi_operand_object** %12, %struct.acpi_walk_state* %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i64 @ACPI_FAILURE(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @return_ACPI_STATUS(i32 %108)
  br label %110

110:                                              ; preds = %107, %99
  %111 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %112 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %113 = icmp ne %union.acpi_operand_object* %111, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  %115 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %116 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %117 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %118 = bitcast %union.acpi_operand_object* %117 to %struct.TYPE_4__*
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %115, %union.acpi_operand_object* %116, i32 %120)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* @ACPI_DB_EXEC, align 4
  %123 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %124 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %123)
  %125 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %126 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %125)
  %127 = call i32 @ACPI_DEBUG_PRINT(i32 %126)
  br label %128

128:                                              ; preds = %114, %110
  br label %140

129:                                              ; preds = %83, %83, %83, %83
  %130 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %131 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %132 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %8, align 8
  %133 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %132, i32 0, i32 1
  %134 = call i32 @acpi_ex_write_data_to_field(%union.acpi_operand_object* %130, %union.acpi_operand_object* %131, i32* %133)
  store i32 %134, i32* %10, align 4
  br label %140

135:                                              ; preds = %83
  %136 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %137 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %138 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %8, align 8
  %139 = call i32 @acpi_ex_store_direct_to_node(%union.acpi_operand_object* %136, %struct.acpi_namespace_node* %137, %struct.acpi_walk_state* %138)
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %135, %129, %128, %94
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @return_ACPI_STATUS(i32 %141)
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ns_get_type(%struct.acpi_namespace_node*) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ex_resolve_object(%union.acpi_operand_object**, i32, %struct.acpi_walk_state*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ex_store_direct_to_node(%union.acpi_operand_object*, %struct.acpi_namespace_node*, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ex_store_object_to_object(%union.acpi_operand_object*, %union.acpi_operand_object*, %union.acpi_operand_object**, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #1

declare dso_local i32 @acpi_ex_write_data_to_field(%union.acpi_operand_object*, %union.acpi_operand_object*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
