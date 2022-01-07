; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/common/cs5536/extr_cs5536_acc.c_pci_acc_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/common/cs5536/extr_cs5536_acc.c_pci_acc_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CS5536_ACC_DEVICE_ID = common dso_local global i32 0, align 4
@CS5536_VENDOR_ID = common dso_local global i32 0, align 4
@GLIU_IOD_BM1 = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@GLIU_PAE = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@PCI_STATUS_66MHZ = common dso_local global i32 0, align 4
@PCI_STATUS_FAST_BACK = common dso_local global i32 0, align 4
@SB_ERROR = common dso_local global i32 0, align 4
@SB_PARE_ERR_FLAG = common dso_local global i32 0, align 4
@PCI_STATUS_PARITY = common dso_local global i32 0, align 4
@PCI_STATUS_DEVSEL_MEDIUM = common dso_local global i32 0, align 4
@ACC_CAP = common dso_local global i32 0, align 4
@CS5536_ACC_CLASS_CODE = common dso_local global i32 0, align 4
@PCI_NORMAL_HEADER_TYPE = common dso_local global i32 0, align 4
@PCI_NORMAL_LATENCY_TIMER = common dso_local global i32 0, align 4
@GLCP_SOFT_COM = common dso_local global i32 0, align 4
@SOFT_BAR_ACC_FLAG = common dso_local global i32 0, align 4
@CS5536_ACC_RANGE = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_SPACE_IO = common dso_local global i32 0, align 4
@PCI_CARDBUS_CIS_POINTER = common dso_local global i32 0, align 4
@CS5536_ACC_SUB_ID = common dso_local global i32 0, align 4
@CS5536_SUB_VENDOR_ID = common dso_local global i32 0, align 4
@PCI_EXPANSION_ROM_BAR = common dso_local global i32 0, align 4
@PCI_CAPLIST_USB_POINTER = common dso_local global i32 0, align 4
@PCI_DEFAULT_PIN = common dso_local global i32 0, align 4
@CS5536_ACC_INTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_acc_read_reg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %130 [
    i32 128, label %7
    i32 133, label %11
    i32 130, label %42
    i32 134, label %64
    i32 137, label %74
    i32 138, label %78
    i32 135, label %116
    i32 129, label %118
    i32 131, label %122
    i32 136, label %124
    i32 132, label %126
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @CS5536_ACC_DEVICE_ID, align 4
  %9 = load i32, i32* @CS5536_VENDOR_ID, align 4
  %10 = call i32 @CFG_PCI_VENDOR_ID(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  br label %131

11:                                               ; preds = %1
  %12 = load i32, i32* @GLIU_IOD_BM1, align 4
  %13 = call i32 @GLIU_MSR_REG(i32 %12)
  %14 = call i32 @_rdmsr(i32 %13, i32* %3, i32* %4)
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, -1048576
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 255
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18, %11
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, -268435456
  %25 = icmp eq i32 %24, -1610612736
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @PCI_COMMAND_IO, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %22, %18
  %31 = load i32, i32* @GLIU_PAE, align 4
  %32 = call i32 @GLIU_MSR_REG(i32 %31)
  %33 = call i32 @_rdmsr(i32 %32, i32* %3, i32* %4)
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 768
  %36 = icmp eq i32 %35, 768
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %30
  br label %131

42:                                               ; preds = %1
  %43 = load i32, i32* @PCI_STATUS_66MHZ, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @PCI_STATUS_FAST_BACK, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* @SB_ERROR, align 4
  %50 = call i32 @SB_MSR_REG(i32 %49)
  %51 = call i32 @_rdmsr(i32 %50, i32* %3, i32* %4)
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @SB_PARE_ERR_FLAG, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %42
  %57 = load i32, i32* @PCI_STATUS_PARITY, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %42
  %61 = load i32, i32* @PCI_STATUS_DEVSEL_MEDIUM, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %131

64:                                               ; preds = %1
  %65 = load i32, i32* @ACC_CAP, align 4
  %66 = call i32 @ACC_MSR_REG(i32 %65)
  %67 = call i32 @_rdmsr(i32 %66, i32* %3, i32* %4)
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, 255
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* @CS5536_ACC_CLASS_CODE, align 4
  %71 = shl i32 %70, 8
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %131

74:                                               ; preds = %1
  %75 = load i32, i32* @PCI_NORMAL_HEADER_TYPE, align 4
  %76 = load i32, i32* @PCI_NORMAL_LATENCY_TIMER, align 4
  %77 = call i32 @CFG_PCI_CACHE_LINE_SIZE(i32 %75, i32 %76)
  store i32 %77, i32* %5, align 4
  br label %131

78:                                               ; preds = %1
  %79 = load i32, i32* @GLCP_SOFT_COM, align 4
  %80 = call i32 @GLCP_MSR_REG(i32 %79)
  %81 = call i32 @_rdmsr(i32 %80, i32* %3, i32* %4)
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @SOFT_BAR_ACC_FLAG, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %78
  %87 = load i32, i32* @CS5536_ACC_RANGE, align 4
  %88 = load i32, i32* @PCI_BASE_ADDRESS_SPACE_IO, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* @SOFT_BAR_ACC_FLAG, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* @GLCP_SOFT_COM, align 4
  %95 = call i32 @GLCP_MSR_REG(i32 %94)
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @_wrmsr(i32 %95, i32 %96, i32 %97)
  br label %115

99:                                               ; preds = %78
  %100 = load i32, i32* @GLIU_IOD_BM1, align 4
  %101 = call i32 @GLIU_MSR_REG(i32 %100)
  %102 = call i32 @_rdmsr(i32 %101, i32* %3, i32* %4)
  %103 = load i32, i32* %3, align 4
  %104 = and i32 %103, 255
  %105 = shl i32 %104, 12
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %4, align 4
  %107 = and i32 %106, -1048576
  %108 = lshr i32 %107, 20
  %109 = load i32, i32* %5, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = or i32 %111, 1
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = and i32 %113, -3
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %99, %86
  br label %131

116:                                              ; preds = %1
  %117 = load i32, i32* @PCI_CARDBUS_CIS_POINTER, align 4
  store i32 %117, i32* %5, align 4
  br label %131

118:                                              ; preds = %1
  %119 = load i32, i32* @CS5536_ACC_SUB_ID, align 4
  %120 = load i32, i32* @CS5536_SUB_VENDOR_ID, align 4
  %121 = call i32 @CFG_PCI_VENDOR_ID(i32 %119, i32 %120)
  store i32 %121, i32* %5, align 4
  br label %131

122:                                              ; preds = %1
  %123 = load i32, i32* @PCI_EXPANSION_ROM_BAR, align 4
  store i32 %123, i32* %5, align 4
  br label %131

124:                                              ; preds = %1
  %125 = load i32, i32* @PCI_CAPLIST_USB_POINTER, align 4
  store i32 %125, i32* %5, align 4
  br label %131

126:                                              ; preds = %1
  %127 = load i32, i32* @PCI_DEFAULT_PIN, align 4
  %128 = load i32, i32* @CS5536_ACC_INTR, align 4
  %129 = call i32 @CFG_PCI_INTERRUPT_LINE(i32 %127, i32 %128)
  store i32 %129, i32* %5, align 4
  br label %131

130:                                              ; preds = %1
  br label %131

131:                                              ; preds = %130, %126, %124, %122, %118, %116, %115, %74, %64, %60, %41, %7
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @CFG_PCI_VENDOR_ID(i32, i32) #1

declare dso_local i32 @_rdmsr(i32, i32*, i32*) #1

declare dso_local i32 @GLIU_MSR_REG(i32) #1

declare dso_local i32 @SB_MSR_REG(i32) #1

declare dso_local i32 @ACC_MSR_REG(i32) #1

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
