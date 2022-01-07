; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl8306_read_status.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl8306_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32, i32 (i32)*, i32, i8*, i8*, %struct.TYPE_2__, %struct.rtl_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_priv = type { %struct.switch_dev }
%struct.switch_dev = type { i32 }

@SPEED = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i8* null, align 8
@SPEED_10 = common dso_local global i8* null, align 8
@DUPLEX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i8* null, align 8
@DUPLEX_HALF = common dso_local global i8* null, align 8
@LINK = common dso_local global i32 0, align 4
@PHY_RUNNING = common dso_local global i32 0, align 4
@PHY_NOLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @rtl8306_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8306_read_status(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.switch_dev*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %6 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %5, i32 0, i32 7
  %7 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 0
  store %struct.switch_dev* %9, %struct.switch_dev** %4, align 8
  %10 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %52

15:                                               ; preds = %1
  %16 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %17 = load i32, i32* @SPEED, align 4
  %18 = call i32 @RTL_PORT_REG(i32 4, i32 %17)
  %19 = call i64 @rtl_get(%struct.switch_dev* %16, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i8*, i8** @SPEED_100, align 8
  br label %25

23:                                               ; preds = %15
  %24 = load i8*, i8** @SPEED_10, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i8* [ %22, %21 ], [ %24, %23 ]
  %27 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %30 = load i32, i32* @DUPLEX, align 4
  %31 = call i32 @RTL_PORT_REG(i32 4, i32 %30)
  %32 = call i64 @rtl_get(%struct.switch_dev* %29, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i8*, i8** @DUPLEX_FULL, align 8
  br label %38

36:                                               ; preds = %25
  %37 = load i8*, i8** @DUPLEX_HALF, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i8* [ %35, %34 ], [ %37, %36 ]
  %40 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %41 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %43 = load i32, i32* @LINK, align 4
  %44 = call i32 @RTL_PORT_REG(i32 4, i32 %43)
  %45 = call i64 @rtl_get(%struct.switch_dev* %42, i32 %44)
  %46 = icmp ne i64 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %51 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %61

52:                                               ; preds = %1
  %53 = load i8*, i8** @SPEED_100, align 8
  %54 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %55 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @DUPLEX_FULL, align 8
  %57 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %58 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %60 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  br label %61

61:                                               ; preds = %52, %38
  %62 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %63 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = load i32, i32* @PHY_RUNNING, align 4
  %68 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %69 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %71 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @netif_carrier_on(i32 %72)
  %74 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %75 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %74, i32 0, i32 2
  %76 = load i32 (i32)*, i32 (i32)** %75, align 8
  %77 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %78 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 %76(i32 %79)
  br label %96

81:                                               ; preds = %61
  %82 = load i32, i32* @PHY_NOLINK, align 4
  %83 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %84 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %86 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @netif_carrier_off(i32 %87)
  %89 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %90 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %89, i32 0, i32 2
  %91 = load i32 (i32)*, i32 (i32)** %90, align 8
  %92 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %93 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 %91(i32 %94)
  br label %96

96:                                               ; preds = %81, %66
  ret i32 0
}

declare dso_local i64 @rtl_get(%struct.switch_dev*, i32) #1

declare dso_local i32 @RTL_PORT_REG(i32, i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
