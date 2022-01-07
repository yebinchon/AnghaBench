; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_start_rx_dma.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_start_rx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nuport_mac_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@RX_START_DMA = common dso_local global i32 0, align 4
@RX_DMA_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"dma ready\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@RX_ALLOC_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RX_BUFFER_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nuport_mac_priv*, %struct.sk_buff*)* @nuport_mac_start_rx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nuport_mac_start_rx_dma(%struct.nuport_mac_priv* %0, %struct.sk_buff* %1) #0 {
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
  %13 = load i32, i32* @RX_START_DMA, align 4
  %14 = call i32 @nuport_mac_readl(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @RX_DMA_ENABLE, align 4
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
  br label %67

32:                                               ; preds = %26
  %33 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %34 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RX_ALLOC_SIZE, align 4
  %41 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %42 = call i32 @dma_map_single(i32* %36, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %44 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %46 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %50 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @dma_mapping_error(i32* %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %32
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %67

57:                                               ; preds = %32
  %58 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %59 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @RX_BUFFER_ADDR, align 4
  %62 = call i32 @nuport_mac_writel(i32 %60, i32 %61)
  %63 = call i32 (...) @wmb()
  %64 = load i32, i32* @RX_DMA_ENABLE, align 4
  %65 = load i32, i32* @RX_START_DMA, align 4
  %66 = call i32 @nuport_mac_writel(i32 %64, i32 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %57, %54, %29
  %68 = load i32, i32* %3, align 4
  ret i32 %68
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
