; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_phy_config_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_phy_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_5__, %struct.net_device*, %struct.ar8xxx_priv* }
%struct.TYPE_5__ = type { i64 }
%struct.net_device = type { i32, i32, i32, %struct.ar8xxx_priv* }
%struct.ar8xxx_priv = type { i32, i32, %struct.TYPE_6__, %struct.phy_device*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@AR8216_NUM_PORTS = common dso_local global i64 0, align 8
@IFF_NO_IP_ALIGN = common dso_local global i32 0, align 4
@ar8216_mangle_rx = common dso_local global i32 0, align 4
@ar8216_mangle_tx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @ar8xxx_phy_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8xxx_phy_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.ar8xxx_priv*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 2
  %9 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %8, align 8
  store %struct.ar8xxx_priv* %9, %struct.ar8xxx_priv** %4, align 8
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %14 = icmp ne %struct.ar8xxx_priv* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %85

22:                                               ; preds = %1
  %23 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %24 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %31 = call i32 @ar8xxx_phy_check_aneg(%struct.phy_device* %30)
  store i32 %31, i32* %2, align 4
  br label %85

32:                                               ; preds = %22
  %33 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %34 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %35 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %34, i32 0, i32 3
  store %struct.phy_device* %33, %struct.phy_device** %35, align 8
  %36 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %32
  %42 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %43 = call i64 @chip_is_ar8316(%struct.ar8xxx_priv* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i64, i64* @AR8216_NUM_PORTS, align 8
  %47 = sub nsw i64 %46, 1
  %48 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %49 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %52 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %54 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %56 = call i32 @ar8316_hw_init(%struct.ar8xxx_priv* %55)
  store i32 0, i32* %2, align 4
  br label %85

57:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %85

58:                                               ; preds = %32
  %59 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %60 = call i32 @ar8xxx_start(%struct.ar8xxx_priv* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %85

65:                                               ; preds = %58
  %66 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %67 = call i64 @chip_is_ar8216(%struct.ar8xxx_priv* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %71 = load %struct.net_device*, %struct.net_device** %5, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 3
  store %struct.ar8xxx_priv* %70, %struct.ar8xxx_priv** %72, align 8
  %73 = load i32, i32* @IFF_NO_IP_ALIGN, align 4
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* @ar8216_mangle_rx, align 4
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @ar8216_mangle_tx, align 4
  %82 = load %struct.net_device*, %struct.net_device** %5, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %69, %65
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %63, %57, %45, %29, %19
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ar8xxx_phy_check_aneg(%struct.phy_device*) #1

declare dso_local i64 @chip_is_ar8316(%struct.ar8xxx_priv*) #1

declare dso_local i32 @ar8316_hw_init(%struct.ar8xxx_priv*) #1

declare dso_local i32 @ar8xxx_start(%struct.ar8xxx_priv*) #1

declare dso_local i64 @chip_is_ar8216(%struct.ar8xxx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
