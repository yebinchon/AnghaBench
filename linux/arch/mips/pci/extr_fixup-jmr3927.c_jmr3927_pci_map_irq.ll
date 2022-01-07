; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-jmr3927.c_jmr3927_pci_map_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-jmr3927.c_jmr3927_pci_map_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@txx9_pci_option = common dso_local global i32 0, align 4
@TXX9_PCI_OPT_PICMG = common dso_local global i32 0, align 4
@JMR3927_IRQ_IOC_PCIA = common dso_local global i8 0, align 1
@JMR3927_IRQ_IOC_PCIB = common dso_local global i8 0, align 1
@JMR3927_IRQ_IOC_PCIC = common dso_local global i8 0, align 1
@JMR3927_IRQ_IOC_PCID = common dso_local global i8 0, align 1
@JMR3927_IRQ_ETHER0 = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jmr3927_pci_map_irq(%struct.pci_dev* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %8 = load i8, i8* %6, align 1
  store i8 %8, i8* %7, align 1
  %9 = load i8, i8* %7, align 1
  %10 = add i8 %9, -1
  store i8 %10, i8* %7, align 1
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i32
  %13 = call zeroext i8 @TX3927_PCIC_IDSEL_AD_TO_SLOT(i32 23)
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i8, i8* %7, align 1
  %18 = zext i8 %17 to i32
  %19 = add nsw i32 %18, 2
  %20 = srem i32 %19, 4
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %7, align 1
  br label %59

22:                                               ; preds = %3
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i32
  %25 = call zeroext i8 @TX3927_PCIC_IDSEL_AD_TO_SLOT(i32 22)
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i8, i8* %7, align 1
  %30 = zext i8 %29 to i32
  %31 = add nsw i32 %30, 0
  %32 = srem i32 %31, 4
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %7, align 1
  br label %58

34:                                               ; preds = %22
  %35 = load i32, i32* @txx9_pci_option, align 4
  %36 = load i32, i32* @TXX9_PCI_OPT_PICMG, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i8, i8* %7, align 1
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 %41, 33
  %43 = load i8, i8* %5, align 1
  %44 = zext i8 %43 to i32
  %45 = sub nsw i32 %42, %44
  %46 = srem i32 %45, 4
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %7, align 1
  br label %57

48:                                               ; preds = %34
  %49 = load i8, i8* %7, align 1
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %50, 3
  %52 = load i8, i8* %5, align 1
  %53 = zext i8 %52 to i32
  %54 = add nsw i32 %51, %53
  %55 = srem i32 %54, 4
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %7, align 1
  br label %57

57:                                               ; preds = %48, %39
  br label %58

58:                                               ; preds = %57, %28
  br label %59

59:                                               ; preds = %58, %16
  %60 = load i8, i8* %7, align 1
  %61 = add i8 %60, 1
  store i8 %61, i8* %7, align 1
  %62 = load i8, i8* %7, align 1
  %63 = zext i8 %62 to i32
  switch i32 %63, label %72 [
    i32 1, label %64
    i32 2, label %66
    i32 3, label %68
    i32 4, label %70
  ]

64:                                               ; preds = %59
  %65 = load i8, i8* @JMR3927_IRQ_IOC_PCIA, align 1
  store i8 %65, i8* %7, align 1
  br label %72

66:                                               ; preds = %59
  %67 = load i8, i8* @JMR3927_IRQ_IOC_PCIB, align 1
  store i8 %67, i8* %7, align 1
  br label %72

68:                                               ; preds = %59
  %69 = load i8, i8* @JMR3927_IRQ_IOC_PCIC, align 1
  store i8 %69, i8* %7, align 1
  br label %72

70:                                               ; preds = %59
  %71 = load i8, i8* @JMR3927_IRQ_IOC_PCID, align 1
  store i8 %71, i8* %7, align 1
  br label %72

72:                                               ; preds = %59, %70, %68, %66, %64
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load i8, i8* %5, align 1
  %81 = zext i8 %80 to i32
  %82 = call zeroext i8 @TX3927_PCIC_IDSEL_AD_TO_SLOT(i32 24)
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i8, i8* @JMR3927_IRQ_ETHER0, align 1
  store i8 %86, i8* %7, align 1
  br label %87

87:                                               ; preds = %85, %79, %72
  %88 = load i8, i8* %7, align 1
  %89 = zext i8 %88 to i32
  ret i32 %89
}

declare dso_local zeroext i8 @TX3927_PCIC_IDSEL_AD_TO_SLOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
