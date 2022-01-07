; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240sw_phy_write.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240sw_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 }

@AR7240_NUM_PHYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@reg_mutex = common dso_local global i32 0, align 4
@AR7240_MDIO_CTRL_PHY_ADDR_S = common dso_local global i32 0, align 4
@AR7240_MDIO_CTRL_REG_ADDR_S = common dso_local global i32 0, align 4
@AR7240_MDIO_CTRL_MASTER_EN = common dso_local global i32 0, align 4
@AR7240_MDIO_CTRL_BUSY = common dso_local global i32 0, align 4
@AR7240_MDIO_CTRL_CMD_WRITE = common dso_local global i32 0, align 4
@AR7240_REG_MDIO_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar7240sw_phy_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @AR7240_NUM_PHYS, align 4
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %45

18:                                               ; preds = %4
  %19 = call i32 @mutex_lock(i32* @reg_mutex)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @AR7240_MDIO_CTRL_PHY_ADDR_S, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @AR7240_MDIO_CTRL_REG_ADDR_S, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %22, %25
  %27 = load i32, i32* @AR7240_MDIO_CTRL_MASTER_EN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @AR7240_MDIO_CTRL_BUSY, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @AR7240_MDIO_CTRL_CMD_WRITE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %10, align 4
  %35 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %36 = load i32, i32* @AR7240_REG_MDIO_CTRL, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @__ar7240sw_reg_write(%struct.mii_bus* %35, i32 %36, i32 %37)
  %39 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %40 = load i32, i32* @AR7240_REG_MDIO_CTRL, align 4
  %41 = load i32, i32* @AR7240_MDIO_CTRL_BUSY, align 4
  %42 = call i32 @__ar7240sw_reg_wait(%struct.mii_bus* %39, i32 %40, i32 %41, i32 0, i32 5)
  store i32 %42, i32* %11, align 4
  %43 = call i32 @mutex_unlock(i32* @reg_mutex)
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %18, %15
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__ar7240sw_reg_write(%struct.mii_bus*, i32, i32) #1

declare dso_local i32 @__ar7240sw_reg_wait(%struct.mii_bus*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
