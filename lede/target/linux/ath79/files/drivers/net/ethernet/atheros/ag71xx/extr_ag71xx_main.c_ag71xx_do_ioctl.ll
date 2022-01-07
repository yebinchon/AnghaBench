; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i64 }
%struct.ag71xx = type { i32*, i32 }

@EFAULT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @ag71xx_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_do_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ag71xx*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.ag71xx* @netdev_priv(%struct.net_device* %10)
  store %struct.ag71xx* %11, %struct.ag71xx** %8, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %74 [
    i32 133, label %13
    i32 129, label %35
    i32 132, label %48
    i32 131, label %61
    i32 130, label %61
    i32 128, label %61
  ]

13:                                               ; preds = %3
  %14 = load %struct.ag71xx*, %struct.ag71xx** %8, align 8
  %15 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %75

19:                                               ; preds = %13
  %20 = load %struct.ag71xx*, %struct.ag71xx** %8, align 8
  %21 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %20, i32 0, i32 1
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.ag71xx*, %struct.ag71xx** %8, align 8
  %24 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %27 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @phy_ethtool_ioctl(i32* %25, i8* %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.ag71xx*, %struct.ag71xx** %8, align 8
  %32 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock_irq(i32* %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %78

35:                                               ; preds = %3
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %40 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @copy_from_user(i32 %38, i64 %41, i32 4)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @EFAULT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %78

47:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %78

48:                                               ; preds = %3
  %49 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %50 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @copy_to_user(i64 %51, i32 %54, i32 4)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* @EFAULT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %78

60:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %78

61:                                               ; preds = %3, %3, %3
  %62 = load %struct.ag71xx*, %struct.ag71xx** %8, align 8
  %63 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %75

67:                                               ; preds = %61
  %68 = load %struct.ag71xx*, %struct.ag71xx** %8, align 8
  %69 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @phy_mii_ioctl(i32* %70, %struct.ifreq* %71, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %78

74:                                               ; preds = %3
  br label %75

75:                                               ; preds = %74, %66, %18
  %76 = load i32, i32* @EOPNOTSUPP, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %67, %60, %57, %47, %44, %19
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.ag71xx* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @phy_ethtool_ioctl(i32*, i8*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @copy_from_user(i32, i64, i32) #1

declare dso_local i32 @copy_to_user(i64, i32, i32) #1

declare dso_local i32 @phy_mii_ioctl(i32*, %struct.ifreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
