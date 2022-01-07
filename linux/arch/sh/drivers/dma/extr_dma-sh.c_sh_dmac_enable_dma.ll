; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dma-sh.c_sh_dmac_enable_dma.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dma-sh.c_sh_dmac_enable_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i32, i32 }

@CHCR = common dso_local global i64 0, align 8
@CHCR_DE = common dso_local global i32 0, align 4
@DMA_TEI_CAPABLE = common dso_local global i32 0, align 4
@CHCR_IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_channel*)* @sh_dmac_enable_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_dmac_enable_dma(%struct.dma_channel* %0) #0 {
  %2 = alloca %struct.dma_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dma_channel* %0, %struct.dma_channel** %2, align 8
  %5 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %6 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @dma_base_addr(i32 %7)
  %9 = load i64, i64* @CHCR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @__raw_readl(i64 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @CHCR_DE, align 4
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %16 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DMA_TEI_CAPABLE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @CHCR_IE, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %1
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %28 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @dma_base_addr(i32 %29)
  %31 = load i64, i64* @CHCR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @__raw_writel(i32 %26, i64 %32)
  %34 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %35 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DMA_TEI_CAPABLE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %25
  %41 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %42 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @get_dmte_irq(i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @enable_irq(i32 %45)
  br label %47

47:                                               ; preds = %40, %25
  ret void
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i64 @dma_base_addr(i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @get_dmte_irq(i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
