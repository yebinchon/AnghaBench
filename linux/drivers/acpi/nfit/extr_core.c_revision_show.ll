; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_revision_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_revision_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nvdimm_bus = type { i32 }
%struct.nvdimm_bus_descriptor = type { i32 }
%struct.acpi_nfit_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @revision_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @revision_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nvdimm_bus*, align 8
  %8 = alloca %struct.nvdimm_bus_descriptor*, align 8
  %9 = alloca %struct.acpi_nfit_desc*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.nvdimm_bus* @to_nvdimm_bus(%struct.device* %10)
  store %struct.nvdimm_bus* %11, %struct.nvdimm_bus** %7, align 8
  %12 = load %struct.nvdimm_bus*, %struct.nvdimm_bus** %7, align 8
  %13 = call %struct.nvdimm_bus_descriptor* @to_nd_desc(%struct.nvdimm_bus* %12)
  store %struct.nvdimm_bus_descriptor* %13, %struct.nvdimm_bus_descriptor** %8, align 8
  %14 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %8, align 8
  %15 = call %struct.acpi_nfit_desc* @to_acpi_desc(%struct.nvdimm_bus_descriptor* %14)
  store %struct.acpi_nfit_desc* %15, %struct.acpi_nfit_desc** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %9, align 8
  %18 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %20)
  ret i32 %21
}

declare dso_local %struct.nvdimm_bus* @to_nvdimm_bus(%struct.device*) #1

declare dso_local %struct.nvdimm_bus_descriptor* @to_nd_desc(%struct.nvdimm_bus*) #1

declare dso_local %struct.acpi_nfit_desc* @to_acpi_desc(%struct.nvdimm_bus_descriptor*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
