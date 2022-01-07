; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar724x.c_ar724x_pci_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar724x.c_ar724x_pci_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar724x_pci_controller = type { i64 }

@AR724X_RESET_PCIE = common dso_local global i32 0, align 4
@AR724X_RESET_PCIE_PHY = common dso_local global i32 0, align 4
@AR724X_PLL_REG_PCIE_CONFIG = common dso_local global i32 0, align 4
@AR724X_PLL_REG_PCIE_CONFIG_PPL_RESET = common dso_local global i32 0, align 4
@AR724X_PLL_REG_PCIE_CONFIG_PPL_BYPASS = common dso_local global i32 0, align 4
@AR724X_PCI_REG_APP = common dso_local global i64 0, align 8
@AR724X_PCI_APP_LTSSM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar724x_pci_controller*)* @ar724x_pci_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar724x_pci_hw_init(%struct.ar724x_pci_controller* %0) #0 {
  %2 = alloca %struct.ar724x_pci_controller*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ar724x_pci_controller* %0, %struct.ar724x_pci_controller** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @AR724X_RESET_PCIE, align 4
  %7 = call i32 @ath79_device_reset_clear(i32 %6)
  %8 = load i32, i32* @AR724X_RESET_PCIE_PHY, align 4
  %9 = call i32 @ath79_device_reset_clear(i32 %8)
  %10 = load i32, i32* @AR724X_PLL_REG_PCIE_CONFIG, align 4
  %11 = call i32 @ath79_pll_rr(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @AR724X_PLL_REG_PCIE_CONFIG_PPL_RESET, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @AR724X_PLL_REG_PCIE_CONFIG, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ath79_pll_wr(i32 %16, i32 %17)
  %19 = load i32, i32* @AR724X_PLL_REG_PCIE_CONFIG, align 4
  %20 = call i32 @ath79_pll_rr(i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @AR724X_PLL_REG_PCIE_CONFIG_PPL_BYPASS, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @AR724X_PLL_REG_PCIE_CONFIG, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @ath79_pll_wr(i32 %25, i32 %26)
  %28 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %2, align 8
  %29 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AR724X_PCI_REG_APP, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @__raw_readl(i64 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @AR724X_PCI_APP_LTSSM_ENABLE, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %2, align 8
  %39 = getelementptr inbounds %struct.ar724x_pci_controller, %struct.ar724x_pci_controller* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AR724X_PCI_REG_APP, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @__raw_writel(i32 %37, i64 %42)
  br label %44

44:                                               ; preds = %56, %1
  %45 = call i32 @mdelay(i32 10)
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 10
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.ar724x_pci_controller*, %struct.ar724x_pci_controller** %2, align 8
  %53 = call i32 @ar724x_pci_check_link(%struct.ar724x_pci_controller* %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %51, %48
  %57 = phi i1 [ false, %48 ], [ %55, %51 ]
  br i1 %57, label %44, label %58

58:                                               ; preds = %56
  ret void
}

declare dso_local i32 @ath79_device_reset_clear(i32) #1

declare dso_local i32 @ath79_pll_rr(i32) #1

declare dso_local i32 @ath79_pll_wr(i32, i32) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ar724x_pci_check_link(%struct.ar724x_pci_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
