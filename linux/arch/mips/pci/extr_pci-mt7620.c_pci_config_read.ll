; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-mt7620.c_pci_config_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-mt7620.c_pci_config_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@RALINK_PCI_CONFIG_ADDR = common dso_local global i32 0, align 4
@RALINK_PCI_CONFIG_DATA_VIRT_REG = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @pci_config_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_config_read(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @PCI_SLOT(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @PCI_FUNC(i32 %18)
  store i32 %19, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %20 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %21 = icmp ne %struct.pci_bus* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %24 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  br label %26

26:                                               ; preds = %22, %5
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 3840
  %29 = ashr i32 %28, 8
  %30 = shl i32 %29, 24
  %31 = load i32, i32* %15, align 4
  %32 = shl i32 %31, 16
  %33 = or i32 %30, %32
  %34 = load i32, i32* %11, align 4
  %35 = shl i32 %34, 11
  %36 = or i32 %33, %35
  %37 = load i32, i32* %12, align 4
  %38 = shl i32 %37, 8
  %39 = or i32 %36, %38
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 252
  %42 = or i32 %39, %41
  %43 = or i32 %42, -2147483648
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @RALINK_PCI_CONFIG_ADDR, align 4
  %46 = call i32 @bridge_w32(i32 %44, i32 %45)
  %47 = load i32, i32* @RALINK_PCI_CONFIG_DATA_VIRT_REG, align 4
  %48 = call i32 @bridge_r32(i32 %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %9, align 4
  switch i32 %49, label %69 [
    i32 1, label %50
    i32 2, label %58
    i32 4, label %66
  ]

50:                                               ; preds = %26
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, 3
  %54 = shl i32 %53, 3
  %55 = ashr i32 %51, %54
  %56 = and i32 %55, 255
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  br label %69

58:                                               ; preds = %26
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, 3
  %62 = shl i32 %61, 3
  %63 = ashr i32 %59, %62
  %64 = and i32 %63, 65535
  %65 = load i32*, i32** %10, align 8
  store i32 %64, i32* %65, align 4
  br label %69

66:                                               ; preds = %26
  %67 = load i32, i32* %14, align 4
  %68 = load i32*, i32** %10, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %26, %66, %58, %50
  %70 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  ret i32 %70
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @bridge_w32(i32, i32) #1

declare dso_local i32 @bridge_r32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
