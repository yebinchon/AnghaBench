; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-rbtx4938.c_rbtx4938_pci_map_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-rbtx4938.c_rbtx4938_pci_map_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@txx9_pci_option = common dso_local global i32 0, align 4
@TXX9_PCI_OPT_PICMG = common dso_local global i32 0, align 4
@RBTX4938_IRQ_IOC_PCIA = common dso_local global i32 0, align 4
@RBTX4938_IRQ_IOC_PCIB = common dso_local global i32 0, align 4
@RBTX4938_IRQ_IOC_PCIC = common dso_local global i32 0, align 4
@RBTX4938_IRQ_IOC_PCID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rbtx4938_pci_map_irq(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @tx4938_pcic1_map_irq(%struct.pci_dev* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %61

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @TX4927_PCIC_IDSEL_AD_TO_SLOT(i32 23)
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 0
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  %28 = srem i32 %27, 4
  store i32 %28, i32* %8, align 4
  br label %47

29:                                               ; preds = %16
  %30 = load i32, i32* @txx9_pci_option, align 4
  %31 = load i32, i32* @TXX9_PCI_OPT_PICMG, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 33
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %36, %37
  %39 = srem i32 %38, 4
  store i32 %39, i32* %8, align 4
  br label %46

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 3
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %42, %43
  %45 = srem i32 %44, 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %40, %34
  br label %47

47:                                               ; preds = %46, %23
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  switch i32 %50, label %59 [
    i32 1, label %51
    i32 2, label %53
    i32 3, label %55
    i32 4, label %57
  ]

51:                                               ; preds = %47
  %52 = load i32, i32* @RBTX4938_IRQ_IOC_PCIA, align 4
  store i32 %52, i32* %8, align 4
  br label %59

53:                                               ; preds = %47
  %54 = load i32, i32* @RBTX4938_IRQ_IOC_PCIB, align 4
  store i32 %54, i32* %8, align 4
  br label %59

55:                                               ; preds = %47
  %56 = load i32, i32* @RBTX4938_IRQ_IOC_PCIC, align 4
  store i32 %56, i32* %8, align 4
  br label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @RBTX4938_IRQ_IOC_PCID, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %47, %57, %55, %53, %51
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %14
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @tx4938_pcic1_map_irq(%struct.pci_dev*, i32) #1

declare dso_local i32 @TX4927_PCIC_IDSEL_AD_TO_SLOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
