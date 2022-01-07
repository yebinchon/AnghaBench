; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_usb-init.c_nlm_usb_fixup_final.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_usb-init.c_nlm_usb_fixup_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@xlp_usb_dmamask = common dso_local global i32 0, align 4
@PIC_EHCI_0_IRQ = common dso_local global i32 0, align 4
@PIC_OHCI_0_IRQ = common dso_local global i32 0, align 4
@PIC_OHCI_1_IRQ = common dso_local global i32 0, align 4
@PIC_EHCI_1_IRQ = common dso_local global i32 0, align 4
@PIC_OHCI_2_IRQ = common dso_local global i32 0, align 4
@PIC_OHCI_3_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @nlm_usb_fixup_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_usb_fixup_final(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %4 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  store i32* @xlp_usb_dmamask, i32** %5, align 8
  %6 = call i32 @DMA_BIT_MASK(i32 32)
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %6, i32* %9, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %37 [
    i32 16, label %13
    i32 17, label %17
    i32 18, label %21
    i32 19, label %25
    i32 20, label %29
    i32 21, label %33
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @PIC_EHCI_0_IRQ, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  br label %37

17:                                               ; preds = %1
  %18 = load i32, i32* @PIC_OHCI_0_IRQ, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %37

21:                                               ; preds = %1
  %22 = load i32, i32* @PIC_OHCI_1_IRQ, align 4
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %37

25:                                               ; preds = %1
  %26 = load i32, i32* @PIC_EHCI_1_IRQ, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %37

29:                                               ; preds = %1
  %30 = load i32, i32* @PIC_OHCI_2_IRQ, align 4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %37

33:                                               ; preds = %1
  %34 = load i32, i32* @PIC_OHCI_3_IRQ, align 4
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %1, %33, %29, %25, %21, %17, %13
  ret void
}

declare dso_local i32 @DMA_BIT_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
