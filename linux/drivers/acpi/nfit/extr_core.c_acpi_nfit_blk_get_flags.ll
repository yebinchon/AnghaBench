; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_blk_get_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_blk_get_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_bus_descriptor = type { i32 (%struct.nvdimm_bus_descriptor*, %struct.nvdimm*, i32, %struct.nd_cmd_dimm_flags*, i32, i32*)* }
%struct.nvdimm = type opaque
%struct.nd_cmd_dimm_flags = type opaque
%struct.nvdimm.0 = type { i32 }
%struct.nfit_blk = type { i32 }
%struct.nd_cmd_dimm_flags.1 = type { i64, i32 }

@ND_CMD_DIMM_FLAGS = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@NFIT_BLK_DCR_LATCH = common dso_local global i32 0, align 4
@NFIT_BLK_READ_FLUSH = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvdimm_bus_descriptor*, %struct.nvdimm.0*, %struct.nfit_blk*)* @acpi_nfit_blk_get_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_nfit_blk_get_flags(%struct.nvdimm_bus_descriptor* %0, %struct.nvdimm.0* %1, %struct.nfit_blk* %2) #0 {
  %4 = alloca %struct.nvdimm_bus_descriptor*, align 8
  %5 = alloca %struct.nvdimm.0*, align 8
  %6 = alloca %struct.nfit_blk*, align 8
  %7 = alloca %struct.nd_cmd_dimm_flags.1, align 8
  %8 = alloca i32, align 4
  store %struct.nvdimm_bus_descriptor* %0, %struct.nvdimm_bus_descriptor** %4, align 8
  store %struct.nvdimm.0* %1, %struct.nvdimm.0** %5, align 8
  store %struct.nfit_blk* %2, %struct.nfit_blk** %6, align 8
  %9 = call i32 @memset(%struct.nd_cmd_dimm_flags.1* %7, i32 0, i32 16)
  %10 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %4, align 8
  %11 = getelementptr inbounds %struct.nvdimm_bus_descriptor, %struct.nvdimm_bus_descriptor* %10, i32 0, i32 0
  %12 = load i32 (%struct.nvdimm_bus_descriptor*, %struct.nvdimm*, i32, %struct.nd_cmd_dimm_flags*, i32, i32*)*, i32 (%struct.nvdimm_bus_descriptor*, %struct.nvdimm*, i32, %struct.nd_cmd_dimm_flags*, i32, i32*)** %11, align 8
  %13 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %4, align 8
  %14 = load %struct.nvdimm.0*, %struct.nvdimm.0** %5, align 8
  %15 = bitcast %struct.nvdimm.0* %14 to %struct.nvdimm*
  %16 = load i32, i32* @ND_CMD_DIMM_FLAGS, align 4
  %17 = bitcast %struct.nd_cmd_dimm_flags.1* %7 to %struct.nd_cmd_dimm_flags*
  %18 = call i32 %12(%struct.nvdimm_bus_descriptor* %13, %struct.nvdimm* %15, i32 %16, %struct.nd_cmd_dimm_flags* %17, i32 16, i32* null)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.nd_cmd_dimm_flags.1, %struct.nd_cmd_dimm_flags.1* %7, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nd_cmd_dimm_flags.1, %struct.nd_cmd_dimm_flags.1* %7, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.nfit_blk*, %struct.nfit_blk** %6, align 8
  %29 = getelementptr inbounds %struct.nfit_blk, %struct.nfit_blk* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %45

30:                                               ; preds = %21, %3
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ENOTTY, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* @NFIT_BLK_DCR_LATCH, align 4
  %37 = load i32, i32* @NFIT_BLK_READ_FLUSH, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.nfit_blk*, %struct.nfit_blk** %6, align 8
  %40 = getelementptr inbounds %struct.nfit_blk, %struct.nfit_blk* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %8, align 4
  br label %44

41:                                               ; preds = %30
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %35
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local i32 @memset(%struct.nd_cmd_dimm_flags.1*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
