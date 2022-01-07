; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-tb0287.c_pcibios_map_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-tb0287.c_pcibios_map_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8 }

@TB0287_SM501_IRQ = common dso_local global i32 0, align 4
@TB0287_SIL680A_IRQ = common dso_local global i32 0, align 4
@TB0287_PCI_SLOT_IRQ = common dso_local global i32 0, align 4
@TB0287_RTL8110_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcibios_map_irq(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %7, align 1
  %14 = load i8, i8* %7, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %23 [
    i32 16, label %19
    i32 17, label %21
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @TB0287_SM501_IRQ, align 4
  store i32 %20, i32* %8, align 4
  br label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @TB0287_SIL680A_IRQ, align 4
  store i32 %22, i32* %8, align 4
  br label %24

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %21, %19
  br label %48

25:                                               ; preds = %3
  %26 = load i8, i8* %7, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @PCI_SLOT(i32 %32)
  switch i32 %33, label %38 [
    i32 0, label %34
    i32 2, label %36
    i32 3, label %36
  ]

34:                                               ; preds = %29
  %35 = load i32, i32* @TB0287_PCI_SLOT_IRQ, align 4
  store i32 %35, i32* %8, align 4
  br label %39

36:                                               ; preds = %29, %29
  %37 = load i32, i32* @TB0287_RTL8110_IRQ, align 4
  store i32 %37, i32* %8, align 4
  br label %39

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %36, %34
  br label %47

40:                                               ; preds = %25
  %41 = load i8, i8* %7, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @TB0287_PCI_SLOT_IRQ, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %44, %40
  br label %47

47:                                               ; preds = %46, %39
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i32 @PCI_SLOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
