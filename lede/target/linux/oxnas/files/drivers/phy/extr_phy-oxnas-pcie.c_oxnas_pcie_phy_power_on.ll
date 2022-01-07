; ModuleID = '/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/phy/extr_phy-oxnas-pcie.c_oxnas_pcie_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/phy/extr_phy-oxnas-pcie.c_oxnas_pcie_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.oxnas_pcie_phy = type { i64 }

@PHY_ADDR = common dso_local global i64 0, align 8
@CAP_DATA = common dso_local global i32 0, align 4
@PHY_DATA = common dso_local global i64 0, align 8
@WRITE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @oxnas_pcie_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_pcie_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.oxnas_pcie_phy*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %4 = load %struct.phy*, %struct.phy** %2, align 8
  %5 = call %struct.oxnas_pcie_phy* @phy_get_drvdata(%struct.phy* %4)
  store %struct.oxnas_pcie_phy* %5, %struct.oxnas_pcie_phy** %3, align 8
  %6 = call i32 @ADDR_VAL(i32 20)
  %7 = load %struct.oxnas_pcie_phy*, %struct.oxnas_pcie_phy** %3, align 8
  %8 = getelementptr inbounds %struct.oxnas_pcie_phy, %struct.oxnas_pcie_phy* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PHY_ADDR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 %6, i64 %11)
  %13 = call i32 @DATA_VAL(i32 52752)
  %14 = load i32, i32* @CAP_DATA, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.oxnas_pcie_phy*, %struct.oxnas_pcie_phy** %3, align 8
  %17 = getelementptr inbounds %struct.oxnas_pcie_phy, %struct.oxnas_pcie_phy* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PHY_DATA, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  %22 = call i32 @DATA_VAL(i32 52752)
  %23 = load i32, i32* @WRITE_EN, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.oxnas_pcie_phy*, %struct.oxnas_pcie_phy** %3, align 8
  %26 = getelementptr inbounds %struct.oxnas_pcie_phy, %struct.oxnas_pcie_phy* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PHY_DATA, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  %31 = call i32 @ADDR_VAL(i32 8196)
  %32 = load %struct.oxnas_pcie_phy*, %struct.oxnas_pcie_phy** %3, align 8
  %33 = getelementptr inbounds %struct.oxnas_pcie_phy, %struct.oxnas_pcie_phy* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PHY_ADDR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  %38 = call i32 @DATA_VAL(i32 33479)
  %39 = load i32, i32* @CAP_DATA, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.oxnas_pcie_phy*, %struct.oxnas_pcie_phy** %3, align 8
  %42 = getelementptr inbounds %struct.oxnas_pcie_phy, %struct.oxnas_pcie_phy* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PHY_DATA, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  %47 = call i32 @DATA_VAL(i32 33479)
  %48 = load i32, i32* @WRITE_EN, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.oxnas_pcie_phy*, %struct.oxnas_pcie_phy** %3, align 8
  %51 = getelementptr inbounds %struct.oxnas_pcie_phy, %struct.oxnas_pcie_phy* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PHY_DATA, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  ret i32 0
}

declare dso_local %struct.oxnas_pcie_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @ADDR_VAL(i32) #1

declare dso_local i32 @DATA_VAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
