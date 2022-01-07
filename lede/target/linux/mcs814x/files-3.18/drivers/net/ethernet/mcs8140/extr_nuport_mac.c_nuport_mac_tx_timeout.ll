; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nuport_mac_priv = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"transmit timeout, attempting recovery\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"TX DMA regs\0A\00", align 1
@DMA_CHAN_WIDTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"[%02x]: 0x%08x\0A\00", align 1
@TX_DMA_BASE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"RX DMA regs\0A\00", align 1
@RX_DMA_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @nuport_mac_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nuport_mac_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nuport_mac_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.nuport_mac_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.nuport_mac_priv* %6, %struct.nuport_mac_priv** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netdev_warn(%struct.net_device* %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %24, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @DMA_CHAN_WIDTH, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i64, i64* @TX_DMA_BASE, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = call i32 @nuport_mac_readl(i64 %21)
  %23 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %25, 4
  store i32 %26, i32* %4, align 4
  br label %11

27:                                               ; preds = %11
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %43, %27
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @DMA_CHAN_WIDTH, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i64, i64* @RX_DMA_BASE, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = call i32 @nuport_mac_readl(i64 %40)
  %42 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %41)
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %4, align 4
  %45 = add i32 %44, 4
  store i32 %45, i32* %4, align 4
  br label %30

46:                                               ; preds = %30
  %47 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %3, align 8
  %48 = call i32 @nuport_mac_init_tx_ring(%struct.nuport_mac_priv* %47)
  %49 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %3, align 8
  %50 = call i32 @nuport_mac_reset_tx_dma(%struct.nuport_mac_priv* %49)
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = call i32 @netif_wake_queue(%struct.net_device* %51)
  ret void
}

declare dso_local %struct.nuport_mac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @nuport_mac_readl(i64) #1

declare dso_local i32 @nuport_mac_init_tx_ring(%struct.nuport_mac_priv*) #1

declare dso_local i32 @nuport_mac_reset_tx_dma(%struct.nuport_mac_priv*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
