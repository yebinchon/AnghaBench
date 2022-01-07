; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dma-sh.c_sh_dmac_disable_dma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dma-sh.c_sh_dmac_disable_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i32, i32 }

@DMA_TEI_CAPABLE = common dso_local global i32 0, align 4
@CHCR = common dso_local global i64 0, align 8
@CHCR_DE = common dso_local global i32 0, align 4
@CHCR_TE = common dso_local global i32 0, align 4
@CHCR_IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_channel*)* @sh_dmac_disable_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_dmac_disable_dma(%struct.dma_channel* %0) #0 {
  %2 = alloca %struct.dma_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dma_channel* %0, %struct.dma_channel** %2, align 8
  %5 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %6 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DMA_TEI_CAPABLE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %13 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @get_dmte_irq(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @disable_irq(i32 %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %20 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @dma_base_addr(i32 %21)
  %23 = load i64, i64* @CHCR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @__raw_readl(i64 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @CHCR_DE, align 4
  %27 = load i32, i32* @CHCR_TE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CHCR_IE, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %36 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @dma_base_addr(i32 %37)
  %39 = load i64, i64* @CHCR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @__raw_writel(i32 %34, i64 %40)
  ret void
}

declare dso_local i32 @get_dmte_irq(i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i64 @dma_base_addr(i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
