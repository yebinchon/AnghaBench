; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_mdio.c_b53_phy_read_status.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_mdio.c_b53_phy_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32, i32, i32 (i32)*, i32, i32, %struct.b53_device* }
%struct.b53_device = type { i32 }

@DUPLEX_FULL = common dso_local global i32 0, align 4
@PHY_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @b53_phy_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_phy_read_status(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca %struct.b53_device*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %4 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %5 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %4, i32 0, i32 6
  %6 = load %struct.b53_device*, %struct.b53_device** %5, align 8
  store %struct.b53_device* %6, %struct.b53_device** %3, align 8
  %7 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %8 = call i64 @is5325(%struct.b53_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %12 = call i64 @is5365(%struct.b53_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %1
  %15 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 0
  store i32 100, i32* %16, align 8
  br label %20

17:                                               ; preds = %10
  %18 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %19 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %18, i32 0, i32 0
  store i32 1000, i32* %19, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* @DUPLEX_FULL, align 4
  %22 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %23 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %25 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* @PHY_RUNNING, align 4
  %27 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @netif_carrier_on(i32 %31)
  %33 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 3
  %35 = load i32 (i32)*, i32 (i32)** %34, align 8
  %36 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 %35(i32 %38)
  ret i32 0
}

declare dso_local i64 @is5325(%struct.b53_device*) #1

declare dso_local i64 @is5365(%struct.b53_device*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
