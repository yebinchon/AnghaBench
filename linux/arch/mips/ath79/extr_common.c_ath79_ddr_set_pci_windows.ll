; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/ath79/extr_common.c_ath79_ddr_set_pci_windows.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/ath79/extr_common.c_ath79_ddr_set_pci_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ath79_ddr_pci_win_base = common dso_local global i64 0, align 8
@AR71XX_PCI_WIN0_OFFS = common dso_local global i32 0, align 4
@AR71XX_PCI_WIN1_OFFS = common dso_local global i32 0, align 4
@AR71XX_PCI_WIN2_OFFS = common dso_local global i32 0, align 4
@AR71XX_PCI_WIN3_OFFS = common dso_local global i32 0, align 4
@AR71XX_PCI_WIN4_OFFS = common dso_local global i32 0, align 4
@AR71XX_PCI_WIN5_OFFS = common dso_local global i32 0, align 4
@AR71XX_PCI_WIN6_OFFS = common dso_local global i32 0, align 4
@AR71XX_PCI_WIN7_OFFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath79_ddr_set_pci_windows() #0 {
  %1 = load i64, i64* @ath79_ddr_pci_win_base, align 8
  %2 = icmp ne i64 %1, 0
  %3 = xor i1 %2, true
  %4 = zext i1 %3 to i32
  %5 = call i32 @BUG_ON(i32 %4)
  %6 = load i32, i32* @AR71XX_PCI_WIN0_OFFS, align 4
  %7 = load i64, i64* @ath79_ddr_pci_win_base, align 8
  %8 = add nsw i64 %7, 0
  %9 = call i32 @__raw_writel(i32 %6, i64 %8)
  %10 = load i32, i32* @AR71XX_PCI_WIN1_OFFS, align 4
  %11 = load i64, i64* @ath79_ddr_pci_win_base, align 8
  %12 = add nsw i64 %11, 4
  %13 = call i32 @__raw_writel(i32 %10, i64 %12)
  %14 = load i32, i32* @AR71XX_PCI_WIN2_OFFS, align 4
  %15 = load i64, i64* @ath79_ddr_pci_win_base, align 8
  %16 = add nsw i64 %15, 8
  %17 = call i32 @__raw_writel(i32 %14, i64 %16)
  %18 = load i32, i32* @AR71XX_PCI_WIN3_OFFS, align 4
  %19 = load i64, i64* @ath79_ddr_pci_win_base, align 8
  %20 = add nsw i64 %19, 12
  %21 = call i32 @__raw_writel(i32 %18, i64 %20)
  %22 = load i32, i32* @AR71XX_PCI_WIN4_OFFS, align 4
  %23 = load i64, i64* @ath79_ddr_pci_win_base, align 8
  %24 = add nsw i64 %23, 16
  %25 = call i32 @__raw_writel(i32 %22, i64 %24)
  %26 = load i32, i32* @AR71XX_PCI_WIN5_OFFS, align 4
  %27 = load i64, i64* @ath79_ddr_pci_win_base, align 8
  %28 = add nsw i64 %27, 20
  %29 = call i32 @__raw_writel(i32 %26, i64 %28)
  %30 = load i32, i32* @AR71XX_PCI_WIN6_OFFS, align 4
  %31 = load i64, i64* @ath79_ddr_pci_win_base, align 8
  %32 = add nsw i64 %31, 24
  %33 = call i32 @__raw_writel(i32 %30, i64 %32)
  %34 = load i32, i32* @AR71XX_PCI_WIN7_OFFS, align 4
  %35 = load i64, i64* @ath79_ddr_pci_win_base, align 8
  %36 = add nsw i64 %35, 28
  %37 = call i32 @__raw_writel(i32 %34, i64 %36)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
