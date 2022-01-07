; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_utils.c_acpi_evaluate_reference.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_utils.c_acpi_evaluate_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_list = type { i32 }
%struct.acpi_handle_list = type { i64, i64* }
%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %union.acpi_object* }
%struct.acpi_buffer = type { i64, %union.acpi_object*, i32*, i32 }
%struct.TYPE_4__ = type { i64 }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_BAD_DATA = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@ACPI_MAX_HANDLES = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i64 0, align 8
@AE_NULL_ENTRY = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Found reference [%p]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_evaluate_reference(i32 %0, i32 %1, %struct.acpi_object_list* %2, %struct.acpi_handle_list* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_object_list*, align 8
  %9 = alloca %struct.acpi_handle_list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.acpi_object*, align 8
  %12 = alloca %union.acpi_object*, align 8
  %13 = alloca %struct.acpi_buffer, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.acpi_object_list* %2, %struct.acpi_object_list** %8, align 8
  store %struct.acpi_handle_list* %3, %struct.acpi_handle_list** %9, align 8
  %15 = load i32, i32* @AE_OK, align 4
  store i32 %15, i32* %10, align 4
  store %union.acpi_object* null, %union.acpi_object** %11, align 8
  store %union.acpi_object* null, %union.acpi_object** %12, align 8
  %16 = bitcast %struct.acpi_buffer* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  %18 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %17, align 8
  store i64 0, i64* %14, align 8
  %20 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %9, align 8
  %21 = icmp ne %struct.acpi_handle_list* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %23, i32* %5, align 4
  br label %161

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.acpi_object_list*, %struct.acpi_object_list** %8, align 8
  %28 = call i32 @acpi_evaluate_object(i32 %25, i32 %26, %struct.acpi_object_list* %27, %struct.acpi_buffer* %13)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @ACPI_FAILURE(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %149

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 1
  %35 = load %union.acpi_object*, %union.acpi_object** %34, align 8
  store %union.acpi_object* %35, %union.acpi_object** %11, align 8
  %36 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %41 = icmp ne %union.acpi_object* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %39, %33
  %43 = load i32, i32* @AE_BAD_DATA, align 4
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @acpi_util_eval_error(i32 %44, i32 %45, i32 %46)
  br label %149

48:                                               ; preds = %39
  %49 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %50 = bitcast %union.acpi_object* %49 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i32, i32* @AE_BAD_DATA, align 4
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @acpi_util_eval_error(i32 %56, i32 %57, i32 %58)
  br label %149

60:                                               ; preds = %48
  %61 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %62 = bitcast %union.acpi_object* %61 to %struct.TYPE_3__*
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @AE_BAD_DATA, align 4
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @acpi_util_eval_error(i32 %68, i32 %69, i32 %70)
  br label %149

72:                                               ; preds = %60
  %73 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %74 = bitcast %union.acpi_object* %73 to %struct.TYPE_3__*
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ACPI_MAX_HANDLES, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %81 = call i32 @kfree(%union.acpi_object* %80)
  %82 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %82, i32* %5, align 4
  br label %161

83:                                               ; preds = %72
  %84 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %85 = bitcast %union.acpi_object* %84 to %struct.TYPE_3__*
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %9, align 8
  %89 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  store i64 0, i64* %14, align 8
  br label %90

90:                                               ; preds = %145, %83
  %91 = load i64, i64* %14, align 8
  %92 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %9, align 8
  %93 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ult i64 %91, %94
  br i1 %95, label %96, label %148

96:                                               ; preds = %90
  %97 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %98 = bitcast %union.acpi_object* %97 to %struct.TYPE_3__*
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load %union.acpi_object*, %union.acpi_object** %99, align 8
  %101 = load i64, i64* %14, align 8
  %102 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %100, i64 %101
  store %union.acpi_object* %102, %union.acpi_object** %12, align 8
  %103 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %104 = bitcast %union.acpi_object* %103 to i64*
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @ACPI_TYPE_LOCAL_REFERENCE, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %96
  %109 = load i32, i32* @AE_BAD_DATA, align 4
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @acpi_util_eval_error(i32 %110, i32 %111, i32 %112)
  br label %148

114:                                              ; preds = %96
  %115 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %116 = bitcast %union.acpi_object* %115 to %struct.TYPE_4__*
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* @AE_NULL_ENTRY, align 4
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @acpi_util_eval_error(i32 %122, i32 %123, i32 %124)
  br label %148

126:                                              ; preds = %114
  %127 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %128 = bitcast %union.acpi_object* %127 to %struct.TYPE_4__*
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %9, align 8
  %132 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %131, i32 0, i32 1
  %133 = load i64*, i64** %132, align 8
  %134 = load i64, i64* %14, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  store i64 %130, i64* %135, align 8
  %136 = load i32, i32* @ACPI_DB_INFO, align 4
  %137 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %9, align 8
  %138 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %137, i32 0, i32 1
  %139 = load i64*, i64** %138, align 8
  %140 = load i64, i64* %14, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = call i32 @ACPI_DEBUG_PRINT(i32 %143)
  br label %145

145:                                              ; preds = %126
  %146 = load i64, i64* %14, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %14, align 8
  br label %90

148:                                              ; preds = %120, %108, %90
  br label %149

149:                                              ; preds = %148, %66, %54, %42, %32
  %150 = load i32, i32* %10, align 4
  %151 = call i64 @ACPI_FAILURE(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %9, align 8
  %155 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %154, i32 0, i32 0
  store i64 0, i64* %155, align 8
  br label %156

156:                                              ; preds = %153, %149
  %157 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 1
  %158 = load %union.acpi_object*, %union.acpi_object** %157, align 8
  %159 = call i32 @kfree(%union.acpi_object* %158)
  %160 = load i32, i32* %10, align 4
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %156, %79, %22
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @acpi_evaluate_object(i32, i32, %struct.acpi_object_list*, %struct.acpi_buffer*) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @acpi_util_eval_error(i32, i32, i32) #2

declare dso_local i32 @kfree(%union.acpi_object*) #2

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
