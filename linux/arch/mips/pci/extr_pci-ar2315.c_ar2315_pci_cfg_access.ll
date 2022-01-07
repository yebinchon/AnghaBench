; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar2315.c_ar2315_pci_cfg_access.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-ar2315.c_ar2315_pci_cfg_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar2315_pci_ctrl = type { i64 }

@AR2315_PCI_CFG_SIZE = common dso_local global i64 0, align 8
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@AR2315_PCI_ISR = common dso_local global i32 0, align 4
@AR2315_PCI_INT_ABORT = common dso_local global i64 0, align 8
@AR2315_PCI_MISC_CONFIG = common dso_local global i32 0, align 4
@AR2315_PCIMISC_CFG_SEL = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar2315_pci_ctrl*, i32, i32, i32, i64*, i32)* @ar2315_pci_cfg_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar2315_pci_cfg_access(%struct.ar2315_pci_ctrl* %0, i32 %1, i32 %2, i32 %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ar2315_pci_ctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.ar2315_pci_ctrl* %0, %struct.ar2315_pci_ctrl** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @PCI_FUNC(i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @PCI_SLOT(i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = add nsw i32 13, %25
  %27 = shl i32 1, %26
  %28 = load i32, i32* %14, align 4
  %29 = shl i32 %28, 8
  %30 = or i32 %27, %29
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, -4
  %33 = or i32 %30, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %16, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 4, %35
  %37 = mul nsw i32 8, %36
  %38 = lshr i32 -1, %37
  %39 = zext i32 %38 to i64
  store i64 %39, i64* %17, align 8
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, 3
  %42 = mul nsw i32 %41, 8
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %18, align 8
  %44 = load i64, i64* %16, align 8
  %45 = load i64, i64* @AR2315_PCI_CFG_SIZE, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %6
  %48 = load i32, i32* %15, align 4
  %49 = icmp sgt i32 %48, 18
  br i1 %49, label %50, label %52

50:                                               ; preds = %47, %6
  %51 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %51, i32* %7, align 4
  br label %140

52:                                               ; preds = %47
  %53 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %8, align 8
  %54 = load i32, i32* @AR2315_PCI_ISR, align 4
  %55 = load i64, i64* @AR2315_PCI_INT_ABORT, align 8
  %56 = call i32 @ar2315_pci_reg_write(%struct.ar2315_pci_ctrl* %53, i32 %54, i64 %55)
  %57 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %8, align 8
  %58 = load i32, i32* @AR2315_PCI_MISC_CONFIG, align 4
  %59 = load i32, i32* @AR2315_PCIMISC_CFG_SEL, align 4
  %60 = call i32 @ar2315_pci_reg_mask(%struct.ar2315_pci_ctrl* %57, i32 %58, i32 0, i32 %59)
  %61 = call i32 (...) @mb()
  %62 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %8, align 8
  %63 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %16, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i64 @__raw_readl(i64 %66)
  store i64 %67, i64* %19, align 8
  %68 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %8, align 8
  %69 = load i32, i32* @AR2315_PCI_ISR, align 4
  %70 = call i64 @ar2315_pci_reg_read(%struct.ar2315_pci_ctrl* %68, i32 %69)
  store i64 %70, i64* %20, align 8
  %71 = load i64, i64* %20, align 8
  %72 = load i64, i64* @AR2315_PCI_INT_ABORT, align 8
  %73 = and i64 %71, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %52
  br label %115

76:                                               ; preds = %52
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %76
  %80 = load i64, i64* %19, align 8
  %81 = load i64, i64* %17, align 8
  %82 = load i64, i64* %18, align 8
  %83 = shl i64 %81, %82
  %84 = xor i64 %83, -1
  %85 = and i64 %80, %84
  %86 = load i64*, i64** %12, align 8
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %18, align 8
  %89 = shl i64 %87, %88
  %90 = or i64 %85, %89
  store i64 %90, i64* %19, align 8
  %91 = load i64, i64* %19, align 8
  %92 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %8, align 8
  %93 = getelementptr inbounds %struct.ar2315_pci_ctrl, %struct.ar2315_pci_ctrl* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %16, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @__raw_writel(i64 %91, i64 %96)
  %98 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %8, align 8
  %99 = load i32, i32* @AR2315_PCI_ISR, align 4
  %100 = call i64 @ar2315_pci_reg_read(%struct.ar2315_pci_ctrl* %98, i32 %99)
  store i64 %100, i64* %20, align 8
  %101 = load i64, i64* %20, align 8
  %102 = load i64, i64* @AR2315_PCI_INT_ABORT, align 8
  %103 = and i64 %101, %102
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %79
  br label %115

106:                                              ; preds = %79
  br label %114

107:                                              ; preds = %76
  %108 = load i64, i64* %19, align 8
  %109 = load i64, i64* %18, align 8
  %110 = ashr i64 %108, %109
  %111 = load i64, i64* %17, align 8
  %112 = and i64 %110, %111
  %113 = load i64*, i64** %12, align 8
  store i64 %112, i64* %113, align 8
  br label %114

114:                                              ; preds = %107, %106
  br label %125

115:                                              ; preds = %105, %75
  %116 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %8, align 8
  %117 = load i32, i32* @AR2315_PCI_ISR, align 4
  %118 = load i64, i64* @AR2315_PCI_INT_ABORT, align 8
  %119 = call i32 @ar2315_pci_reg_write(%struct.ar2315_pci_ctrl* %116, i32 %117, i64 %118)
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %115
  %123 = load i64*, i64** %12, align 8
  store i64 4294967295, i64* %123, align 8
  br label %124

124:                                              ; preds = %122, %115
  br label %125

125:                                              ; preds = %124, %114
  %126 = load %struct.ar2315_pci_ctrl*, %struct.ar2315_pci_ctrl** %8, align 8
  %127 = load i32, i32* @AR2315_PCI_MISC_CONFIG, align 4
  %128 = load i32, i32* @AR2315_PCIMISC_CFG_SEL, align 4
  %129 = call i32 @ar2315_pci_reg_mask(%struct.ar2315_pci_ctrl* %126, i32 %127, i32 %128, i32 0)
  %130 = load i64, i64* %20, align 8
  %131 = load i64, i64* @AR2315_PCI_INT_ABORT, align 8
  %132 = and i64 %130, %131
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %125
  %135 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  br label %138

136:                                              ; preds = %125
  %137 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %138, %50
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @ar2315_pci_reg_write(%struct.ar2315_pci_ctrl*, i32, i64) #1

declare dso_local i32 @ar2315_pci_reg_mask(%struct.ar2315_pci_ctrl*, i32, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i64 @ar2315_pci_reg_read(%struct.ar2315_pci_ctrl*, i32) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
