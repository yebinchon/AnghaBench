; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/common/cs5536/extr_cs5536_acc.c_pci_acc_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/common/cs5536/extr_cs5536_acc.c_pci_acc_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLIU_PAE = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@PCI_STATUS_PARITY = common dso_local global i32 0, align 4
@SB_ERROR = common dso_local global i32 0, align 4
@SB_PARE_ERR_FLAG = common dso_local global i32 0, align 4
@PCI_BAR_RANGE_MASK = common dso_local global i32 0, align 4
@GLCP_SOFT_COM = common dso_local global i32 0, align 4
@SOFT_BAR_ACC_FLAG = common dso_local global i32 0, align 4
@GLIU_IOD_BM1 = common dso_local global i32 0, align 4
@PIC_YSEL_LOW = common dso_local global i32 0, align 4
@PIC_YSEL_LOW_ACC_SHIFT = common dso_local global i32 0, align 4
@CS5536_ACC_INTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_acc_write_reg(i32 %0, i32 %1) #0 {
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
  switch i32 %8, label %115 [
    i32 129, label %9
    i32 128, label %29
    i32 130, label %54
    i32 131, label %92
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
  %19 = or i32 %18, 768
  store i32 %19, i32* %6, align 4
  br label %23

20:                                               ; preds = %9
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, -769
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* @GLIU_PAE, align 4
  %25 = call i32 @GLIU_MSR_REG(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @_wrmsr(i32 %25, i32 %26, i32 %27)
  br label %116

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
  br label %116

54:                                               ; preds = %2
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @PCI_BAR_RANGE_MASK, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load i32, i32* @GLCP_SOFT_COM, align 4
  %60 = call i32 @GLCP_MSR_REG(i32 %59)
  %61 = call i32 @_rdmsr(i32 %60, i32* %5, i32* %6)
  %62 = load i32, i32* @SOFT_BAR_ACC_FLAG, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* @GLCP_SOFT_COM, align 4
  %66 = call i32 @GLCP_MSR_REG(i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @_wrmsr(i32 %66, i32 %67, i32 %68)
  br label %91

70:                                               ; preds = %54
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load i32, i32* %4, align 4
  %76 = and i32 %75, -4
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, 1044480
  %79 = ashr i32 %78, 12
  %80 = or i32 -1610612736, %79
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %4, align 4
  %82 = and i32 %81, 4095
  %83 = shl i32 %82, 20
  %84 = or i32 1048448, %83
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* @GLIU_IOD_BM1, align 4
  %86 = call i32 @GLIU_MSR_REG(i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @_wrmsr(i32 %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %74, %70
  br label %91

91:                                               ; preds = %90, %58
  br label %116

92:                                               ; preds = %2
  %93 = load i32, i32* @PIC_YSEL_LOW, align 4
  %94 = call i32 @DIVIL_MSR_REG(i32 %93)
  %95 = call i32 @_rdmsr(i32 %94, i32* %5, i32* %6)
  %96 = load i32, i32* @PIC_YSEL_LOW_ACC_SHIFT, align 4
  %97 = shl i32 15, %96
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %6, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %92
  %104 = load i32, i32* @CS5536_ACC_INTR, align 4
  %105 = load i32, i32* @PIC_YSEL_LOW_ACC_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = load i32, i32* %6, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %103, %92
  %110 = load i32, i32* @PIC_YSEL_LOW, align 4
  %111 = call i32 @DIVIL_MSR_REG(i32 %110)
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @_wrmsr(i32 %111, i32 %112, i32 %113)
  br label %116

115:                                              ; preds = %2
  br label %116

116:                                              ; preds = %115, %109, %91, %53, %23
  ret void
}

declare dso_local i32 @_rdmsr(i32, i32*, i32*) #1

declare dso_local i32 @GLIU_MSR_REG(i32) #1

declare dso_local i32 @_wrmsr(i32, i32, i32) #1

declare dso_local i32 @SB_MSR_REG(i32) #1

declare dso_local i32 @GLCP_MSR_REG(i32) #1

declare dso_local i32 @DIVIL_MSR_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
