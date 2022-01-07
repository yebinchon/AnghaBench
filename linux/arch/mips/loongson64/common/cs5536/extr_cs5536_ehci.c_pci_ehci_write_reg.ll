; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/common/cs5536/extr_cs5536_ehci.c_pci_ehci_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/common/cs5536/extr_cs5536_ehci.c_pci_ehci_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_EHCI = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_STATUS_PARITY = common dso_local global i32 0, align 4
@SB_ERROR = common dso_local global i32 0, align 4
@SB_PARE_ERR_FLAG = common dso_local global i32 0, align 4
@PCI_BAR_RANGE_MASK = common dso_local global i32 0, align 4
@GLCP_SOFT_COM = common dso_local global i32 0, align 4
@SOFT_BAR_EHCI_FLAG = common dso_local global i32 0, align 4
@GLIU_P2D_BM4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_ehci_write_reg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %149 [
    i32 131, label %9
    i32 128, label %46
    i32 132, label %71
    i32 129, label %118
    i32 130, label %134
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @USB_EHCI, align 4
  %11 = call i32 @USB_MSR_REG(i32 %10)
  %12 = call i32 @_rdmsr(i32 %11, i32* %5, i32* %6)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %26

21:                                               ; preds = %9
  %22 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %21, %17
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %40

35:                                               ; preds = %26
  %36 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i32, i32* @USB_EHCI, align 4
  %42 = call i32 @USB_MSR_REG(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @_wrmsr(i32 %42, i32 %43, i32 %44)
  br label %150

46:                                               ; preds = %2
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @PCI_STATUS_PARITY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %46
  %52 = load i32, i32* @SB_ERROR, align 4
  %53 = call i32 @SB_MSR_REG(i32 %52)
  %54 = call i32 @_rdmsr(i32 %53, i32* %5, i32* %6)
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @SB_PARE_ERR_FLAG, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %51
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 65535
  %62 = load i32, i32* @SB_PARE_ERR_FLAG, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* @SB_ERROR, align 4
  %65 = call i32 @SB_MSR_REG(i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @_wrmsr(i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %59, %51
  br label %70

70:                                               ; preds = %69, %46
  br label %150

71:                                               ; preds = %2
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @PCI_BAR_RANGE_MASK, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i32, i32* @GLCP_SOFT_COM, align 4
  %77 = call i32 @GLCP_MSR_REG(i32 %76)
  %78 = call i32 @_rdmsr(i32 %77, i32* %5, i32* %6)
  %79 = load i32, i32* @SOFT_BAR_EHCI_FLAG, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @GLCP_SOFT_COM, align 4
  %83 = call i32 @GLCP_MSR_REG(i32 %82)
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @_wrmsr(i32 %83, i32 %84, i32 %85)
  br label %117

87:                                               ; preds = %71
  %88 = load i32, i32* %4, align 4
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %87
  %92 = load i32, i32* @USB_EHCI, align 4
  %93 = call i32 @USB_MSR_REG(i32 %92)
  %94 = call i32 @_rdmsr(i32 %93, i32* %5, i32* %6)
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* @USB_EHCI, align 4
  %97 = call i32 @USB_MSR_REG(i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @_wrmsr(i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %4, align 4
  %102 = and i32 %101, -16
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = and i32 %103, -16777216
  %105 = lshr i32 %104, 24
  %106 = or i32 1073741824, %105
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %4, align 4
  %108 = and i32 %107, 16773120
  %109 = shl i32 %108, 8
  %110 = or i32 1048575, %109
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* @GLIU_P2D_BM4, align 4
  %112 = call i32 @GLIU_MSR_REG(i32 %111)
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @_wrmsr(i32 %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %91, %87
  br label %117

117:                                              ; preds = %116, %75
  br label %150

118:                                              ; preds = %2
  %119 = load i32, i32* @USB_EHCI, align 4
  %120 = call i32 @USB_MSR_REG(i32 %119)
  %121 = call i32 @_rdmsr(i32 %120, i32* %5, i32* %6)
  %122 = load i32, i32* %5, align 4
  %123 = and i32 %122, 4128768
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %4, align 4
  %125 = and i32 %124, 63
  %126 = shl i32 %125, 16
  %127 = load i32, i32* %5, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* @USB_EHCI, align 4
  %130 = call i32 @USB_MSR_REG(i32 %129)
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @_wrmsr(i32 %130, i32 %131, i32 %132)
  br label %150

134:                                              ; preds = %2
  %135 = load i32, i32* @USB_EHCI, align 4
  %136 = call i32 @USB_MSR_REG(i32 %135)
  %137 = call i32 @_rdmsr(i32 %136, i32* %5, i32* %6)
  %138 = load i32, i32* %5, align 4
  %139 = and i32 %138, -16129
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %4, align 4
  %141 = and i32 %140, 16128
  %142 = load i32, i32* %5, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* @USB_EHCI, align 4
  %145 = call i32 @USB_MSR_REG(i32 %144)
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @_wrmsr(i32 %145, i32 %146, i32 %147)
  br label %150

149:                                              ; preds = %2
  br label %150

150:                                              ; preds = %149, %134, %118, %117, %70, %40
  ret void
}

declare dso_local i32 @_rdmsr(i32, i32*, i32*) #1

declare dso_local i32 @USB_MSR_REG(i32) #1

declare dso_local i32 @_wrmsr(i32, i32, i32) #1

declare dso_local i32 @SB_MSR_REG(i32) #1

declare dso_local i32 @GLCP_MSR_REG(i32) #1

declare dso_local i32 @GLIU_MSR_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
