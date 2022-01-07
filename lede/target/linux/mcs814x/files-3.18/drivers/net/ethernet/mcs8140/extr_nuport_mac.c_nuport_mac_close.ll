; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_close.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nuport_mac_priv = type { i32, i32, i32, i32, i32, i32, i32 }

@CTRL_REG = common dso_local global i32 0, align 4
@RX_ENABLE = common dso_local global i32 0, align 4
@TX_ENABLE = common dso_local global i32 0, align 4
@LINK_INT_CSR = common dso_local global i32 0, align 4
@LINK_INT_POLL_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @nuport_mac_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nuport_mac_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nuport_mac_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.nuport_mac_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.nuport_mac_priv* %6, %struct.nuport_mac_priv** %4, align 8
  %7 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %8 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load i32, i32* @CTRL_REG, align 4
  %11 = call i32 @nuport_mac_readl(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @RX_ENABLE, align 4
  %13 = load i32, i32* @TX_ENABLE, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @CTRL_REG, align 4
  %20 = call i32 @nuport_mac_writel(i32 %18, i32 %19)
  %21 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %22 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %21, i32 0, i32 6
  %23 = call i32 @napi_disable(i32* %22)
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @netif_stop_queue(%struct.net_device* %24)
  %26 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %27 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @free_irq(i32 %28, %struct.net_device* %29)
  %31 = load i32, i32* @LINK_INT_CSR, align 4
  %32 = call i32 @nuport_mac_writel(i32 0, i32 %31)
  %33 = load i32, i32* @LINK_INT_POLL_TIME, align 4
  %34 = call i32 @nuport_mac_writel(i32 0, i32 %33)
  %35 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %36 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @phy_stop(i32 %37)
  %39 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %40 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = call i32 @free_irq(i32 %41, %struct.net_device* %42)
  %44 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %45 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = call i32 @free_irq(i32 %46, %struct.net_device* %47)
  %49 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %50 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %49, i32 0, i32 1
  %51 = call i32 @spin_unlock_irq(i32* %50)
  %52 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %53 = call i32 @nuport_mac_free_rx_ring(%struct.nuport_mac_priv* %52)
  %54 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %55 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @clk_disable(i32 %56)
  ret i32 0
}

declare dso_local %struct.nuport_mac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @nuport_mac_readl(i32) #1

declare dso_local i32 @nuport_mac_writel(i32, i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @nuport_mac_free_rx_ring(%struct.nuport_mac_priv*) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
