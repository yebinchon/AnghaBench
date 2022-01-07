; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/common/cs5536/extr_cs5536_ide.c_pci_ide_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/common/cs5536/extr_cs5536_ide.c_pci_ide_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CS5536_IDE_DEVICE_ID = common dso_local global i32 0, align 4
@CS5536_VENDOR_ID = common dso_local global i32 0, align 4
@IDE_IO_BAR = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@GLIU_PAE = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@PCI_STATUS_66MHZ = common dso_local global i32 0, align 4
@PCI_STATUS_FAST_BACK = common dso_local global i32 0, align 4
@SB_ERROR = common dso_local global i32 0, align 4
@SB_PARE_ERR_FLAG = common dso_local global i32 0, align 4
@PCI_STATUS_PARITY = common dso_local global i32 0, align 4
@PCI_STATUS_DEVSEL_MEDIUM = common dso_local global i32 0, align 4
@IDE_CAP = common dso_local global i32 0, align 4
@CS5536_IDE_CLASS_CODE = common dso_local global i32 0, align 4
@SB_CTRL = common dso_local global i32 0, align 4
@PCI_NORMAL_HEADER_TYPE = common dso_local global i32 0, align 4
@GLCP_SOFT_COM = common dso_local global i32 0, align 4
@SOFT_BAR_IDE_FLAG = common dso_local global i32 0, align 4
@CS5536_IDE_RANGE = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_SPACE_IO = common dso_local global i32 0, align 4
@PCI_CARDBUS_CIS_POINTER = common dso_local global i32 0, align 4
@CS5536_IDE_SUB_ID = common dso_local global i32 0, align 4
@CS5536_SUB_VENDOR_ID = common dso_local global i32 0, align 4
@PCI_EXPANSION_ROM_BAR = common dso_local global i32 0, align 4
@PCI_CAPLIST_POINTER = common dso_local global i32 0, align 4
@PCI_DEFAULT_PIN = common dso_local global i32 0, align 4
@CS5536_IDE_INTR = common dso_local global i32 0, align 4
@IDE_CFG = common dso_local global i32 0, align 4
@IDE_DTC = common dso_local global i32 0, align 4
@IDE_CAST = common dso_local global i32 0, align 4
@IDE_ETC = common dso_local global i32 0, align 4
@IDE_INTERNAL_PM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_ide_read_reg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %146 [
    i32 128, label %7
    i32 138, label %11
    i32 130, label %34
    i32 139, label %56
    i32 142, label %66
    i32 143, label %75
    i32 140, label %107
    i32 129, label %109
    i32 131, label %113
    i32 141, label %115
    i32 132, label %117
    i32 136, label %121
    i32 135, label %126
    i32 137, label %131
    i32 134, label %136
    i32 133, label %141
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @CS5536_IDE_DEVICE_ID, align 4
  %9 = load i32, i32* @CS5536_VENDOR_ID, align 4
  %10 = call i32 @CFG_PCI_VENDOR_ID(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  br label %147

11:                                               ; preds = %1
  %12 = load i32, i32* @IDE_IO_BAR, align 4
  %13 = call i32 @IDE_MSR_REG(i32 %12)
  %14 = call i32 @_rdmsr(i32 %13, i32* %4, i32* %5)
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, -16
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32, i32* @PCI_COMMAND_IO, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %11
  %23 = load i32, i32* @GLIU_PAE, align 4
  %24 = call i32 @GLIU_MSR_REG(i32 %23)
  %25 = call i32 @_rdmsr(i32 %24, i32* %4, i32* %5)
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 48
  %28 = icmp eq i32 %27, 48
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %22
  br label %147

34:                                               ; preds = %1
  %35 = load i32, i32* @PCI_STATUS_66MHZ, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @PCI_STATUS_FAST_BACK, align 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @SB_ERROR, align 4
  %42 = call i32 @SB_MSR_REG(i32 %41)
  %43 = call i32 @_rdmsr(i32 %42, i32* %4, i32* %5)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @SB_PARE_ERR_FLAG, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %34
  %49 = load i32, i32* @PCI_STATUS_PARITY, align 4
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %34
  %53 = load i32, i32* @PCI_STATUS_DEVSEL_MEDIUM, align 4
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  br label %147

56:                                               ; preds = %1
  %57 = load i32, i32* @IDE_CAP, align 4
  %58 = call i32 @IDE_MSR_REG(i32 %57)
  %59 = call i32 @_rdmsr(i32 %58, i32* %4, i32* %5)
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, 255
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* @CS5536_IDE_CLASS_CODE, align 4
  %63 = shl i32 %62, 8
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  br label %147

66:                                               ; preds = %1
  %67 = load i32, i32* @SB_CTRL, align 4
  %68 = call i32 @SB_MSR_REG(i32 %67)
  %69 = call i32 @_rdmsr(i32 %68, i32* %4, i32* %5)
  %70 = load i32, i32* %4, align 4
  %71 = and i32 %70, 248
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @PCI_NORMAL_HEADER_TYPE, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @CFG_PCI_CACHE_LINE_SIZE(i32 %72, i32 %73)
  store i32 %74, i32* %3, align 4
  br label %147

75:                                               ; preds = %1
  %76 = load i32, i32* @GLCP_SOFT_COM, align 4
  %77 = call i32 @GLCP_MSR_REG(i32 %76)
  %78 = call i32 @_rdmsr(i32 %77, i32* %4, i32* %5)
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @SOFT_BAR_IDE_FLAG, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %75
  %84 = load i32, i32* @CS5536_IDE_RANGE, align 4
  %85 = load i32, i32* @PCI_BASE_ADDRESS_SPACE_IO, align 4
  %86 = or i32 %84, %85
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* @SOFT_BAR_IDE_FLAG, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %5, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* @GLCP_SOFT_COM, align 4
  %92 = call i32 @GLCP_MSR_REG(i32 %91)
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @_wrmsr(i32 %92, i32 %93, i32 %94)
  br label %106

96:                                               ; preds = %75
  %97 = load i32, i32* @IDE_IO_BAR, align 4
  %98 = call i32 @IDE_MSR_REG(i32 %97)
  %99 = call i32 @_rdmsr(i32 %98, i32* %4, i32* %5)
  %100 = load i32, i32* %5, align 4
  %101 = and i32 %100, -16
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %3, align 4
  %103 = or i32 %102, 1
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* %3, align 4
  %105 = and i32 %104, -3
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %96, %83
  br label %147

107:                                              ; preds = %1
  %108 = load i32, i32* @PCI_CARDBUS_CIS_POINTER, align 4
  store i32 %108, i32* %3, align 4
  br label %147

109:                                              ; preds = %1
  %110 = load i32, i32* @CS5536_IDE_SUB_ID, align 4
  %111 = load i32, i32* @CS5536_SUB_VENDOR_ID, align 4
  %112 = call i32 @CFG_PCI_VENDOR_ID(i32 %110, i32 %111)
  store i32 %112, i32* %3, align 4
  br label %147

113:                                              ; preds = %1
  %114 = load i32, i32* @PCI_EXPANSION_ROM_BAR, align 4
  store i32 %114, i32* %3, align 4
  br label %147

115:                                              ; preds = %1
  %116 = load i32, i32* @PCI_CAPLIST_POINTER, align 4
  store i32 %116, i32* %3, align 4
  br label %147

117:                                              ; preds = %1
  %118 = load i32, i32* @PCI_DEFAULT_PIN, align 4
  %119 = load i32, i32* @CS5536_IDE_INTR, align 4
  %120 = call i32 @CFG_PCI_INTERRUPT_LINE(i32 %118, i32 %119)
  store i32 %120, i32* %3, align 4
  br label %147

121:                                              ; preds = %1
  %122 = load i32, i32* @IDE_CFG, align 4
  %123 = call i32 @IDE_MSR_REG(i32 %122)
  %124 = call i32 @_rdmsr(i32 %123, i32* %4, i32* %5)
  %125 = load i32, i32* %5, align 4
  store i32 %125, i32* %3, align 4
  br label %147

126:                                              ; preds = %1
  %127 = load i32, i32* @IDE_DTC, align 4
  %128 = call i32 @IDE_MSR_REG(i32 %127)
  %129 = call i32 @_rdmsr(i32 %128, i32* %4, i32* %5)
  %130 = load i32, i32* %5, align 4
  store i32 %130, i32* %3, align 4
  br label %147

131:                                              ; preds = %1
  %132 = load i32, i32* @IDE_CAST, align 4
  %133 = call i32 @IDE_MSR_REG(i32 %132)
  %134 = call i32 @_rdmsr(i32 %133, i32* %4, i32* %5)
  %135 = load i32, i32* %5, align 4
  store i32 %135, i32* %3, align 4
  br label %147

136:                                              ; preds = %1
  %137 = load i32, i32* @IDE_ETC, align 4
  %138 = call i32 @IDE_MSR_REG(i32 %137)
  %139 = call i32 @_rdmsr(i32 %138, i32* %4, i32* %5)
  %140 = load i32, i32* %5, align 4
  store i32 %140, i32* %3, align 4
  br label %147

141:                                              ; preds = %1
  %142 = load i32, i32* @IDE_INTERNAL_PM, align 4
  %143 = call i32 @IDE_MSR_REG(i32 %142)
  %144 = call i32 @_rdmsr(i32 %143, i32* %4, i32* %5)
  %145 = load i32, i32* %5, align 4
  store i32 %145, i32* %3, align 4
  br label %147

146:                                              ; preds = %1
  br label %147

147:                                              ; preds = %146, %141, %136, %131, %126, %121, %117, %115, %113, %109, %107, %106, %66, %56, %52, %33, %7
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @CFG_PCI_VENDOR_ID(i32, i32) #1

declare dso_local i32 @_rdmsr(i32, i32*, i32*) #1

declare dso_local i32 @IDE_MSR_REG(i32) #1

declare dso_local i32 @GLIU_MSR_REG(i32) #1

declare dso_local i32 @SB_MSR_REG(i32) #1

declare dso_local i32 @CFG_PCI_CACHE_LINE_SIZE(i32, i32) #1

declare dso_local i32 @GLCP_MSR_REG(i32) #1

declare dso_local i32 @_wrmsr(i32, i32, i32) #1

declare dso_local i32 @CFG_PCI_INTERRUPT_LINE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
