; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/devboards/extr_db1550.c_pb1550_map_pci_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/devboards/extr_db1550.c_pb1550_map_pci_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@AU1500_PCI_INTB = common dso_local global i32 0, align 4
@AU1500_PCI_INTC = common dso_local global i32 0, align 4
@AU1500_PCI_INTD = common dso_local global i32 0, align 4
@AU1500_PCI_INTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i32)* @pb1550_map_pci_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pb1550_map_pci_irq(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 12
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 13
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10, %3
  store i32 -1, i32* %4, align 4
  br label %46

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 12
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %30 [
    i32 1, label %22
    i32 2, label %24
    i32 3, label %26
    i32 4, label %28
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @AU1500_PCI_INTB, align 4
  store i32 %23, i32* %4, align 4
  br label %46

24:                                               ; preds = %20
  %25 = load i32, i32* @AU1500_PCI_INTC, align 4
  store i32 %25, i32* %4, align 4
  br label %46

26:                                               ; preds = %20
  %27 = load i32, i32* @AU1500_PCI_INTD, align 4
  store i32 %27, i32* %4, align 4
  br label %46

28:                                               ; preds = %20
  %29 = load i32, i32* @AU1500_PCI_INTA, align 4
  store i32 %29, i32* %4, align 4
  br label %46

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %17
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 13
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %44 [
    i32 1, label %36
    i32 2, label %38
    i32 3, label %40
    i32 4, label %42
  ]

36:                                               ; preds = %34
  %37 = load i32, i32* @AU1500_PCI_INTA, align 4
  store i32 %37, i32* %4, align 4
  br label %46

38:                                               ; preds = %34
  %39 = load i32, i32* @AU1500_PCI_INTB, align 4
  store i32 %39, i32* %4, align 4
  br label %46

40:                                               ; preds = %34
  %41 = load i32, i32* @AU1500_PCI_INTC, align 4
  store i32 %41, i32* %4, align 4
  br label %46

42:                                               ; preds = %34
  %43 = load i32, i32* @AU1500_PCI_INTD, align 4
  store i32 %43, i32* %4, align 4
  br label %46

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %31
  store i32 -1, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %42, %40, %38, %36, %28, %26, %24, %22, %16
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
