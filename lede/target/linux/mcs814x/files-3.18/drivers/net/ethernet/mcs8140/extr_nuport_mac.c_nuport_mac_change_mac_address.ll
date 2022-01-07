; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_change_mac_address.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/net/ethernet/mcs8140/extr_nuport_mac.c_nuport_mac_change_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.sockaddr = type { i32 }
%struct.nuport_mac_priv = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MAC_ADDR_LOW_REG = common dso_local global i32 0, align 4
@MAC_ADDR_HIGH_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @nuport_mac_change_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nuport_mac_change_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.nuport_mac_priv*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.sockaddr*
  store %struct.sockaddr* %12, %struct.sockaddr** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.nuport_mac_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.nuport_mac_priv* %14, %struct.nuport_mac_priv** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i64*
  store i64* %18, i64** %8, align 8
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call i64 @netif_running(%struct.net_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %57

25:                                               ; preds = %2
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @memcpy(i64 %28, i32 %31, i32 %32)
  %34 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %7, align 8
  %35 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_irq(i32* %35)
  %37 = load i64*, i64** %8, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @MAC_ADDR_LOW_REG, align 4
  %40 = call i32 @nuport_mac_writel(i64 %38, i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 4
  %45 = inttoptr i64 %44 to i64*
  store i64* %45, i64** %8, align 8
  %46 = load i64*, i64** %8, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @MAC_ADDR_HIGH_REG, align 4
  %49 = call i32 @nuport_mac_writel(i64 %47, i32 %48)
  %50 = load i32, i32* @MAC_ADDR_LOW_REG, align 4
  %51 = call i32 @nuport_mac_readl(i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* @MAC_ADDR_HIGH_REG, align 4
  %53 = call i32 @nuport_mac_readl(i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.nuport_mac_priv*, %struct.nuport_mac_priv** %7, align 8
  %55 = getelementptr inbounds %struct.nuport_mac_priv, %struct.nuport_mac_priv* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_irq(i32* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %25, %22
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.nuport_mac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @nuport_mac_writel(i64, i32) #1

declare dso_local i32 @nuport_mac_readl(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
