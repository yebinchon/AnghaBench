; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_soc_rt3883.c_rt3883_init_data.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_soc_rt3883.c_rt3883_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_soc_data = type { i32 }
%struct.net_device = type { i32 }
%struct.fe_priv = type { i32 }

@FE_FLAG_PADDING_64B = common dso_local global i32 0, align 4
@FE_FLAG_PADDING_BUG = common dso_local global i32 0, align 4
@FE_FLAG_JUMBO_FRAME = common dso_local global i32 0, align 4
@FE_FLAG_CALIBRATE_CLK = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fe_soc_data*, %struct.net_device*)* @rt3883_init_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt3883_init_data(%struct.fe_soc_data* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.fe_soc_data*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.fe_priv*, align 8
  store %struct.fe_soc_data* %0, %struct.fe_soc_data** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.fe_priv* %7, %struct.fe_priv** %5, align 8
  %8 = load i32, i32* @FE_FLAG_PADDING_64B, align 4
  %9 = load i32, i32* @FE_FLAG_PADDING_BUG, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @FE_FLAG_JUMBO_FRAME, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @FE_FLAG_CALIBRATE_CLK, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %16 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @NETIF_F_SG, align 4
  %18 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret void
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
