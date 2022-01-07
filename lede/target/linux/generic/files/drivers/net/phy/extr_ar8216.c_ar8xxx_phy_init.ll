; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_phy_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { %struct.TYPE_2__*, %struct.mii_bus* }
%struct.TYPE_2__ = type { i32 (%struct.ar8xxx_priv*, i32)* }
%struct.mii_bus = type { i32 }

@AR8XXX_NUM_PHYS = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar8xxx_phy_init(%struct.ar8xxx_priv* %0) #0 {
  %2 = alloca %struct.ar8xxx_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mii_bus*, align 8
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %2, align 8
  %5 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %5, i32 0, i32 1
  %7 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  store %struct.mii_bus* %7, %struct.mii_bus** %4, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %55, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @AR8XXX_NUM_PHYS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %58

12:                                               ; preds = %8
  %13 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %14 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.ar8xxx_priv*, i32)*, i32 (%struct.ar8xxx_priv*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.ar8xxx_priv*, i32)* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %21 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.ar8xxx_priv*, i32)*, i32 (%struct.ar8xxx_priv*, i32)** %23, align 8
  %25 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 %24(%struct.ar8xxx_priv* %25, i32 %26)
  br label %28

28:                                               ; preds = %19, %12
  %29 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @MII_ADVERTISE, align 4
  %32 = load i32, i32* @ADVERTISE_ALL, align 4
  %33 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @mdiobus_write(%struct.mii_bus* %29, i32 %30, i32 %31, i32 %36)
  %38 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %39 = call i64 @ar8xxx_has_gige(%struct.ar8xxx_priv* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %28
  %42 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @MII_CTRL1000, align 4
  %45 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %46 = call i32 @mdiobus_write(%struct.mii_bus* %42, i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %28
  %48 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @MII_BMCR, align 4
  %51 = load i32, i32* @BMCR_RESET, align 4
  %52 = load i32, i32* @BMCR_ANENABLE, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @mdiobus_write(%struct.mii_bus* %48, i32 %49, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %8

58:                                               ; preds = %8
  %59 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %60 = call i32 @ar8xxx_phy_poll_reset(%struct.mii_bus* %59)
  ret void
}

declare dso_local i32 @mdiobus_write(%struct.mii_bus*, i32, i32, i32) #1

declare dso_local i64 @ar8xxx_has_gige(%struct.ar8xxx_priv*) #1

declare dso_local i32 @ar8xxx_phy_poll_reset(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
