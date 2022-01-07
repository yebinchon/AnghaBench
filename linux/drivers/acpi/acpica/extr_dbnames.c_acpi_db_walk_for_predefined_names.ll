; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbnames.c_acpi_db_walk_for_predefined_names.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbnames.c_acpi_db_walk_for_predefined_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.acpi_predefined_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@AE_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ACPI_RTYPE_PACKAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%-32s Arguments %X, Return Types: %s\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c" (PkgType %2.2X, ObjType %2.2X, Count %2.2X)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i8*, i8**)* @acpi_db_walk_for_predefined_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_db_walk_for_predefined_names(i64 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.acpi_namespace_node*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %union.acpi_predefined_info*, align 8
  %13 = alloca %union.acpi_predefined_info*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [48 x i8], align 16
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.acpi_namespace_node*
  store %struct.acpi_namespace_node* %17, %struct.acpi_namespace_node** %10, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %11, align 8
  store %union.acpi_predefined_info* null, %union.acpi_predefined_info** %13, align 8
  %20 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %10, align 8
  %21 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %union.acpi_predefined_info* @acpi_ut_match_predefined_method(i32 %23)
  store %union.acpi_predefined_info* %24, %union.acpi_predefined_info** %12, align 8
  %25 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %12, align 8
  %26 = icmp ne %union.acpi_predefined_info* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @AE_OK, align 4
  store i32 %28, i32* %5, align 4
  br label %91

29:                                               ; preds = %4
  %30 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %10, align 8
  %31 = load i32, i32* @TRUE, align 4
  %32 = call i8* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node* %30, i32 %31)
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @AE_OK, align 4
  store i32 %36, i32* %5, align 4
  br label %91

37:                                               ; preds = %29
  %38 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %12, align 8
  %39 = bitcast %union.acpi_predefined_info* %38 to %struct.TYPE_5__*
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ACPI_RTYPE_PACKAGE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %12, align 8
  %47 = getelementptr inbounds %union.acpi_predefined_info, %union.acpi_predefined_info* %46, i64 1
  store %union.acpi_predefined_info* %47, %union.acpi_predefined_info** %13, align 8
  br label %48

48:                                               ; preds = %45, %37
  %49 = getelementptr inbounds [48 x i8], [48 x i8]* %15, i64 0, i64 0
  %50 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %12, align 8
  %51 = bitcast %union.acpi_predefined_info* %50 to %struct.TYPE_5__*
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @acpi_ut_get_expected_return_types(i8* %49, i32 %53)
  %55 = load i8*, i8** %14, align 8
  %56 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %12, align 8
  %57 = bitcast %union.acpi_predefined_info* %56 to %struct.TYPE_5__*
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @METHOD_GET_ARG_COUNT(i32 %59)
  %61 = getelementptr inbounds [48 x i8], [48 x i8]* %15, i64 0, i64 0
  %62 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %55, i32 %60, i8* %61)
  %63 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %13, align 8
  %64 = icmp ne %union.acpi_predefined_info* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %48
  %66 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %13, align 8
  %67 = bitcast %union.acpi_predefined_info* %66 to %struct.TYPE_6__*
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %13, align 8
  %71 = bitcast %union.acpi_predefined_info* %70 to %struct.TYPE_6__*
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %13, align 8
  %75 = bitcast %union.acpi_predefined_info* %74 to %struct.TYPE_6__*
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %73, i32 %77)
  br label %79

79:                                               ; preds = %65, %48
  %80 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i8*, i8** %14, align 8
  %82 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %10, align 8
  %83 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %12, align 8
  %84 = call i32 @acpi_ns_check_acpi_compliance(i8* %81, %struct.acpi_namespace_node* %82, %union.acpi_predefined_info* %83)
  %85 = load i8*, i8** %14, align 8
  %86 = call i32 @ACPI_FREE(i8* %85)
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* @AE_OK, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %79, %35, %27
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %union.acpi_predefined_info* @acpi_ut_match_predefined_method(i32) #1

declare dso_local i8* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node*, i32) #1

declare dso_local i32 @acpi_ut_get_expected_return_types(i8*, i32) #1

declare dso_local i32 @acpi_os_printf(i8*, ...) #1

declare dso_local i32 @METHOD_GET_ARG_COUNT(i32) #1

declare dso_local i32 @acpi_ns_check_acpi_compliance(i8*, %struct.acpi_namespace_node*, %union.acpi_predefined_info*) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
