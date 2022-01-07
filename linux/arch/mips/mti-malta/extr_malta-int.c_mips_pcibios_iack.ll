; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mti-malta/extr_malta-int.c_mips_pcibios_iack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mti-malta/extr_malta-int.c_mips_pcibios_iack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mips_revision_sconid = common dso_local global i32 0, align 4
@MSC01_PCI_IACK = common dso_local global i32 0, align 4
@GT_PCI0_IACK_OFS = common dso_local global i32 0, align 4
@BONITO_PCIMAP_CFG = common dso_local global i32 0, align 4
@_pcictrl_bonito_pcicfg = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unknown system controller.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mips_pcibios_iack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_pcibios_iack() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @mips_revision_sconid, align 4
  switch i32 %3, label %24 [
    i32 130, label %4
    i32 131, label %4
    i32 129, label %4
    i32 128, label %4
    i32 132, label %10
    i32 133, label %15
  ]

4:                                                ; preds = %0, %0, %0, %0
  %5 = load i32, i32* @MSC01_PCI_IACK, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @MSC_READ(i32 %5, i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, 255
  store i32 %9, i32* %2, align 4
  br label %26

10:                                               ; preds = %0
  %11 = load i32, i32* @GT_PCI0_IACK_OFS, align 4
  %12 = call i32 @GT_READ(i32 %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 255
  store i32 %14, i32* %2, align 4
  br label %26

15:                                               ; preds = %0
  store i32 131072, i32* @BONITO_PCIMAP_CFG, align 4
  %16 = load i32, i32* @BONITO_PCIMAP_CFG, align 4
  %17 = call i32 (...) @iob()
  %18 = load i64, i64* @_pcictrl_bonito_pcicfg, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = call i32 @__raw_readl(i32* %19)
  store i32 %20, i32* %2, align 4
  %21 = call i32 (...) @iob()
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, 255
  store i32 %23, i32* %2, align 4
  store i32 0, i32* @BONITO_PCIMAP_CFG, align 4
  br label %26

24:                                               ; preds = %0
  %25 = call i32 @pr_emerg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %28

26:                                               ; preds = %15, %10, %4
  %27 = load i32, i32* %2, align 4
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @MSC_READ(i32, i32) #1

declare dso_local i32 @GT_READ(i32) #1

declare dso_local i32 @iob(...) #1

declare dso_local i32 @__raw_readl(i32*) #1

declare dso_local i32 @pr_emerg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
