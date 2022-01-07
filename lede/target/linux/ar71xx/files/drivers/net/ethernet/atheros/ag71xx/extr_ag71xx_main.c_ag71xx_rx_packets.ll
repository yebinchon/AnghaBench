; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_rx_packets.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_rx_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, i32, %struct.ag71xx_ring, %struct.net_device* }
%struct.ag71xx_ring = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.net_device = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32, i32, %struct.net_device* }
%struct.ag71xx_desc = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"%s: rx packets, limit=%d, curr=%u, dirty=%u\0A\00", align 1
@AG71XX_REG_RX_STATUS = common dso_local global i32 0, align 4
@RX_STATUS_PR = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: rx finish, curr=%u, dirty=%u, done=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx*, i32)* @ag71xx_rx_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_rx_packets(%struct.ag71xx* %0, i32 %1) #0 {
  %3 = alloca %struct.ag71xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ag71xx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff_head, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ag71xx_desc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %19 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %18, i32 0, i32 3
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %5, align 8
  %21 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %22 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %21, i32 0, i32 2
  store %struct.ag71xx_ring* %22, %struct.ag71xx_ring** %6, align 8
  %23 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %24 = call i32 @ag71xx_buffer_offset(%struct.ag71xx* %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %26 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %29 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @BIT(i32 %30)
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  %33 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %34 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @BIT(i32 %35)
  store i32 %36, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %42 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %45 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DBG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %43, i32 %46)
  %48 = call i32 @skb_queue_head_init(%struct.sk_buff_head* %11)
  br label %49

49:                                               ; preds = %178, %2
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %192

53:                                               ; preds = %49
  %54 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %55 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %14, align 4
  %59 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %59, i32 %60)
  store %struct.ag71xx_desc* %61, %struct.ag71xx_desc** %15, align 8
  store i32 0, i32* %17, align 4
  %62 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %15, align 8
  %63 = call i64 @ag71xx_desc_empty(%struct.ag71xx_desc* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %192

66:                                               ; preds = %53
  %67 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %68 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %69, %70
  %72 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %73 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = call i32 @ag71xx_assert(i32 0)
  br label %192

78:                                               ; preds = %66
  %79 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %80 = load i32, i32* @AG71XX_REG_RX_STATUS, align 4
  %81 = load i32, i32* @RX_STATUS_PR, align 4
  %82 = call i32 @ag71xx_wr(%struct.ag71xx* %79, i32 %80, i32 %81)
  %83 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %15, align 8
  %84 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %16, align 4
  %88 = load i64, i64* @ETH_FCS_LEN, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %16, align 4
  %93 = load %struct.net_device*, %struct.net_device** %5, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 2
  %95 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %96 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %104 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %107 = call i32 @dma_unmap_single(i32* %94, i32 %102, i32 %105, i32 %106)
  %108 = load %struct.net_device*, %struct.net_device** %5, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load %struct.net_device*, %struct.net_device** %5, align 8
  %115 = getelementptr inbounds %struct.net_device, %struct.net_device* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, %113
  store i32 %118, i32* %116, align 4
  %119 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %120 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* %14, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %128 = call i32 @ag71xx_buffer_size(%struct.ag71xx* %127)
  %129 = call %struct.sk_buff* @build_skb(i32* %126, i32 %128)
  store %struct.sk_buff* %129, %struct.sk_buff** %12, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %131 = icmp ne %struct.sk_buff* %130, null
  br i1 %131, label %142, label %132

132:                                              ; preds = %78
  %133 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %134 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %133, i32 0, i32 2
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @skb_free_frag(i32* %140)
  br label %178

142:                                              ; preds = %78
  %143 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @skb_reserve(%struct.sk_buff* %143, i32 %144)
  %146 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @skb_put(%struct.sk_buff* %146, i32 %147)
  %149 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %150 = call i64 @ag71xx_has_ar8216(%struct.ag71xx* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %142
  %153 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %155 = load i32, i32* %16, align 4
  %156 = call i32 @ag71xx_remove_ar8216_header(%struct.ag71xx* %153, %struct.sk_buff* %154, i32 %155)
  store i32 %156, i32* %17, align 4
  br label %157

157:                                              ; preds = %152, %142
  %158 = load i32, i32* %17, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %157
  %161 = load %struct.net_device*, %struct.net_device** %5, align 8
  %162 = getelementptr inbounds %struct.net_device, %struct.net_device* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  %166 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %167 = call i32 @kfree_skb(%struct.sk_buff* %166)
  br label %177

168:                                              ; preds = %157
  %169 = load %struct.net_device*, %struct.net_device** %5, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 2
  store %struct.net_device* %169, %struct.net_device** %171, align 8
  %172 = load i32, i32* @CHECKSUM_NONE, align 4
  %173 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %176 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %11, %struct.sk_buff* %175)
  br label %177

177:                                              ; preds = %168, %160
  br label %178

178:                                              ; preds = %177, %132
  %179 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %180 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %179, i32 0, i32 2
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = load i32, i32* %14, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  store i32* null, i32** %185, align 8
  %186 = load i32, i32* %13, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %13, align 4
  %188 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %189 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 8
  br label %49

192:                                              ; preds = %76, %65, %49
  %193 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %194 = call i32 @ag71xx_ring_rx_refill(%struct.ag71xx* %193)
  br label %195

195:                                              ; preds = %198, %192
  %196 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %11)
  store %struct.sk_buff* %196, %struct.sk_buff** %12, align 8
  %197 = icmp ne %struct.sk_buff* %196, null
  br i1 %197, label %198, label %206

198:                                              ; preds = %195
  %199 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %200 = load %struct.net_device*, %struct.net_device** %5, align 8
  %201 = call i32 @eth_type_trans(%struct.sk_buff* %199, %struct.net_device* %200)
  %202 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %203 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 8
  %204 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %205 = call i32 @netif_receive_skb(%struct.sk_buff* %204)
  br label %195

206:                                              ; preds = %195
  %207 = load %struct.net_device*, %struct.net_device** %5, align 8
  %208 = getelementptr inbounds %struct.net_device, %struct.net_device* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %211 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %6, align 8
  %214 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %13, align 4
  %217 = call i32 @DBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %209, i32 %212, i32 %215, i32 %216)
  %218 = load i32, i32* %13, align 4
  ret i32 %218
}

declare dso_local i32 @ag71xx_buffer_offset(%struct.ag71xx*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DBG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring*, i32) #1

declare dso_local i64 @ag71xx_desc_empty(%struct.ag71xx_desc*) #1

declare dso_local i32 @ag71xx_assert(i32) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @build_skb(i32*, i32) #1

declare dso_local i32 @ag71xx_buffer_size(%struct.ag71xx*) #1

declare dso_local i32 @skb_free_frag(i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @ag71xx_has_ar8216(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_remove_ar8216_header(%struct.ag71xx*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @ag71xx_ring_rx_refill(%struct.ag71xx*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
