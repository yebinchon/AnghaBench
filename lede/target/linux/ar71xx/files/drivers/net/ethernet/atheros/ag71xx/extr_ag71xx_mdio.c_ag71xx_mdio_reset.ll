; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_mdio.c_ag71xx_mdio_reset.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_mdio.c_ag71xx_mdio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.ag71xx_mdio* }
%struct.ag71xx_mdio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, i64, i64, i64 }

@MII_CFG_CLK_DIV_6 = common dso_local global i32 0, align 4
@MII_CFG_CLK_DIV_10 = common dso_local global i32 0, align 4
@MII_CFG_CLK_DIV_58 = common dso_local global i32 0, align 4
@MII_CFG_CLK_DIV_28 = common dso_local global i32 0, align 4
@AG71XX_REG_MII_CFG = common dso_local global i32 0, align 4
@MII_CFG_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*)* @ag71xx_mdio_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_mdio_reset(%struct.mii_bus* %0) #0 {
  %2 = alloca %struct.mii_bus*, align 8
  %3 = alloca %struct.ag71xx_mdio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %2, align 8
  %6 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  %7 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %6, i32 0, i32 0
  %8 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %7, align 8
  store %struct.ag71xx_mdio* %8, %struct.ag71xx_mdio** %3, align 8
  %9 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %3, align 8
  %10 = call i32 @ag71xx_mdio_get_divider(%struct.ag71xx_mdio* %9, i32* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %59

13:                                               ; preds = %1
  %14 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %3, align 8
  %15 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @MII_CFG_CLK_DIV_6, align 4
  store i32 %21, i32* %4, align 4
  br label %58

22:                                               ; preds = %13
  %23 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %3, align 8
  %24 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %3, align 8
  %31 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @MII_CFG_CLK_DIV_10, align 4
  store i32 %37, i32* %4, align 4
  br label %57

38:                                               ; preds = %29, %22
  %39 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %3, align 8
  %40 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %38
  %46 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %3, align 8
  %47 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @MII_CFG_CLK_DIV_58, align 4
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %45, %38
  %55 = load i32, i32* @MII_CFG_CLK_DIV_28, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %52
  br label %57

57:                                               ; preds = %56, %36
  br label %58

58:                                               ; preds = %57, %20
  br label %59

59:                                               ; preds = %58, %1
  %60 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %3, align 8
  %61 = load i32, i32* @AG71XX_REG_MII_CFG, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @MII_CFG_RESET, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @ag71xx_mdio_wr(%struct.ag71xx_mdio* %60, i32 %61, i32 %64)
  %66 = call i32 @udelay(i32 100)
  %67 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %3, align 8
  %68 = load i32, i32* @AG71XX_REG_MII_CFG, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @ag71xx_mdio_wr(%struct.ag71xx_mdio* %67, i32 %68, i32 %69)
  %71 = call i32 @udelay(i32 100)
  %72 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %3, align 8
  %73 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = bitcast {}** %75 to i32 (%struct.mii_bus*)**
  %77 = load i32 (%struct.mii_bus*)*, i32 (%struct.mii_bus*)** %76, align 8
  %78 = icmp ne i32 (%struct.mii_bus*)* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %59
  %80 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %3, align 8
  %81 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = bitcast {}** %83 to i32 (%struct.mii_bus*)**
  %85 = load i32 (%struct.mii_bus*)*, i32 (%struct.mii_bus*)** %84, align 8
  %86 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  %87 = call i32 %85(%struct.mii_bus* %86)
  br label %88

88:                                               ; preds = %79, %59
  ret i32 0
}

declare dso_local i32 @ag71xx_mdio_get_divider(%struct.ag71xx_mdio*, i32*) #1

declare dso_local i32 @ag71xx_mdio_wr(%struct.ag71xx_mdio*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
