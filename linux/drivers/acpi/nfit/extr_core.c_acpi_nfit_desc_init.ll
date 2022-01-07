; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_desc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_desc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_nfit_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvdimm_bus_descriptor, i32, %struct.device* }
%struct.nvdimm_bus_descriptor = type { i8*, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@acpi_nfit_blk_region_do_io = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ACPI.NFIT\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@acpi_nfit_ctl = common dso_local global i32 0, align 4
@acpi_nfit_flush_probe = common dso_local global i32 0, align 4
@acpi_nfit_clear_to_send = common dso_local global i32 0, align 4
@acpi_nfit_attribute_groups = common dso_local global i32 0, align 4
@acpi_nfit_scrub = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_nfit_desc_init(%struct.acpi_nfit_desc* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.acpi_nfit_desc*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nvdimm_bus_descriptor*, align 8
  store %struct.acpi_nfit_desc* %0, %struct.acpi_nfit_desc** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %6 = load %struct.device*, %struct.device** %4, align 8
  %7 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %8 = call i32 @dev_set_drvdata(%struct.device* %6, %struct.acpi_nfit_desc* %7)
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %10, i32 0, i32 13
  store %struct.device* %9, %struct.device** %11, align 8
  %12 = load i32, i32* @acpi_nfit_blk_region_do_io, align 4
  %13 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %13, i32 0, i32 12
  store i32 %12, i32* %14, align 8
  %15 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %15, i32 0, i32 11
  store %struct.nvdimm_bus_descriptor* %16, %struct.nvdimm_bus_descriptor** %5, align 8
  %17 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %5, align 8
  %18 = getelementptr inbounds %struct.nvdimm_bus_descriptor, %struct.nvdimm_bus_descriptor* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = load i32, i32* @THIS_MODULE, align 4
  %20 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %5, align 8
  %21 = getelementptr inbounds %struct.nvdimm_bus_descriptor, %struct.nvdimm_bus_descriptor* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @acpi_nfit_ctl, align 4
  %23 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %5, align 8
  %24 = getelementptr inbounds %struct.nvdimm_bus_descriptor, %struct.nvdimm_bus_descriptor* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @acpi_nfit_flush_probe, align 4
  %26 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %5, align 8
  %27 = getelementptr inbounds %struct.nvdimm_bus_descriptor, %struct.nvdimm_bus_descriptor* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @acpi_nfit_clear_to_send, align 4
  %29 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %5, align 8
  %30 = getelementptr inbounds %struct.nvdimm_bus_descriptor, %struct.nvdimm_bus_descriptor* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @acpi_nfit_attribute_groups, align 4
  %32 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %5, align 8
  %33 = getelementptr inbounds %struct.nvdimm_bus_descriptor, %struct.nvdimm_bus_descriptor* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %35 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %34, i32 0, i32 10
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %37, i32 0, i32 9
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %41 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %40, i32 0, i32 8
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %44 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %43, i32 0, i32 7
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %47 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %46, i32 0, i32 6
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %50 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %49, i32 0, i32 5
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %53 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %52, i32 0, i32 4
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %56 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %55, i32 0, i32 3
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %59 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %58, i32 0, i32 2
  %60 = call i32 @mutex_init(i32* %59)
  %61 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %62 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %3, align 8
  %64 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %63, i32 0, i32 1
  %65 = load i32, i32* @acpi_nfit_scrub, align 4
  %66 = call i32 @INIT_DELAYED_WORK(i32* %64, i32 %65)
  ret void
}

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.acpi_nfit_desc*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
