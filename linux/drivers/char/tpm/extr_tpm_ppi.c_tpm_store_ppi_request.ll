; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ppi.c_tpm_store_ppi_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ppi.c_tpm_store_ppi_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.tpm_chip = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@TPM_PPI_FN_SUBREQ = common dso_local global i32 0, align 4
@TPM_PPI_REVISION_ID_1 = common dso_local global i32 0, align 4
@tpm_ppi_guid = common dso_local global i32 0, align 4
@TPM_PPI_FN_SUBREQ2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%llu %llu\00", align 1
@TPM_PPI_REVISION_ID_2 = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"1.2\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @tpm_store_ppi_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_store_ppi_request(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.acpi_object*, align 8
  %14 = alloca [2 x %union.acpi_object], align 16
  %15 = alloca %union.acpi_object, align 8
  %16 = alloca %struct.tpm_chip*, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i32, i32* @TPM_PPI_FN_SUBREQ, align 4
  store i32 %18, i32* %12, align 4
  %19 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %14, i64 0, i64 0
  %20 = call { i64, i32* } @ACPI_INIT_DSM_ARGV4(i32 2, %union.acpi_object* %19)
  %21 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %15, i32 0, i32 0
  %22 = bitcast %struct.TYPE_4__* %21 to { i64, i32* }*
  %23 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %22, i32 0, i32 0
  %24 = extractvalue { i64, i32* } %20, 0
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %22, i32 0, i32 1
  %26 = extractvalue { i64, i32* } %20, 1
  store i32* %26, i32** %25, align 8
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call %struct.tpm_chip* @to_tpm_chip(%struct.device* %27)
  store %struct.tpm_chip* %28, %struct.tpm_chip** %16, align 8
  %29 = load i32, i32* @TPM_PPI_REVISION_ID_1, align 4
  store i32 %29, i32* %17, align 4
  %30 = load %struct.tpm_chip*, %struct.tpm_chip** %16, align 8
  %31 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TPM_PPI_REVISION_ID_1, align 4
  %34 = load i32, i32* @TPM_PPI_FN_SUBREQ2, align 4
  %35 = shl i32 1, %34
  %36 = call i64 @acpi_check_dsm(i32 %32, i32* @tpm_ppi_guid, i32 %33, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* @TPM_PPI_FN_SUBREQ2, align 4
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %38, %4
  %41 = load %struct.tpm_chip*, %struct.tpm_chip** %16, align 8
  %42 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @strcmp(i32 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %14, i64 0, i64 0
  %49 = bitcast %union.acpi_object* %48 to %struct.TYPE_6__*
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %14, i64 0, i64 1
  %52 = bitcast %union.acpi_object* %51 to %struct.TYPE_6__*
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %50, i32* %53)
  %55 = icmp ne i32 %54, 2
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %86

57:                                               ; preds = %46
  %58 = load i32, i32* @TPM_PPI_REVISION_ID_2, align 4
  store i32 %58, i32* %17, align 4
  %59 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %60 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %14, i64 0, i64 0
  %61 = bitcast %union.acpi_object* %60 to i8**
  store i8* %59, i8** %61, align 16
  %62 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %63 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %14, i64 0, i64 1
  %64 = bitcast %union.acpi_object* %63 to i8**
  store i8* %62, i8** %64, align 16
  br label %103

65:                                               ; preds = %40
  %66 = load %struct.tpm_chip*, %struct.tpm_chip** %16, align 8
  %67 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @strcmp(i32 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %65
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %10)
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %140

78:                                               ; preds = %71
  %79 = load i8*, i8** @ACPI_TYPE_BUFFER, align 8
  %80 = bitcast %union.acpi_object* %15 to i8**
  store i8* %79, i8** %80, align 8
  %81 = bitcast %union.acpi_object* %15 to %struct.TYPE_4__*
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 4, i32* %82, align 8
  %83 = bitcast %union.acpi_object* %15 to %struct.TYPE_4__*
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i32* %10, i32** %84, align 8
  br label %102

85:                                               ; preds = %65
  br label %86

86:                                               ; preds = %85, %56
  %87 = bitcast %union.acpi_object* %15 to %struct.TYPE_5__*
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %90 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %14, i64 0, i64 0
  %91 = bitcast %union.acpi_object* %90 to i8**
  store i8* %89, i8** %91, align 16
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %14, i64 0, i64 0
  %94 = bitcast %union.acpi_object* %93 to %struct.TYPE_6__*
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %95)
  %97 = icmp ne i32 %96, 1
  br i1 %97, label %98, label %101

98:                                               ; preds = %86
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %140

101:                                              ; preds = %86
  br label %102

102:                                              ; preds = %101, %78
  br label %103

103:                                              ; preds = %102, %57
  %104 = load %struct.tpm_chip*, %struct.tpm_chip** %16, align 8
  %105 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %109 = load i32, i32* %17, align 4
  %110 = call %union.acpi_object* @tpm_eval_dsm(i32 %106, i32 %107, i8* %108, %union.acpi_object* %15, i32 %109)
  store %union.acpi_object* %110, %union.acpi_object** %13, align 8
  %111 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %112 = icmp ne %union.acpi_object* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %103
  %114 = load i32, i32* @ENXIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %5, align 4
  br label %140

116:                                              ; preds = %103
  %117 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %118 = bitcast %union.acpi_object* %117 to %struct.TYPE_6__*
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %11, align 4
  %121 = load %union.acpi_object*, %union.acpi_object** %13, align 8
  %122 = call i32 @ACPI_FREE(%union.acpi_object* %121)
  br label %123

123:                                              ; preds = %116
  %124 = load i32, i32* %11, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i64, i64* %9, align 8
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %5, align 4
  br label %140

129:                                              ; preds = %123
  %130 = load i32, i32* %11, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* @EPERM, align 4
  %134 = sub nsw i32 0, %133
  br label %138

135:                                              ; preds = %129
  %136 = load i32, i32* @EFAULT, align 4
  %137 = sub nsw i32 0, %136
  br label %138

138:                                              ; preds = %135, %132
  %139 = phi i32 [ %134, %132 ], [ %137, %135 ]
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %138, %126, %113, %98, %75
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local { i64, i32* } @ACPI_INIT_DSM_ARGV4(i32, %union.acpi_object*) #1

declare dso_local %struct.tpm_chip* @to_tpm_chip(%struct.device*) #1

declare dso_local i64 @acpi_check_dsm(i32, i32*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local %union.acpi_object* @tpm_eval_dsm(i32, i32, i8*, %union.acpi_object*, i32) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
