; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_knl_uncore_imc_enable_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_knl_uncore_imc_enable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.perf_event = type { %struct.TYPE_2__, %struct.hw_perf_event }
%struct.TYPE_2__ = type { i32 }
%struct.hw_perf_event = type { i32, i32 }

@SNBEP_PMON_CTL_EV_SEL_MASK = common dso_local global i32 0, align 4
@UNCORE_FIXED_EVENT = common dso_local global i32 0, align 4
@KNL_PMON_FIXED_CTL_EN = common dso_local global i32 0, align 4
@SNBEP_PMON_CTL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_box*, %struct.perf_event*)* @knl_uncore_imc_enable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @knl_uncore_imc_enable_event(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %7 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %8 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %7, i32 0, i32 0
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 1
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %6, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SNBEP_PMON_CTL_EV_SEL_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @UNCORE_FIXED_EVENT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %23 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %26 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @KNL_PMON_FIXED_CTL_EN, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @pci_write_config_dword(%struct.pci_dev* %21, i32 %24, i32 %29)
  br label %42

31:                                               ; preds = %2
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %34 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %37 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SNBEP_PMON_CTL_EN, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @pci_write_config_dword(%struct.pci_dev* %32, i32 %35, i32 %40)
  br label %42

42:                                               ; preds = %31, %20
  ret void
}

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
