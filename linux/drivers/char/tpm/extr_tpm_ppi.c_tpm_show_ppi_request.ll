; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ppi.c_tpm_show_ppi_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ppi.c_tpm_show_ppi_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%union.acpi_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.tpm_chip = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TPM_PPI_REVISION_ID_2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"1.2\00", align 1
@TPM_PPI_REVISION_ID_1 = common dso_local global i64 0, align 8
@TPM_PPI_FN_GETREQ = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%llu %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @tpm_show_ppi_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_show_ppi_request(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_object*, align 8
  %10 = alloca %struct.tpm_chip*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.tpm_chip* @to_tpm_chip(%struct.device* %15)
  store %struct.tpm_chip* %16, %struct.tpm_chip** %10, align 8
  %17 = load i64, i64* @TPM_PPI_REVISION_ID_2, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.tpm_chip*, %struct.tpm_chip** %10, align 8
  %19 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @strcmp(i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i64, i64* @TPM_PPI_REVISION_ID_1, align 8
  store i64 %24, i64* %11, align 8
  br label %25

25:                                               ; preds = %23, %3
  %26 = load %struct.tpm_chip*, %struct.tpm_chip** %10, align 8
  %27 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TPM_PPI_FN_GETREQ, align 4
  %30 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %31 = load i64, i64* %11, align 8
  %32 = call %union.acpi_object* @tpm_eval_dsm(i32 %28, i32 %29, i32 %30, i32* null, i64 %31)
  store %union.acpi_object* %32, %union.acpi_object** %9, align 8
  %33 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %34 = icmp ne %union.acpi_object* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @ENXIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %176

38:                                               ; preds = %25
  %39 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %40 = bitcast %union.acpi_object* %39 to %struct.TYPE_6__*
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %119

44:                                               ; preds = %38
  %45 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %46 = bitcast %union.acpi_object* %45 to %struct.TYPE_6__*
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %119

54:                                               ; preds = %44
  %55 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %56 = bitcast %union.acpi_object* %55 to %struct.TYPE_6__*
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %119

64:                                               ; preds = %54
  %65 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %66 = bitcast %union.acpi_object* %65 to %struct.TYPE_6__*
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %119

74:                                               ; preds = %64
  %75 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %76 = bitcast %union.acpi_object* %75 to %struct.TYPE_6__*
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load i32, i32* @EFAULT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %8, align 4
  br label %118

87:                                               ; preds = %74
  %88 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %89 = bitcast %union.acpi_object* %88 to %struct.TYPE_6__*
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %12, align 8
  %96 = load i64, i64* %12, align 8
  %97 = call i64 @tpm_ppi_req_has_parameter(i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %87
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* @PAGE_SIZE, align 4
  %102 = load i64, i64* %12, align 8
  %103 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %104 = bitcast %union.acpi_object* %103 to %struct.TYPE_6__*
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 2
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 (i8*, i32, i8*, i64, ...) @scnprintf(i8* %100, i32 %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %102, i64 %110)
  store i32 %111, i32* %8, align 4
  br label %117

112:                                              ; preds = %87
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* @PAGE_SIZE, align 4
  %115 = load i64, i64* %12, align 8
  %116 = call i32 (i8*, i32, i8*, i64, ...) @scnprintf(i8* %113, i32 %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %115)
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %112, %99
  br label %118

118:                                              ; preds = %117, %84
  br label %172

119:                                              ; preds = %64, %54, %44, %38
  %120 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %121 = bitcast %union.acpi_object* %120 to %struct.TYPE_6__*
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %125, label %171

125:                                              ; preds = %119
  %126 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %127 = bitcast %union.acpi_object* %126 to %struct.TYPE_6__*
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %171

135:                                              ; preds = %125
  %136 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %137 = bitcast %union.acpi_object* %136 to %struct.TYPE_6__*
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 1
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %171

145:                                              ; preds = %135
  %146 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %147 = bitcast %union.acpi_object* %146 to %struct.TYPE_6__*
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %145
  %156 = load i32, i32* @EFAULT, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %8, align 4
  br label %170

158:                                              ; preds = %145
  %159 = load i8*, i8** %7, align 8
  %160 = load i32, i32* @PAGE_SIZE, align 4
  %161 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %162 = bitcast %union.acpi_object* %161 to %struct.TYPE_6__*
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 1
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i32 (i8*, i32, i8*, i64, ...) @scnprintf(i8* %159, i32 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %168)
  store i32 %169, i32* %8, align 4
  br label %170

170:                                              ; preds = %158, %155
  br label %171

171:                                              ; preds = %170, %135, %125, %119
  br label %172

172:                                              ; preds = %171, %118
  %173 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %174 = call i32 @ACPI_FREE(%union.acpi_object* %173)
  %175 = load i32, i32* %8, align 4
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %172, %35
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local %struct.tpm_chip* @to_tpm_chip(%struct.device*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %union.acpi_object* @tpm_eval_dsm(i32, i32, i32, i32*, i64) #1

declare dso_local i64 @tpm_ppi_req_has_parameter(i64) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i64, ...) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
