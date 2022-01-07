; ModuleID = '/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/net/ethernet/cavium/extr_cns3xxx_eth.c_eth_remove_one.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/cns3xxx/files/drivers/net/ethernet/cavium/extr_cns3xxx_eth.c_eth_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.platform_device = type { i32 }
%struct.sw = type { i32 }

@switch_port_tab = common dso_local global %struct.port** null, align 8
@napi_dev = common dso_local global %struct.net_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @eth_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eth_remove_one(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.port*, align 8
  %7 = alloca %struct.net_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.sw* @netdev_priv(%struct.net_device* %10)
  store %struct.sw* %11, %struct.sw** %4, align 8
  %12 = load %struct.sw*, %struct.sw** %4, align 8
  %13 = call i32 @destroy_rings(%struct.sw* %12)
  store i32 3, i32* %5, align 4
  br label %14

14:                                               ; preds = %46, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  %18 = load %struct.port**, %struct.port*** @switch_port_tab, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.port*, %struct.port** %18, i64 %20
  %22 = load %struct.port*, %struct.port** %21, align 8
  %23 = icmp ne %struct.port* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %17
  %25 = load %struct.port**, %struct.port*** @switch_port_tab, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.port*, %struct.port** %25, i64 %27
  %29 = load %struct.port*, %struct.port** %28, align 8
  store %struct.port* %29, %struct.port** %6, align 8
  %30 = load %struct.port*, %struct.port** %6, align 8
  %31 = getelementptr inbounds %struct.port, %struct.port* %30, i32 0, i32 1
  %32 = load %struct.net_device*, %struct.net_device** %31, align 8
  store %struct.net_device* %32, %struct.net_device** %7, align 8
  %33 = load %struct.net_device*, %struct.net_device** %7, align 8
  %34 = call i32 @unregister_netdev(%struct.net_device* %33)
  %35 = load %struct.port*, %struct.port** %6, align 8
  %36 = getelementptr inbounds %struct.port, %struct.port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @phy_disconnect(i32 %37)
  %39 = load %struct.port**, %struct.port*** @switch_port_tab, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.port*, %struct.port** %39, i64 %41
  store %struct.port* null, %struct.port** %42, align 8
  %43 = load %struct.net_device*, %struct.net_device** %7, align 8
  %44 = call i32 @free_netdev(%struct.net_device* %43)
  br label %45

45:                                               ; preds = %24, %17
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %5, align 4
  br label %14

49:                                               ; preds = %14
  %50 = load %struct.net_device*, %struct.net_device** @napi_dev, align 8
  %51 = call i32 @free_netdev(%struct.net_device* %50)
  %52 = call i32 (...) @cns3xxx_mdio_remove()
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.sw* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @destroy_rings(%struct.sw*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @phy_disconnect(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @cns3xxx_mdio_remove(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
