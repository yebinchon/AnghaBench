; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_start_tx_dma.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_start_tx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nuport_mac_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i32 }

@TX_START_DMA = common dso_local global i32 0, align 4
@TX_DMA_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"dma ready\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TX_DMA_ENH_ENABLE = common dso_local global i32 0, align 4
@TX_DMA_ENH = common dso_local global i32 0, align 4
@TX_BUFFER_ADDR = common dso_local global i32 0, align 4
@TX_PKT_BYTES = common dso_local global i32 0, align 4
@TX_DMA_START_FRAME = common dso_local global i32 0, align 4
@TX_DMA_END_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nuport_mac_priv*, %struct.sk_buff*)* @nuport_mac_start_tx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nuport_mac_start_tx_dma(%struct.nuport_mac_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nuport_mac_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nuport_mac_priv* %0, %struct.nuport_mac_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 2048, i32* %7, align 4
  br label %8

8:                                                ; preds = %24, %2
  %9 = load i32, i32* %7, align 4
  %10 = add i32 %9, -1
  store i32 %10, i32* %7, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load i32, i32* @TX_START_DMA, align 4
  %14 = call i32 @nuport_mac_readl(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @TX_DMA_ENABLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  %20 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %21 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @netdev_dbg(i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %26

24:                                               ; preds = %12
  %25 = call i32 (...) @cpu_relax()
  br label %8

26:                                               ; preds = %19, %8
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %83

32:                                               ; preds = %26
  %33 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %34 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DMA_TO_DEVICE, align 4
  %44 = call i32 @dma_map_single(i32* %36, i32 %39, i32 %42, i32 %43)
  %45 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %46 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %48 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %52 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @dma_mapping_error(i32* %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %32
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %83

59:                                               ; preds = %32
  %60 = load i32, i32* @TX_DMA_ENH_ENABLE, align 4
  %61 = load i32, i32* @TX_DMA_ENH, align 4
  %62 = call i32 @nuport_mac_writel(i32 %60, i32 %61)
  %63 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %64 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @TX_BUFFER_ADDR, align 4
  %67 = call i32 @nuport_mac_writel(i32 %65, i32 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load i32, i32* @TX_PKT_BYTES, align 4
  %73 = call i32 @nuport_mac_writel(i32 %71, i32 %72)
  %74 = call i32 (...) @wmb()
  %75 = load i32, i32* @TX_DMA_ENABLE, align 4
  %76 = load i32, i32* @TX_DMA_START_FRAME, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @TX_DMA_END_FRAME, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @TX_START_DMA, align 4
  %82 = call i32 @nuport_mac_writel(i32 %80, i32 %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %59, %56, %29
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @nuport_mac_readl(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @nuport_mac_writel(i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
