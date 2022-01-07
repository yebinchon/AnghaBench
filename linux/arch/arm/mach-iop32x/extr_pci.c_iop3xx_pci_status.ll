; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-iop32x/extr_pci.c_iop3xx_pci_status.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-iop32x/extr_pci.c_iop3xx_pci_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOP3XX_ATUSR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"\09\09\09PCI: P0 - status = 0x%08x\0A\00", align 1
@IOP3XX_ATUISR = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"\09\09\09PCI: P1 - status = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @iop3xx_pci_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop3xx_pci_status() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32*, i32** @IOP3XX_ATUSR, align 8
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = and i32 %5, 63744
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %1, align 4
  %12 = and i32 %11, 63744
  %13 = load i32*, i32** @IOP3XX_ATUSR, align 8
  store i32 %12, i32* %13, align 4
  store i32 1, i32* %2, align 4
  br label %14

14:                                               ; preds = %8, %0
  %15 = load i32*, i32** @IOP3XX_ATUISR, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = and i32 %17, 26527
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %1, align 4
  %24 = and i32 %23, 26527
  %25 = load i32*, i32** @IOP3XX_ATUISR, align 8
  store i32 %24, i32* %25, align 4
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %20, %14
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @DBG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
