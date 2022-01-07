; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ag71xx = type { i32, %struct.TYPE_5__*, %struct.ag71xx_ring }
%struct.TYPE_5__ = type { i32 }
%struct.ag71xx_ring = type { i32, i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.sk_buff* }
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
  %18 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %17, i32 0, i32 2
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
  %28 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %29 = call i64 @ag71xx_has_ar8216(%struct.ag71xx* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @ag71xx_add_ar8216_header(%struct.ag71xx* %32, %struct.sk_buff* %33)
  br label %35

35:                                               ; preds = %31, %2
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sle i32 %38, 4
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %42 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %174

47:                                               ; preds = %35
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 1
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DMA_TO_DEVICE, align 4
  %57 = call i64 @dma_map_single(i32* %49, i32 %52, i32 %55, i32 %56)
  store i64 %57, i64* %11, align 8
  %58 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %59 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %12, align 4
  %63 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %63, i32 %64)
  store %struct.ag71xx_desc* %65, %struct.ag71xx_desc** %10, align 8
  %66 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %67 = load i64, i64* %11, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %73 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %71, %74
  %76 = call i32 @ag71xx_fill_dma_desc(%struct.ag71xx_ring* %66, i32 %68, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %47
  br label %165

80:                                               ; preds = %47
  %81 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %82 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %83, %84
  %86 = sub nsw i32 %85, 1
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %12, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %93 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 %91, i32* %98, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %101 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %100, i32 0, i32 3
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store %struct.sk_buff* %99, %struct.sk_buff** %106, align 8
  %107 = load %struct.net_device*, %struct.net_device** %5, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @netdev_sent_queue(%struct.net_device* %107, i32 %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = call i32 @skb_tx_timestamp(%struct.sk_buff* %112)
  %114 = load i32, i32* @DESC_EMPTY, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %10, align 8
  %117 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %122 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = call i32 (...) @wmb()
  store i32 2, i32* %14, align 4
  %126 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %127 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %80
  %131 = load i32, i32* @AG71XX_TX_RING_DS_PER_PKT, align 4
  %132 = load i32, i32* %14, align 4
  %133 = mul nsw i32 %132, %131
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %130, %80
  %135 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %136 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %7, align 8
  %139 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %137, %140
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %14, align 4
  %144 = sub nsw i32 %142, %143
  %145 = icmp sge i32 %141, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %134
  %147 = load %struct.net_device*, %struct.net_device** %5, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  %151 = load %struct.net_device*, %struct.net_device** %5, align 8
  %152 = call i32 @netif_stop_queue(%struct.net_device* %151)
  br label %153

153:                                              ; preds = %146, %134
  %154 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %155 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %154, i32 0, i32 1
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %158)
  %160 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %161 = load i32, i32* @AG71XX_REG_TX_CTRL, align 4
  %162 = load i32, i32* @TX_CTRL_TXE, align 4
  %163 = call i32 @ag71xx_wr(%struct.ag71xx* %160, i32 %161, i32 %162)
  %164 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %164, i32* %3, align 4
  br label %183

165:                                              ; preds = %79
  %166 = load %struct.net_device*, %struct.net_device** %5, align 8
  %167 = getelementptr inbounds %struct.net_device, %struct.net_device* %166, i32 0, i32 1
  %168 = load i64, i64* %11, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @DMA_TO_DEVICE, align 4
  %173 = call i32 @dma_unmap_single(i32* %167, i64 %168, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %165, %40
  %175 = load %struct.net_device*, %struct.net_device** %5, align 8
  %176 = getelementptr inbounds %struct.net_device, %struct.net_device* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  %180 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %181 = call i32 @dev_kfree_skb(%struct.sk_buff* %180)
  %182 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %174, %153
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local %struct.ag71xx* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @ag71xx_has_ar8216(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_add_ar8216_header(%struct.ag71xx*, %struct.sk_buff*) #1

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
