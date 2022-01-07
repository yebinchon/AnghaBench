; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snb.c_snb_uncore_imc_init_box.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snb.c_snb_uncore_imc_init_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@SNB_UNCORE_PCI_IMC_BAR_OFFSET = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SNB_UNCORE_PCI_IMC_MAP_SIZE = common dso_local global i32 0, align 4
@UNCORE_SNB_IMC_HRTIMER_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_box*)* @snb_uncore_imc_init_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snb_uncore_imc_init_box(%struct.intel_uncore_box* %0) #0 {
  %2 = alloca %struct.intel_uncore_box*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %2, align 8
  %7 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %2, align 8
  %8 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %7, i32 0, i32 2
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %3, align 8
  %10 = load i32, i32* @SNB_UNCORE_PCI_IMC_BAR_OFFSET, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @pci_read_config_dword(%struct.pci_dev* %11, i32 %12, i32* %6)
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = sub nsw i32 %15, 1
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SNB_UNCORE_PCI_IMC_MAP_SIZE, align 4
  %22 = call i32 @ioremap(i32 %20, i32 %21)
  %23 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %2, align 8
  %24 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @UNCORE_SNB_IMC_HRTIMER_INTERVAL, align 4
  %26 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %2, align 8
  %27 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  ret void
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @ioremap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
