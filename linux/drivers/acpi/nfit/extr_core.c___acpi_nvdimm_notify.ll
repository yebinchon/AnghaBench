; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c___acpi_nvdimm_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c___acpi_nvdimm_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device* }
%struct.nfit_mem = type { i64 }
%struct.acpi_nfit_desc = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s: event: %d\0A\00", align 1
@NFIT_NOTIFY_DIMM_HEALTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: unknown event: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__acpi_nvdimm_notify(%struct.device* %0, i64 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nfit_mem*, align 8
  %6 = alloca %struct.acpi_nfit_desc*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load %struct.device*, %struct.device** %8, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i32 @dev_name(%struct.device* %10)
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @dev_dbg(%struct.device* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %11, i64 %12)
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @NFIT_NOTIFY_DIMM_HEALTH, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = call i32 @dev_name(%struct.device* %21)
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @dev_dbg(%struct.device* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %22, i64 %23)
  br label %50

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load %struct.device*, %struct.device** %27, align 8
  %29 = call i8* @dev_get_drvdata(%struct.device* %28)
  %30 = bitcast i8* %29 to %struct.acpi_nfit_desc*
  store %struct.acpi_nfit_desc* %30, %struct.acpi_nfit_desc** %6, align 8
  %31 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %6, align 8
  %32 = icmp ne %struct.acpi_nfit_desc* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %50

34:                                               ; preds = %25
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = call i8* @dev_get_drvdata(%struct.device* %35)
  %37 = bitcast i8* %36 to %struct.nfit_mem*
  store %struct.nfit_mem* %37, %struct.nfit_mem** %5, align 8
  %38 = load %struct.nfit_mem*, %struct.nfit_mem** %5, align 8
  %39 = icmp ne %struct.nfit_mem* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load %struct.nfit_mem*, %struct.nfit_mem** %5, align 8
  %42 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.nfit_mem*, %struct.nfit_mem** %5, align 8
  %47 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @sysfs_notify_dirent(i64 %48)
  br label %50

50:                                               ; preds = %17, %33, %45, %40, %34
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i8* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sysfs_notify_dirent(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
