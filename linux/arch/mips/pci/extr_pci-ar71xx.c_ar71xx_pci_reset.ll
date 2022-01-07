; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar71xx.c_ar71xx_pci_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar71xx.c_ar71xx_pci_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR71XX_RESET_PCI_BUS = common dso_local global i32 0, align 4
@AR71XX_RESET_PCI_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ar71xx_pci_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar71xx_pci_reset() #0 {
  %1 = load i32, i32* @AR71XX_RESET_PCI_BUS, align 4
  %2 = load i32, i32* @AR71XX_RESET_PCI_CORE, align 4
  %3 = or i32 %1, %2
  %4 = call i32 @ath79_device_reset_set(i32 %3)
  %5 = call i32 @mdelay(i32 100)
  %6 = load i32, i32* @AR71XX_RESET_PCI_BUS, align 4
  %7 = load i32, i32* @AR71XX_RESET_PCI_CORE, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @ath79_device_reset_clear(i32 %8)
  %10 = call i32 @mdelay(i32 100)
  %11 = call i32 (...) @ath79_ddr_set_pci_windows()
  %12 = call i32 @mdelay(i32 100)
  ret void
}

declare dso_local i32 @ath79_device_reset_set(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ath79_device_reset_clear(i32) #1

declare dso_local i32 @ath79_ddr_set_pci_windows(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
