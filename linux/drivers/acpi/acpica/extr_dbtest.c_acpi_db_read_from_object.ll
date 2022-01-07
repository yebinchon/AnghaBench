; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbtest.c_acpi_db_read_from_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbtest.c_acpi_db_read_from_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.acpi_buffer = type { i64, i32 }

@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i32 0, align 4
@acpi_handle = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@acpi_gbl_method_executing = common dso_local global i32 0, align 4
@read_handle = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not read from object, %s\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c" Type mismatch: Expected %s, Received %s\00", align 1
@AE_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c" Unsupported return object type, %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_namespace_node*, i32, %union.acpi_object**)* @acpi_db_read_from_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_db_read_from_object(%struct.acpi_namespace_node* %0, i32 %1, %union.acpi_object** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_namespace_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_object**, align 8
  %8 = alloca %union.acpi_object*, align 8
  %9 = alloca %struct.acpi_object_list, align 8
  %10 = alloca [2 x %union.acpi_object], align 16
  %11 = alloca %struct.acpi_buffer, align 8
  %12 = alloca i32, align 4
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.acpi_object** %2, %union.acpi_object*** %7, align 8
  %13 = load i32, i32* @ACPI_TYPE_LOCAL_REFERENCE, align 4
  %14 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %10, i64 0, i64 0
  %15 = bitcast %union.acpi_object* %14 to i32*
  store i32 %13, i32* %15, align 16
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %17 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %10, i64 0, i64 0
  %20 = bitcast %union.acpi_object* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @acpi_handle, align 4
  %23 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %24 = call i32 @ACPI_CAST_PTR(i32 %22, %struct.acpi_namespace_node* %23)
  %25 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %10, i64 0, i64 0
  %26 = bitcast %union.acpi_object* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 16
  %28 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %9, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %10, i64 0, i64 0
  %30 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %9, i32 0, i32 1
  store %union.acpi_object* %29, %union.acpi_object** %30, align 8
  %31 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %32 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 1
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* @acpi_gbl_method_executing, align 4
  %34 = load i32, i32* @read_handle, align 4
  %35 = call i32 @acpi_evaluate_object(i32 %34, i32* null, %struct.acpi_object_list* %9, %struct.acpi_buffer* %11)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* @acpi_gbl_method_executing, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i64 @ACPI_FAILURE(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %3
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @acpi_format_exception(i32 %41)
  %43 = call i32 (i8*, i32, ...) @acpi_os_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %4, align 4
  br label %85

45:                                               ; preds = %3
  %46 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %union.acpi_object*
  store %union.acpi_object* %48, %union.acpi_object** %8, align 8
  %49 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %50 = bitcast %union.acpi_object* %49 to i32*
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %73 [
    i32 130, label %52
    i32 131, label %52
    i32 128, label %52
    i32 129, label %52
  ]

52:                                               ; preds = %45, %45, %45, %45
  %53 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %54 = bitcast %union.acpi_object* %53 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @acpi_ut_get_type_name(i32 %59)
  %61 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %62 = bitcast %union.acpi_object* %61 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @acpi_ut_get_type_name(i32 %63)
  %65 = call i32 (i8*, i32, ...) @acpi_os_printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %64)
  %66 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @acpi_os_free(i64 %67)
  %69 = load i32, i32* @AE_TYPE, align 4
  store i32 %69, i32* %4, align 4
  br label %85

70:                                               ; preds = %52
  %71 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %72 = load %union.acpi_object**, %union.acpi_object*** %7, align 8
  store %union.acpi_object* %71, %union.acpi_object** %72, align 8
  br label %83

73:                                               ; preds = %45
  %74 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %75 = bitcast %union.acpi_object* %74 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @acpi_ut_get_type_name(i32 %76)
  %78 = call i32 (i8*, i32, ...) @acpi_os_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @acpi_os_free(i64 %80)
  %82 = load i32, i32* @AE_TYPE, align 4
  store i32 %82, i32* %4, align 4
  br label %85

83:                                               ; preds = %70
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %73, %58, %40
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @ACPI_CAST_PTR(i32, %struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_evaluate_object(i32, i32*, %struct.acpi_object_list*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_os_printf(i8*, i32, ...) #1

declare dso_local i32 @acpi_format_exception(i32) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local i32 @acpi_os_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
