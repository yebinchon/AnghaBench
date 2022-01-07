; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exresolv.c_acpi_ex_resolve_object_to_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exresolv.c_acpi_ex_resolve_object_to_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32, %union.acpi_operand_object**, i32, i32 }
%struct.TYPE_4__ = type { %union.acpi_operand_object*, i32 }
%struct.acpi_walk_state = type { i32 }
%struct.TYPE_6__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_resolve_object_to_value = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"[Arg/Local %X] ValueObj is %p\0A\00", align 1
@AML_INT_METHODCALL_OP = common dso_local global i32 0, align 4
@AML_COPY_OBJECT_OP = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Attempt to dereference an Index to NULL package element Idx=%p\00", align 1
@AE_AML_UNINITIALIZED_ELEMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Unknown TargetType 0x%X in Index/Reference object %p\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@ACPI_TYPE_THERMAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Unknown Reference type 0x%X in %p\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"FieldRead SourceDesc=%p Type=%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.acpi_operand_object**, %struct.acpi_walk_state*)* @acpi_ex_resolve_object_to_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ex_resolve_object_to_value(%union.acpi_operand_object** %0, %struct.acpi_walk_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object**, align 8
  %5 = alloca %struct.acpi_walk_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca i32, align 4
  store %union.acpi_operand_object** %0, %union.acpi_operand_object*** %4, align 8
  store %struct.acpi_walk_state* %1, %struct.acpi_walk_state** %5, align 8
  %10 = load i32, i32* @AE_OK, align 4
  store i32 %10, i32* %6, align 4
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %8, align 8
  %11 = load i32, i32* @ex_resolve_object_to_value, align 4
  %12 = call i32 @ACPI_FUNCTION_TRACE(i32 %11)
  %13 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  store %union.acpi_operand_object* %14, %union.acpi_operand_object** %7, align 8
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %16 = bitcast %union.acpi_operand_object* %15 to %struct.TYPE_6__*
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %175 [
    i32 130, label %19
    i32 134, label %151
    i32 128, label %154
    i32 133, label %157
    i32 129, label %157
    i32 132, label %157
    i32 131, label %157
  ]

19:                                               ; preds = %2
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %21 = bitcast %union.acpi_operand_object* %20 to %struct.TYPE_5__*
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %143 [
    i32 138, label %25
    i32 141, label %25
    i32 139, label %52
    i32 136, label %102
    i32 140, label %102
    i32 135, label %102
    i32 137, label %103
  ]

25:                                               ; preds = %19, %19
  %26 = load i32, i32* %9, align 4
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %28 = bitcast %union.acpi_operand_object* %27 to %struct.TYPE_5__*
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %32 = call i32 @acpi_ds_method_data_get_value(i32 %26, i32 %30, %struct.acpi_walk_state* %31, %union.acpi_operand_object** %8)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @return_ACPI_STATUS(i32 %37)
  br label %39

39:                                               ; preds = %36, %25
  %40 = load i32, i32* @ACPI_DB_EXEC, align 4
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %42 = bitcast %union.acpi_operand_object* %41 to %struct.TYPE_5__*
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %46 = ptrtoint %union.acpi_operand_object* %45 to i32
  %47 = call i32 @ACPI_DEBUG_PRINT(i32 %46)
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %49 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %48)
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %51 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  store %union.acpi_operand_object* %50, %union.acpi_operand_object** %51, align 8
  br label %150

52:                                               ; preds = %19
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %54 = bitcast %union.acpi_operand_object* %53 to %struct.TYPE_5__*
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %91 [
    i32 133, label %57
    i32 128, label %58
  ]

57:                                               ; preds = %52
  br label %101

58:                                               ; preds = %52
  %59 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %60 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AML_INT_METHODCALL_OP, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %66 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @AML_COPY_OBJECT_OP, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64, %58
  br label %101

71:                                               ; preds = %64
  %72 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %73 = bitcast %union.acpi_operand_object* %72 to %struct.TYPE_5__*
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %74, align 8
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %75, align 8
  store %union.acpi_operand_object* %76, %union.acpi_operand_object** %8, align 8
  %77 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %78 = icmp ne %union.acpi_operand_object* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %81 = call i32 @acpi_ut_add_reference(%union.acpi_operand_object* %80)
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %83 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  store %union.acpi_operand_object* %82, %union.acpi_operand_object** %83, align 8
  br label %90

