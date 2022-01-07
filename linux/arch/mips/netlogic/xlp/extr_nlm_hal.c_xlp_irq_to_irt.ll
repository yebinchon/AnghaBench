; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_nlm_hal.c_xlp_irq_to_irt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_nlm_hal.c_xlp_irq_to_irt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XLP_PCI_IRTINFO_REG = common dso_local global i32 0, align 4
@PIC_PCIE_LINK_LEGACY_IRQ_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xlp_irq_to_irt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp_irq_to_irt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* %2, align 4
  switch i32 %7, label %30 [
    i32 129, label %8
    i32 128, label %10
    i32 137, label %12
    i32 141, label %14
    i32 140, label %14
    i32 139, label %14
    i32 138, label %14
    i32 131, label %22
    i32 142, label %24
    i32 136, label %26
    i32 130, label %28
  ]

8:                                                ; preds = %1
  %9 = call i32 @XLP_IO_UART0_OFFSET(i32 0)
  store i32 %9, i32* %4, align 4
  br label %58

10:                                               ; preds = %1
  %11 = call i32 @XLP_IO_UART1_OFFSET(i32 0)
  store i32 %11, i32* %4, align 4
  br label %58

12:                                               ; preds = %1
  %13 = call i32 @XLP_IO_MMC_OFFSET(i32 0)
  store i32 %13, i32* %4, align 4
  br label %58

14:                                               ; preds = %1, %1, %1, %1
  %15 = call i32 (...) @cpu_is_xlpii()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @XLP2XX_IO_I2C_OFFSET(i32 0)
  store i32 %18, i32* %4, align 4
  br label %21

19:                                               ; preds = %14
  %20 = call i32 @XLP_IO_I2C0_OFFSET(i32 0)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %19, %17
  br label %58

22:                                               ; preds = %1
  %23 = call i32 @XLP_IO_SATA_OFFSET(i32 0)
  store i32 %23, i32* %4, align 4
  br label %58

24:                                               ; preds = %1
  %25 = call i32 @XLP_IO_GPIO_OFFSET(i32 0)
  store i32 %25, i32* %4, align 4
  br label %58

26:                                               ; preds = %1
  %27 = call i32 @XLP_IO_NAND_OFFSET(i32 0)
  store i32 %27, i32* %4, align 4
  br label %58

28:                                               ; preds = %1
  %29 = call i32 @XLP_IO_SPI_OFFSET(i32 0)
  store i32 %29, i32* %4, align 4
  br label %58

30:                                               ; preds = %1
  %31 = call i32 (...) @cpu_is_xlpii()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* %2, align 4
  switch i32 %34, label %41 [
    i32 147, label %35
    i32 146, label %37
    i32 145, label %39
  ]

35:                                               ; preds = %33
  %36 = call i32 @XLP2XX_IO_USB_XHCI0_OFFSET(i32 0)
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %33
  %38 = call i32 @XLP2XX_IO_USB_XHCI1_OFFSET(i32 0)
  store i32 %38, i32* %4, align 4
  br label %41

39:                                               ; preds = %33
  %40 = call i32 @XLP2XX_IO_USB_XHCI2_OFFSET(i32 0)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %33, %39, %37, %35
  br label %57

42:                                               ; preds = %30
  %43 = load i32, i32* %2, align 4
  switch i32 %43, label %56 [
    i32 144, label %44
    i32 143, label %46
    i32 135, label %48
    i32 134, label %50
    i32 133, label %52
    i32 132, label %54
  ]

44:                                               ; preds = %42
  %45 = call i32 @XLP_IO_USB_EHCI0_OFFSET(i32 0)
  store i32 %45, i32* %4, align 4
  br label %56

46:                                               ; preds = %42
  %47 = call i32 @XLP_IO_USB_EHCI1_OFFSET(i32 0)
  store i32 %47, i32* %4, align 4
  br label %56

48:                                               ; preds = %42
  %49 = call i32 @XLP_IO_USB_OHCI0_OFFSET(i32 0)
  store i32 %49, i32* %4, align 4
  br label %56

