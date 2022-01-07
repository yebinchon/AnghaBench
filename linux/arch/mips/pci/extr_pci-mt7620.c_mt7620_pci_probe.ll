; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-mt7620.c_mt7620_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-mt7620.c_mt7620_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"pcie0\00", align 1
@rstpcie0 = common dso_local global i32 0, align 4
@bridge_base = common dso_local global i32 0, align 4
@pcie_base = common dso_local global i32 0, align 4
@iomem_resource = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ioport_resource = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ralink_soc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"pcie is not supported on this hardware\0A\00", align 1
@PCIRST = common dso_local global i32 0, align 4
@RALINK_PCI_PCICFG_ADDR = common dso_local global i32 0, align 4
@RALINK_PCI0_STATUS = common dso_local global i32 0, align 4
@PCIE_LINK_UP_ST = common dso_local global i32 0, align 4
@RALINK_PCIE0_CLK_EN = common dso_local global i32 0, align 4
@RALINK_CLKCFG1 = common dso_local global i32 0, align 4
@LC_CKDRVPD = common dso_local global i32 0, align 4
@PDRV_SW_SET = common dso_local global i32 0, align 4
@PPLL_DRV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"PCIE0 no card, disable it(RST&CLK)\0A\00", align 1
@RALINK_PCI_MEMBASE = common dso_local global i32 0, align 4
@RALINK_PCI_IO_MAP_BASE = common dso_local global i32 0, align 4
@RALINK_PCI_IOBASE = common dso_local global i32 0, align 4
@RALINK_PCI0_BAR0SETUP_ADDR = common dso_local global i32 0, align 4
@RALINK_PCI_MEMORY_BASE = common dso_local global i32 0, align 4
@RALINK_PCI0_IMBASEBAR0_ADDR = common dso_local global i32 0, align 4
@RALINK_PCI0_CLASS = common dso_local global i32 0, align 4
@PCIINT2 = common dso_local global i32 0, align 4
@RALINK_PCI_PCIENA = common dso_local global i32 0, align 4
@mt7620_controller = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mt7620_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7620_pci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @IORESOURCE_MEM, align 4
  %9 = call %struct.resource* @platform_get_resource(%struct.platform_device* %7, i32 %8, i32 0)
  store %struct.resource* %9, %struct.resource** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @IORESOURCE_MEM, align 4
  %12 = call %struct.resource* @platform_get_resource(%struct.platform_device* %10, i32 %11, i32 1)
  store %struct.resource* %12, %struct.resource** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 @devm_reset_control_get_exclusive(%struct.TYPE_8__* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* @rstpcie0, align 4
  %16 = load i32, i32* @rstpcie0, align 4
  %17 = call i64 @IS_ERR(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @rstpcie0, align 4
  %21 = call i32 @PTR_ERR(i32 %20)
  store i32 %21, i32* %2, align 4
  br label %116

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.resource*, %struct.resource** %4, align 8
  %26 = call i32 @devm_ioremap_resource(%struct.TYPE_8__* %24, %struct.resource* %25)
  store i32 %26, i32* @bridge_base, align 4
  %27 = load i32, i32* @bridge_base, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @bridge_base, align 4
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %116

33:                                               ; preds = %22
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.resource*, %struct.resource** %5, align 8
  %37 = call i32 @devm_ioremap_resource(%struct.TYPE_8__* %35, %struct.resource* %36)
  store i32 %37, i32* @pcie_base, align 4
  %38 = load i32, i32* @pcie_base, align 4
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @pcie_base, align 4
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %116

44:                                               ; preds = %33
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @iomem_resource, i32 0, i32 1), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @iomem_resource, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ioport_resource, i32 0, i32 1), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ioport_resource, i32 0, i32 0), align 8
  %45 = load i32, i32* @ralink_soc, align 4
  switch i32 %45, label %58 [
    i32 130, label %46
    i32 129, label %52
    i32 128, label %52
  ]

