; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-lasat.c_pcibios_map_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-lasat.c_pcibios_map_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@LASAT_IRQ_PCIA = common dso_local global i32 0, align 4
@LASAT_IRQ_ETH1 = common dso_local global i32 0, align 4
@LASAT_IRQ_ETH0 = common dso_local global i32 0, align 4
@LASAT_IRQ_HDC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcibios_map_irq(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %24 [
    i32 1, label %9
    i32 2, label %9
    i32 3, label %9
    i32 4, label %18
    i32 5, label %20
    i32 6, label %22
  ]

9:                                                ; preds = %3, %3, %3
  %10 = load i32, i32* @LASAT_IRQ_PCIA, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sub nsw i32 %11, 1
  %13 = load i32, i32* %7, align 4
  %14 = sub nsw i32 %13, 1
  %15 = add nsw i32 %12, %14
  %16 = srem i32 %15, 4
  %17 = add nsw i32 %10, %16
  store i32 %17, i32* %4, align 4
  br label %25

18:                                               ; preds = %3
  %19 = load i32, i32* @LASAT_IRQ_ETH1, align 4
  store i32 %19, i32* %4, align 4
  br label %25

20:                                               ; preds = %3
  %21 = load i32, i32* @LASAT_IRQ_ETH0, align 4
  store i32 %21, i32* %4, align 4
  br label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @LASAT_IRQ_HDC, align 4
  store i32 %23, i32* %4, align 4
  br label %25

24:                                               ; preds = %3
  store i32 255, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %22, %20, %18, %9
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
