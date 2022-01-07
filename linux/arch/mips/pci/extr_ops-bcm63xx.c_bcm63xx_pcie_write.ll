; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-bcm63xx.c_bcm63xx_pcie_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-bcm63xx.c_bcm63xx_pcie_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIE_BUS_DEVICE = common dso_local global i64 0, align 8
@PCIE_DEVICE_OFFSET = common dso_local global i64 0, align 8
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @bcm63xx_pcie_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_pcie_write(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = and i32 %14, -4
  store i32 %15, i32* %13, align 4
  %16 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @bcm63xx_pcie_can_access(%struct.pci_bus* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %21, i32* %6, align 4
  br label %46

22:                                               ; preds = %5
  %23 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %24 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PCIE_BUS_DEVICE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i64, i64* @PCIE_DEVICE_OFFSET, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %28, %22
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @bcm_pcie_readl(i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @preprocess_write(i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @bcm_pcie_writel(i32 %42, i32 %43)
  %45 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %34, %20
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @bcm63xx_pcie_can_access(%struct.pci_bus*, i32) #1

declare dso_local i32 @bcm_pcie_readl(i32) #1

declare dso_local i32 @preprocess_write(i32, i32, i32, i32) #1

declare dso_local i32 @bcm_pcie_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
