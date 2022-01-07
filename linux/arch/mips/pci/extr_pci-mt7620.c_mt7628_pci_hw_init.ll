; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-mt7620.c_mt7628_pci_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-mt7620.c_mt7628_pci_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@RALINK_GPIOMODE = common dso_local global i32 0, align 4
@rstpcie0 = common dso_local global i32 0, align 4
@RALINK_PCIE0_CLK_EN = common dso_local global i32 0, align 4
@RALINK_CLKCFG1 = common dso_local global i32 0, align 4
@RALINK_PCIEPHY_P0_CTL_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Port 0 N_FTS = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mt7628_pci_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7628_pci_hw_init(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 @BIT(i32 16)
  %5 = load i32, i32* @RALINK_GPIOMODE, align 4
  %6 = call i32 @rt_sysc_m32(i32 %4, i32 0, i32 %5)
  %7 = load i32, i32* @rstpcie0, align 4
  %8 = call i32 @reset_control_deassert(i32 %7)
  %9 = load i32, i32* @RALINK_PCIE0_CLK_EN, align 4
  %10 = load i32, i32* @RALINK_CLKCFG1, align 4
  %11 = call i32 @rt_sysc_m32(i32 0, i32 %9, i32 %10)
  %12 = call i32 @mdelay(i32 100)
  %13 = load i32, i32* @RALINK_PCIEPHY_P0_CTL_OFFSET, align 4
  %14 = call i32 @pcie_m32(i32 -256, i32 5, i32 %13)
  %15 = call i32 @pci_config_read(i32* null, i32 0, i32 1804, i32 4, i32* %3)
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, -65536
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, 20480
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @pci_config_write(i32* null, i32 0, i32 1804, i32 4, i32 %20)
  %22 = call i32 @pci_config_read(i32* null, i32 0, i32 1804, i32 4, i32* %3)
  %23 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %25)
  ret i32 0
}

declare dso_local i32 @rt_sysc_m32(i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @pcie_m32(i32, i32, i32) #1

declare dso_local i32 @pci_config_read(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @pci_config_write(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
