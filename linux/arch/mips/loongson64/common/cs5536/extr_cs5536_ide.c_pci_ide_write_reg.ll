; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/common/cs5536/extr_cs5536_ide.c_pci_ide_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/common/cs5536/extr_cs5536_ide.c_pci_ide_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLIU_PAE = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@PCI_STATUS_PARITY = common dso_local global i32 0, align 4
@SB_ERROR = common dso_local global i32 0, align 4
@SB_PARE_ERR_FLAG = common dso_local global i32 0, align 4
@SB_CTRL = common dso_local global i32 0, align 4
@PCI_BAR_RANGE_MASK = common dso_local global i32 0, align 4
@GLCP_SOFT_COM = common dso_local global i32 0, align 4
@SOFT_BAR_IDE_FLAG = common dso_local global i32 0, align 4
@IDE_IO_BAR = common dso_local global i32 0, align 4
@GLIU_IOD_BM2 = common dso_local global i32 0, align 4
@CS5536_IDE_FLASH_SIGNATURE = common dso_local global i32 0, align 4
@DIVIL_BALL_OPTS = common dso_local global i32 0, align 4
@IDE_CFG = common dso_local global i32 0, align 4
@IDE_DTC = common dso_local global i32 0, align 4
@IDE_CAST = common dso_local global i32 0, align 4
@IDE_ETC = common dso_local global i32 0, align 4
@IDE_INTERNAL_PM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_ide_write_reg(i32 %0, i32 %1) #0 {
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
  switch i32 %8, label %186 [
    i32 134, label %9
    i32 128, label %29
    i32 135, label %54
    i32 136, label %71
    i32 132, label %120
    i32 131, label %146
    i32 133, label %156
    i32 130, label %166
    i32 129, label %176
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @GLIU_PAE, align 4
  %11 = call i32 @GLIU_MSR_REG(i32 %10)
  %12 = call i32 @_rdmsr(i32 %11, i32* %5, i32* %6)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, 48
  store i32 %19, i32* %6, align 4
  br label %23

20:                                               ; preds = %9
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, -49
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* @GLIU_PAE, align 4
  %25 = call i32 @GLIU_MSR_REG(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @_wrmsr(i32 %25, i32 %26, i32 %27)
  br label %187

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @PCI_STATUS_PARITY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load i32, i32* @SB_ERROR, align 4
  %36 = call i32 @SB_MSR_REG(i32 %35)
  %37 = call i32 @_rdmsr(i32 %36, i32* %5, i32* %6)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @SB_PARE_ERR_FLAG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 65535
  %45 = load i32, i32* @SB_PARE_ERR_FLAG, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @SB_ERROR, align 4
  %48 = call i32 @SB_MSR_REG(i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @_wrmsr(i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %42, %34
  br label %53

53:                                               ; preds = %52, %29
  br label %187

54:                                               ; preds = %2
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, 65280
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @SB_CTRL, align 4
  %58 = call i32 @SB_MSR_REG(i32 %57)
  %59 = call i32 @_rdmsr(i32 %58, i32* %5, i32* %6)
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, -256
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  %63 = ashr i32 %62, 8
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @SB_CTRL, align 4
  %67 = call i32 @SB_MSR_REG(i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @_wrmsr(i32 %67, i32 %68, i32 %69)
  br label %187

71:                                               ; preds = %2
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @PCI_BAR_RANGE_MASK, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i32, i32* @GLCP_SOFT_COM, align 4
  %77 = call i32 @GLCP_MSR_REG(i32 %76)
  %78 = call i32 @_rdmsr(i32 %77, i32* %5, i32* %6)
  %79 = load i32, i32* @SOFT_BAR_IDE_FLAG, align 4
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @GLCP_SOFT_COM, align 4
  %83 = call i32 @GLCP_MSR_REG(i32 %82)
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @_wrmsr(i32 %83, i32 %84, i32 %85)
  br label %119

87:                                               ; preds = %71
  %88 = load i32, i32* %4, align 4
  %89 = and i32 %88, 1
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %118

91:                                               ; preds = %87
  %92 = load i32, i32* @IDE_IO_BAR, align 4
  %93 = call i32 @IDE_MSR_REG(i32 %92)
  %94 = call i32 @_rdmsr(i32 %93, i32* %5, i32* %6)
  %95 = load i32, i32* %4, align 4
  %96 = and i32 %95, -16
  %97 = or i32 %96, 1
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* @IDE_IO_BAR, align 4
  %99 = call i32 @IDE_MSR_REG(i32 %98)
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @_wrmsr(i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %4, align 4
  %104 = and i32 %103, -4
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = and i32 %105, 1044480
  %107 = ashr i32 %106, 12
  %108 = or i32 1610612736, %107
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %4, align 4
  %110 = and i32 %109, 4095
  %111 = shl i32 %110, 20
  %112 = or i32 1048560, %111
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* @GLIU_IOD_BM2, align 4
  %114 = call i32 @GLIU_MSR_REG(i32 %113)
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @_wrmsr(i32 %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %91, %87
  br label %119

119:                                              ; preds = %118, %75
  br label %187

120:                                              ; preds = %2
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @CS5536_IDE_FLASH_SIGNATURE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %120
  %125 = load i32, i32* @DIVIL_BALL_OPTS, align 4
  %126 = call i32 @DIVIL_MSR_REG(i32 %125)
  %127 = call i32 @_rdmsr(i32 %126, i32* %5, i32* %6)
  %128 = load i32, i32* %6, align 4
  %129 = or i32 %128, 1
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* @DIVIL_BALL_OPTS, align 4
  %131 = call i32 @DIVIL_MSR_REG(i32 %130)
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @_wrmsr(i32 %131, i32 %132, i32 %133)
  br label %145

135:                                              ; preds = %120
  %136 = load i32, i32* @IDE_CFG, align 4
  %137 = call i32 @IDE_MSR_REG(i32 %136)
  %138 = call i32 @_rdmsr(i32 %137, i32* %5, i32* %6)
  %139 = load i32, i32* %4, align 4
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* @IDE_CFG, align 4
  %141 = call i32 @IDE_MSR_REG(i32 %140)
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @_wrmsr(i32 %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %135, %124
  br label %187

146:                                              ; preds = %2
  %147 = load i32, i32* @IDE_DTC, align 4
  %148 = call i32 @IDE_MSR_REG(i32 %147)
  %149 = call i32 @_rdmsr(i32 %148, i32* %5, i32* %6)
  %150 = load i32, i32* %4, align 4
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* @IDE_DTC, align 4
  %152 = call i32 @IDE_MSR_REG(i32 %151)
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @_wrmsr(i32 %152, i32 %153, i32 %154)
  br label %187

156:                                              ; preds = %2
  %157 = load i32, i32* @IDE_CAST, align 4
  %158 = call i32 @IDE_MSR_REG(i32 %157)
  %159 = call i32 @_rdmsr(i32 %158, i32* %5, i32* %6)
  %160 = load i32, i32* %4, align 4
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* @IDE_CAST, align 4
  %162 = call i32 @IDE_MSR_REG(i32 %161)
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @_wrmsr(i32 %162, i32 %163, i32 %164)
  br label %187

166:                                              ; preds = %2
  %167 = load i32, i32* @IDE_ETC, align 4
  %168 = call i32 @IDE_MSR_REG(i32 %167)
  %169 = call i32 @_rdmsr(i32 %168, i32* %5, i32* %6)
  %170 = load i32, i32* %4, align 4
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* @IDE_ETC, align 4
  %172 = call i32 @IDE_MSR_REG(i32 %171)
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @_wrmsr(i32 %172, i32 %173, i32 %174)
  br label %187

176:                                              ; preds = %2
  %177 = load i32, i32* @IDE_INTERNAL_PM, align 4
  %178 = call i32 @IDE_MSR_REG(i32 %177)
  %179 = call i32 @_rdmsr(i32 %178, i32* %5, i32* %6)
  %180 = load i32, i32* %4, align 4
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* @IDE_INTERNAL_PM, align 4
  %182 = call i32 @IDE_MSR_REG(i32 %181)
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @_wrmsr(i32 %182, i32 %183, i32 %184)
  br label %187

186:                                              ; preds = %2
  br label %187

187:                                              ; preds = %186, %176, %166, %156, %146, %145, %119, %54, %53, %23
  ret void
}

declare dso_local i32 @_rdmsr(i32, i32*, i32*) #1

declare dso_local i32 @GLIU_MSR_REG(i32) #1

declare dso_local i32 @_wrmsr(i32, i32, i32) #1

declare dso_local i32 @SB_MSR_REG(i32) #1

declare dso_local i32 @GLCP_MSR_REG(i32) #1

declare dso_local i32 @IDE_MSR_REG(i32) #1

declare dso_local i32 @DIVIL_MSR_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
