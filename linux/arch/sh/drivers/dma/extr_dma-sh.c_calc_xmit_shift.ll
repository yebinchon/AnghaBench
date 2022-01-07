; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dma-sh.c_calc_xmit_shift.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dma-sh.c_calc_xmit_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i32 }

@CHCR = common dso_local global i64 0, align 8
@CHCR_TS_LOW_MASK = common dso_local global i32 0, align 4
@CHCR_TS_LOW_SHIFT = common dso_local global i32 0, align 4
@CHCR_TS_HIGH_MASK = common dso_local global i32 0, align 4
@CHCR_TS_HIGH_SHIFT = common dso_local global i32 0, align 4
@ts_shift = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_channel*)* @calc_xmit_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_xmit_shift(%struct.dma_channel* %0) #0 {
  %2 = alloca %struct.dma_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dma_channel* %0, %struct.dma_channel** %2, align 8
  %5 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %6 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @dma_base_addr(i32 %7)
  %9 = load i64, i64* @CHCR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @__raw_readl(i64 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @CHCR_TS_LOW_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @CHCR_TS_LOW_SHIFT, align 4
  %16 = ashr i32 %14, %15
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @CHCR_TS_HIGH_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @CHCR_TS_HIGH_SHIFT, align 4
  %21 = ashr i32 %19, %20
  %22 = or i32 %16, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32*, i32** @ts_shift, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  ret i32 %27
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i64 @dma_base_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
