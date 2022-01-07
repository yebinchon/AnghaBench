; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ag71xx = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.ag71xx_ring }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ag71xx_ring = type { i32, i32, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, %struct.sk_buff* }
%struct.ag71xx_desc = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s: packet len is too small\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DESC_EMPTY = common dso_local global i32 0, align 4
@AG71XX_TX_RING_DS_PER_PKT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: tx queue full\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: packet injected into TX queue\0A\00", align 1
@AG71XX_REG_TX_CTRL = common dso_local global i32 0, align 4
@TX_CTRL_TXE = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ag71xx_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ag71xx*, align 8
  %7 = alloca %struct.ag71xx_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ag71xx_desc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.ag71xx* @netdev_priv(%struct.net_device* %15)
  store %struct.ag71xx* %16, %struct.ag71xx** %6, align 8
  %17 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %18 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %17, i32 0, i32 3
  store %struct.ag71xx_ring* %18, %struct.ag71xx_ring** %7, align 8
  %19 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %20 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @BIT(i32 %21)
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %25 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @BIT(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sle i32 %30, 4
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %34 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %170

39:                                               ; preds = %2
  %40 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %41 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DMA_TO_DEVICE, align 4
  %51 = call i64 @dma_map_single(i32* %43, i32 %46, i32 %49, i32 %50)
  store i64 %51, i64* %11, align 8
  %52 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %53 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %12, align 4
  %57 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %57, i32 %58)
  store %struct.ag71xx_desc* %59, %struct.ag71xx_desc** %10, align 8
  %60 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %61 = load i64, i64* %11, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %67 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %65, %68
  %70 = call i32 @ag71xx_fill_dma_desc(%struct.ag71xx_ring* %60, i32 %62, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %39
  br label %159

74:                                               ; preds = %39
  %75 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %76 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %77, %78
  %80 = sub nsw i32 %79, 1
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %12, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %87 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %86, i32 0, i32 3
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i32 %85, i32* %92, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %95 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %94, i32 0, i32 3
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  store %struct.sk_buff* %93, %struct.sk_buff** %100, align 8
  %101 = load %struct.net_device*, %struct.net_device** %5, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @netdev_sent_queue(%struct.net_device* %101, i32 %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = call i32 @skb_tx_timestamp(%struct.sk_buff* %106)
  %108 = load i32, i32* @DESC_EMPTY, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %10, align 8
  %111 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %116 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = call i32 (...) @wmb()
  store i32 2, i32* %14, align 4
  %120 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %121 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %74
  %125 = load i32, i32* @AG71XX_TX_RING_DS_PER_PKT, align 4
  %126 = load i32, i32* %14, align 4
  %127 = mul nsw i32 %126, %125
  store i32 %127, i32* %14, align 4
  br label %128

128:                                              ; preds = %124, %74
  %129 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %130 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %133 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %131, %134
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %14, align 4
  %138 = sub nsw i32 %136, %137
  %139 = icmp sge i32 %135, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %128
  %141 = load %struct.net_device*, %struct.net_device** %5, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  %145 = load %struct.net_device*, %struct.net_device** %5, align 8
  %146 = call i32 @netif_stop_queue(%struct.net_device* %145)
  br label %147

147:                                              ; preds = %140, %128
  %148 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %149 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %148, i32 0, i32 2
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  %154 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %155 = load i32, i32* @AG71XX_REG_TX_CTRL, align 4
  %156 = load i32, i32* @TX_CTRL_TXE, align 4
  %157 = call i32 @ag71xx_wr(%struct.ag71xx* %154, i32 %155, i32 %156)
  %158 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %158, i32* %3, align 4
  br label %179

159:                                              ; preds = %73
  %160 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %161 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %160, i32 0, i32 1
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i64, i64* %11, align 8
  %165 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @DMA_TO_DEVICE, align 4
  %169 = call i32 @dma_unmap_single(i32* %163, i64 %164, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %159, %32
  %171 = load %struct.net_device*, %struct.net_device** %5, align 8
  %172 = getelementptr inbounds %struct.net_device, %struct.net_device* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  %176 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %177 = call i32 @dev_kfree_skb(%struct.sk_buff* %176)
  %178 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %170, %147
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.ag71xx* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i64 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring*, i32) #1

declare dso_local i32 @ag71xx_fill_dma_desc(%struct.ag71xx_ring*, i32, i32) #1

declare dso_local i32 @netdev_sent_queue(%struct.net_device*, i32) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
