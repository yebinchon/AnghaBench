; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_snbep_qpi_enable_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_snbep_qpi_enable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.pci_dev** }
%struct.pci_dev = type { i32 }
%struct.intel_uncore_box = type { i32, %struct.TYPE_3__*, %struct.pci_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i64, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i64 }

@EXTRA_REG_NONE = common dso_local global i64 0, align 8
@SNBEP_PCI_QPI_PORT0_FILTER = common dso_local global i32 0, align 4
@uncore_extra_pci_dev = common dso_local global %struct.TYPE_4__* null, align 8
@SNBEP_PMON_CTL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_box*, %struct.perf_event*)* @snbep_qpi_enable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snbep_qpi_enable_event(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca %struct.hw_perf_event_extra*, align 8
  %8 = alloca %struct.hw_perf_event_extra*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_dev*, align 8
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %12 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %13 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %12, i32 0, i32 2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %5, align 8
  %15 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 0
  store %struct.hw_perf_event* %16, %struct.hw_perf_event** %6, align 8
  %17 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %18 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %17, i32 0, i32 3
  store %struct.hw_perf_event_extra* %18, %struct.hw_perf_event_extra** %7, align 8
  %19 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %20 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %19, i32 0, i32 2
  store %struct.hw_perf_event_extra* %20, %struct.hw_perf_event_extra** %8, align 8
  %21 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %22 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @EXTRA_REG_NONE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %87

26:                                               ; preds = %2
  %27 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %28 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SNBEP_PCI_QPI_PORT0_FILTER, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %35 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uncore_extra_pci_dev, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.pci_dev**, %struct.pci_dev*** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %42, i64 %44
  %46 = load %struct.pci_dev*, %struct.pci_dev** %45, align 8
  store %struct.pci_dev* %46, %struct.pci_dev** %11, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %48 = icmp ne %struct.pci_dev* %47, null
  br i1 %48, label %49, label %86

49:                                               ; preds = %26
  %50 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %51 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %52 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %55 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pci_write_config_dword(%struct.pci_dev* %50, i64 %53, i32 %56)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %59 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %60 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 4
  %63 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %64 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = ashr i32 %65, 32
  %67 = call i32 @pci_write_config_dword(%struct.pci_dev* %58, i64 %62, i32 %66)
  %68 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %69 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %70 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %73 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @pci_write_config_dword(%struct.pci_dev* %68, i64 %71, i32 %74)
  %76 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %77 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %78 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 4
  %81 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %82 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = ashr i32 %83, 32
  %85 = call i32 @pci_write_config_dword(%struct.pci_dev* %76, i64 %80, i32 %84)
  br label %86

86:                                               ; preds = %49, %26
  br label %87

87:                                               ; preds = %86, %2
  %88 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %89 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %90 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %93 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SNBEP_PMON_CTL_EN, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @pci_write_config_dword(%struct.pci_dev* %88, i64 %91, i32 %96)
  ret void
}

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
