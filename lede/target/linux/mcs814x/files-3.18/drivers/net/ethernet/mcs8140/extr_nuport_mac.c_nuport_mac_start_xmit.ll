; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_start_xmit.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nuport_mac_priv = type { i64, i32*, i32, i32, %struct.sk_buff**, i64 }

@.str = private unnamed_addr constant [37 x i8] c"netif queue was stopped, restarting\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"transmit path busy\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"stopping queue\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @nuport_mac_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nuport_mac_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nuport_mac_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.nuport_mac_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.nuport_mac_priv* %10, %struct.nuport_mac_priv** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call i64 @netif_queue_stopped(%struct.net_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call i32 @netdev_warn(%struct.net_device* %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call i32 @netif_start_queue(%struct.net_device* %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %7, align 8
  %21 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %20, i32 0, i32 3
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %7, align 8
  %25 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %19
  %29 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %7, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @nuport_mac_start_tx_dma(%struct.nuport_mac_priv* %29, %struct.sk_buff* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = call i32 @netif_stop_queue(%struct.net_device* %35)
  %37 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %7, align 8
  %38 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %37, i32 0, i32 3
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = call i32 @netdev_err(%struct.net_device* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %43, i32* %3, align 4
  br label %116

44:                                               ; preds = %28
  %45 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %7, align 8
  %46 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %45, i32 0, i32 5
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %19
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %7, align 8
  %50 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %49, i32 0, i32 4
  %51 = load %struct.sk_buff**, %struct.sk_buff*** %50, align 8
  %52 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %7, align 8
  %53 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %51, i64 %54
  store %struct.sk_buff* %48, %struct.sk_buff** %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %58
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %7, align 8
  %72 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %7, align 8
  %75 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 1, i32* %77, align 4
  %78 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %7, align 8
  %79 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %79, align 8
  %82 = load i32, i32* @jiffies, align 4
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %7, align 8
  %86 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @TX_RING_SIZE, align 8
  %89 = icmp uge i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %47
  %91 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %7, align 8
  %92 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %90, %47
  %94 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %7, align 8
  %95 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %94, i32 0, i32 3
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  %98 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %7, align 8
  %99 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %7, align 8
  %102 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %93
  %108 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %7, align 8
  %109 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %108, i32 0, i32 2
  store i32 1, i32* %109, align 8
  %110 = load %struct.net_device*, %struct.net_device** %5, align 8
  %111 = call i32 @netdev_err(%struct.net_device* %110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %112 = load %struct.net_device*, %struct.net_device** %5, align 8
  %113 = call i32 @netif_stop_queue(%struct.net_device* %112)
  br label %114

114:                                              ; preds = %107, %93
  %115 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %34
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.nuport_mac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nuport_mac_start_tx_dma(%struct.nuport_mac_priv*, %struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
