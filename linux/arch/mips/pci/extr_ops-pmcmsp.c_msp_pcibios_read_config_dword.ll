; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-pmcmsp.c_msp_pcibios_read_config_dword.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-pmcmsp.c_msp_pcibios_read_config_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@PCI_ACCESS_READ = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32*)* @msp_pcibios_read_config_dword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp_pcibios_read_config_dword(%struct.pci_bus* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  %12 = and i32 %11, 3
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32*, i32** %9, align 8
  store i32 -1, i32* %15, align 4
  %16 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %16, i32* %5, align 4
  br label %30

17:                                               ; preds = %4
  %18 = load i32, i32* @PCI_ACCESS_READ, align 4
  %19 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @msp_pcibios_config_access(i32 %18, %struct.pci_bus* %19, i32 %20, i32 %21, i32* %10)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32*, i32** %9, align 8
  store i32 -1, i32* %25, align 4
  store i32 -1, i32* %5, align 4
  br label %30

26:                                               ; preds = %17
  %27 = load i32, i32* %10, align 4
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %24, %14
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i64 @msp_pcibios_config_access(i32, %struct.pci_bus*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
