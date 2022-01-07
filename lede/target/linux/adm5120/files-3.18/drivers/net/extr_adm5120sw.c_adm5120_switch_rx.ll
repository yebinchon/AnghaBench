; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_switch_rx.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_switch_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32 }
%struct.net_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i64, i32, i32, %struct.net_device* }

@.str = private unnamed_addr constant [46 x i8] c"rx start, limit=%d, cur_rxl=%u, dirty_rxl=%u\0A\00", align 1
@cur_rxl = common dso_local global i32 0, align 4
@dirty_rxl = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@rxl_descs = common dso_local global %struct.dma_desc* null, align 8
@DESC_OWN = common dso_local global i32 0, align 4
@adm5120_port = common dso_local global %struct.net_device** null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"rx descriptor %u, desc=%p, skb=%p\0A\00", align 1
@rxl_skbuff = common dso_local global %struct.sk_buff** null, align 8
@ETH_CSUM_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"rx error, recycling skb %u\0A\00", align 1
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"no rx device, recycling skb %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"rx finished, cur_rxl=%u, dirty_rxl=%u, processed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @adm5120_switch_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm5120_switch_rx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_desc*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @cur_rxl, align 4
  %12 = load i32, i32* @dirty_rxl, align 4
  %13 = call i32 (i8*, i32, ...) @SW_DBG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %167, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %168

18:                                               ; preds = %14
  %19 = load i32, i32* @cur_rxl, align 4
  %20 = load i32, i32* @RX_RING_SIZE, align 4
  %21 = srem i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load %struct.dma_desc*, %struct.dma_desc** @rxl_descs, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %22, i64 %24
  store %struct.dma_desc* %25, %struct.dma_desc** %5, align 8
  %26 = load %struct.dma_desc*, %struct.dma_desc** %5, align 8
  %27 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DESC_OWN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %168

33:                                               ; preds = %18
  %34 = load i32, i32* @dirty_rxl, align 4
  %35 = load i32, i32* @RX_RING_SIZE, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* @cur_rxl, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %168

40:                                               ; preds = %33
  %41 = load %struct.dma_desc*, %struct.dma_desc** %5, align 8
  %42 = call i32 @desc_get_srcport(%struct.dma_desc* %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.net_device**, %struct.net_device*** @adm5120_port, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.net_device*, %struct.net_device** %43, i64 %45
  %47 = load %struct.net_device*, %struct.net_device** %46, align 8
  store %struct.net_device* %47, %struct.net_device** %6, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.dma_desc*, %struct.dma_desc** %5, align 8
  %50 = load %struct.sk_buff**, %struct.sk_buff*** @rxl_skbuff, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %50, i64 %52
  %54 = load %struct.sk_buff*, %struct.sk_buff** %53, align 8
  %55 = call i32 (i8*, i32, ...) @SW_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %48, %struct.dma_desc* %49, %struct.sk_buff* %54)
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = icmp ne %struct.net_device* %56, null
  br i1 %57, label %58, label %153

58:                                               ; preds = %40
  %59 = load %struct.net_device*, %struct.net_device** %6, align 8
  %60 = call i64 @netif_running(%struct.net_device* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %153

62:                                               ; preds = %58
  %63 = load %struct.sk_buff**, %struct.sk_buff*** @rxl_skbuff, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %63, i64 %65
  %67 = load %struct.sk_buff*, %struct.sk_buff** %66, align 8
  store %struct.sk_buff* %67, %struct.sk_buff** %8, align 8
  %68 = load %struct.dma_desc*, %struct.dma_desc** %5, align 8
  %69 = call i32 @desc_get_pktlen(%struct.dma_desc* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i64, i64* @ETH_CSUM_LEN, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = sub nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %62
  %78 = load %struct.dma_desc*, %struct.dma_desc** %5, align 8
  %79 = call i64 @desc_ipcsum_fail(%struct.dma_desc* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %108

81:                                               ; preds = %77, %62
  %82 = load %struct.net_device*, %struct.net_device** %6, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load %struct.net_device*, %struct.net_device** %6, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %81
  %96 = load %struct.dma_desc*, %struct.dma_desc** %5, align 8
  %97 = call i64 @desc_ipcsum_fail(%struct.dma_desc* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load %struct.net_device*, %struct.net_device** %6, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %99, %95
  %106 = load i32, i32* %4, align 4
  %107 = call i32 (i8*, i32, ...) @SW_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  br label %152

108:                                              ; preds = %77
  %109 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @skb_put(%struct.sk_buff* %109, i32 %110)
  %112 = load %struct.net_device*, %struct.net_device** %6, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 4
  store %struct.net_device* %112, %struct.net_device** %114, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %116 = load %struct.net_device*, %struct.net_device** %6, align 8
  %117 = call i32 @eth_type_trans(%struct.sk_buff* %115, %struct.net_device* %116)
  %118 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @dma_cache_wback_inv(i64 %125, i32 %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %131 = call i32 @netif_rx(%struct.sk_buff* %130)
  %132 = load i32, i32* @jiffies, align 4
  %133 = load %struct.net_device*, %struct.net_device** %6, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.net_device*, %struct.net_device** %6, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.net_device*, %struct.net_device** %6, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, %140
  store i32 %145, i32* %143, align 4
  %146 = load %struct.sk_buff**, %struct.sk_buff*** @rxl_skbuff, align 8
  %147 = load i32, i32* %4, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %146, i64 %148
  store %struct.sk_buff* null, %struct.sk_buff** %149, align 8
  %150 = load i32, i32* %3, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %108, %105
  br label %156

153:                                              ; preds = %58, %40
  %154 = load i32, i32* %4, align 4
  %155 = call i32 (i8*, i32, ...) @SW_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %153, %152
  %157 = load i32, i32* @cur_rxl, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* @cur_rxl, align 4
  %159 = load i32, i32* @cur_rxl, align 4
  %160 = load i32, i32* @dirty_rxl, align 4
  %161 = sub nsw i32 %159, %160
  %162 = load i32, i32* @RX_RING_SIZE, align 4
  %163 = sdiv i32 %162, 4
  %164 = icmp sgt i32 %161, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %156
  %166 = call i32 (...) @adm5120_switch_rx_refill()
  br label %167

167:                                              ; preds = %165, %156
  br label %14

168:                                              ; preds = %39, %32, %14
  %169 = call i32 (...) @adm5120_switch_rx_refill()
  %170 = load i32, i32* @cur_rxl, align 4
  %171 = load i32, i32* @dirty_rxl, align 4
  %172 = load i32, i32* %3, align 4
  %173 = call i32 (i8*, i32, ...) @SW_DBG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %170, i32 %171, i32 %172)
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @SW_DBG(i8*, i32, ...) #1

declare dso_local i32 @desc_get_srcport(%struct.dma_desc*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @desc_get_pktlen(%struct.dma_desc*) #1

declare dso_local i64 @desc_ipcsum_fail(%struct.dma_desc*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @dma_cache_wback_inv(i64, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @adm5120_switch_rx_refill(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
