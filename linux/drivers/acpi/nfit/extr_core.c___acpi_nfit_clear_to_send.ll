; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c___acpi_nfit_clear_to_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c___acpi_nfit_clear_to_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_bus_descriptor = type { i32 }
%struct.nvdimm = type { i32 }
%struct.acpi_nfit_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ND_CMD_ARS_START = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvdimm_bus_descriptor*, %struct.nvdimm*, i32)* @__acpi_nfit_clear_to_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__acpi_nfit_clear_to_send(%struct.nvdimm_bus_descriptor* %0, %struct.nvdimm* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvdimm_bus_descriptor*, align 8
  %6 = alloca %struct.nvdimm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_nfit_desc*, align 8
  store %struct.nvdimm_bus_descriptor* %0, %struct.nvdimm_bus_descriptor** %5, align 8
  store %struct.nvdimm* %1, %struct.nvdimm** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %5, align 8
  %10 = call %struct.acpi_nfit_desc* @to_acpi_desc(%struct.nvdimm_bus_descriptor* %9)
  store %struct.acpi_nfit_desc* %10, %struct.acpi_nfit_desc** %8, align 8
  %11 = load %struct.nvdimm*, %struct.nvdimm** %6, align 8
  %12 = icmp ne %struct.nvdimm* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %29

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @ND_CMD_ARS_START, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %29

19:                                               ; preds = %14
  %20 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %8, align 8
  %21 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i64 @work_busy(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %29

28:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %25, %18, %13
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.acpi_nfit_desc* @to_acpi_desc(%struct.nvdimm_bus_descriptor*) #1

declare dso_local i64 @work_busy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
