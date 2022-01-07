; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_psb6970.c_psb6970_fixup.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_psb6970.c_psb6970_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mii_bus* }
%struct.mii_bus = type { i32 (%struct.mii_bus*, i32)* }

@PSB6970_CI1 = common dso_local global i32 0, align 4
@PSB6970_CI1_MASK = common dso_local global i32 0, align 4
@PSB6970_CI1_VAL = common dso_local global i32 0, align 4
@PSB6970_CI0 = common dso_local global i32 0, align 4
@PSB6970_CI0_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @psb6970_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb6970_fixup(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mii_bus*, %struct.mii_bus** %8, align 8
  store %struct.mii_bus* %9, %struct.mii_bus** %4, align 8
  %10 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %11 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %10, i32 0, i32 0
  %12 = load i32 (%struct.mii_bus*, i32)*, i32 (%struct.mii_bus*, i32)** %11, align 8
  %13 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %14 = load i32, i32* @PSB6970_CI1, align 4
  %15 = call i32 @PHYADDR(i32 %14)
  %16 = call i32 %12(%struct.mii_bus* %13, i32 %15)
  %17 = load i32, i32* @PSB6970_CI1_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PSB6970_CI1_VAL, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 %24, 16
  %26 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %27 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %29 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %28, i32 0, i32 0
  %30 = load i32 (%struct.mii_bus*, i32)*, i32 (%struct.mii_bus*, i32)** %29, align 8
  %31 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %32 = load i32, i32* @PSB6970_CI0, align 4
  %33 = call i32 @PHYADDR(i32 %32)
  %34 = call i32 %30(%struct.mii_bus* %31, i32 %33)
  %35 = load i32, i32* @PSB6970_CI0_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %38 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %23, %22
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @PHYADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
