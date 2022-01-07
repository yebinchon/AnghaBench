; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_ars_get_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_ars_get_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_nfit_desc = type { %struct.nvdimm_bus_descriptor }
%struct.nvdimm_bus_descriptor = type { i32 (%struct.nvdimm_bus_descriptor*, i32*, i32, %struct.nd_cmd_ars_cap*, i32, i32*)* }
%struct.nd_cmd_ars_cap = type opaque
%struct.nd_cmd_ars_cap.0 = type { i32, i32 }
%struct.nfit_spa = type { %struct.acpi_nfit_system_address* }
%struct.acpi_nfit_system_address = type { i32, i32 }

@ND_CMD_ARS_CAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_nfit_desc*, %struct.nd_cmd_ars_cap.0*, %struct.nfit_spa*)* @ars_get_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ars_get_cap(%struct.acpi_nfit_desc* %0, %struct.nd_cmd_ars_cap.0* %1, %struct.nfit_spa* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_nfit_desc*, align 8
  %6 = alloca %struct.nd_cmd_ars_cap.0*, align 8
  %7 = alloca %struct.nfit_spa*, align 8
  %8 = alloca %struct.nvdimm_bus_descriptor*, align 8
  %9 = alloca %struct.acpi_nfit_system_address*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.acpi_nfit_desc* %0, %struct.acpi_nfit_desc** %5, align 8
  store %struct.nd_cmd_ars_cap.0* %1, %struct.nd_cmd_ars_cap.0** %6, align 8
  store %struct.nfit_spa* %2, %struct.nfit_spa** %7, align 8
  %12 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %13 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %12, i32 0, i32 0
  store %struct.nvdimm_bus_descriptor* %13, %struct.nvdimm_bus_descriptor** %8, align 8
  %14 = load %struct.nfit_spa*, %struct.nfit_spa** %7, align 8
  %15 = getelementptr inbounds %struct.nfit_spa, %struct.nfit_spa* %14, i32 0, i32 0
  %16 = load %struct.acpi_nfit_system_address*, %struct.acpi_nfit_system_address** %15, align 8
  store %struct.acpi_nfit_system_address* %16, %struct.acpi_nfit_system_address** %9, align 8
  %17 = load %struct.acpi_nfit_system_address*, %struct.acpi_nfit_system_address** %9, align 8
  %18 = getelementptr inbounds %struct.acpi_nfit_system_address, %struct.acpi_nfit_system_address* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nd_cmd_ars_cap.0*, %struct.nd_cmd_ars_cap.0** %6, align 8
  %21 = getelementptr inbounds %struct.nd_cmd_ars_cap.0, %struct.nd_cmd_ars_cap.0* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.acpi_nfit_system_address*, %struct.acpi_nfit_system_address** %9, align 8
  %23 = getelementptr inbounds %struct.acpi_nfit_system_address, %struct.acpi_nfit_system_address* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nd_cmd_ars_cap.0*, %struct.nd_cmd_ars_cap.0** %6, align 8
  %26 = getelementptr inbounds %struct.nd_cmd_ars_cap.0, %struct.nd_cmd_ars_cap.0* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %8, align 8
  %28 = getelementptr inbounds %struct.nvdimm_bus_descriptor, %struct.nvdimm_bus_descriptor* %27, i32 0, i32 0
  %29 = load i32 (%struct.nvdimm_bus_descriptor*, i32*, i32, %struct.nd_cmd_ars_cap*, i32, i32*)*, i32 (%struct.nvdimm_bus_descriptor*, i32*, i32, %struct.nd_cmd_ars_cap*, i32, i32*)** %28, align 8
  %30 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %8, align 8
  %31 = load i32, i32* @ND_CMD_ARS_CAP, align 4
  %32 = load %struct.nd_cmd_ars_cap.0*, %struct.nd_cmd_ars_cap.0** %6, align 8
  %33 = bitcast %struct.nd_cmd_ars_cap.0* %32 to %struct.nd_cmd_ars_cap*
  %34 = call i32 %29(%struct.nvdimm_bus_descriptor* %30, i32* null, i32 %31, %struct.nd_cmd_ars_cap* %33, i32 8, i32* %10)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %4, align 4
  br label %41

39:                                               ; preds = %3
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
