; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_mdio.c_ag71xx_mdio_dump_regs.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_mdio.c_ag71xx_mdio_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx_mdio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"%s: mii_cfg=%08x, mii_cmd=%08x, mii_addr=%08x\0A\00", align 1
@AG71XX_REG_MII_CFG = common dso_local global i32 0, align 4
@AG71XX_REG_MII_CMD = common dso_local global i32 0, align 4
@AG71XX_REG_MII_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"%s: mii_ctrl=%08x, mii_status=%08x, mii_ind=%08x\0A\00", align 1
@AG71XX_REG_MII_CTRL = common dso_local global i32 0, align 4
@AG71XX_REG_MII_STATUS = common dso_local global i32 0, align 4
@AG71XX_REG_MII_IND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx_mdio*)* @ag71xx_mdio_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_mdio_dump_regs(%struct.ag71xx_mdio* %0) #0 {
  %2 = alloca %struct.ag71xx_mdio*, align 8
  store %struct.ag71xx_mdio* %0, %struct.ag71xx_mdio** %2, align 8
  %3 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %2, align 8
  %4 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %2, align 8
  %9 = load i32, i32* @AG71XX_REG_MII_CFG, align 4
  %10 = call i32 @ag71xx_mdio_rr(%struct.ag71xx_mdio* %8, i32 %9)
  %11 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %2, align 8
  %12 = load i32, i32* @AG71XX_REG_MII_CMD, align 4
  %13 = call i32 @ag71xx_mdio_rr(%struct.ag71xx_mdio* %11, i32 %12)
  %14 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %2, align 8
  %15 = load i32, i32* @AG71XX_REG_MII_ADDR, align 4
  %16 = call i32 @ag71xx_mdio_rr(%struct.ag71xx_mdio* %14, i32 %15)
  %17 = call i32 @DBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10, i32 %13, i32 %16)
  %18 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %2, align 8
  %19 = getelementptr inbounds %struct.ag71xx_mdio, %struct.ag71xx_mdio* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %2, align 8
  %24 = load i32, i32* @AG71XX_REG_MII_CTRL, align 4
  %25 = call i32 @ag71xx_mdio_rr(%struct.ag71xx_mdio* %23, i32 %24)
  %26 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %2, align 8
  %27 = load i32, i32* @AG71XX_REG_MII_STATUS, align 4
  %28 = call i32 @ag71xx_mdio_rr(%struct.ag71xx_mdio* %26, i32 %27)
  %29 = load %struct.ag71xx_mdio*, %struct.ag71xx_mdio** %2, align 8
  %30 = load i32, i32* @AG71XX_REG_MII_IND, align 4
  %31 = call i32 @ag71xx_mdio_rr(%struct.ag71xx_mdio* %29, i32 %30)
  %32 = call i32 @DBG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i32 %31)
  ret void
}

declare dso_local i32 @DBG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ag71xx_mdio_rr(%struct.ag71xx_mdio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
