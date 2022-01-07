; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dma-sh.c_sh_dmac_configure_channel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/drivers/dma/extr_dma-sh.c_sh_dmac_configure_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i32, i32 }

@RS_DUAL = common dso_local global i64 0, align 8
@CHCR_IE = common dso_local global i64 0, align 8
@DMA_TEI_CAPABLE = common dso_local global i32 0, align 4
@CHCR = common dso_local global i64 0, align 8
@DMA_CONFIGURED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_channel*, i64)* @sh_dmac_configure_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_dmac_configure_channel(%struct.dma_channel* %0, i64 %1) #0 {
  %3 = alloca %struct.dma_channel*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_channel* %0, %struct.dma_channel** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load i64, i64* @RS_DUAL, align 8
  %9 = load i64, i64* @CHCR_IE, align 8
  %10 = or i64 %8, %9
  store i64 %10, i64* %4, align 8
  br label %11

11:                                               ; preds = %7, %2
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @CHCR_IE, align 8
  %14 = and i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load i64, i64* @CHCR_IE, align 8
  %18 = xor i64 %17, -1
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, %18
  store i64 %20, i64* %4, align 8
  %21 = load i32, i32* @DMA_TEI_CAPABLE, align 4
  %22 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %23 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %33

26:                                               ; preds = %11
  %27 = load i32, i32* @DMA_TEI_CAPABLE, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %30 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %26, %16
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %36 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @dma_base_addr(i32 %37)
  %39 = load i64, i64* @CHCR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @__raw_writel(i64 %34, i64 %40)
  %42 = load i32, i32* @DMA_CONFIGURED, align 4
  %43 = load %struct.dma_channel*, %struct.dma_channel** %3, align 8
  %44 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  ret i32 0
}

declare dso_local i32 @__raw_writel(i64, i64) #1

declare dso_local i64 @dma_base_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
