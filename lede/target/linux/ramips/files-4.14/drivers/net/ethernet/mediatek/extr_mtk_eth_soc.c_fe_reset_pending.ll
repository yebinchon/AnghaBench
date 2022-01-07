; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_reset_pending.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_reset_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { %struct.net_device* }
%struct.net_device = type { i32 }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Driver up/down cycle failed, closing device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fe_priv*)* @fe_reset_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe_reset_pending(%struct.fe_priv* %0) #0 {
  %2 = alloca %struct.fe_priv*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.fe_priv* %0, %struct.fe_priv** %2, align 8
  %5 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %6 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %5, i32 0, i32 0
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = call i32 (...) @rtnl_lock()
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @fe_stop(%struct.net_device* %9)
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i32 @fe_open(%struct.net_device* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %17 = load i32, i32* @ifup, align 4
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @netif_alert(%struct.fe_priv* %16, i32 %17, %struct.net_device* %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @dev_close(%struct.net_device* %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = call i32 (...) @rtnl_unlock()
  ret void
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @fe_stop(%struct.net_device*) #1

declare dso_local i32 @fe_open(%struct.net_device*) #1

declare dso_local i32 @netif_alert(%struct.fe_priv*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
