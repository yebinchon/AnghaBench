; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_fast_reset.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_fast_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.TYPE_2__, %struct.net_device*, i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.net_device = type { i32, i32 }

@AG71XX_REG_MII_CFG = common dso_local global i32 0, align 4
@AG71XX_REG_RX_DESC = common dso_local global i32 0, align 4
@AG71XX_REG_MAC_MFL = common dso_local global i32 0, align 4
@AG71XX_REG_TX_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_fast_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_fast_reset(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %6 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %7 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %6, i32 0, i32 1
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %10 = call i32 @ag71xx_hw_stop(%struct.ag71xx* %9)
  %11 = call i32 (...) @wmb()
  %12 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %13 = load i32, i32* @AG71XX_REG_MII_CFG, align 4
  %14 = call i32 @ag71xx_rr(%struct.ag71xx* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %16 = load i32, i32* @AG71XX_REG_RX_DESC, align 4
  %17 = call i32 @ag71xx_rr(%struct.ag71xx* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %19 = call i32 @ag71xx_tx_packets(%struct.ag71xx* %18, i32 1)
  %20 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %21 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @reset_control_assert(i32 %22)
  %24 = call i32 @udelay(i32 10)
  %25 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %26 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @reset_control_deassert(i32 %27)
  %29 = call i32 @udelay(i32 10)
  %30 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %31 = call i32 @ag71xx_dma_reset(%struct.ag71xx* %30)
  %32 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %33 = call i32 @ag71xx_hw_setup(%struct.ag71xx* %32)
  %34 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %35 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %38 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %41 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %40, i32 0, i32 1
  %42 = load %struct.net_device*, %struct.net_device** %41, align 8
  %43 = call i32 @netdev_reset_queue(%struct.net_device* %42)
  %44 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %45 = load i32, i32* @AG71XX_REG_MAC_MFL, align 4
  %46 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %47 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %46, i32 0, i32 1
  %48 = load %struct.net_device*, %struct.net_device** %47, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ag71xx_max_frame_len(i32 %50)
  %52 = call i32 @ag71xx_wr(%struct.ag71xx* %44, i32 %45, i32 %51)
  %53 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %54 = load i32, i32* @AG71XX_REG_RX_DESC, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @ag71xx_wr(%struct.ag71xx* %53, i32 %54, i32 %55)
  %57 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %58 = load i32, i32* @AG71XX_REG_TX_DESC, align 4
  %59 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %60 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ag71xx_wr(%struct.ag71xx* %57, i32 %58, i32 %62)
  %64 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %65 = load i32, i32* @AG71XX_REG_MII_CFG, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @ag71xx_wr(%struct.ag71xx* %64, i32 %65, i32 %66)
  %68 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ag71xx_hw_set_macaddr(%struct.ag71xx* %68, i32 %71)
  ret void
}

declare dso_local i32 @ag71xx_hw_stop(%struct.ag71xx*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ag71xx_rr(%struct.ag71xx*, i32) #1

declare dso_local i32 @ag71xx_tx_packets(%struct.ag71xx*, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

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
