; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-rt3883.c_rt3883_pci_config_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-rt3883.c_rt3883_pci_config_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.rt3883_pci_controller = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@RT3883_PCI_REG_CFGADDR = common dso_local global i32 0, align 4
@RT3883_PCI_REG_CFGDATA = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @rt3883_pci_config_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt3883_pci_config_read(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.rt3883_pci_controller*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %17 = call %struct.rt3883_pci_controller* @pci_bus_to_rt3883_controller(%struct.pci_bus* %16)
  store %struct.rt3883_pci_controller* %17, %struct.rt3883_pci_controller** %12, align 8
  %18 = load %struct.rt3883_pci_controller*, %struct.rt3883_pci_controller** %12, align 8
  %19 = getelementptr inbounds %struct.rt3883_pci_controller, %struct.rt3883_pci_controller* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %5
  %23 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %24 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %28, i32* %6, align 4
  br label %68

29:                                               ; preds = %22, %5
  %30 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %31 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @PCI_SLOT(i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @PCI_FUNC(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @rt3883_pci_get_cfgaddr(i32 %32, i32 %34, i32 %36, i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load %struct.rt3883_pci_controller*, %struct.rt3883_pci_controller** %12, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @RT3883_PCI_REG_CFGADDR, align 4
  %42 = call i32 @rt3883_pci_w32(%struct.rt3883_pci_controller* %39, i32 %40, i32 %41)
  %43 = load %struct.rt3883_pci_controller*, %struct.rt3883_pci_controller** %12, align 8
  %44 = load i32, i32* @RT3883_PCI_REG_CFGDATA, align 4
  %45 = call i32 @rt3883_pci_r32(%struct.rt3883_pci_controller* %43, i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %10, align 4
  switch i32 %46, label %66 [
    i32 1, label %47
    i32 2, label %55
    i32 4, label %63
  ]

47:                                               ; preds = %29
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 3
  %51 = shl i32 %50, 3
  %52 = ashr i32 %48, %51
  %53 = and i32 %52, 255
  %54 = load i32*, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  br label %66

55:                                               ; preds = %29
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 3
  %59 = shl i32 %58, 3
  %60 = ashr i32 %56, %59
  %61 = and i32 %60, 65535
  %62 = load i32*, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  br label %66

63:                                               ; preds = %29
  %64 = load i32, i32* %15, align 4
  %65 = load i32*, i32** %11, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %29, %63, %55, %47
  %67 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %27
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local %struct.rt3883_pci_controller* @pci_bus_to_rt3883_controller(%struct.pci_bus*) #1

declare dso_local i32 @rt3883_pci_get_cfgaddr(i32, i32, i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @rt3883_pci_w32(%struct.rt3883_pci_controller*, i32, i32) #1

declare dso_local i32 @rt3883_pci_r32(%struct.rt3883_pci_controller*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