50:                                               ; preds = %42
  %51 = call i32 @XLP_IO_USB_OHCI1_OFFSET(i32 0)
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %42
  %53 = call i32 @XLP_IO_USB_OHCI2_OFFSET(i32 0)
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %42
  %55 = call i32 @XLP_IO_USB_OHCI3_OFFSET(i32 0)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %42, %54, %52, %50, %48, %46, %44
  br label %57

57:                                               ; preds = %56, %41
  br label %58

58:                                               ; preds = %57, %28, %26, %24, %22, %21, %12, %10, %8
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %58
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @nlm_pcicfg_base(i32 %62)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @XLP_PCI_IRTINFO_REG, align 4
  %66 = call i32 @nlm_read_reg(i32 %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 -1, i32* %5, align 4
  br label %84

70:                                               ; preds = %61
  %71 = load i32, i32* %6, align 4
  %72 = and i32 %71, 65535
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %2, align 4
  switch i32 %73, label %83 [
    i32 140, label %74
    i32 139, label %77
    i32 138, label %80
  ]

74:                                               ; preds = %70
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %83

77:                                               ; preds = %70
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %5, align 4
  br label %83

80:                                               ; preds = %70
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 3
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %70, %80, %77, %74
  br label %84

84:                                               ; preds = %83, %69
  br label %101

85:                                               ; preds = %58
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @PIC_PCIE_LINK_LEGACY_IRQ(i32 0)
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @PIC_PCIE_LINK_LEGACY_IRQ(i32 3)
  %92 = icmp sle i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i32, i32* %2, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* @PIC_PCIE_LINK_LEGACY_IRQ_BASE, align 8
  %97 = sub nsw i64 %95, %96
  %98 = call i32 @PIC_IRT_PCIE_LINK_INDEX(i64 %97)
  store i32 %98, i32* %5, align 4
  br label %100

99:                                               ; preds = %89, %85
  store i32 -1, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %93
  br label %101

101:                                              ; preds = %100, %84
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @XLP_IO_UART0_OFFSET(i32) #1

declare dso_local i32 @XLP_IO_UART1_OFFSET(i32) #1

declare dso_local i32 @XLP_IO_MMC_OFFSET(i32) #1

declare dso_local i32 @cpu_is_xlpii(...) #1

declare dso_local i32 @XLP2XX_IO_I2C_OFFSET(i32) #1

declare dso_local i32 @XLP_IO_I2C0_OFFSET(i32) #1

declare dso_local i32 @XLP_IO_SATA_OFFSET(i32) #1

declare dso_local i32 @XLP_IO_GPIO_OFFSET(i32) #1

declare dso_local i32 @XLP_IO_NAND_OFFSET(i32) #1

declare dso_local i32 @XLP_IO_SPI_OFFSET(i32) #1

declare dso_local i32 @XLP2XX_IO_USB_XHCI0_OFFSET(i32) #1

declare dso_local i32 @XLP2XX_IO_USB_XHCI1_OFFSET(i32) #1

declare dso_local i32 @XLP2XX_IO_USB_XHCI2_OFFSET(i32) #1

declare dso_local i32 @XLP_IO_USB_EHCI0_OFFSET(i32) #1

declare dso_local i32 @XLP_IO_USB_EHCI1_OFFSET(i32) #1

declare dso_local i32 @XLP_IO_USB_OHCI0_OFFSET(i32) #1

declare dso_local i32 @XLP_IO_USB_OHCI1_OFFSET(i32) #1

declare dso_local i32 @XLP_IO_USB_OHCI2_OFFSET(i32) #1

declare dso_local i32 @XLP_IO_USB_OHCI3_OFFSET(i32) #1

declare dso_local i32 @nlm_pcicfg_base(i32) #1

declare dso_local i32 @nlm_read_reg(i32, i32) #1

declare dso_local i32 @PIC_PCIE_LINK_LEGACY_IRQ(i32) #1

declare dso_local i32 @PIC_IRT_PCIE_LINK_INDEX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
