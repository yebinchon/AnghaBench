; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_phy.c_ag71xx_phy_link_adjust.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_phy.c_ag71xx_phy_link_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ag71xx = type { i64, i64, i64, i32, %struct.phy_device* }
%struct.phy_device = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ag71xx_phy_link_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_phy_link_adjust(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ag71xx*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.ag71xx* @netdev_priv(%struct.net_device* %7)
  store %struct.ag71xx* %8, %struct.ag71xx** %3, align 8
  %9 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %10 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %9, i32 0, i32 4
  %11 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %11, %struct.phy_device** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %13 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %12, i32 0, i32 3
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %1
  %21 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %22 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %25 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %20
  %29 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %30 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %33 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %20
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %28
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %40 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %43 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 1, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %38
  %48 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %49 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %52 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %54 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %57 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %59 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %62 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %47
  %66 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %67 = call i32 @ag71xx_link_adjust(%struct.ag71xx* %66)
  br label %68

68:                                               ; preds = %65, %47
  %69 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %70 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %69, i32 0, i32 3
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  ret void
}

declare dso_local %struct.ag71xx* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ag71xx_link_adjust(%struct.ag71xx*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
