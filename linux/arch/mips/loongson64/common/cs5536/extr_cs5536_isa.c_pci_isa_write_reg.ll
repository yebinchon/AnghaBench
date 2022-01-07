; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/common/cs5536/extr_cs5536_isa.c_pci_isa_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/common/cs5536/extr_cs5536_isa.c_pci_isa_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@SB_ERROR = common dso_local global i32 0, align 4
@PCI_STATUS_SIG_TARGET_ABORT = common dso_local global i32 0, align 4
@SB_TAS_ERR_EN = common dso_local global i32 0, align 4
@SB_TAS_ERR_FLAG = common dso_local global i32 0, align 4
@PCI_STATUS_REC_TARGET_ABORT = common dso_local global i32 0, align 4
@SB_TAR_ERR_EN = common dso_local global i32 0, align 4
@SB_TAR_ERR_FLAG = common dso_local global i32 0, align 4
@PCI_STATUS_REC_MASTER_ABORT = common dso_local global i32 0, align 4
@SB_MAR_ERR_EN = common dso_local global i32 0, align 4
@SB_MAR_ERR_FLAG = common dso_local global i32 0, align 4
@PCI_STATUS_DETECTED_PARITY = common dso_local global i32 0, align 4
@SB_PARE_ERR_EN = common dso_local global i32 0, align 4
@SB_PARE_ERR_FLAG = common dso_local global i32 0, align 4
@SB_CTRL = common dso_local global i32 0, align 4
@PIC_YSEL_HIGH = common dso_local global i32 0, align 4
@CS5536_UART1_INTR = common dso_local global i32 0, align 4
@CS5536_UART2_INTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_isa_write_reg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %176 [
    i32 132, label %10
    i32 130, label %20
    i32 133, label %88
    i32 139, label %105
    i32 138, label %108
    i32 137, label %111
    i32 136, label %114
    i32 135, label %117
    i32 134, label %120
    i32 129, label %123
    i32 128, label %142
    i32 131, label %161
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PCI_COMMAND_IO, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 (...) @divil_lbar_enable()
  br label %19

17:                                               ; preds = %10
  %18 = call i32 (...) @divil_lbar_disable()
  br label %19

19:                                               ; preds = %17, %15
  br label %177

20:                                               ; preds = %2
  %21 = load i32, i32* @SB_ERROR, align 4
  %22 = call i32 @SB_MSR_REG(i32 %21)
  %23 = call i32 @_rdmsr(i32 %22, i32* %5, i32* %6)
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 65535
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @PCI_STATUS_SIG_TARGET_ABORT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @SB_TAS_ERR_EN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @SB_TAS_ERR_FLAG, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %30, %20
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @PCI_STATUS_REC_TARGET_ABORT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @SB_TAR_ERR_EN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @SB_TAR_ERR_FLAG, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %49, %44, %39
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @PCI_STATUS_REC_MASTER_ABORT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @SB_MAR_ERR_EN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @SB_MAR_ERR_FLAG, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %63, %58, %53
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @PCI_STATUS_DETECTED_PARITY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @SB_PARE_ERR_EN, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @SB_PARE_ERR_FLAG, align 4
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %77, %72, %67
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* @SB_ERROR, align 4
  %84 = call i32 @SB_MSR_REG(i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @_wrmsr(i32 %84, i32 %85, i32 %86)
  br label %177

88:                                               ; preds = %2
  %89 = load i32, i32* %4, align 4
  %90 = and i32 %89, 65280
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* @SB_CTRL, align 4
  %92 = call i32 @SB_MSR_REG(i32 %91)
  %93 = call i32 @_rdmsr(i32 %92, i32* %5, i32* %6)
  %94 = load i32, i32* %5, align 4
  %95 = and i32 %94, -256
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %4, align 4
  %97 = ashr i32 %96, 8
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* @SB_CTRL, align 4
  %101 = call i32 @SB_MSR_REG(i32 %100)
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @_wrmsr(i32 %101, i32 %102, i32 %103)
  br label %177

105:                                              ; preds = %2
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @pci_isa_write_bar(i32 0, i32 %106)
  br label %177

108:                                              ; preds = %2
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @pci_isa_write_bar(i32 1, i32 %109)
  br label %177

111:                                              ; preds = %2
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @pci_isa_write_bar(i32 2, i32 %112)
  br label %177

114:                                              ; preds = %2
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @pci_isa_write_bar(i32 3, i32 %115)
  br label %177

117:                                              ; preds = %2
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @pci_isa_write_bar(i32 4, i32 %118)
  br label %177

120:                                              ; preds = %2
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @pci_isa_write_bar(i32 5, i32 %121)
  br label %177

123:                                              ; preds = %2
  %124 = load i32, i32* @PIC_YSEL_HIGH, align 4
  %125 = call i32 @DIVIL_MSR_REG(i32 %124)
  %126 = call i32 @_rdmsr(i32 %125, i32* %5, i32* %6)
  %127 = load i32, i32* %6, align 4
  %128 = and i32 %127, -251658241
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %123
  %132 = load i32, i32* @CS5536_UART1_INTR, align 4
  %133 = shl i32 %132, 24
  %134 = load i32, i32* %6, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %131, %123
  %137 = load i32, i32* @PIC_YSEL_HIGH, align 4
  %138 = call i32 @DIVIL_MSR_REG(i32 %137)
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @_wrmsr(i32 %138, i32 %139, i32 %140)
  br label %177

142:                                              ; preds = %2
  %143 = load i32, i32* @PIC_YSEL_HIGH, align 4
  %144 = call i32 @DIVIL_MSR_REG(i32 %143)
  %145 = call i32 @_rdmsr(i32 %144, i32* %5, i32* %6)
  %146 = load i32, i32* %6, align 4
  %147 = and i32 %146, 268435455
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %4, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %142
  %151 = load i32, i32* @CS5536_UART2_INTR, align 4
  %152 = shl i32 %151, 28
  %153 = load i32, i32* %6, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %6, align 4
  br label %155

155:                                              ; preds = %150, %142
  %156 = load i32, i32* @PIC_YSEL_HIGH, align 4
  %157 = call i32 @DIVIL_MSR_REG(i32 %156)
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @_wrmsr(i32 %157, i32 %158, i32 %159)
  br label %177

161:                                              ; preds = %2
  %162 = load i32, i32* %4, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %161
  %165 = load i32, i32* @SB_ERROR, align 4
  %166 = call i32 @SB_MSR_REG(i32 %165)
  %167 = call i32 @_rdmsr(i32 %166, i32* %5, i32* %6)
  %168 = load i32, i32* %6, align 4
  %169 = or i32 %168, 99
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* @SB_ERROR, align 4
  %171 = call i32 @SB_MSR_REG(i32 %170)
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* %6, align 4
  %174 = call i32 @_wrmsr(i32 %171, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %164, %161
  br label %176

176:                                              ; preds = %2, %175
  br label %177

177:                                              ; preds = %176, %155, %136, %120, %117, %114, %111, %108, %105, %88, %81, %19
  ret void
}

declare dso_local i32 @divil_lbar_enable(...) #1

declare dso_local i32 @divil_lbar_disable(...) #1

declare dso_local i32 @_rdmsr(i32, i32*, i32*) #1

declare dso_local i32 @SB_MSR_REG(i32) #1

declare dso_local i32 @_wrmsr(i32, i32, i32) #1

declare dso_local i32 @pci_isa_write_bar(i32, i32) #1

declare dso_local i32 @DIVIL_MSR_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
