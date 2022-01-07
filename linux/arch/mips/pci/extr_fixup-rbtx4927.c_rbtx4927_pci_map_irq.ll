; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-rbtx4927.c_rbtx4927_pci_map_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-rbtx4927.c_rbtx4927_pci_map_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@txx9_pci_option = common dso_local global i32 0, align 4
@TXX9_PCI_OPT_PICMG = common dso_local global i32 0, align 4
@RBTX4927_IRQ_IOC_PCIA = common dso_local global i8 0, align 1
@RBTX4927_IRQ_IOC_PCIB = common dso_local global i8 0, align 1
@RBTX4927_IRQ_IOC_PCIC = common dso_local global i8 0, align 1
@RBTX4927_IRQ_IOC_PCID = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rbtx4927_pci_map_irq(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = trunc i32 %8 to i8
  store i8 %9, i8* %7, align 1
  %10 = load i8, i8* %7, align 1
  %11 = add i8 %10, -1
  store i8 %11, i8* %7, align 1
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @TX4927_PCIC_IDSEL_AD_TO_SLOT(i32 23)
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load i8, i8* %7, align 1
  %17 = zext i8 %16 to i32
  %18 = add nsw i32 %17, 0
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %18, %19
  %21 = srem i32 %20, 4
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %7, align 1
  br label %45

23:                                               ; preds = %3
  %24 = load i32, i32* @txx9_pci_option, align 4
  %25 = load i32, i32* @TXX9_PCI_OPT_PICMG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i8, i8* %7, align 1
  %30 = zext i8 %29 to i32
  %31 = add nsw i32 %30, 33
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 %31, %32
  %34 = srem i32 %33, 4
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %7, align 1
  br label %44

36:                                               ; preds = %23
  %37 = load i8, i8* %7, align 1
  %38 = zext i8 %37 to i32
  %39 = add nsw i32 %38, 3
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %39, %40
  %42 = srem i32 %41, 4
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %7, align 1
  br label %44

44:                                               ; preds = %36, %28
  br label %45

45:                                               ; preds = %44, %15
  %46 = load i8, i8* %7, align 1
  %47 = add i8 %46, 1
  store i8 %47, i8* %7, align 1
  %48 = load i8, i8* %7, align 1
  %49 = zext i8 %48 to i32
  switch i32 %49, label %58 [
    i32 1, label %50
    i32 2, label %52
    i32 3, label %54
    i32 4, label %56
  ]

50:                                               ; preds = %45
  %51 = load i8, i8* @RBTX4927_IRQ_IOC_PCIA, align 1
  store i8 %51, i8* %7, align 1
  br label %58

52:                                               ; preds = %45
  %53 = load i8, i8* @RBTX4927_IRQ_IOC_PCIB, align 1
  store i8 %53, i8* %7, align 1
  br label %58

54:                                               ; preds = %45
  %55 = load i8, i8* @RBTX4927_IRQ_IOC_PCIC, align 1
  store i8 %55, i8* %7, align 1
  br label %58

56:                                               ; preds = %45
  %57 = load i8, i8* @RBTX4927_IRQ_IOC_PCID, align 1
  store i8 %57, i8* %7, align 1
  br label %58

58:                                               ; preds = %45, %56, %54, %52, %50
  %59 = load i8, i8* %7, align 1
  %60 = zext i8 %59 to i32
  ret i32 %60
}

declare dso_local i32 @TX4927_PCIC_IDSEL_AD_TO_SLOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
