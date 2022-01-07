; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_tx_interrupt.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_tx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nuport_mac_priv = type { i64, i32, i32, i64, %struct.sk_buff**, i64*, i32, %struct.TYPE_4__* }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }

@TX_START_DMA = common dso_local global i32 0, align 4
@TX_DMA_STATUS_AVAIL = common dso_local global i32 0, align 4
@TX_DMA_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"no status word: %08x\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to restart TX dma\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"restarting transmit queue\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nuport_mac_tx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nuport_mac_tx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nuport_mac_priv*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.nuport_mac_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.nuport_mac_priv* %14, %struct.nuport_mac_priv** %6, align 8
  %15 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %16 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %15, i32 0, i32 2
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* @TX_START_DMA, align 4
  %20 = call i32 @nuport_mac_readl(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @TX_DMA_STATUS_AVAIL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %2
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @TX_START_DMA, align 4
  %28 = call i32 @nuport_mac_writel(i32 %26, i32 %27)
  %29 = load i32, i32* @TX_DMA_STATUS, align 4
  %30 = call i32 @nuport_mac_readl(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %25
  br label %45

41:                                               ; preds = %2
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %40
  %46 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %47 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %46, i32 0, i32 4
  %48 = load %struct.sk_buff**, %struct.sk_buff*** %47, align 8
  %49 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %50 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %48, i64 %51
  %53 = load %struct.sk_buff*, %struct.sk_buff** %52, align 8
  store %struct.sk_buff* %53, %struct.sk_buff** %7, align 8
  %54 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %55 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %54, i32 0, i32 4
  %56 = load %struct.sk_buff**, %struct.sk_buff*** %55, align 8
  %57 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %58 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %56, i64 %59
  store %struct.sk_buff* null, %struct.sk_buff** %60, align 8
  %61 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %62 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %61, i32 0, i32 5
  %63 = load i64*, i64** %62, align 8
  %64 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %65 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i64, i64* %63, i64 %66
  store i64 0, i64* %67, align 8
  %68 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %69 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %68, i32 0, i32 7
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %73 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @DMA_TO_DEVICE, align 4
  %79 = call i32 @dma_unmap_single(i32* %71, i32 %74, i32 %77, i32 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %80)
  %82 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %83 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %87 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @TX_RING_SIZE, align 8
  %90 = icmp uge i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %45
  %92 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %93 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %91, %45
  %95 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %96 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %95, i32 0, i32 5
  %97 = load i64*, i64** %96, align 8
  %98 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %99 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i64, i64* %97, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %94
  %105 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %106 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %105, i32 0, i32 1
  store i32 1, i32* %106, align 8
  br label %124

107:                                              ; preds = %94
  %108 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %109 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %110 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %109, i32 0, i32 4
  %111 = load %struct.sk_buff**, %struct.sk_buff*** %110, align 8
  %112 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %113 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %111, i64 %114
  %116 = load %struct.sk_buff*, %struct.sk_buff** %115, align 8
  %117 = call i32 @nuport_mac_start_tx_dma(%struct.nuport_mac_priv* %108, %struct.sk_buff* %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %107
  %121 = load %struct.net_device*, %struct.net_device** %5, align 8
  %122 = call i32 @netdev_err(%struct.net_device* %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %107
  br label %124

124:                                              ; preds = %123, %104
  %125 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %126 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load %struct.net_device*, %struct.net_device** %5, align 8
  %131 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %130, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %132 = load %struct.net_device*, %struct.net_device** %5, align 8
  %133 = call i32 @netif_wake_queue(%struct.net_device* %132)
  %134 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %135 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %134, i32 0, i32 3
  store i64 0, i64* %135, align 8
  br label %136

136:                                              ; preds = %129, %124
  %137 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %6, align 8
  %138 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %137, i32 0, i32 2
  %139 = load i64, i64* %8, align 8
  %140 = call i32 @spin_unlock_irqrestore(i32* %138, i64 %139)
  %141 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %141
}

declare dso_local %struct.nuport_mac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nuport_mac_readl(i32) #1

declare dso_local i32 @nuport_mac_writel(i32, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @nuport_mac_start_tx_dma(%struct.nuport_mac_priv*, %struct.sk_buff*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
