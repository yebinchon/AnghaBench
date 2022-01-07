; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ppi.c_tpm_show_ppi_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ppi.c_tpm_show_ppi_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %union.acpi_object* }
%struct.tpm_chip = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TPM_PPI_FN_GETRSP = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@TPM_PPI_REVISION_ID_1 = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%llu %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"0: Success\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"0xFFFFFFF0: User Abort\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"0xFFFFFFF1: BIOS Failure\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%llu %llu: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Corresponding TPM error\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%llu: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"No Recent Request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @tpm_show_ppi_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_show_ppi_response(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_object*, align 8
  %10 = alloca %union.acpi_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tpm_chip*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.tpm_chip* @to_tpm_chip(%struct.device* %16)
  store %struct.tpm_chip* %17, %struct.tpm_chip** %13, align 8
  %18 = load %struct.tpm_chip*, %struct.tpm_chip** %13, align 8
  %19 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TPM_PPI_FN_GETRSP, align 4
  %22 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %23 = load i32, i32* @TPM_PPI_REVISION_ID_1, align 4
  %24 = call %union.acpi_object* @tpm_eval_dsm(i32 %20, i32 %21, i32 %22, i32* null, i32 %23)
  store %union.acpi_object* %24, %union.acpi_object** %9, align 8
  %25 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %26 = icmp ne %union.acpi_object* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %141

30:                                               ; preds = %3
  %31 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %32 = bitcast %union.acpi_object* %31 to %struct.TYPE_3__*
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load %union.acpi_object*, %union.acpi_object** %33, align 8
  store %union.acpi_object* %34, %union.acpi_object** %10, align 8
  %35 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %36 = bitcast %union.acpi_object* %35 to %struct.TYPE_3__*
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 3
  br i1 %39, label %61, label %40

40:                                               ; preds = %30
  %41 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %42 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %41, i64 0
  %43 = bitcast %union.acpi_object* %42 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %61, label %47

47:                                               ; preds = %40
  %48 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %49 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %48, i64 1
  %50 = bitcast %union.acpi_object* %49 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %56 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %55, i64 2
  %57 = bitcast %union.acpi_object* %56 to i64*
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54, %47, %40, %30
  br label %137

62:                                               ; preds = %54
  %63 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %64 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %63, i64 0
  %65 = bitcast %union.acpi_object* %64 to %struct.TYPE_4__*
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* @EFAULT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %137

72:                                               ; preds = %62
  %73 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %74 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %73, i64 1
  %75 = bitcast %union.acpi_object* %74 to %struct.TYPE_4__*
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %11, align 4
  %78 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %79 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %78, i64 2
  %80 = bitcast %union.acpi_object* %79 to %struct.TYPE_4__*
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %131

85:                                               ; preds = %72
  %86 = load i32, i32* %12, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* @PAGE_SIZE, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %89, i32 %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %92, i32* %8, align 4
  br label %130

93:                                               ; preds = %85
  %94 = load i32, i32* %12, align 4
  %95 = icmp eq i32 %94, -16
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* @PAGE_SIZE, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %97, i32 %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 %100, i32* %8, align 4
  br label %129

101:                                              ; preds = %93
  %102 = load i32, i32* %12, align 4
  %103 = icmp eq i32 %102, -15
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i8*, i8** %7, align 8
  %106 = load i32, i32* @PAGE_SIZE, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %105, i32 %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 %108, i32* %8, align 4
  br label %128

109:                                              ; preds = %101
  %110 = load i32, i32* %12, align 4
  %111 = icmp sge i32 %110, 1
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load i32, i32* %12, align 4
  %114 = icmp sle i32 %113, 4095
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i8*, i8** %7, align 8
  %117 = load i32, i32* @PAGE_SIZE, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %12, align 4
  %120 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %116, i32 %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %118, i32 %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i32 %120, i32* %8, align 4
  br label %127

121:                                              ; preds = %112, %109
  %122 = load i8*, i8** %7, align 8
  %123 = load i32, i32* @PAGE_SIZE, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %122, i32 %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %124, i32 %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %121, %115
  br label %128

128:                                              ; preds = %127, %104
  br label %129

129:                                              ; preds = %128, %96
  br label %130

130:                                              ; preds = %129, %88
  br label %136

131:                                              ; preds = %72
  %132 = load i8*, i8** %7, align 8
  %133 = load i32, i32* @PAGE_SIZE, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %132, i32 %133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %134, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %131, %130
  br label %137

137:                                              ; preds = %136, %69, %61
  %138 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %139 = call i32 @ACPI_FREE(%union.acpi_object* %138)
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %137, %27
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local %struct.tpm_chip* @to_tpm_chip(%struct.device*) #1

declare dso_local %union.acpi_object* @tpm_eval_dsm(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
