; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_hw_error_scrub_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_hw_error_scrub_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nvdimm_bus_descriptor = type { i32 }
%struct.acpi_nfit_desc = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @hw_error_scrub_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hw_error_scrub_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nvdimm_bus_descriptor*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.acpi_nfit_desc*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @kstrtol(i8* %14, i32 0, i64* %12)
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* %11, align 8
  store i64 %19, i64* %5, align 8
  br label %50

20:                                               ; preds = %4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call i32 @nfit_device_lock(%struct.device* %21)
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call %struct.nvdimm_bus_descriptor* @dev_get_drvdata(%struct.device* %23)
  store %struct.nvdimm_bus_descriptor* %24, %struct.nvdimm_bus_descriptor** %10, align 8
  %25 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %10, align 8
  %26 = icmp ne %struct.nvdimm_bus_descriptor* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %20
  %28 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %10, align 8
  %29 = call %struct.acpi_nfit_desc* @to_acpi_desc(%struct.nvdimm_bus_descriptor* %28)
  store %struct.acpi_nfit_desc* %29, %struct.acpi_nfit_desc** %13, align 8
  %30 = load i64, i64* %12, align 8
  switch i64 %30, label %37 [
    i64 128, label %31
    i64 129, label %34
  ]

31:                                               ; preds = %27
  %32 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %13, align 8
  %33 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %32, i32 0, i32 0
  store i32 128, i32* %33, align 4
  br label %40

34:                                               ; preds = %27
  %35 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %13, align 8
  %36 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %35, i32 0, i32 0
  store i32 129, i32* %36, align 4
  br label %40

37:                                               ; preds = %27
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %11, align 8
  br label %40

40:                                               ; preds = %37, %34, %31
  br label %41

41:                                               ; preds = %40, %20
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = call i32 @nfit_device_unlock(%struct.device* %42)
  %44 = load i64, i64* %11, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i64, i64* %11, align 8
  store i64 %47, i64* %5, align 8
  br label %50

48:                                               ; preds = %41
  %49 = load i64, i64* %9, align 8
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %48, %46, %18
  %51 = load i64, i64* %5, align 8
  ret i64 %51
}

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @nfit_device_lock(%struct.device*) #1

declare dso_local %struct.nvdimm_bus_descriptor* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.acpi_nfit_desc* @to_acpi_desc(%struct.nvdimm_bus_descriptor*) #1

declare dso_local i32 @nfit_device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
