; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsmthdat.c_acpi_ds_store_object_to_local.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsmthdat.c_acpi_ds_store_object_to_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.acpi_walk_state = type { i32 }
%struct.acpi_namespace_node = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

@ds_store_object_to_local = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Type=%2.2X Index=%u Obj=%p\0A\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Obj=%p already installed!\0A\00", align 1
@ACPI_REFCLASS_ARG = common dso_local global i64 0, align 8
@ACPI_DESC_TYPE_OPERAND = common dso_local global i64 0, align 8
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i64 0, align 8
@ACPI_REFCLASS_REFOF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"Arg (%p) is an ObjRef(Node), storing in node %p\0A\00", align 1
@ACPI_NO_IMPLICIT_CONVERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_store_object_to_local(i64 %0, i32 %1, %union.acpi_operand_object* %2, %struct.acpi_walk_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca %struct.acpi_walk_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.acpi_namespace_node*, align 8
  %12 = alloca %union.acpi_operand_object*, align 8
  %13 = alloca %union.acpi_operand_object*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store %union.acpi_operand_object* %2, %union.acpi_operand_object** %8, align 8
  store %struct.acpi_walk_state* %3, %struct.acpi_walk_state** %9, align 8
  %14 = load i32, i32* @ds_store_object_to_local, align 4
  %15 = call i32 @ACPI_FUNCTION_TRACE(i32 %14)
  %16 = load i32, i32* @ACPI_DB_EXEC, align 4
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %20 = ptrtoint %union.acpi_operand_object* %19 to i32
  %21 = call i32 @ACPI_DEBUG_PRINT(i32 %20)
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %23 = icmp ne %union.acpi_operand_object* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %26 = call i32 @return_ACPI_STATUS(i32 %25)
  br label %27

27:                                               ; preds = %24, %4
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %31 = call i32 @acpi_ds_method_data_get_node(i64 %28, i32 %29, %struct.acpi_walk_state* %30, %struct.acpi_namespace_node** %11)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @ACPI_FAILURE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @return_ACPI_STATUS(i32 %36)
  br label %38

38:                                               ; preds = %35, %27
  %39 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %40 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %39)
  store %union.acpi_operand_object* %40, %union.acpi_operand_object** %12, align 8
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %43 = icmp eq %union.acpi_operand_object* %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i32, i32* @ACPI_DB_EXEC, align 4
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %47 = ptrtoint %union.acpi_operand_object* %46 to i32
  %48 = call i32 @ACPI_DEBUG_PRINT(i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @return_ACPI_STATUS(i32 %49)
  br label %51

51:                                               ; preds = %44, %38
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  store %union.acpi_operand_object* %52, %union.acpi_operand_object** %13, align 8
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %54 = bitcast %union.acpi_operand_object* %53 to %struct.TYPE_3__*
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %69

58:                                               ; preds = %51
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %60 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %61 = call i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object* %59, %union.acpi_operand_object** %13, %struct.acpi_walk_state* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i64 @ACPI_FAILURE(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @return_ACPI_STATUS(i32 %66)
  br label %68

68:                                               ; preds = %65, %58
  br label %69

69:                                               ; preds = %68, %51
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %71 = icmp ne %union.acpi_operand_object* %70, null
  br i1 %71, label %72, label %124

72:                                               ; preds = %69
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @ACPI_REFCLASS_ARG, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %119

76:                                               ; preds = %72
  %77 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %78 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %77)
  %79 = load i64, i64* @ACPI_DESC_TYPE_OPERAND, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %118

81:                                               ; preds = %76
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %83 = bitcast %union.acpi_operand_object* %82 to %struct.TYPE_3__*
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @ACPI_TYPE_LOCAL_REFERENCE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %118

88:                                               ; preds = %81
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %90 = bitcast %union.acpi_operand_object* %89 to %struct.TYPE_4__*
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ACPI_REFCLASS_REFOF, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %118

95:                                               ; preds = %88
  %96 = load i32, i32* @ACPI_DB_EXEC, align 4
  %97 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %98 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %99 = ptrtoint %union.acpi_operand_object* %98 to i32
  %100 = call i32 @ACPI_DEBUG_PRINT(i32 %99)
  %101 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %102 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %103 = bitcast %union.acpi_operand_object* %102 to %struct.TYPE_4__*
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %107 = load i32, i32* @ACPI_NO_IMPLICIT_CONVERSION, align 4
  %108 = call i32 @acpi_ex_store_object_to_node(%union.acpi_operand_object* %101, i32 %105, %struct.acpi_walk_state* %106, i32 %107)
  store i32 %108, i32* %10, align 4
  %109 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %110 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %111 = icmp ne %union.acpi_operand_object* %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %95
  %113 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %114 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %113)
  br label %115

115:                                              ; preds = %112, %95
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @return_ACPI_STATUS(i32 %116)
  br label %118

118:                                              ; preds = %115, %88, %81, %76
  br label %119

119:                                              ; preds = %118, %72
  %120 = load i64, i64* %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %123 = call i32 @acpi_ds_method_data_delete_value(i64 %120, i32 %121, %struct.acpi_walk_state* %122)
  br label %124

124:                                              ; preds = %119, %69
  %125 = load i64, i64* %6, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %128 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %9, align 8
  %129 = call i32 @acpi_ds_method_data_set_value(i64 %125, i32 %126, %union.acpi_operand_object* %127, %struct.acpi_walk_state* %128)
  store i32 %129, i32* %10, align 4
  %130 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %131 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %132 = icmp ne %union.acpi_operand_object* %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %124
  %134 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %135 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %134)
  br label %136

136:                                              ; preds = %133, %124
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @return_ACPI_STATUS(i32 %137)
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ds_method_data_get_node(i64, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object*, %union.acpi_operand_object**, %struct.acpi_walk_state*) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ex_store_object_to_node(%union.acpi_operand_object*, i32, %struct.acpi_walk_state*, i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ds_method_data_delete_value(i64, i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ds_method_data_set_value(i64, i32, %union.acpi_operand_object*, %struct.acpi_walk_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
