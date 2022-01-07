; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_utils.c_acpi_evaluate_dsm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_utils.c_acpi_evaluate_dsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.acpi_buffer = type { i64, i32*, i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_5__ = type { i8* }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i8* null, align 8
@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@ACPI_TYPE_PACKAGE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"_DSM\00", align 1
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to evaluate _DSM (0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_object* @acpi_evaluate_dsm(i32 %0, i32* %1, i8* %2, i8* %3, %union.acpi_object* %4) #0 {
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %union.acpi_object*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.acpi_buffer, align 8
  %14 = alloca [4 x %union.acpi_object], align 16
  %15 = alloca %struct.acpi_object_list, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %union.acpi_object* %4, %union.acpi_object** %11, align 8
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  %17 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %16, align 8
  %19 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 2
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %15, i32 0, i32 0
  store i32 4, i32* %21, align 8
  %22 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %15, i32 0, i32 1
  %23 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 0
  store %union.acpi_object* %23, %union.acpi_object** %22, align 8
  %24 = load i8*, i8** @ACPI_TYPE_BUFFER, align 8
  %25 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 0
  %26 = bitcast %union.acpi_object* %25 to i8**
  store i8* %24, i8** %26, align 16
  %27 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 0
  %28 = bitcast %union.acpi_object* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 16, i32* %29, align 16
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 0
  %32 = bitcast %union.acpi_object* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32* %30, i32** %33, align 8
  %34 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %35 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 1
  %36 = bitcast %union.acpi_object* %35 to i8**
  store i8* %34, i8** %36, align 16
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 1
  %39 = bitcast %union.acpi_object* %38 to %struct.TYPE_5__*
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 16
  %41 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %42 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 2
  %43 = bitcast %union.acpi_object* %42 to i8**
  store i8* %41, i8** %43, align 16
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 2
  %46 = bitcast %union.acpi_object* %45 to %struct.TYPE_5__*
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 16
  %48 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %49 = icmp ne %union.acpi_object* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %5
  %51 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 3
  %52 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %53 = bitcast %union.acpi_object* %51 to i8*
  %54 = bitcast %union.acpi_object* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %53, i8* align 8 %54, i64 16, i1 false)
  br label %65

55:                                               ; preds = %5
  %56 = load i8*, i8** @ACPI_TYPE_PACKAGE, align 8
  %57 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 3
  %58 = bitcast %union.acpi_object* %57 to i8**
  store i8* %56, i8** %58, align 16
  %59 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 3
  %60 = bitcast %union.acpi_object* %59 to %struct.TYPE_6__*
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 3
  %63 = bitcast %union.acpi_object* %62 to %struct.TYPE_6__*
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32* null, i32** %64, align 16
  br label %65

65:                                               ; preds = %55, %50
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @acpi_evaluate_object(i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %15, %struct.acpi_buffer* %13)
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i64 @ACPI_SUCCESS(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %union.acpi_object*
  store %union.acpi_object* %74, %union.acpi_object** %6, align 8
  br label %84

75:                                               ; preds = %65
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* @AE_NOT_FOUND, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @acpi_handle_warn(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %81)
  br label %83

83:                                               ; preds = %79, %75
  store %union.acpi_object* null, %union.acpi_object** %6, align 8
  br label %84

84:                                               ; preds = %83, %71
  %85 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  ret %union.acpi_object* %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #2

declare dso_local i64 @ACPI_SUCCESS(i64) #2

declare dso_local i32 @acpi_handle_warn(i32, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