84:                                               ; preds = %71
  %85 = load i32, i32* @AE_INFO, align 4
  %86 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %87 = ptrtoint %union.acpi_operand_object* %86 to i32
  %88 = call i32 @ACPI_ERROR(i32 %87)
  %89 = load i32, i32* @AE_AML_UNINITIALIZED_ELEMENT, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %84, %79
  br label %101

91:                                               ; preds = %52
  %92 = load i32, i32* @AE_INFO, align 4
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %94 = bitcast %union.acpi_operand_object* %93 to %struct.TYPE_5__*
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %98 = ptrtoint %union.acpi_operand_object* %97 to i32
  %99 = call i32 @ACPI_ERROR(i32 %98)
  %100 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %91, %90, %70, %57
  br label %150

102:                                              ; preds = %19, %19, %19
  br label %150

103:                                              ; preds = %19
  %104 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %105 = bitcast %union.acpi_operand_object* %104 to %struct.TYPE_5__*
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %121, label %112

112:                                              ; preds = %103
  %113 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %114 = bitcast %union.acpi_operand_object* %113 to %struct.TYPE_5__*
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @ACPI_TYPE_THERMAL, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %112, %103
  %122 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %123 = bitcast %union.acpi_operand_object* %122 to %struct.TYPE_5__*
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = bitcast %struct.TYPE_4__* %125 to i8*
  %127 = bitcast i8* %126 to %union.acpi_operand_object*
  %128 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  store %union.acpi_operand_object* %127, %union.acpi_operand_object** %128, align 8
  br label %140

129:                                              ; preds = %112
  %130 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %131 = bitcast %union.acpi_operand_object* %130 to %struct.TYPE_5__*
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load %union.acpi_operand_object*, %union.acpi_operand_object** %134, align 8
  %136 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  store %union.acpi_operand_object* %135, %union.acpi_operand_object** %136, align 8
  %137 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %138 = load %union.acpi_operand_object*, %union.acpi_operand_object** %137, align 8
  %139 = call i32 @acpi_ut_add_reference(%union.acpi_operand_object* %138)
  br label %140

140:                                              ; preds = %129, %121
  %141 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %142 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %141)
  br label %150

143:                                              ; preds = %19
  %144 = load i32, i32* @AE_INFO, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %147 = ptrtoint %union.acpi_operand_object* %146 to i32
  %148 = call i32 @ACPI_ERROR(i32 %147)
  %149 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %143, %140, %102, %101, %39
  br label %176

151:                                              ; preds = %2
  %152 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %153 = call i32 @acpi_ds_get_buffer_arguments(%union.acpi_operand_object* %152)
  store i32 %153, i32* %6, align 4
  br label %176

154:                                              ; preds = %2
  %155 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %156 = call i32 @acpi_ds_get_package_arguments(%union.acpi_operand_object* %155)
  store i32 %156, i32* %6, align 4
  br label %176

157:                                              ; preds = %2, %2, %2, %2
  %158 = load i32, i32* @ACPI_DB_EXEC, align 4
  %159 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %160 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %161 = bitcast %union.acpi_operand_object* %160 to %struct.TYPE_6__*
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @ACPI_DEBUG_PRINT(i32 %163)
  %165 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %166 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %167 = call i32 @acpi_ex_read_data_from_field(%struct.acpi_walk_state* %165, %union.acpi_operand_object* %166, %union.acpi_operand_object** %8)
  store i32 %167, i32* %6, align 4
  %168 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %169 = load %union.acpi_operand_object*, %union.acpi_operand_object** %168, align 8
  %170 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %169)
  %171 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %172 = bitcast %union.acpi_operand_object* %171 to i8*
  %173 = bitcast i8* %172 to %union.acpi_operand_object*
  %174 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  store %union.acpi_operand_object* %173, %union.acpi_operand_object** %174, align 8
  br label %176

175:                                              ; preds = %2
  br label %176

176:                                              ; preds = %175, %157, %154, %151, %150
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @return_ACPI_STATUS(i32 %177)
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ds_method_data_get_value(i32, i32, %struct.acpi_walk_state*, %union.acpi_operand_object**) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_add_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ds_get_buffer_arguments(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ds_get_package_arguments(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ex_read_data_from_field(%struct.acpi_walk_state*, %union.acpi_operand_object*, %union.acpi_operand_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
