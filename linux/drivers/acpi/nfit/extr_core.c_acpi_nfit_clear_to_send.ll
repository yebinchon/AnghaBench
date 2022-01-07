; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_clear_to_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_clear_to_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_bus_descriptor = type { i32 }
%struct.nvdimm = type { i32 }
%struct.nd_cmd_pkg = type { i64, i32 }

@ND_CMD_CALL = common dso_local global i32 0, align 4
@NVDIMM_FAMILY_INTEL = common dso_local global i64 0, align 8
@NVDIMM_INTEL_SECURITY_CMDMASK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvdimm_bus_descriptor*, %struct.nvdimm*, i32, i8*)* @acpi_nfit_clear_to_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_nfit_clear_to_send(%struct.nvdimm_bus_descriptor* %0, %struct.nvdimm* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvdimm_bus_descriptor*, align 8
  %7 = alloca %struct.nvdimm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nd_cmd_pkg*, align 8
  %11 = alloca i32, align 4
  store %struct.nvdimm_bus_descriptor* %0, %struct.nvdimm_bus_descriptor** %6, align 8
  store %struct.nvdimm* %1, %struct.nvdimm** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.nd_cmd_pkg*
  store %struct.nd_cmd_pkg* %13, %struct.nd_cmd_pkg** %10, align 8
  %14 = load %struct.nvdimm*, %struct.nvdimm** %7, align 8
  %15 = icmp ne %struct.nvdimm* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @ND_CMD_CALL, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load %struct.nd_cmd_pkg*, %struct.nd_cmd_pkg** %10, align 8
  %22 = getelementptr inbounds %struct.nd_cmd_pkg, %struct.nd_cmd_pkg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NVDIMM_FAMILY_INTEL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.nd_cmd_pkg*, %struct.nd_cmd_pkg** %10, align 8
  %28 = getelementptr inbounds %struct.nd_cmd_pkg, %struct.nd_cmd_pkg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = shl i32 1, %30
  %32 = load i32, i32* @NVDIMM_INTEL_SECURITY_CMDMASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %44

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %20, %16, %4
  %40 = load %struct.nvdimm_bus_descriptor*, %struct.nvdimm_bus_descriptor** %6, align 8
  %41 = load %struct.nvdimm*, %struct.nvdimm** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @__acpi_nfit_clear_to_send(%struct.nvdimm_bus_descriptor* %40, %struct.nvdimm* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @__acpi_nfit_clear_to_send(%struct.nvdimm_bus_descriptor*, %struct.nvdimm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
