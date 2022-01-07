; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ppi.c_show_ppi_operations.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ppi.c_show_ppi_operations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@show_ppi_operations.info = internal global [5 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [16 x i8] c"Not implemented\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"BIOS only\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Blocked for OS by BIOS\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"User required\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"User not required\00", align 1
@tpm_ppi_guid = common dso_local global i32 0, align 4
@TPM_PPI_REVISION_ID_1 = common dso_local global i32 0, align 4
@TPM_PPI_FN_GETOPR = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"%d %d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @show_ppi_operations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_ppi_operations(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %union.acpi_object*, align 8
  %14 = alloca %union.acpi_object, align 4
  %15 = alloca %union.acpi_object, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %12, align 8
  %17 = call i64 @ACPI_INIT_DSM_ARGV4(i32 1, %union.acpi_object* %14)
  %18 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %15, i32 0, i32 0
  %19 = bitcast %struct.TYPE_2__* %18 to i64*
  store i64 %17, i64* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @TPM_PPI_REVISION_ID_1, align 4
  %22 = load i32, i32* @TPM_PPI_FN_GETOPR, align 4
  %23 = shl i32 1, %22
  %24 = call i32 @acpi_check_dsm(i32 %20, i32* @tpm_ppi_guid, i32 %21, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EPERM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %90

29:                                               ; preds = %4
  %30 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %31 = bitcast %union.acpi_object* %14 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %80, %29
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %83

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = bitcast %union.acpi_object* %14 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @TPM_PPI_FN_GETOPR, align 4
  %44 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %45 = load i32, i32* @TPM_PPI_REVISION_ID_1, align 4
  %46 = call %union.acpi_object* @tpm_eval_dsm(i32 %42, i32 %43, i32 %44, %union.acpi_object* %15, i32 %45)
  store %union.acpi_object* %46, %union.acpi_object** %13, align 8
  %47 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %48 = icmp ne %union.acpi_object* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %90

52:                                               ; preds = %38
  %53 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %54 = bitcast %union.acpi_object* %53 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %11, align 4
  %57 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %58 = call i32 @ACPI_FREE(%union.acpi_object* %57)
  br label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %11, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %59
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @show_ppi_operations.info, i64 0, i64 0))
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load i8*, i8** %12, align 8
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [5 x i8*], [5 x i8*]* @show_ppi_operations.info, i64 0, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @scnprintf(i8* %67, i32 %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %69, i32 %70, i8* %74)
  %76 = load i8*, i8** %12, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %12, align 8
  br label %79

79:                                               ; preds = %66, %62, %59
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %34

83:                                               ; preds = %34
  %84 = load i8*, i8** %12, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %83, %49, %26
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i64 @ACPI_INIT_DSM_ARGV4(i32, %union.acpi_object*) #1

declare dso_local i32 @acpi_check_dsm(i32, i32*, i32, i32) #1

declare dso_local %union.acpi_object* @tpm_eval_dsm(i32, i32, i32, %union.acpi_object*, i32) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
