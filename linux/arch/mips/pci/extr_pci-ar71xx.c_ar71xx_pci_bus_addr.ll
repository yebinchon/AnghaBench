; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar71xx.c_ar71xx_pci_bus_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar71xx.c_ar71xx_pci_bus_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32)* @ar71xx_pci_bus_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar71xx_pci_bus_addr(%struct.pci_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %9 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @PCI_SLOT(i32 %13)
  %15 = shl i32 1, %14
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @PCI_FUNC(i32 %16)
  %18 = shl i32 %17, 8
  %19 = or i32 %15, %18
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, -4
  %22 = or i32 %19, %21
  store i32 %22, i32* %7, align 4
  br label %40

23:                                               ; preds = %3
  %24 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %25 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 16
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @PCI_SLOT(i32 %28)
  %30 = shl i32 %29, 11
  %31 = or i32 %27, %30
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @PCI_FUNC(i32 %32)
  %34 = shl i32 %33, 8
  %35 = or i32 %31, %34
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, -4
  %38 = or i32 %35, %37
  %39 = or i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %23, %12
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
