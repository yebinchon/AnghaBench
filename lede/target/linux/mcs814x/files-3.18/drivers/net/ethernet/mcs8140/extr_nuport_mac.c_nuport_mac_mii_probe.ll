; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_mii_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_mii_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nuport_mac_priv = type { i32, i32, %struct.TYPE_3__*, i32, %struct.phy_device*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.phy_device = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"unable to enable ePHY clk\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"no PHYs found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@nuport_mac_adjust_link = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"could not attach PHY\0A\00", align 1
@PHY_BASIC_FEATURES = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"attached PHY driver [%s] (mii_bus:phy_addr=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @nuport_mac_mii_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nuport_mac_mii_probe(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.nuport_mac_priv*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.nuport_mac_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.nuport_mac_priv* %8, %struct.nuport_mac_priv** %4, align 8
  store %struct.phy_device* null, %struct.phy_device** %5, align 8
  %9 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %10 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_enable(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @netdev_err(%struct.net_device* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %87

19:                                               ; preds = %1
  %20 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %21 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.phy_device* @phy_find_first(i32 %22)
  store %struct.phy_device* %23, %struct.phy_device** %5, align 8
  %24 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %25 = icmp ne %struct.phy_device* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @netdev_err(%struct.net_device* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %81

31:                                               ; preds = %19
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %34 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @nuport_mac_adjust_link, align 4
  %37 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %38 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.phy_device* @of_phy_connect(%struct.net_device* %32, i32 %35, i32 %36, i32 0, i32 %39)
  store %struct.phy_device* %40, %struct.phy_device** %5, align 8
  %41 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %42 = call i64 @IS_ERR(%struct.phy_device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = call i32 @netdev_err(%struct.net_device* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %48 = call i32 @PTR_ERR(%struct.phy_device* %47)
  store i32 %48, i32* %6, align 4
  br label %81

49:                                               ; preds = %31
  %50 = load i32, i32* @PHY_BASIC_FEATURES, align 4
  %51 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %52 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %56 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %59 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %61 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %62 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %61, i32 0, i32 4
  store %struct.phy_device* %60, %struct.phy_device** %62, align 8
  %63 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %64 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load i32, i32* @DUPLEX_FULL, align 4
  %66 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %67 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %69 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %73 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %78 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dev_info(i32* %71, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %79)
  store i32 0, i32* %2, align 4
  br label %87

81:                                               ; preds = %44, %26
  %82 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %4, align 8
  %83 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @clk_disable(i32 %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %81, %49, %15
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.nuport_mac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local %struct.phy_device* @phy_find_first(i32) #1

declare dso_local %struct.phy_device* @of_phy_connect(%struct.net_device*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
