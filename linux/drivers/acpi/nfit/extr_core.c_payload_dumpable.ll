; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_payload_dumpable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_payload_dumpable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm = type { i32 }
%struct.nfit_mem = type { i64 }

@NVDIMM_FAMILY_INTEL = common dso_local global i64 0, align 8
@NVDIMM_INTEL_GET_SECURITY_STATE = common dso_local global i32 0, align 4
@NVDIMM_INTEL_MASTER_SECURE_ERASE = common dso_local global i32 0, align 4
@CONFIG_NFIT_SECURITY_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvdimm*, i32)* @payload_dumpable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @payload_dumpable(%struct.nvdimm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvdimm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfit_mem*, align 8
  store %struct.nvdimm* %0, %struct.nvdimm** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nvdimm*, %struct.nvdimm** %4, align 8
  %8 = call %struct.nfit_mem* @nvdimm_provider_data(%struct.nvdimm* %7)
  store %struct.nfit_mem* %8, %struct.nfit_mem** %6, align 8
  %9 = load %struct.nfit_mem*, %struct.nfit_mem** %6, align 8
  %10 = icmp ne %struct.nfit_mem* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load %struct.nfit_mem*, %struct.nfit_mem** %6, align 8
  %13 = getelementptr inbounds %struct.nfit_mem, %struct.nfit_mem* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NVDIMM_FAMILY_INTEL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @NVDIMM_INTEL_GET_SECURITY_STATE, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @NVDIMM_INTEL_MASTER_SECURE_ERASE, align 4
  %24 = icmp ule i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @CONFIG_NFIT_SECURITY_DEBUG, align 4
  %27 = call i32 @IS_ENABLED(i32 %26)
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %21, %17, %11, %2
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.nfit_mem* @nvdimm_provider_data(%struct.nvdimm*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
