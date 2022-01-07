; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sifive/extr_fu540-prci.c___prci_wrpll_pack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sifive/extr_fu540-prci.c___prci_wrpll_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wrpll_cfg = type { i32, i32, i32, i32 }

@PRCI_COREPLLCFG0_DIVR_SHIFT = common dso_local global i32 0, align 4
@PRCI_COREPLLCFG0_DIVF_SHIFT = common dso_local global i32 0, align 4
@PRCI_COREPLLCFG0_DIVQ_SHIFT = common dso_local global i32 0, align 4
@PRCI_COREPLLCFG0_RANGE_SHIFT = common dso_local global i32 0, align 4
@PRCI_COREPLLCFG0_FSE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wrpll_cfg*)* @__prci_wrpll_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__prci_wrpll_pack(%struct.wrpll_cfg* %0) #0 {
  %2 = alloca %struct.wrpll_cfg*, align 8
  %3 = alloca i32, align 4
  store %struct.wrpll_cfg* %0, %struct.wrpll_cfg** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.wrpll_cfg*, %struct.wrpll_cfg** %2, align 8
  %5 = getelementptr inbounds %struct.wrpll_cfg, %struct.wrpll_cfg* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @PRCI_COREPLLCFG0_DIVR_SHIFT, align 4
  %8 = shl i32 %6, %7
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.wrpll_cfg*, %struct.wrpll_cfg** %2, align 8
  %12 = getelementptr inbounds %struct.wrpll_cfg, %struct.wrpll_cfg* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PRCI_COREPLLCFG0_DIVF_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.wrpll_cfg*, %struct.wrpll_cfg** %2, align 8
  %19 = getelementptr inbounds %struct.wrpll_cfg, %struct.wrpll_cfg* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PRCI_COREPLLCFG0_DIVQ_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load %struct.wrpll_cfg*, %struct.wrpll_cfg** %2, align 8
  %26 = getelementptr inbounds %struct.wrpll_cfg, %struct.wrpll_cfg* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PRCI_COREPLLCFG0_RANGE_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @PRCI_COREPLLCFG0_FSE_MASK, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
