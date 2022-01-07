; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-alchemy.c_write_config_word.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-alchemy.c_write_config_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCI_ACCESS_READ = common dso_local global i32 0, align 4
@PCI_ACCESS_WRITE = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32)* @write_config_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_config_word(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @PCI_ACCESS_READ, align 4
  %12 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @config_access(i32 %11, %struct.pci_bus* %12, i32 %13, i32 %14, i32* %10)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %41

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 3
  %22 = shl i32 %21, 3
  %23 = shl i32 65535, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %19, %24
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 3
  %29 = shl i32 %28, 3
  %30 = shl i32 %26, %29
  %31 = or i32 %25, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @PCI_ACCESS_WRITE, align 4
  %33 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @config_access(i32 %32, %struct.pci_bus* %33, i32 %34, i32 %35, i32* %10)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %41

39:                                               ; preds = %18
  %40 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %38, %17
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i64 @config_access(i32, %struct.pci_bus*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
