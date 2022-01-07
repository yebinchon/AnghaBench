; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio.c_phy_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio.c_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { i32 }
%struct.phy_device = type { i32, i32, i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@CONFIG_NET_MEDIATEK_MDIO_MT7620 = common dso_local global i32 0, align 4
@PHY_GBIT_FEATURES = common dso_local global i32 0, align 4
@PHY_BASIC_FEATURES = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fe_priv*, %struct.phy_device*)* @phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_init(%struct.fe_priv* %0, %struct.phy_device* %1) #0 {
  %3 = alloca %struct.fe_priv*, align 8
  %4 = alloca %struct.phy_device*, align 8
  store %struct.fe_priv* %0, %struct.fe_priv** %3, align 8
  store %struct.phy_device* %1, %struct.phy_device** %4, align 8
  %5 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %6 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %9 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @dev_name(i32* %10)
  %12 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  %13 = call i32 @phy_attach(i32 %7, i32 %11, i32 %12)
  %14 = load i32, i32* @AUTONEG_ENABLE, align 4
  %15 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %18 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @CONFIG_NET_MEDIATEK_MDIO_MT7620, align 4
  %22 = call i64 @IS_ENABLED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @PHY_GBIT_FEATURES, align 4
  br label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @PHY_BASIC_FEATURES, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %31 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %35 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %40 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %42 = call i32 @phy_start_aneg(%struct.phy_device* %41)
  ret void
}

declare dso_local i32 @phy_attach(i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @phy_start_aneg(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
