; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xlr.c_nlm_pci_link_to_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xlr.c_nlm_pci_link_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PIC_PCIE_LINK0_IRQ = common dso_local global i32 0, align 4
@PIC_PCIE_LINK1_IRQ = common dso_local global i32 0, align 4
@PIC_PCIE_XLSB0_LINK2_IRQ = common dso_local global i32 0, align 4
@PIC_PCIE_LINK2_IRQ = common dso_local global i32 0, align 4
@PIC_PCIE_XLSB0_LINK3_IRQ = common dso_local global i32 0, align 4
@PIC_PCIE_LINK3_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Unexpected link %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nlm_pci_link_to_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlm_pci_link_to_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %23 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
    i32 3, label %16
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @PIC_PCIE_LINK0_IRQ, align 4
  store i32 %6, i32* %2, align 4
  br label %26

7:                                                ; preds = %1
  %8 = load i32, i32* @PIC_PCIE_LINK1_IRQ, align 4
  store i32 %8, i32* %2, align 4
  br label %26

9:                                                ; preds = %1
  %10 = call i32 (...) @nlm_chip_is_xls_b()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* @PIC_PCIE_XLSB0_LINK2_IRQ, align 4
  store i32 %13, i32* %2, align 4
  br label %26

14:                                               ; preds = %9
  %15 = load i32, i32* @PIC_PCIE_LINK2_IRQ, align 4
  store i32 %15, i32* %2, align 4
  br label %26

16:                                               ; preds = %1
  %17 = call i32 (...) @nlm_chip_is_xls_b()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @PIC_PCIE_XLSB0_LINK3_IRQ, align 4
  store i32 %20, i32* %2, align 4
  br label %26

21:                                               ; preds = %16
  %22 = load i32, i32* @PIC_PCIE_LINK3_IRQ, align 4
  store i32 %22, i32* %2, align 4
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %21, %19, %14, %12, %7, %5
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @nlm_chip_is_xls_b(...) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
