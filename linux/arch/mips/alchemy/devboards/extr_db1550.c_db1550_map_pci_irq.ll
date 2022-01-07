; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/devboards/extr_db1550.c_db1550_map_pci_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/devboards/extr_db1550.c_db1550_map_pci_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@AU1550_PCI_INTC = common dso_local global i32 0, align 4
@AU1550_PCI_INTB = common dso_local global i32 0, align 4
@AU1550_PCI_INTD = common dso_local global i32 0, align 4
@AU1550_PCI_INTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i32)* @db1550_map_pci_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db1550_map_pci_irq(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 11
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
  br label %57

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 11
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @AU1550_PCI_INTC, align 4
  br label %26

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 255, %25 ]
  store i32 %27, i32* %4, align 4
  br label %57

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 12
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %41 [
    i32 1, label %33
    i32 2, label %35
    i32 3, label %37
    i32 4, label %39
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @AU1550_PCI_INTB, align 4
  store i32 %34, i32* %4, align 4
  br label %57

35:                                               ; preds = %31
  %36 = load i32, i32* @AU1550_PCI_INTC, align 4
  store i32 %36, i32* %4, align 4
  br label %57

37:                                               ; preds = %31
  %38 = load i32, i32* @AU1550_PCI_INTD, align 4
  store i32 %38, i32* %4, align 4
  br label %57

39:                                               ; preds = %31
  %40 = load i32, i32* @AU1550_PCI_INTA, align 4
  store i32 %40, i32* %4, align 4
  br label %57

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 13
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  switch i32 %46, label %55 [
    i32 1, label %47
    i32 2, label %49
    i32 3, label %51
    i32 4, label %53
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* @AU1550_PCI_INTA, align 4
  store i32 %48, i32* %4, align 4
  br label %57

49:                                               ; preds = %45
  %50 = load i32, i32* @AU1550_PCI_INTB, align 4
  store i32 %50, i32* %4, align 4
  br label %57

51:                                               ; preds = %45
  %52 = load i32, i32* @AU1550_PCI_INTC, align 4
  store i32 %52, i32* %4, align 4
  br label %57

53:                                               ; preds = %45
  %54 = load i32, i32* @AU1550_PCI_INTD, align 4
  store i32 %54, i32* %4, align 4
  br label %57

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %42
  store i32 -1, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %53, %51, %49, %47, %39, %37, %35, %33, %26, %16
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
