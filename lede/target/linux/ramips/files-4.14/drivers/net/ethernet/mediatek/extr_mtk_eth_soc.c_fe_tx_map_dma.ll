; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_tx_map_dma.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_tx_map_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32 }
%struct.net_device = type { i32 }
%struct.fe_tx_ring = type { i64, i64, %struct.TYPE_7__*, %struct.fe_tx_buf* }
%struct.TYPE_7__ = type { i32 }
%struct.fe_tx_buf = type { %struct.sk_buff* }
%struct.fe_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.fe_map_state = type { i64, i32, i32, %struct.TYPE_9__, i32* }
%struct.skb_frag_struct = type { i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.skb_frag_struct*, i32 }
%struct.TYPE_8__ = type { i32 }

@TX_DMA_DESP4_DEF = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@TX_DMA_CHKSUM = common dso_local global i32 0, align 4
@CONFIG_SOC_MT7621 = common dso_local global i32 0, align 4
@TX_DMA_INS_VLAN_MT7621 = common dso_local global i32 0, align 4
@TX_DMA_INS_VLAN = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"GSO expand head fail.\0A\00", align 1
@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@TX_DMA_TSO = common dso_local global i32 0, align 4
@TX_DMA_LS0 = common dso_local global i32 0, align 4
@TX_DMA_LS1 = common dso_local global i32 0, align 4
@FE_REG_TX_CTX_IDX0 = common dso_local global i32 0, align 4
@TX_DMA_DESP2_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i32, %struct.fe_tx_ring*)* @fe_tx_map_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_tx_map_dma(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2, %struct.fe_tx_ring* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fe_tx_ring*, align 8
  %10 = alloca %struct.fe_priv*, align 8
  %11 = alloca %struct.fe_map_state, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.fe_tx_buf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.skb_frag_struct*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.fe_tx_ring* %3, %struct.fe_tx_ring** %9, align 8
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %19)
  store %struct.fe_priv* %20, %struct.fe_priv** %10, align 8
  %21 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %11, i32 0, i32 0
  %22 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %9, align 8
  %23 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %21, align 8
  %25 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %11, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %11, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %11, i32 0, i32 3
  %28 = bitcast %struct.TYPE_9__* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 8, i1 false)
  %29 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %11, i32 0, i32 4
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  store i32* %31, i32** %29, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %32, %struct.sk_buff** %12, align 8
  %33 = load %struct.fe_priv*, %struct.fe_priv** %10, align 8
  %34 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %36, align 8
  %38 = icmp ne i32 (%struct.TYPE_9__*)* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %4
  %40 = load %struct.fe_priv*, %struct.fe_priv** %10, align 8
  %41 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %43, align 8
  %45 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %11, i32 0, i32 3
  %46 = call i32 %44(%struct.TYPE_9__* %45)
  br label %51

