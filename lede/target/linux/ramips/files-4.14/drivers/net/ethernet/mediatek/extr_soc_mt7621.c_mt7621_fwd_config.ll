; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_soc_mt7621.c_mt7621_fwd_config.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_soc_mt7621.c_mt7621_fwd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { i32 }
%struct.net_device = type { i32 }

@MT7620A_GDMA1_FWD_CFG = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fe_priv*)* @mt7621_fwd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7621_fwd_config(%struct.fe_priv* %0) #0 {
  %2 = alloca %struct.fe_priv*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.fe_priv* %0, %struct.fe_priv** %2, align 8
  %4 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %5 = call %struct.net_device* @priv_netdev(%struct.fe_priv* %4)
  store %struct.net_device* %5, %struct.net_device** %3, align 8
  %6 = load i32, i32* @MT7620A_GDMA1_FWD_CFG, align 4
  %7 = call i32 @fe_r32(i32 %6)
  %8 = and i32 %7, -65536
  %9 = load i32, i32* @MT7620A_GDMA1_FWD_CFG, align 4
  %10 = call i32 @fe_w32(i32 %8, i32 %9)
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @mt7621_rxcsum_config(i32 %15)
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %21 = and i32 %19, %20
  %22 = call i32 @mt7621_rxvlan_config(i32 %21)
  ret i32 0
}

declare dso_local %struct.net_device* @priv_netdev(%struct.fe_priv*) #1

declare dso_local i32 @fe_w32(i32, i32) #1

declare dso_local i32 @fe_r32(i32) #1

declare dso_local i32 @mt7621_rxcsum_config(i32) #1

declare dso_local i32 @mt7621_rxvlan_config(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
