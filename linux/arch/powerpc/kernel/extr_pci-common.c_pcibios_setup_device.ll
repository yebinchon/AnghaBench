; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_pcibios_setup_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_pcibios_setup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (%struct.pci_dev*)* }
%struct.pci_dev = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.pci_controller = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.pci_dev*)* }

@pci_dma_ops = common dso_local global i32 0, align 4
@PCI_DRAM_OFFSET = common dso_local global i32 0, align 4
@ppc_md = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pcibios_setup_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcibios_setup_device(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_controller*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 1
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @pcibus_to_node(i32 %8)
  %10 = call i32 @set_dev_node(%struct.TYPE_8__* %5, i32 %9)
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 1
  %13 = load i32, i32* @pci_dma_ops, align 4
  %14 = call i32 @set_dma_ops(%struct.TYPE_8__* %12, i32 %13)
  %15 = load i32, i32* @PCI_DRAM_OFFSET, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.pci_controller* @pci_bus_to_host(i32 %22)
  store %struct.pci_controller* %23, %struct.pci_controller** %3, align 8
  %24 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %25 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** %26, align 8
  %28 = icmp ne i32 (%struct.pci_dev*)* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %31 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** %32, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %35 = call i32 %33(%struct.pci_dev* %34)
  br label %36

36:                                               ; preds = %29, %1
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = call i32 @pci_read_irq_line(%struct.pci_dev* %37)
  %39 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ppc_md, i32 0, i32 0), align 8
  %40 = icmp ne i32 (%struct.pci_dev*)* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ppc_md, i32 0, i32 0), align 8
  %43 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %44 = call i32 %42(%struct.pci_dev* %43)
  br label %45

45:                                               ; preds = %41, %36
  ret void
}

declare dso_local i32 @set_dev_node(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @pcibus_to_node(i32) #1

declare dso_local i32 @set_dma_ops(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.pci_controller* @pci_bus_to_host(i32) #1

declare dso_local i32 @pci_read_irq_line(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