47:                                               ; preds = %4
  %48 = load i32, i32* @TX_DMA_DESP4_DEF, align 4
  %49 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %11, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %47, %39
  %52 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %11, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %11, i32 0, i32 1
  store i32 %54, i32* %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %51
  %62 = load i32, i32* @TX_DMA_CHKSUM, align 4
  %63 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %11, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %61, %51
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %67
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %72)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* @CONFIG_SOC_MT7621, align 4
  %75 = call i64 @IS_ENABLED(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load i32, i32* @TX_DMA_INS_VLAN_MT7621, align 4
  %79 = load i32, i32* %17, align 4
  %80 = or i32 %78, %79
  %81 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %11, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %99

85:                                               ; preds = %71
  %86 = load i32, i32* @TX_DMA_INS_VLAN, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %89 = ashr i32 %87, %88
  %90 = shl i32 %89, 4
  %91 = or i32 %86, %90
  %92 = load i32, i32* %17, align 4
  %93 = and i32 %92, 15
  %94 = or i32 %91, %93
  %95 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %11, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %85, %77
  br label %100

100:                                              ; preds = %99, %67
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = call i64 @skb_is_gso(%struct.sk_buff* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %138

104:                                              ; preds = %100
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = call i64 @skb_cow_head(%struct.sk_buff* %105, i32 0)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load %struct.fe_priv*, %struct.fe_priv** %10, align 8
  %110 = load i32, i32* @tx_err, align 4
  %111 = load %struct.net_device*, %struct.net_device** %7, align 8
  %112 = call i32 @netif_warn(%struct.fe_priv* %109, i32 %110, %struct.net_device* %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %306

113:                                              ; preds = %104
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %114)
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %119 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %120 = or i32 %118, %119
  %121 = and i32 %117, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %113
  %124 = load i32, i32* @TX_DMA_TSO, align 4
  %125 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %11, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %130 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %129)
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @htons(i32 %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = call %struct.TYPE_8__* @tcp_hdr(%struct.sk_buff* %134)
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 4
  br label %137

137:                                              ; preds = %123, %113
  br label %138

138:                                              ; preds = %137, %100
  br label %139

139:                                              ; preds = %187, %138
  %140 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %141 = call i64 @skb_headlen(%struct.sk_buff* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %9, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %146 = call i64 @fe_tx_dma_map_skb(%struct.fe_tx_ring* %144, %struct.fe_map_state* %11, %struct.sk_buff* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %272

149:                                              ; preds = %143, %139
  %150 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %151 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %150)
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %154

154:                                              ; preds = %178, %149
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %158, label %181

158:                                              ; preds = %154
  %159 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %160 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %159)
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  %162 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %161, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %162, i64 %164
  store %struct.skb_frag_struct* %165, %struct.skb_frag_struct** %18, align 8
  %166 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %9, align 8
  %167 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %18, align 8
  %168 = call i32 @skb_frag_page(%struct.skb_frag_struct* %167)
  %169 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %18, align 8
  %170 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %18, align 8
  %173 = call i32 @skb_frag_size(%struct.skb_frag_struct* %172)
  %174 = call i64 @fe_tx_dma_map_page(%struct.fe_tx_ring* %166, %struct.fe_map_state* %11, i32 %168, i32 %171, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %158
  br label %272

177:                                              ; preds = %158
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %15, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %15, align 4
  br label %154

181:                                              ; preds = %154
  %182 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %183 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %184 = call %struct.sk_buff* @fe_next_frag(%struct.sk_buff* %182, %struct.sk_buff* %183)
  store %struct.sk_buff* %184, %struct.sk_buff** %6, align 8
  %185 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %186 = icmp ne %struct.sk_buff* %185, null
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  br label %139

188:                                              ; preds = %181
  %189 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %11, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, 1
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  %194 = load i32, i32* @TX_DMA_LS0, align 4
  %195 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %11, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 4
  br label %205

199:                                              ; preds = %188
  %200 = load i32, i32* @TX_DMA_LS1, align 4
  %201 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %11, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %199, %193
  %206 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %9, align 8
  %207 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %206, i32 0, i32 3
  %208 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %207, align 8
  %209 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %11, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.fe_tx_buf, %struct.fe_tx_buf* %208, i64 %210
  store %struct.fe_tx_buf* %211, %struct.fe_tx_buf** %13, align 8
  %212 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %213 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %13, align 8
  %214 = getelementptr inbounds %struct.fe_tx_buf, %struct.fe_tx_buf* %213, i32 0, i32 0
  store %struct.sk_buff* %212, %struct.sk_buff** %214, align 8
  %215 = load %struct.net_device*, %struct.net_device** %7, align 8
  %216 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %217 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @netdev_sent_queue(%struct.net_device* %215, i32 %218)
  %220 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %221 = call i32 @skb_tx_timestamp(%struct.sk_buff* %220)
  %222 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %9, align 8
  %223 = call i32 @fe_tx_dma_write_desc(%struct.fe_tx_ring* %222, %struct.fe_map_state* %11)
  %224 = getelementptr inbounds %struct.fe_map_state, %struct.fe_map_state* %11, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %9, align 8
  %227 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %226, i32 0, i32 0
  store i64 %225, i64* %227, align 8
  %228 = call i32 (...) @wmb()
  %229 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %9, align 8
  %230 = call i64 @fe_empty_txd(%struct.fe_tx_ring* %229)
  %231 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %9, align 8
  %232 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp sle i64 %230, %233
  %235 = zext i1 %234 to i32
  %236 = call i64 @unlikely(i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %255

238:                                              ; preds = %205
  %239 = load %struct.net_device*, %struct.net_device** %7, align 8
  %240 = call i32 @netif_stop_queue(%struct.net_device* %239)
  %241 = call i32 (...) @smp_mb()
  %242 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %9, align 8
  %243 = call i64 @fe_empty_txd(%struct.fe_tx_ring* %242)
  %244 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %9, align 8
  %245 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = icmp sgt i64 %243, %246
  %248 = zext i1 %247 to i32
  %249 = call i64 @unlikely(i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %238
  %252 = load %struct.net_device*, %struct.net_device** %7, align 8
  %253 = call i32 @netif_wake_queue(%struct.net_device* %252)
  br label %254

254:                                              ; preds = %251, %238
  br label %255

255:                                              ; preds = %254, %205
  %256 = load %struct.net_device*, %struct.net_device** %7, align 8
  %257 = call i32 @netdev_get_tx_queue(%struct.net_device* %256, i32 0)
  %258 = call i64 @netif_xmit_stopped(i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %265, label %260

260:                                              ; preds = %255
  %261 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %262 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %271, label %265

265:                                              ; preds = %260, %255
  %266 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %9, align 8
  %267 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i32, i32* @FE_REG_TX_CTX_IDX0, align 4
  %270 = call i32 @fe_reg_w32(i64 %268, i32 %269)
  br label %271

271:                                              ; preds = %265, %260
  store i32 0, i32* %5, align 4
  br label %307

272:                                              ; preds = %176, %148
  %273 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %9, align 8
  %274 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = trunc i64 %275 to i32
  store i32 %276, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %277

277:                                              ; preds = %301, %272
  %278 = load i32, i32* %15, align 4
  %279 = load i32, i32* %8, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %304

281:                                              ; preds = %277
  %282 = load %struct.net_device*, %struct.net_device** %7, align 8
  %283 = getelementptr inbounds %struct.net_device, %struct.net_device* %282, i32 0, i32 0
  %284 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %9, align 8
  %285 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %284, i32 0, i32 3
  %286 = load %struct.fe_tx_buf*, %struct.fe_tx_buf** %285, align 8
  %287 = load i32, i32* %16, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.fe_tx_buf, %struct.fe_tx_buf* %286, i64 %288
  %290 = call i32 @fe_txd_unmap(i32* %283, %struct.fe_tx_buf* %289)
  %291 = load i32, i32* @TX_DMA_DESP2_DEF, align 4
  %292 = load %struct.fe_tx_ring*, %struct.fe_tx_ring** %9, align 8
  %293 = getelementptr inbounds %struct.fe_tx_ring, %struct.fe_tx_ring* %292, i32 0, i32 2
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %293, align 8
  %295 = load i32, i32* %16, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 0
  store i32 %291, i32* %298, align 4
  %299 = load i32, i32* %16, align 4
  %300 = call i32 @NEXT_TX_DESP_IDX(i32 %299)
  store i32 %300, i32* %16, align 4
  br label %301

301:                                              ; preds = %281
  %302 = load i32, i32* %15, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %15, align 4
  br label %277

304:                                              ; preds = %277
  %305 = call i32 (...) @wmb()
  br label %306

306:                                              ; preds = %304, %108
  store i32 -1, i32* %5, align 4
  br label %307

307:                                              ; preds = %306, %271
  %308 = load i32, i32* %5, align 4
  ret i32 %308
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_warn(%struct.fe_priv*, i32, %struct.net_device*, i8*) #1

declare dso_local %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.TYPE_8__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @fe_tx_dma_map_skb(%struct.fe_tx_ring*, %struct.fe_map_state*, %struct.sk_buff*) #1

declare dso_local i64 @fe_tx_dma_map_page(%struct.fe_tx_ring*, %struct.fe_map_state*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_page(%struct.skb_frag_struct*) #1

declare dso_local i32 @skb_frag_size(%struct.skb_frag_struct*) #1

declare dso_local %struct.sk_buff* @fe_next_frag(%struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local i32 @netdev_sent_queue(%struct.net_device*, i32) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @fe_tx_dma_write_desc(%struct.fe_tx_ring*, %struct.fe_map_state*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @fe_empty_txd(%struct.fe_tx_ring*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i64 @netif_xmit_stopped(i32) #1

declare dso_local i32 @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @fe_reg_w32(i64, i32) #1

declare dso_local i32 @fe_txd_unmap(i32*, %struct.fe_tx_buf*) #1

declare dso_local i32 @NEXT_TX_DESP_IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
