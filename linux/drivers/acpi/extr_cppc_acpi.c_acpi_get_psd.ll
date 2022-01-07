; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_cppc_acpi.c_acpi_get_psd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_cppc_acpi.c_acpi_get_psd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i32, i8*, i32, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.cpc_desc = type { i32, %union.acpi_object }
%struct.acpi_psd_package = type { i64, i64, i64, %struct.TYPE_2__ }

@EFAULT = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"NNNNN\00", align 1
@__const.acpi_get_psd.format = private unnamed_addr constant %struct.acpi_buffer { i32 6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 0, %union.acpi_object* null }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"_PSD\00", align 1
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid _PSD data\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Invalid _PSD data for CPU:%d\0A\00", align 1
@ACPI_PSD_REV0_ENTRIES = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"Unknown _PSD:num_entries for CPU:%d\0A\00", align 1
@ACPI_PSD_REV0_REVISION = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"Unknown _PSD:revision for CPU: %d\0A\00", align 1
@DOMAIN_COORD_TYPE_SW_ALL = common dso_local global i64 0, align 8
@DOMAIN_COORD_TYPE_SW_ANY = common dso_local global i64 0, align 8
@DOMAIN_COORD_TYPE_HW_ALL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"Invalid _PSD:coord_type for CPU:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpc_desc*, i32)* @acpi_get_psd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_get_psd(%struct.cpc_desc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpc_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.acpi_buffer, align 8
  %9 = alloca %struct.acpi_buffer, align 8
  %10 = alloca %struct.acpi_buffer, align 8
  %11 = alloca %union.acpi_object*, align 8
  %12 = alloca %struct.acpi_psd_package*, align 8
  store %struct.cpc_desc* %0, %struct.cpc_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @EFAULT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  %15 = load i64, i64* @AE_OK, align 8
  store i64 %15, i64* %7, align 8
  %16 = bitcast %struct.acpi_buffer* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 0
  %18 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  store i32 %18, i32* %17, align 8
  %19 = bitcast %struct.acpi_buffer* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_get_psd.format to i8*), i64 32, i1 false)
  %20 = bitcast %struct.acpi_buffer* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 32, i1 false)
  store %union.acpi_object* null, %union.acpi_object** %11, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %23 = call i64 @acpi_evaluate_object_typed(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.acpi_buffer* %8, i32 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @AE_NOT_FOUND, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %121

28:                                               ; preds = %2
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @ACPI_FAILURE(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %121

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 3
  %37 = load %union.acpi_object*, %union.acpi_object** %36, align 8
  store %union.acpi_object* %37, %union.acpi_object** %11, align 8
  %38 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %39 = icmp ne %union.acpi_object* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %42 = bitcast %union.acpi_object* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %40, %35
  %47 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %116

48:                                               ; preds = %40
  %49 = load %struct.cpc_desc*, %struct.cpc_desc** %4, align 8
  %50 = getelementptr inbounds %struct.cpc_desc, %struct.cpc_desc* %49, i32 0, i32 1
  %51 = bitcast %union.acpi_object* %50 to %struct.acpi_psd_package*
  store %struct.acpi_psd_package* %51, %struct.acpi_psd_package** %12, align 8
  %52 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %10, i32 0, i32 2
  store i32 40, i32* %52, align 8
  %53 = load %struct.acpi_psd_package*, %struct.acpi_psd_package** %12, align 8
  %54 = bitcast %struct.acpi_psd_package* %53 to %union.acpi_object*
  %55 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %10, i32 0, i32 3
  store %union.acpi_object* %54, %union.acpi_object** %55, align 8
  %56 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %57 = bitcast %union.acpi_object* %56 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = call i64 @acpi_extract_package(i32* %60, %struct.acpi_buffer* %9, %struct.acpi_buffer* %10)
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i64 @ACPI_FAILURE(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %48
  %66 = load %struct.cpc_desc*, %struct.cpc_desc** %4, align 8
  %67 = getelementptr inbounds %struct.cpc_desc, %struct.cpc_desc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %116

70:                                               ; preds = %48
  %71 = load %struct.acpi_psd_package*, %struct.acpi_psd_package** %12, align 8
  %72 = getelementptr inbounds %struct.acpi_psd_package, %struct.acpi_psd_package* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ACPI_PSD_REV0_ENTRIES, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.cpc_desc*, %struct.cpc_desc** %4, align 8
  %78 = getelementptr inbounds %struct.cpc_desc, %struct.cpc_desc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  br label %116

81:                                               ; preds = %70
  %82 = load %struct.acpi_psd_package*, %struct.acpi_psd_package** %12, align 8
  %83 = getelementptr inbounds %struct.acpi_psd_package, %struct.acpi_psd_package* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ACPI_PSD_REV0_REVISION, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load %struct.cpc_desc*, %struct.cpc_desc** %4, align 8
  %89 = getelementptr inbounds %struct.cpc_desc, %struct.cpc_desc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  br label %116

92:                                               ; preds = %81
  %93 = load %struct.acpi_psd_package*, %struct.acpi_psd_package** %12, align 8
  %94 = getelementptr inbounds %struct.acpi_psd_package, %struct.acpi_psd_package* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @DOMAIN_COORD_TYPE_SW_ALL, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %92
  %99 = load %struct.acpi_psd_package*, %struct.acpi_psd_package** %12, align 8
  %100 = getelementptr inbounds %struct.acpi_psd_package, %struct.acpi_psd_package* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DOMAIN_COORD_TYPE_SW_ANY, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %98
  %105 = load %struct.acpi_psd_package*, %struct.acpi_psd_package** %12, align 8
  %106 = getelementptr inbounds %struct.acpi_psd_package, %struct.acpi_psd_package* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @DOMAIN_COORD_TYPE_HW_ALL, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load %struct.cpc_desc*, %struct.cpc_desc** %4, align 8
  %112 = getelementptr inbounds %struct.cpc_desc, %struct.cpc_desc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %113)
  br label %116

115:                                              ; preds = %104, %98, %92
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %115, %110, %87, %76, %65, %46
  %117 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 3
  %118 = load %union.acpi_object*, %union.acpi_object** %117, align 8
  %119 = call i32 @kfree(%union.acpi_object* %118)
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %116, %32, %27
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @acpi_evaluate_object_typed(i32, i8*, i32*, %struct.acpi_buffer*, i32) #2

declare dso_local i64 @ACPI_FAILURE(i64) #2

declare dso_local i32 @pr_debug(i8*, ...) #2

declare dso_local i64 @acpi_extract_package(i32*, %struct.acpi_buffer*, %struct.acpi_buffer*) #2

declare dso_local i32 @kfree(%union.acpi_object*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
