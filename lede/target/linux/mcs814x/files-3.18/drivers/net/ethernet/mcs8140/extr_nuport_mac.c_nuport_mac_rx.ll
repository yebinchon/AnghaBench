; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_rx.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.nuport_mac_priv = type { i32*, i64, i32*, i32, %struct.sk_buff**, i32, %struct.TYPE_3__* }
%struct.sk_buff = type { i32, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ERROR_FILTER_MASK = common dso_local global i32 0, align 4
@MAX_ETH_FRAME_SIZE = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@PACKET_MULTICAST = common dso_local global i32 0, align 4
@PACKET_BROADCAST = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@RX_ALLOC_SIZE = common dso_local global i32 0, align 4
@RX_SKB_HEADROOM = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @nuport_mac_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nuport_mac_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nuport_mac_priv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.nuport_mac_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.nuport_mac_priv* %11, %struct.nuport_mac_priv** %5, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %224, %2
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %18 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %21 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %16, %12
  %28 = phi i1 [ false, %12 ], [ %26, %16 ]
  br i1 %28, label %29, label %227

29:                                               ; preds = %27
  %30 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %31 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %30, i32 0, i32 4
  %32 = load %struct.sk_buff**, %struct.sk_buff*** %31, align 8
  %33 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %34 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %32, i64 %35
  %37 = load %struct.sk_buff*, %struct.sk_buff** %36, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %6, align 8
  %38 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %39 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %42 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %48 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %46, %49
  store i32 %50, i32* %7, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %55 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %53, %57
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 4
  store i64 %58, i64* %60, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = inttoptr i64 %66 to i32*
  %68 = call i32 @get_unaligned(i32* %67)
  store i32 %68, i32* %8, align 4
  %69 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %70 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %69, i32 0, i32 6
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %74 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %80 = call i32 @dma_unmap_single(i32* %72, i32 %75, i32 %78, i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %81, 1073741824
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %29
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %85)
  br label %186

87:                                               ; preds = %29
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, -2147483648
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %97)
  br label %186

99:                                               ; preds = %87
  %100 = load i32, i32* %8, align 4
  %101 = and i32 %100, 262144
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @ERROR_FILTER_MASK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103, %99
  %109 = load %struct.net_device*, %struct.net_device** %3, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %108, %103
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @MAX_ETH_FRAME_SIZE, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %119)
  br label %186

121:                                              ; preds = %114
  %122 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @skb_put(%struct.sk_buff* %122, i32 %123)
  br label %125

125:                                              ; preds = %121
  %126 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %127 = load %struct.net_device*, %struct.net_device** %3, align 8
  %128 = call i32 @eth_type_trans(%struct.sk_buff* %126, %struct.net_device* %127)
  %129 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.net_device*, %struct.net_device** %3, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = load i32, i32* %8, align 4
  %137 = and i32 %136, 536870912
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %125
  %140 = load i32, i32* @PACKET_OTHERHOST, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %139, %125
  %144 = load i32, i32* %8, align 4
  %145 = and i32 %144, 134217728
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i32, i32* @PACKET_MULTICAST, align 4
  %149 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %147, %143
  %152 = load i32, i32* %8, align 4
  %153 = and i32 %152, 268435456
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i32, i32* @PACKET_BROADCAST, align 4
  %157 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  br label %159

159:                                              ; preds = %155, %151
  %160 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %161 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %164 = call i32 @netif_receive_skb(%struct.sk_buff* %163)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @NET_RX_DROP, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %159
  %169 = load i32, i32* %7, align 4
  %170 = sub nsw i32 %169, 4
  %171 = load %struct.net_device*, %struct.net_device** %3, align 8
  %172 = getelementptr inbounds %struct.net_device, %struct.net_device* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, %170
  store i32 %175, i32* %173, align 4
  br label %182

176:                                              ; preds = %159
  %177 = load %struct.net_device*, %struct.net_device** %3, align 8
  %178 = getelementptr inbounds %struct.net_device, %struct.net_device* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %176, %168
  %183 = load i32, i32* @jiffies, align 4
  %184 = load %struct.net_device*, %struct.net_device** %3, align 8
  %185 = getelementptr inbounds %struct.net_device, %struct.net_device* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %182, %118, %91, %84
  %187 = load %struct.net_device*, %struct.net_device** %3, align 8
  %188 = load i32, i32* @RX_ALLOC_SIZE, align 4
  %189 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %187, i32 %188)
  store %struct.sk_buff* %189, %struct.sk_buff** %6, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %191 = icmp ne %struct.sk_buff* %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %186
  br label %228

193:                                              ; preds = %186
  %194 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %195 = load i32, i32* @RX_SKB_HEADROOM, align 4
  %196 = call i32 @skb_reserve(%struct.sk_buff* %194, i32 %195)
  %197 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %198 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %199 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %198, i32 0, i32 4
  %200 = load %struct.sk_buff**, %struct.sk_buff*** %199, align 8
  %201 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %202 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %200, i64 %203
  store %struct.sk_buff* %197, %struct.sk_buff** %204, align 8
  %205 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %206 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %209 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  store i32 1, i32* %211, align 4
  %212 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %213 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %213, align 8
  %216 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %217 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @RX_RING_SIZE, align 8
  %220 = icmp uge i64 %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %193
  %222 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %5, align 8
  %223 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %222, i32 0, i32 1
  store i64 0, i64* %223, align 8
  br label %224

224:                                              ; preds = %221, %193
  %225 = load i32, i32* %9, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %9, align 4
  br label %12

227:                                              ; preds = %27
  br label %228

228:                                              ; preds = %227, %192
  %229 = load i32, i32* %9, align 4
  ret i32 %229
}

declare dso_local %struct.nuport_mac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
