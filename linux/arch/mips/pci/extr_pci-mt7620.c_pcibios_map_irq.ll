; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-mt7620.c_pcibios_map_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-mt7620.c_pcibios_map_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@RALINK_PCI0_BAR0SETUP_ADDR = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@RALINK_PCI_MEMORY_BASE = common dso_local global i32 0, align 4
@RALINK_INT_PCIE0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"no irq found - bus=0x%x, slot = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"card - bus=0x%x, slot = 0x%x irq=%d\0A\00", align 1
@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_INTERRUPT_LINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcibios_map_irq(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load i32, i32* @RALINK_PCI0_BAR0SETUP_ADDR, align 4
  %22 = call i32 @pcie_w32(i32 2147418113, i32 %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %27 = load i32, i32* @RALINK_PCI_MEMORY_BASE, align 4
  %28 = call i32 @pci_config_write(%struct.TYPE_3__* %25, i32 0, i32 %26, i32 4, i32 %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %33 = call i32 @pci_config_read(%struct.TYPE_3__* %31, i32 0, i32 %32, i32 4, i32* %9)
  br label %57

34:                                               ; preds = %17, %3
  %35 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @RALINK_INT_PCIE0, align 4
  store i32 %45, i32* %10, align 4
  br label %56

46:                                               ; preds = %41, %34
  %47 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 2
  %49 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  store i32 0, i32* %4, align 4
  br label %95

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %20
  %58 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 2
  %60 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65, i32 %66)
  %68 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %69 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %70 = call i32 @pci_write_config_byte(%struct.pci_dev* %68, i32 %69, i32 20)
  %71 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %72 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %73 = call i32 @pci_write_config_byte(%struct.pci_dev* %71, i32 %72, i32 255)
  %74 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %75 = load i32, i32* @PCI_COMMAND, align 4
  %76 = call i32 @pci_read_config_word(%struct.pci_dev* %74, i32 %75, i32* %8)
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @PCI_COMMAND_IO, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %8, align 4
  %84 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %85 = load i32, i32* @PCI_COMMAND, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @pci_write_config_word(%struct.pci_dev* %84, i32 %85, i32 %86)
  %88 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %89 = load i32, i32* @PCI_INTERRUPT_LINE, align 4
  %90 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @pci_write_config_byte(%struct.pci_dev* %88, i32 %89, i32 %92)
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %57, %46
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @pcie_w32(i32, i32) #1

declare dso_local i32 @pci_config_write(%struct.TYPE_3__*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_config_read(%struct.TYPE_3__*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