46:                                               ; preds = %44
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = call i32 @mt7620_pci_hw_init(%struct.platform_device* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -1, i32* %2, align 4
  br label %116

51:                                               ; preds = %46
  br label %62

52:                                               ; preds = %44, %44
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = call i32 @mt7628_pci_hw_init(%struct.platform_device* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 -1, i32* %2, align 4
  br label %116

57:                                               ; preds = %52
  br label %62

58:                                               ; preds = %44
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 @dev_err(%struct.TYPE_8__* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %116

62:                                               ; preds = %57, %51
  %63 = call i32 @mdelay(i32 50)
  %64 = load i32, i32* @PCIRST, align 4
  %65 = load i32, i32* @RALINK_PCI_PCICFG_ADDR, align 4
  %66 = call i32 @pcie_m32(i32 %64, i32 0, i32 %65)
  %67 = call i32 @mdelay(i32 100)
  %68 = load i32, i32* @RALINK_PCI0_STATUS, align 4
  %69 = call i32 @pcie_r32(i32 %68)
  %70 = load i32, i32* @PCIE_LINK_UP_ST, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %62
  %74 = load i32, i32* @rstpcie0, align 4
  %75 = call i32 @reset_control_assert(i32 %74)
  %76 = load i32, i32* @RALINK_PCIE0_CLK_EN, align 4
  %77 = load i32, i32* @RALINK_CLKCFG1, align 4
  %78 = call i32 @rt_sysc_m32(i32 %76, i32 0, i32 %77)
  %79 = load i32, i32* @ralink_soc, align 4
  %80 = icmp eq i32 %79, 130
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load i32, i32* @LC_CKDRVPD, align 4
  %83 = load i32, i32* @PDRV_SW_SET, align 4
  %84 = load i32, i32* @PPLL_DRV, align 4
  %85 = call i32 @rt_sysc_m32(i32 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %73
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call i32 @dev_err(%struct.TYPE_8__* %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %116

90:                                               ; preds = %62
  %91 = load i32, i32* @RALINK_PCI_MEMBASE, align 4
  %92 = call i32 @bridge_w32(i32 -1, i32 %91)
  %93 = load i32, i32* @RALINK_PCI_IO_MAP_BASE, align 4
  %94 = load i32, i32* @RALINK_PCI_IOBASE, align 4
  %95 = call i32 @bridge_w32(i32 %93, i32 %94)
  %96 = load i32, i32* @RALINK_PCI0_BAR0SETUP_ADDR, align 4
  %97 = call i32 @pcie_w32(i32 2147418113, i32 %96)
  %98 = load i32, i32* @RALINK_PCI_MEMORY_BASE, align 4
  %99 = load i32, i32* @RALINK_PCI0_IMBASEBAR0_ADDR, align 4
  %100 = call i32 @pcie_w32(i32 %98, i32 %99)
  %101 = load i32, i32* @RALINK_PCI0_CLASS, align 4
  %102 = call i32 @pcie_w32(i32 100925441, i32 %101)
  %103 = load i32, i32* @PCIINT2, align 4
  %104 = load i32, i32* @RALINK_PCI_PCIENA, align 4
  %105 = call i32 @pcie_m32(i32 0, i32 %103, i32 %104)
  %106 = call i32 @pci_config_read(i32* null, i32 0, i32 4, i32 4, i32* %6)
  %107 = load i32, i32* %6, align 4
  %108 = or i32 %107, 7
  %109 = call i32 @pci_config_write(i32* null, i32 0, i32 4, i32 4, i32 %108)
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @pci_load_of_ranges(i32* @mt7620_controller, i32 %113)
  %115 = call i32 @register_pci_controller(i32* @mt7620_controller)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %90, %86, %58, %56, %50, %41, %30, %19
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_reset_control_get_exclusive(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_8__*, %struct.resource*) #1

declare dso_local i32 @mt7620_pci_hw_init(%struct.platform_device*) #1

declare dso_local i32 @mt7628_pci_hw_init(%struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @pcie_m32(i32, i32, i32) #1

declare dso_local i32 @pcie_r32(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @rt_sysc_m32(i32, i32, i32) #1

declare dso_local i32 @bridge_w32(i32, i32) #1

declare dso_local i32 @pcie_w32(i32, i32) #1

declare dso_local i32 @pci_config_read(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @pci_config_write(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pci_load_of_ranges(i32*, i32) #1

declare dso_local i32 @register_pci_controller(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
