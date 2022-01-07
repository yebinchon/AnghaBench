; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-fuloong2e.c_pcibios_map_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-fuloong2e.c_pcibios_map_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@sb_slot = common dso_local global i64 0, align 8
@LOONGSON_IRQ_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcibios_map_irq(%struct.pci_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @sb_slot, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @PCI_FUNC(i32 %14)
  switch i32 %15, label %19 [
    i32 2, label %16
    i32 3, label %17
    i32 5, label %18
  ]

16:                                               ; preds = %11
  store i32 10, i32* %7, align 4
  br label %19

17:                                               ; preds = %11
  store i32 11, i32* %7, align 4
  br label %19

18:                                               ; preds = %11
  store i32 9, i32* %7, align 4
  br label %19

19:                                               ; preds = %11, %18, %17, %16
  br label %27

20:                                               ; preds = %3
  %21 = load i32, i32* @LOONGSON_IRQ_BASE, align 4
  %22 = add nsw i32 %21, 25
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %6, align 8
  %25 = add nsw i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %20, %19
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
