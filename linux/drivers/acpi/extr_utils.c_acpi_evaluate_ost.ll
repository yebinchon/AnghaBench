; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_utils.c_acpi_evaluate_ost.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_utils.c_acpi_evaluate_ost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i64, i32* }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32* }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.TYPE_3__ = type { i8* }

@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_OST\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_evaluate_ost(i32 %0, i8* %1, i8* %2, %struct.acpi_buffer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.acpi_buffer*, align 8
  %9 = alloca [3 x %union.acpi_object], align 16
  %10 = alloca %struct.acpi_object_list, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.acpi_buffer* %3, %struct.acpi_buffer** %8, align 8
  %11 = bitcast [3 x %union.acpi_object]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 48, i1 false)
  %12 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %9, i64 0, i64 0
  %13 = bitcast %union.acpi_object* %12 to i32*
  %14 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  store i32 %14, i32* %13, align 16
  %15 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %12, i64 1
  %16 = bitcast %union.acpi_object* %15 to i32*
  %17 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  store i32 %17, i32* %16, align 16
  %18 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %15, i64 1
  %19 = bitcast %union.acpi_object* %18 to i32*
  %20 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  store i32 %20, i32* %19, align 16
  %21 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %10, i32 0, i32 0
  store i32 3, i32* %21, align 8
  %22 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %10, i32 0, i32 1
  %23 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %9, i64 0, i64 0
  store %union.acpi_object* %23, %union.acpi_object** %22, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %9, i64 0, i64 0
  %26 = bitcast %union.acpi_object* %25 to %struct.TYPE_3__*
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 16
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %9, i64 0, i64 1
  %30 = bitcast %union.acpi_object* %29 to %struct.TYPE_3__*
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 16
  %32 = load %struct.acpi_buffer*, %struct.acpi_buffer** %8, align 8
  %33 = icmp ne %struct.acpi_buffer* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %4
  %35 = load %struct.acpi_buffer*, %struct.acpi_buffer** %8, align 8
  %36 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %9, i64 0, i64 2
  %39 = bitcast %union.acpi_object* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32* %37, i32** %40, align 8
  %41 = load %struct.acpi_buffer*, %struct.acpi_buffer** %8, align 8
  %42 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %9, i64 0, i64 2
  %45 = bitcast %union.acpi_object* %44 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 16
  br label %54

47:                                               ; preds = %4
  %48 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %9, i64 0, i64 2
  %49 = bitcast %union.acpi_object* %48 to %struct.TYPE_4__*
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  %51 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %9, i64 0, i64 2
  %52 = bitcast %union.acpi_object* %51 to %struct.TYPE_4__*
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 16
  br label %54

54:                                               ; preds = %47, %34
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @acpi_evaluate_object(i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %10, i32* null)
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
