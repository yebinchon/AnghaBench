; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-alchemy.c_pcibios_map_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-alchemy.c_pcibios_map_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.alchemy_pci_context* }
%struct.alchemy_pci_context = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcibios_map_irq(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.alchemy_pci_context*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %10, align 8
  store %struct.alchemy_pci_context* %11, %struct.alchemy_pci_context** %8, align 8
  %12 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %8, align 8
  %13 = icmp ne %struct.alchemy_pci_context* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %8, align 8
  %16 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.pci_dev*, i32, i32)**
  %18 = load i32 (%struct.pci_dev*, i32, i32)*, i32 (%struct.pci_dev*, i32, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.pci_dev*, i32, i32)* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %8, align 8
  %22 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.pci_dev*, i32, i32)**
  %24 = load i32 (%struct.pci_dev*, i32, i32)*, i32 (%struct.pci_dev*, i32, i32)** %23, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 %24(%struct.pci_dev* %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %30

29:                                               ; preds = %14, %3
  store i32 -1, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %20
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
