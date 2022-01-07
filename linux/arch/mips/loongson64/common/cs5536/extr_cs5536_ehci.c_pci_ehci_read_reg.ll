; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/common/cs5536/extr_cs5536_ehci.c_pci_ehci_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/common/cs5536/extr_cs5536_ehci.c_pci_ehci_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CS5536_EHCI_DEVICE_ID = common dso_local global i32 0, align 4
@CS5536_VENDOR_ID = common dso_local global i32 0, align 4
@USB_EHCI = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_STATUS_66MHZ = common dso_local global i32 0, align 4
@PCI_STATUS_FAST_BACK = common dso_local global i32 0, align 4
@SB_ERROR = common dso_local global i32 0, align 4
@SB_PARE_ERR_FLAG = common dso_local global i32 0, align 4
@PCI_STATUS_PARITY = common dso_local global i32 0, align 4
@PCI_STATUS_DEVSEL_MEDIUM = common dso_local global i32 0, align 4
@USB_CAP = common dso_local global i32 0, align 4
@CS5536_EHCI_CLASS_CODE = common dso_local global i32 0, align 4
@PCI_NORMAL_HEADER_TYPE = common dso_local global i32 0, align 4
@PCI_NORMAL_LATENCY_TIMER = common dso_local global i32 0, align 4
@GLCP_SOFT_COM = common dso_local global i32 0, align 4
@SOFT_BAR_EHCI_FLAG = common dso_local global i32 0, align 4
@CS5536_EHCI_RANGE = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_SPACE_MEMORY = common dso_local global i32 0, align 4
@PCI_CARDBUS_CIS_POINTER = common dso_local global i32 0, align 4
@CS5536_EHCI_SUB_ID = common dso_local global i32 0, align 4
@CS5536_SUB_VENDOR_ID = common dso_local global i32 0, align 4
@PCI_EXPANSION_ROM_BAR = common dso_local global i32 0, align 4
@PCI_CAPLIST_USB_POINTER = common dso_local global i32 0, align 4
@PCI_DEFAULT_PIN = common dso_local global i32 0, align 4
@CS5536_USB_INTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_ehci_read_reg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %131 [
    i32 128, label %7
    i32 136, label %11
    i32 130, label %33
    i32 137, label %55
    i32 140, label %65
    i32 141, label %69
    i32 138, label %97
    i32 129, label %99
    i32 131, label %103
    i32 139, label %105
    i32 132, label %107
    i32 134, label %111
    i32 133, label %118
    i32 135, label %125
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @CS5536_EHCI_DEVICE_ID, align 4
  %9 = load i32, i32* @CS5536_VENDOR_ID, align 4
  %10 = call i32 @CFG_PCI_VENDOR_ID(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  br label %132

11:                                               ; preds = %1
  %12 = load i32, i32* @USB_EHCI, align 4
  %13 = call i32 @USB_MSR_REG(i32 %12)
  %14 = call i32 @_rdmsr(i32 %13, i32* %4, i32* %5)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %11
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %23
  br label %132

33:                                               ; preds = %1
  %34 = load i32, i32* @PCI_STATUS_66MHZ, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @PCI_STATUS_FAST_BACK, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* @SB_ERROR, align 4
  %41 = call i32 @SB_MSR_REG(i32 %40)
  %42 = call i32 @_rdmsr(i32 %41, i32* %4, i32* %5)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SB_PARE_ERR_FLAG, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = load i32, i32* @PCI_STATUS_PARITY, align 4
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %33
  %52 = load i32, i32* @PCI_STATUS_DEVSEL_MEDIUM, align 4
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %132

55:                                               ; preds = %1
  %56 = load i32, i32* @USB_CAP, align 4
  %57 = call i32 @USB_MSR_REG(i32 %56)
  %58 = call i32 @_rdmsr(i32 %57, i32* %4, i32* %5)
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, 255
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* @CS5536_EHCI_CLASS_CODE, align 4
  %62 = shl i32 %61, 8
  %63 = load i32, i32* %3, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %3, align 4
  br label %132

65:                                               ; preds = %1
  %66 = load i32, i32* @PCI_NORMAL_HEADER_TYPE, align 4
  %67 = load i32, i32* @PCI_NORMAL_LATENCY_TIMER, align 4
  %68 = call i32 @CFG_PCI_CACHE_LINE_SIZE(i32 %66, i32 %67)
  store i32 %68, i32* %3, align 4
  br label %132

69:                                               ; preds = %1
  %70 = load i32, i32* @GLCP_SOFT_COM, align 4
  %71 = call i32 @GLCP_MSR_REG(i32 %70)
  %72 = call i32 @_rdmsr(i32 %71, i32* %4, i32* %5)
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @SOFT_BAR_EHCI_FLAG, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %69
  %78 = load i32, i32* @CS5536_EHCI_RANGE, align 4
  %79 = load i32, i32* @PCI_BASE_ADDRESS_SPACE_MEMORY, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* @SOFT_BAR_EHCI_FLAG, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* @GLCP_SOFT_COM, align 4
  %86 = call i32 @GLCP_MSR_REG(i32 %85)
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @_wrmsr(i32 %86, i32 %87, i32 %88)
  br label %96

90:                                               ; preds = %69
  %91 = load i32, i32* @USB_EHCI, align 4
  %92 = call i32 @USB_MSR_REG(i32 %91)
  %93 = call i32 @_rdmsr(i32 %92, i32* %4, i32* %5)
  %94 = load i32, i32* %5, align 4
  %95 = and i32 %94, -4096
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %90, %77
  br label %132

97:                                               ; preds = %1
  %98 = load i32, i32* @PCI_CARDBUS_CIS_POINTER, align 4
  store i32 %98, i32* %3, align 4
  br label %132

99:                                               ; preds = %1
  %100 = load i32, i32* @CS5536_EHCI_SUB_ID, align 4
  %101 = load i32, i32* @CS5536_SUB_VENDOR_ID, align 4
  %102 = call i32 @CFG_PCI_VENDOR_ID(i32 %100, i32 %101)
  store i32 %102, i32* %3, align 4
  br label %132

103:                                              ; preds = %1
  %104 = load i32, i32* @PCI_EXPANSION_ROM_BAR, align 4
  store i32 %104, i32* %3, align 4
  br label %132

105:                                              ; preds = %1
  %106 = load i32, i32* @PCI_CAPLIST_USB_POINTER, align 4
  store i32 %106, i32* %3, align 4
  br label %132

107:                                              ; preds = %1
  %108 = load i32, i32* @PCI_DEFAULT_PIN, align 4
  %109 = load i32, i32* @CS5536_USB_INTR, align 4
  %110 = call i32 @CFG_PCI_INTERRUPT_LINE(i32 %108, i32 %109)
  store i32 %110, i32* %3, align 4
  br label %132

111:                                              ; preds = %1
  %112 = load i32, i32* @USB_EHCI, align 4
  %113 = call i32 @USB_MSR_REG(i32 %112)
  %114 = call i32 @_rdmsr(i32 %113, i32* %4, i32* %5)
  %115 = load i32, i32* %4, align 4
  %116 = and i32 %115, 4128768
  %117 = ashr i32 %116, 16
  store i32 %117, i32* %3, align 4
  br label %132

118:                                              ; preds = %1
  %119 = load i32, i32* @USB_EHCI, align 4
  %120 = call i32 @USB_MSR_REG(i32 %119)
  %121 = call i32 @_rdmsr(i32 %120, i32* %4, i32* %5)
  %122 = load i32, i32* %4, align 4
  %123 = and i32 %122, 1056964608
  %124 = ashr i32 %123, 24
  store i32 %124, i32* %3, align 4
  br label %132

125:                                              ; preds = %1
  %126 = load i32, i32* @USB_EHCI, align 4
  %127 = call i32 @USB_MSR_REG(i32 %126)
  %128 = call i32 @_rdmsr(i32 %127, i32* %4, i32* %5)
  %129 = load i32, i32* %4, align 4
  %130 = and i32 %129, 16128
  store i32 %130, i32* %3, align 4
  br label %132

131:                                              ; preds = %1
  br label %132

132:                                              ; preds = %131, %125, %118, %111, %107, %105, %103, %99, %97, %96, %65, %55, %51, %32, %7
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @CFG_PCI_VENDOR_ID(i32, i32) #1

declare dso_local i32 @_rdmsr(i32, i32*, i32*) #1

declare dso_local i32 @USB_MSR_REG(i32) #1

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
