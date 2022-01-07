; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_fast_reset.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_fast_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.net_device = type { i32, i32 }
%struct.ag71xx_platform_data = type { i32 }

@AR71XX_RESET_GE0_MAC = common dso_local global i32 0, align 4
@AR71XX_RESET_GE1_MAC = common dso_local global i32 0, align 4
@AG71XX_REG_MII_CFG = common dso_local global i32 0, align 4
@AG71XX_REG_RX_DESC = common dso_local global i32 0, align 4
@AG71XX_REG_MAC_MFL = common dso_local global i32 0, align 4
@AG71XX_REG_TX_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_fast_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_fast_reset(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.ag71xx_platform_data*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %8 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %9 = call %struct.ag71xx_platform_data* @ag71xx_get_pdata(%struct.ag71xx* %8)
  store %struct.ag71xx_platform_data* %9, %struct.ag71xx_platform_data** %3, align 8
  %10 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %11 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %3, align 8
  %14 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @AR71XX_RESET_GE0_MAC, align 4
  %17 = load i32, i32* @AR71XX_RESET_GE1_MAC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %22 = call i32 @ag71xx_hw_stop(%struct.ag71xx* %21)
  %23 = call i32 (...) @wmb()
  %24 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %25 = load i32, i32* @AG71XX_REG_MII_CFG, align 4
  %26 = call i32 @ag71xx_rr(%struct.ag71xx* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %28 = load i32, i32* @AG71XX_REG_RX_DESC, align 4
  %29 = call i32 @ag71xx_rr(%struct.ag71xx* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %31 = call i32 @ag71xx_tx_packets(%struct.ag71xx* %30, i32 1)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ath79_device_reset_set(i32 %32)
  %34 = call i32 @udelay(i32 10)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ath79_device_reset_clear(i32 %35)
  %37 = call i32 @udelay(i32 10)
  %38 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %39 = call i32 @ag71xx_dma_reset(%struct.ag71xx* %38)
  %40 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %41 = call i32 @ag71xx_hw_setup(%struct.ag71xx* %40)
  %42 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %43 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %46 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %49 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %48, i32 0, i32 1
  %50 = load %struct.net_device*, %struct.net_device** %49, align 8
  %51 = call i32 @netdev_reset_queue(%struct.net_device* %50)
  %52 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %53 = load i32, i32* @AG71XX_REG_MAC_MFL, align 4
  %54 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %55 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %54, i32 0, i32 1
  %56 = load %struct.net_device*, %struct.net_device** %55, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ag71xx_max_frame_len(i32 %58)
  %60 = call i32 @ag71xx_wr(%struct.ag71xx* %52, i32 %53, i32 %59)
  %61 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %62 = load i32, i32* @AG71XX_REG_RX_DESC, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @ag71xx_wr(%struct.ag71xx* %61, i32 %62, i32 %63)
  %65 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %66 = load i32, i32* @AG71XX_REG_TX_DESC, align 4
  %67 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %68 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ag71xx_wr(%struct.ag71xx* %65, i32 %66, i32 %70)
  %72 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %73 = load i32, i32* @AG71XX_REG_MII_CFG, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @ag71xx_wr(%struct.ag71xx* %72, i32 %73, i32 %74)
  %76 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ag71xx_hw_set_macaddr(%struct.ag71xx* %76, i32 %79)
  ret void
}

declare dso_local %struct.ag71xx_platform_data* @ag71xx_get_pdata(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_hw_stop(%struct.ag71xx*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ag71xx_rr(%struct.ag71xx*, i32) #1

declare dso_local i32 @ag71xx_tx_packets(%struct.ag71xx*, i32) #1

declare dso_local i32 @ath79_device_reset_set(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ath79_device_reset_clear(i32) #1

declare dso_local i32 @ag71xx_dma_reset(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_hw_setup(%struct.ag71xx*) #1

declare dso_local i32 @netdev_reset_queue(%struct.net_device*) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @ag71xx_max_frame_len(i32) #1

declare dso_local i32 @ag71xx_hw_set_macaddr(%struct.ag71xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
