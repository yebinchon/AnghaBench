; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-octeon.c_pcibios_plat_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-octeon.c_pcibios_plat_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }

@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_PARITY = common dso_local global i32 0, align 4
@PCI_COMMAND_SERR = common dso_local global i32 0, align 4
@PCI_SEC_LATENCY_TIMER = common dso_local global i32 0, align 4
@PCI_BRIDGE_CONTROL = common dso_local global i32 0, align 4
@PCI_BRIDGE_CTL_PARITY = common dso_local global i32 0, align 4
@PCI_BRIDGE_CTL_SERR = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_CERE = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_NFERE = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_FERE = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_URRE = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_ERR = common dso_local global i32 0, align 4
@PCI_ERR_UNCOR_STATUS = common dso_local global i64 0, align 8
@PCI_ERR_UNCOR_MASK = common dso_local global i64 0, align 8
@PCI_ERR_COR_STATUS = common dso_local global i64 0, align 8
@PCI_ERR_COR_MASK = common dso_local global i64 0, align 8
@PCI_ERR_CAP = common dso_local global i64 0, align 8
@PCI_ERR_CAP_ECRC_GENC = common dso_local global i32 0, align 4
@PCI_ERR_CAP_ECRC_GENE = common dso_local global i32 0, align 4
@PCI_ERR_CAP_ECRC_CHKC = common dso_local global i32 0, align 4
@PCI_ERR_CAP_ECRC_CHKE = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_COMMAND = common dso_local global i64 0, align 8
@PCI_ERR_ROOT_CMD_COR_EN = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_CMD_NONFATAL_EN = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_CMD_FATAL_EN = common dso_local global i32 0, align 4
@PCI_ERR_ROOT_STATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcibios_plat_dev_init(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %8 = call i32 @pci_write_config_byte(%struct.pci_dev* %6, i32 %7, i32 16)
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %11 = call i32 @pci_write_config_byte(%struct.pci_dev* %9, i32 %10, i32 64)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = load i32, i32* @PCI_COMMAND, align 4
  %14 = call i32 @pci_read_config_word(%struct.pci_dev* %12, i32 %13, i32* %3)
  %15 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %16 = load i32, i32* @PCI_COMMAND_SERR, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = load i32, i32* @PCI_COMMAND, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @pci_write_config_word(%struct.pci_dev* %20, i32 %21, i32 %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %1
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = load i32, i32* @PCI_SEC_LATENCY_TIMER, align 4
  %31 = call i32 @pci_write_config_byte(%struct.pci_dev* %29, i32 %30, i32 64)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %34 = call i32 @pci_read_config_word(%struct.pci_dev* %32, i32 %33, i32* %3)
  %35 = load i32, i32* @PCI_BRIDGE_CTL_PARITY, align 4
  %36 = load i32, i32* @PCI_BRIDGE_CTL_SERR, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %41 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @pci_write_config_word(%struct.pci_dev* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %28, %1
  %45 = load i32, i32* @PCI_EXP_DEVCTL_CERE, align 4
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* @PCI_EXP_DEVCTL_NFERE, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* @PCI_EXP_DEVCTL_FERE, align 4
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @PCI_EXP_DEVCTL_URRE, align 4
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  %55 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %56 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @pcie_capability_set_word(%struct.pci_dev* %55, i32 %56, i32 %57)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %60 = load i32, i32* @PCI_EXT_CAP_ID_ERR, align 4
  %61 = call i32 @pci_find_ext_capability(%struct.pci_dev* %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %158

64:                                               ; preds = %44
  %65 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* @PCI_ERR_UNCOR_STATUS, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @pci_read_config_dword(%struct.pci_dev* %65, i64 %69, i32* %4)
  %71 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @PCI_ERR_UNCOR_STATUS, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @pci_write_config_dword(%struct.pci_dev* %71, i64 %75, i32 %76)
  %78 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @PCI_ERR_UNCOR_MASK, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @pci_write_config_dword(%struct.pci_dev* %78, i64 %82, i32 0)
  %84 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* @PCI_ERR_COR_STATUS, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @pci_read_config_dword(%struct.pci_dev* %84, i64 %88, i32* %4)
  %90 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @PCI_ERR_COR_STATUS, align 8
  %94 = add nsw i64 %92, %93
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @pci_write_config_dword(%struct.pci_dev* %90, i64 %94, i32 %95)
  %97 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* @PCI_ERR_COR_MASK, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @pci_write_config_dword(%struct.pci_dev* %97, i64 %101, i32 0)
  %103 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* @PCI_ERR_CAP, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @pci_read_config_dword(%struct.pci_dev* %103, i64 %107, i32* %4)
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @PCI_ERR_CAP_ECRC_GENC, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %64
  %114 = load i32, i32* @PCI_ERR_CAP_ECRC_GENE, align 4
  %115 = load i32, i32* %3, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %64
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* @PCI_ERR_CAP_ECRC_CHKC, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32, i32* @PCI_ERR_CAP_ECRC_CHKE, align 4
  %124 = load i32, i32* %3, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %122, %117
  %127 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* @PCI_ERR_CAP, align 8
  %131 = add nsw i64 %129, %130
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @pci_write_config_dword(%struct.pci_dev* %127, i64 %131, i32 %132)
  %134 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* @PCI_ERR_ROOT_COMMAND, align 8
  %138 = add nsw i64 %136, %137
  %139 = load i32, i32* @PCI_ERR_ROOT_CMD_COR_EN, align 4
  %140 = load i32, i32* @PCI_ERR_ROOT_CMD_NONFATAL_EN, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @PCI_ERR_ROOT_CMD_FATAL_EN, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @pci_write_config_dword(%struct.pci_dev* %134, i64 %138, i32 %143)
  %145 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* @PCI_ERR_ROOT_STATUS, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @pci_read_config_dword(%struct.pci_dev* %145, i64 %149, i32* %4)
  %151 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* @PCI_ERR_ROOT_STATUS, align 8
  %155 = add nsw i64 %153, %154
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @pci_write_config_dword(%struct.pci_dev* %151, i64 %155, i32 %156)
  br label %158

158:                                              ; preds = %126, %44
  ret i32 0
}

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pcie_capability_set_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
