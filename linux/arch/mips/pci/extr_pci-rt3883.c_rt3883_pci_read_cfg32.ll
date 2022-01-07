; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-rt3883.c_rt3883_pci_read_cfg32.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-rt3883.c_rt3883_pci_read_cfg32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt3883_pci_controller = type { i32 }

@RT3883_PCI_REG_CFGADDR = common dso_local global i32 0, align 4
@RT3883_PCI_REG_CFGDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt3883_pci_controller*, i32, i32, i32, i32)* @rt3883_pci_read_cfg32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt3883_pci_read_cfg32(%struct.rt3883_pci_controller* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rt3883_pci_controller*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rt3883_pci_controller* %0, %struct.rt3883_pci_controller** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @rt3883_pci_get_cfgaddr(i32 %14, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.rt3883_pci_controller*, %struct.rt3883_pci_controller** %6, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @RT3883_PCI_REG_CFGADDR, align 4
  %22 = call i32 @rt3883_pci_w32(%struct.rt3883_pci_controller* %19, i32 %20, i32 %21)
  %23 = load %struct.rt3883_pci_controller*, %struct.rt3883_pci_controller** %6, align 8
  %24 = load i32, i32* @RT3883_PCI_REG_CFGDATA, align 4
  %25 = call i32 @rt3883_pci_r32(%struct.rt3883_pci_controller* %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  ret i32 %26
}

declare dso_local i32 @rt3883_pci_get_cfgaddr(i32, i32, i32, i32) #1

declare dso_local i32 @rt3883_pci_w32(%struct.rt3883_pci_controller*, i32, i32) #1

declare dso_local i32 @rt3883_pci_r32(%struct.rt3883_pci_controller*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
