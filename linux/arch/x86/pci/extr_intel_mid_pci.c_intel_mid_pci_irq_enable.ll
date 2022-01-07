; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/pci/extr_intel_mid_pci.c_intel_mid_pci_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/pci/extr_intel_mid_pci.c_intel_mid_pci_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, i32 }
%struct.irq_alloc_info = type { i32 }

@PCI_INTERRUPT_LINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to read interrupt line: %d\0A\00", align 1
@IOAPIC_POL_HIGH = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_MRFLD_HSU = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_MRFLD_MMC = common dso_local global i32 0, align 4
@IOAPIC_POL_LOW = common dso_local global i32 0, align 4
@IOAPIC_MAP_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @intel_mid_pci_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_mid_pci_irq_enable(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.irq_alloc_info, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %75

18:                                               ; preds = %12, %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = load i32, i32* @PCI_INTERRUPT_LINE, align 4
  %21 = call i32 @pci_read_config_byte(%struct.pci_dev* %19, i32 %20, i32* %7)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dev_warn(i32* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %75

30:                                               ; preds = %18
  %31 = call i32 (...) @intel_mid_identify_cpu()
  switch i32 %31, label %54 [
    i32 128, label %32
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* @IOAPIC_POL_HIGH, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PCI_DEVICE_ID_INTEL_MRFLD_HSU, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %75

45:                                               ; preds = %36
  %46 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PCI_DEVICE_ID_INTEL_MRFLD_MMC, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %75

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %32
  br label %56

54:                                               ; preds = %30
  %55 = load i32, i32* @IOAPIC_POL_LOW, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %53
  %57 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 2
  %59 = call i32 @dev_to_node(i32* %58)
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @ioapic_set_alloc_attr(%struct.irq_alloc_info* %4, i32 %59, i32 1, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @IOAPIC_MAP_ALLOC, align 4
  %64 = call i32 @mp_map_gsi_to_irq(i32 %62, i32 %63, %struct.irq_alloc_info* %4)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %75

69:                                               ; preds = %56
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %69, %67, %51, %42, %24, %17
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @intel_mid_identify_cpu(...) #1

declare dso_local i32 @ioapic_set_alloc_attr(%struct.irq_alloc_info*, i32, i32, i32) #1

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i32 @mp_map_gsi_to_irq(i32, i32, %struct.irq_alloc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
