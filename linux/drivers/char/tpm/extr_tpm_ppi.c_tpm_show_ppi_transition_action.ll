; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ppi.c_tpm_show_ppi_transition_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ppi.c_tpm_show_ppi_transition_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i32 }
%struct.tpm_chip = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ACPI_TYPE_BUFFER = common dso_local global i32 0, align 4
@tpm_show_ppi_transition_action.info = internal global [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Shutdown\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Reboot\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"OS Vendor-specific\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"1.2\00", align 1
@TPM_PPI_FN_GETACT = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@TPM_PPI_REVISION_ID_1 = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"%d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @tpm_show_ppi_transition_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_show_ppi_transition_action(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.acpi_object*, align 8
  %11 = alloca %union.acpi_object, align 8
  %12 = alloca %struct.tpm_chip*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store %union.acpi_object* null, %union.acpi_object** %10, align 8
  %13 = bitcast %union.acpi_object* %11 to %struct.TYPE_3__*
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %17 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  store i32 %17, i32* %16, align 4
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call %struct.tpm_chip* @to_tpm_chip(%struct.device* %18)
  store %struct.tpm_chip* %19, %struct.tpm_chip** %12, align 8
  %20 = load %struct.tpm_chip*, %struct.tpm_chip** %12, align 8
  %21 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strcmp(i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store %union.acpi_object* %11, %union.acpi_object** %10, align 8
  br label %26

26:                                               ; preds = %25, %3
  %27 = load %struct.tpm_chip*, %struct.tpm_chip** %12, align 8
  %28 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TPM_PPI_FN_GETACT, align 4
  %31 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %32 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %33 = load i32, i32* @TPM_PPI_REVISION_ID_1, align 4
  %34 = call %union.acpi_object* @tpm_eval_dsm(i32 %29, i32 %30, i32 %31, %union.acpi_object* %32, i32 %33)
  store %union.acpi_object* %34, %union.acpi_object** %10, align 8
  %35 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %36 = icmp ne %union.acpi_object* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %26
  %38 = load i32, i32* @ENXIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %73

40:                                               ; preds = %26
  %41 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %42 = bitcast %union.acpi_object* %41 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %8, align 4
  %45 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %46 = call i32 @ACPI_FREE(%union.acpi_object* %45)
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @tpm_show_ppi_transition_action.info, i64 0, i64 0))
  %50 = sub nsw i32 %49, 1
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [5 x i8*], [5 x i8*]* @tpm_show_ppi_transition_action.info, i64 0, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @scnprintf(i8* %53, i32 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %55, i8* %59)
  store i32 %60, i32* %9, align 4
  br label %71

61:                                               ; preds = %47
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @tpm_show_ppi_transition_action.info, i64 0, i64 0))
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [5 x i8*], [5 x i8*]* @tpm_show_ppi_transition_action.info, i64 0, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @scnprintf(i8* %62, i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %64, i8* %69)
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %61, %52
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %37
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.tpm_chip* @to_tpm_chip(%struct.device*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %union.acpi_object* @tpm_eval_dsm(i32, i32, i32, %union.acpi_object*, i32) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
