; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_nlm_hal.c_nlm_irq_to_irt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/xlp/extr_nlm_hal.c_nlm_irq_to_irt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nlm_irq_to_irt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @PIC_PCIE_LINK_MSI_IRQ(i32 0)
  %6 = icmp sge i32 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @PIC_PCIE_LINK_MSI_IRQ(i32 3)
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 -2, i32* %2, align 4
  br label %30

12:                                               ; preds = %7, %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @PIC_PCIE_MSIX_IRQ(i32 0)
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @PIC_PCIE_MSIX_IRQ(i32 3)
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -2, i32* %2, align 4
  br label %30

21:                                               ; preds = %16, %12
  %22 = call i64 (...) @cpu_is_xlp9xx()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @xlp9xx_irq_to_irt(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @xlp_irq_to_irt(i32 %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %24, %20, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @PIC_PCIE_LINK_MSI_IRQ(i32) #1

declare dso_local i32 @PIC_PCIE_MSIX_IRQ(i32) #1

declare dso_local i64 @cpu_is_xlp9xx(...) #1

declare dso_local i32 @xlp9xx_irq_to_irt(i32) #1

declare dso_local i32 @xlp_irq_to_irt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
