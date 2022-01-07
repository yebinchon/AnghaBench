; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_mii_write.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_mii_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.nuport_mac_priv = type { i32 }

@MII_ADDR_SHIFT = common dso_local global i32 0, align 4
@MII_REG_SHIFT = common dso_local global i32 0, align 4
@MII_BUSY = common dso_local global i32 0, align 4
@MII_WRITE = common dso_local global i32 0, align 4
@MII_DATA_REG = common dso_local global i32 0, align 4
@MII_ADDR_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @nuport_mac_mii_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nuport_mac_mii_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.nuport_mac_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %15 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %10, align 8
  %17 = load %struct.net_device*, %struct.net_device** %10, align 8
  %18 = call %struct.nuport_mac_priv* @netdev_priv(%struct.net_device* %17)
  store %struct.nuport_mac_priv* %18, %struct.nuport_mac_priv** %11, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %11, align 8
  %20 = call i32 @nuport_mac_mii_busy_wait(%struct.nuport_mac_priv* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %48

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MII_ADDR_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @MII_REG_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %28, %31
  %33 = load i32, i32* %13, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* @MII_BUSY, align 4
  %36 = load i32, i32* @MII_WRITE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %13, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @MII_DATA_REG, align 4
  %42 = call i32 @nuport_mac_writel(i32 %40, i32 %41)
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @MII_ADDR_REG, align 4
  %45 = call i32 @nuport_mac_writel(i32 %43, i32 %44)
  %46 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %11, align 8
  %47 = call i32 @nuport_mac_mii_busy_wait(%struct.nuport_mac_priv* %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %25, %23
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.nuport_mac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nuport_mac_mii_busy_wait(%struct.nuport_mac_priv*) #1

declare dso_local i32 @nuport_mac_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
