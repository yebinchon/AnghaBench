; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_if_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_if_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.adm5120_if_priv = type { i32 }

@tx_lock = common dso_local global i32 0, align 4
@cur_txl = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@txl_descs = common dso_local global %struct.dma_desc* null, align 8
@DESC_OWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s unable to transmit, packet dopped\0A\00", align 1
@txl_skbuff = common dso_local global %struct.sk_buff** null, align 8
@DESC_EOR = common dso_local global i64 0, align 8
@ETH_ZLEN = common dso_local global i32 0, align 4
@DESC_PKTLEN_SHIFT = common dso_local global i32 0, align 4
@SWITCH_REG_SEND_TRIG = common dso_local global i32 0, align 4
@SEND_TRIG_STL = common dso_local global i32 0, align 4
@dirty_txl = common dso_local global i32 0, align 4
@TX_QUEUE_LEN = common dso_local global i32 0, align 4
@SWITCH_NUM_PORTS = common dso_local global i32 0, align 4
@adm5120_devs = common dso_local global i32* null, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @adm5120_if_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm5120_if_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.dma_desc*, align 8
  %7 = alloca %struct.adm5120_if_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.adm5120_if_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.adm5120_if_priv* %12, %struct.adm5120_if_priv** %7, align 8
  %13 = call i32 @spin_lock_irq(i32* @tx_lock)
  %14 = load i32, i32* @cur_txl, align 4
  %15 = load i32, i32* @TX_RING_SIZE, align 4
  %16 = urem i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.dma_desc*, %struct.dma_desc** @txl_descs, align 8
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %17, i64 %19
  store %struct.dma_desc* %20, %struct.dma_desc** %6, align 8
  %21 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %22 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DESC_OWN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %2
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @SW_DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @dev_kfree_skb(%struct.sk_buff* %32)
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %140

39:                                               ; preds = %2
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load %struct.sk_buff**, %struct.sk_buff*** @txl_skbuff, align 8
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %41, i64 %43
  store %struct.sk_buff* %40, %struct.sk_buff** %44, align 8
  %45 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %46 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @DESC_EOR, align 8
  %50 = and i64 %48, %49
  store i64 %50, i64* %9, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @DESC_ADDR(i32 %53)
  %55 = load i64, i64* %9, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %9, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ETH_ZLEN, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %39
  %63 = load i32, i32* @ETH_ZLEN, align 4
  br label %68

64:                                               ; preds = %39
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  br label %68

68:                                               ; preds = %64, %62
  %69 = phi i32 [ %63, %62 ], [ %67, %64 ]
  %70 = load i32, i32* @DESC_PKTLEN_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = load %struct.adm5120_if_priv*, %struct.adm5120_if_priv** %7, align 8
  %73 = getelementptr inbounds %struct.adm5120_if_priv, %struct.adm5120_if_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 1, %74
  %76 = or i32 %71, %75
  %77 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %78 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ETH_ZLEN, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %68
  %85 = load i32, i32* @ETH_ZLEN, align 4
  br label %90

86:                                               ; preds = %68
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  br label %90

90:                                               ; preds = %86, %84
  %91 = phi i32 [ %85, %84 ], [ %89, %86 ]
  %92 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %93 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load i64, i64* %9, align 8
  %95 = load i32, i32* @DESC_OWN, align 4
  %96 = sext i32 %95 to i64
  %97 = or i64 %94, %96
  %98 = trunc i64 %97 to i32
  %99 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %100 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @SWITCH_REG_SEND_TRIG, align 4
  %102 = load i32, i32* @SEND_TRIG_STL, align 4
  %103 = call i32 @sw_write_reg(i32 %101, i32 %102)
  %104 = load i32, i32* @cur_txl, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* @cur_txl, align 4
  %106 = load i32, i32* @cur_txl, align 4
  %107 = load i32, i32* @dirty_txl, align 4
  %108 = load i32, i32* @TX_QUEUE_LEN, align 4
  %109 = add i32 %107, %108
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %135

111:                                              ; preds = %90
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %131, %111
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @SWITCH_NUM_PORTS, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %112
  %117 = load i32*, i32** @adm5120_devs, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %116
  br label %131

124:                                              ; preds = %116
  %125 = load i32*, i32** @adm5120_devs, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @netif_stop_queue(i32 %129)
  br label %131

131:                                              ; preds = %124, %123
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %112

134:                                              ; preds = %112
  br label %135

135:                                              ; preds = %134, %90
  %136 = load i32, i32* @jiffies, align 4
  %137 = load %struct.net_device*, %struct.net_device** %5, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = call i32 @spin_unlock_irq(i32* @tx_lock)
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %135, %27
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.adm5120_if_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @SW_DBG(i8*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @DESC_ADDR(i32) #1

declare dso_local i32 @sw_write_reg(i32, i32) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
