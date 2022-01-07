; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_snr_uncore_mmio_init_box.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_snr_uncore_mmio_init_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { i32, i32 }
%struct.pci_dev = type { i32 }

@SNR_IMC_MMIO_BASE_OFFSET = common dso_local global i32 0, align 4
@SNR_IMC_MMIO_BASE_MASK = common dso_local global i32 0, align 4
@SNR_IMC_MMIO_MEM0_OFFSET = common dso_local global i32 0, align 4
@SNR_IMC_MMIO_MEM0_MASK = common dso_local global i32 0, align 4
@SNR_IMC_MMIO_SIZE = common dso_local global i32 0, align 4
@IVBEP_PMON_BOX_CTL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_box*)* @snr_uncore_mmio_init_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snr_uncore_mmio_init_box(%struct.intel_uncore_box* %0) #0 {
  %2 = alloca %struct.intel_uncore_box*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %2, align 8
  %7 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %2, align 8
  %8 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.pci_dev* @snr_uncore_get_mc_dev(i32 %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %3, align 8
  %11 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %2, align 8
  %12 = call i32 @uncore_mmio_box_ctl(%struct.intel_uncore_box* %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = icmp ne %struct.pci_dev* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %52

16:                                               ; preds = %1
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = load i32, i32* @SNR_IMC_MMIO_BASE_OFFSET, align 4
  %19 = call i32 @pci_read_config_dword(%struct.pci_dev* %17, i32 %18, i32* %6)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SNR_IMC_MMIO_BASE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = shl i32 %22, 23
  store i32 %23, i32* %5, align 4
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = load i32, i32* @SNR_IMC_MMIO_MEM0_OFFSET, align 4
  %26 = call i32 @pci_read_config_dword(%struct.pci_dev* %24, i32 %25, i32* %6)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SNR_IMC_MMIO_MEM0_MASK, align 4
  %29 = and i32 %27, %28
  %30 = shl i32 %29, 12
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SNR_IMC_MMIO_SIZE, align 4
  %38 = call i32 @ioremap(i32 %36, i32 %37)
  %39 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %2, align 8
  %40 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %2, align 8
  %42 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %16
  br label %52

46:                                               ; preds = %16
  %47 = load i32, i32* @IVBEP_PMON_BOX_CTL_INT, align 4
  %48 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %2, align 8
  %49 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @writel(i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %45, %15
  ret void
}

declare dso_local %struct.pci_dev* @snr_uncore_get_mc_dev(i32) #1

declare dso_local i32 @uncore_mmio_box_ctl(%struct.intel_uncore_box*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
