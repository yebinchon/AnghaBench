; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/common/cs5536/extr_cs5536_isa.c_pci_isa_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/common/cs5536/extr_cs5536_isa.c_pci_isa_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CS5536_ISA_DEVICE_ID = common dso_local global i32 0, align 4
@CS5536_VENDOR_ID = common dso_local global i32 0, align 4
@DIVIL_LBAR_SMB = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_STATUS_66MHZ = common dso_local global i32 0, align 4
@PCI_STATUS_DEVSEL_MEDIUM = common dso_local global i32 0, align 4
@PCI_STATUS_FAST_BACK = common dso_local global i32 0, align 4
@SB_ERROR = common dso_local global i32 0, align 4
@SB_TAS_ERR_FLAG = common dso_local global i32 0, align 4
@PCI_STATUS_SIG_TARGET_ABORT = common dso_local global i32 0, align 4
@SB_TAR_ERR_FLAG = common dso_local global i32 0, align 4
@PCI_STATUS_REC_TARGET_ABORT = common dso_local global i32 0, align 4
@SB_MAR_ERR_FLAG = common dso_local global i32 0, align 4
@PCI_STATUS_REC_MASTER_ABORT = common dso_local global i32 0, align 4
@SB_PARE_ERR_FLAG = common dso_local global i32 0, align 4
@PCI_STATUS_DETECTED_PARITY = common dso_local global i32 0, align 4
@GLCP_CHIP_REV_ID = common dso_local global i32 0, align 4
@CS5536_ISA_CLASS_CODE = common dso_local global i32 0, align 4
@SB_CTRL = common dso_local global i32 0, align 4
@PCI_BRIDGE_HEADER_TYPE = common dso_local global i32 0, align 4
@PCI_CARDBUS_CIS_POINTER = common dso_local global i32 0, align 4
@CS5536_ISA_SUB_ID = common dso_local global i32 0, align 4
@CS5536_SUB_VENDOR_ID = common dso_local global i32 0, align 4
@PCI_EXPANSION_ROM_BAR = common dso_local global i32 0, align 4
@PCI_CAPLIST_POINTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_isa_read_reg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %115 [
    i32 128, label %8
    i32 133, label %12
    i32 130, label %24
    i32 134, label %73
    i32 137, label %83
    i32 143, label %92
    i32 142, label %94
    i32 141, label %96
    i32 140, label %98
    i32 139, label %99
    i32 138, label %101
    i32 135, label %103
    i32 129, label %105
    i32 131, label %109
    i32 136, label %111
    i32 132, label %113
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @CS5536_ISA_DEVICE_ID, align 4
  %10 = load i32, i32* @CS5536_VENDOR_ID, align 4
  %11 = call i32 @CFG_PCI_VENDOR_ID(i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  br label %116

12:                                               ; preds = %1
  %13 = load i32, i32* @DIVIL_LBAR_SMB, align 4
  %14 = call i32 @DIVIL_MSR_REG(i32 %13)
  %15 = call i32 @_rdmsr(i32 %14, i32* %5, i32* %6)
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i32, i32* @PCI_COMMAND_IO, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %12
  br label %116

24:                                               ; preds = %1
  %25 = load i32, i32* @PCI_STATUS_66MHZ, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @PCI_STATUS_DEVSEL_MEDIUM, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @PCI_STATUS_FAST_BACK, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @SB_ERROR, align 4
  %35 = call i32 @SB_MSR_REG(i32 %34)
  %36 = call i32 @_rdmsr(i32 %35, i32* %5, i32* %6)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SB_TAS_ERR_FLAG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %24
  %42 = load i32, i32* @PCI_STATUS_SIG_TARGET_ABORT, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %24
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @SB_TAR_ERR_FLAG, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @PCI_STATUS_REC_TARGET_ABORT, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @SB_MAR_ERR_FLAG, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @PCI_STATUS_REC_MASTER_ABORT, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @SB_PARE_ERR_FLAG, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @PCI_STATUS_DETECTED_PARITY, align 4
  %70 = load i32, i32* %4, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %63
  br label %116

73:                                               ; preds = %1
  %74 = load i32, i32* @GLCP_CHIP_REV_ID, align 4
  %75 = call i32 @GLCP_MSR_REG(i32 %74)
  %76 = call i32 @_rdmsr(i32 %75, i32* %5, i32* %6)
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, 255
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* @CS5536_ISA_CLASS_CODE, align 4
  %80 = shl i32 %79, 8
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %4, align 4
  br label %116

83:                                               ; preds = %1
  %84 = load i32, i32* @SB_CTRL, align 4
  %85 = call i32 @SB_MSR_REG(i32 %84)
  %86 = call i32 @_rdmsr(i32 %85, i32* %5, i32* %6)
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, 248
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* @PCI_BRIDGE_HEADER_TYPE, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @CFG_PCI_CACHE_LINE_SIZE(i32 %89, i32 %90)
  store i32 %91, i32* %4, align 4
  br label %116

92:                                               ; preds = %1
  %93 = call i32 @pci_isa_read_bar(i32 0)
  store i32 %93, i32* %2, align 4
  br label %118

94:                                               ; preds = %1
  %95 = call i32 @pci_isa_read_bar(i32 1)
  store i32 %95, i32* %2, align 4
  br label %118

96:                                               ; preds = %1
  %97 = call i32 @pci_isa_read_bar(i32 2)
  store i32 %97, i32* %2, align 4
  br label %118

98:                                               ; preds = %1
  br label %116

99:                                               ; preds = %1
  %100 = call i32 @pci_isa_read_bar(i32 4)
  store i32 %100, i32* %2, align 4
  br label %118

101:                                              ; preds = %1
  %102 = call i32 @pci_isa_read_bar(i32 5)
  store i32 %102, i32* %2, align 4
  br label %118

103:                                              ; preds = %1
  %104 = load i32, i32* @PCI_CARDBUS_CIS_POINTER, align 4
  store i32 %104, i32* %4, align 4
  br label %116

105:                                              ; preds = %1
  %106 = load i32, i32* @CS5536_ISA_SUB_ID, align 4
  %107 = load i32, i32* @CS5536_SUB_VENDOR_ID, align 4
  %108 = call i32 @CFG_PCI_VENDOR_ID(i32 %106, i32 %107)
  store i32 %108, i32* %4, align 4
  br label %116

109:                                              ; preds = %1
  %110 = load i32, i32* @PCI_EXPANSION_ROM_BAR, align 4
  store i32 %110, i32* %4, align 4
  br label %116

111:                                              ; preds = %1
  %112 = load i32, i32* @PCI_CAPLIST_POINTER, align 4
  store i32 %112, i32* %4, align 4
  br label %116

113:                                              ; preds = %1
  %114 = call i32 @CFG_PCI_INTERRUPT_LINE(i32 0, i32 0)
  store i32 %114, i32* %4, align 4
  br label %116

115:                                              ; preds = %1
  br label %116

116:                                              ; preds = %115, %113, %111, %109, %105, %103, %98, %83, %73, %72, %23, %8
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %116, %101, %99, %96, %94, %92
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @CFG_PCI_VENDOR_ID(i32, i32) #1

declare dso_local i32 @_rdmsr(i32, i32*, i32*) #1

declare dso_local i32 @DIVIL_MSR_REG(i32) #1

declare dso_local i32 @SB_MSR_REG(i32) #1

declare dso_local i32 @GLCP_MSR_REG(i32) #1

declare dso_local i32 @CFG_PCI_CACHE_LINE_SIZE(i32, i32) #1

declare dso_local i32 @pci_isa_read_bar(i32) #1

declare dso_local i32 @CFG_PCI_INTERRUPT_LINE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
