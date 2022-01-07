; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_pci.c_mcf_pci_readconfig.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_pci.c_mcf_pci_readconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64 }

@mcf_host_slot2sid = common dso_local global i64* null, align 8
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@PCICAR_E = common dso_local global i64 0, align 8
@PCICAR = common dso_local global i64 0, align 8
@iospace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @mcf_pci_readconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcf_pci_readconfig(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %11, align 8
  store i32 -1, i32* %13, align 4
  %14 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %15 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %5
  %19 = load i64*, i64** @mcf_host_slot2sid, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @PCI_SLOT(i32 %20)
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %26, i32* %6, align 4
  br label %68

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %5
  %29 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %30 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @mcf_mk_pcicar(i64 %31, i32 %32, i32 %33)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* @PCICAR_E, align 8
  %36 = load i64, i64* %12, align 8
  %37 = or i64 %35, %36
  %38 = load i64, i64* @PCICAR, align 8
  %39 = call i32 @__raw_writel(i64 %37, i64 %38)
  %40 = load i64, i64* @PCICAR, align 8
  %41 = call i32 @__raw_readl(i64 %40)
  %42 = load i32, i32* @iospace, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 3
  %45 = add nsw i32 %42, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %12, align 8
  %47 = load i32, i32* %10, align 4
  switch i32 %47, label %57 [
    i32 1, label %48
    i32 2, label %52
  ]

48:                                               ; preds = %28
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @__raw_readb(i64 %49)
  %51 = load i32*, i32** %11, align 8
  store i32 %50, i32* %51, align 4
  br label %62

52:                                               ; preds = %28
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @__raw_readw(i64 %53)
  %55 = call i32 @le16_to_cpu(i32 %54)
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  br label %62

57:                                               ; preds = %28
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @__raw_readl(i64 %58)
  %60 = call i32 @le32_to_cpu(i32 %59)
  %61 = load i32*, i32** %11, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %57, %52, %48
  %63 = load i64, i64* @PCICAR, align 8
  %64 = call i32 @__raw_writel(i64 0, i64 %63)
  %65 = load i64, i64* @PCICAR, align 8
  %66 = call i32 @__raw_readl(i64 %65)
  %67 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %62, %25
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i64 @PCI_SLOT(i32) #1

declare dso_local i64 @mcf_mk_pcicar(i64, i32, i32) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_readb(i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @__raw_readw(i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
