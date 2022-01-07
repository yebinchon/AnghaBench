; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_ethtool.c_fe_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_ethtool.c_fe_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.fe_priv = type { %struct.fe_hw_stats* }
%struct.fe_hw_stats = type { i32, i32, i32 }

@fe_gdma_str = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @fe_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.fe_priv*, align 8
  %8 = alloca %struct.fe_hw_stats*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.fe_priv* %14, %struct.fe_priv** %7, align 8
  %15 = load %struct.fe_priv*, %struct.fe_priv** %7, align 8
  %16 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %15, i32 0, i32 0
  %17 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %16, align 8
  store %struct.fe_hw_stats* %17, %struct.fe_hw_stats** %8, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call i64 @netif_running(%struct.net_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %3
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call i64 @netif_device_present(%struct.net_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %8, align 8
  %27 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %26, i32 0, i32 2
  %28 = call i64 @spin_trylock(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.fe_priv*, %struct.fe_priv** %7, align 8
  %32 = call i32 @fe_stats_update(%struct.fe_priv* %31)
  %33 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %8, align 8
  %34 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %33, i32 0, i32 2
  %35 = call i32 @spin_unlock(i32* %34)
  br label %36

36:                                               ; preds = %30, %25
  br label %37

37:                                               ; preds = %36, %21, %3
  br label %38

38:                                               ; preds = %60, %37
  %39 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %8, align 8
  %40 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %39, i32 0, i32 1
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %6, align 8
  store i32* %41, i32** %10, align 8
  %42 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %8, align 8
  %43 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %42, i32 0, i32 0
  %44 = call i32 @u64_stats_fetch_begin_irq(i32* %43)
  store i32 %44, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %56, %38
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @fe_gdma_str, align 4
  %48 = call i32 @ARRAY_SIZE(i32 %47)
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %9, align 8
  %53 = load i32, i32* %51, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %45

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.fe_hw_stats*, %struct.fe_hw_stats** %8, align 8
  %62 = getelementptr inbounds %struct.fe_hw_stats, %struct.fe_hw_stats* %61, i32 0, i32 0
  %63 = load i32, i32* %11, align 4
  %64 = call i64 @u64_stats_fetch_retry_irq(i32* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %38, label %66

66:                                               ; preds = %60
  ret void
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @netif_device_present(%struct.net_device*) #1

declare dso_local i64 @spin_trylock(i32*) #1

declare dso_local i32 @fe_stats_update(%struct.fe_priv*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
