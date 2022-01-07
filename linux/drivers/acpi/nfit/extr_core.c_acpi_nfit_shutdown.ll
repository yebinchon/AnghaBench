; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_nfit_desc = type { i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@acpi_desc_lock = common dso_local global i32 0, align 4
@ARS_CANCEL = common dso_local global i32 0, align 4
@nfit_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_nfit_shutdown(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.acpi_nfit_desc*, align 8
  %4 = alloca %struct.device*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.acpi_nfit_desc*
  store %struct.acpi_nfit_desc* %6, %struct.acpi_nfit_desc** %3, align 8
  %7 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.device* @to_nvdimm_bus_dev(i32 %9)
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = call i32 @mutex_lock(i32* @acpi_desc_lock)
  %12 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %12, i32 0, i32 3
  %14 = call i32 @list_del(i32* %13)
  %15 = call i32 @mutex_unlock(i32* @acpi_desc_lock)
  %16 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* @ARS_CANCEL, align 4
  %20 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %20, i32 0, i32 2
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  %23 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %23, i32 0, i32 1
  %25 = call i32 @cancel_delayed_work_sync(i32* %24)
  %26 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %27 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @nfit_device_lock(%struct.device* %29)
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 @nfit_device_unlock(%struct.device* %31)
  %33 = load i32, i32* @nfit_wq, align 4
  %34 = call i32 @flush_workqueue(i32 %33)
  ret void
}

declare dso_local %struct.device* @to_nvdimm_bus_dev(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @nfit_device_lock(%struct.device*) #1

declare dso_local i32 @nfit_device_unlock(%struct.device*) #1

declare dso_local i32 @flush_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
