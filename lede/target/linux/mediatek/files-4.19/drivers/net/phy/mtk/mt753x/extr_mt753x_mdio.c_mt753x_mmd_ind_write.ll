; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_mdio.c_mt753x_mmd_ind_write.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_mdio.c_mt753x_mmd_ind_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32, i32 }

@MT753X_NUM_PHYS = common dso_local global i32 0, align 4
@MT753X_SMI_ADDR_MASK = common dso_local global i32 0, align 4
@MII_MMD_ACC_CTL_REG = common dso_local global i32 0, align 4
@MMD_ADDR = common dso_local global i32 0, align 4
@MMD_CMD_S = common dso_local global i32 0, align 4
@MMD_DEVAD_S = common dso_local global i32 0, align 4
@MMD_DEVAD_M = common dso_local global i32 0, align 4
@MDIO_CMD_WRITE = common dso_local global i32 0, align 4
@MDIO_ST_C22 = common dso_local global i32 0, align 4
@MII_MMD_ADDR_DATA_REG = common dso_local global i32 0, align 4
@MMD_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt753x_mmd_ind_write(%struct.gsw_mt753x* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.gsw_mt753x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @MT753X_NUM_PHYS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %5
  %15 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %16 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  %20 = load i32, i32* @MT753X_SMI_ADDR_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %14, %5
  %23 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %24 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MII_MMD_ACC_CTL_REG, align 4
  %29 = load i32, i32* @MMD_ADDR, align 4
  %30 = load i32, i32* @MMD_CMD_S, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @MMD_DEVAD_S, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* @MMD_DEVAD_M, align 4
  %36 = and i32 %34, %35
  %37 = or i32 %31, %36
  %38 = load i32, i32* @MDIO_CMD_WRITE, align 4
  %39 = load i32, i32* @MDIO_ST_C22, align 4
  %40 = call i32 @mt753x_mii_rw(%struct.gsw_mt753x* %26, i32 %27, i32 %28, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @MII_MMD_ADDR_DATA_REG, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @MDIO_CMD_WRITE, align 4
  %46 = load i32, i32* @MDIO_ST_C22, align 4
  %47 = call i32 @mt753x_mii_rw(%struct.gsw_mt753x* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @MII_MMD_ACC_CTL_REG, align 4
  %51 = load i32, i32* @MMD_DATA, align 4
  %52 = load i32, i32* @MMD_CMD_S, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @MMD_DEVAD_S, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* @MMD_DEVAD_M, align 4
  %58 = and i32 %56, %57
  %59 = or i32 %53, %58
  %60 = load i32, i32* @MDIO_CMD_WRITE, align 4
  %61 = load i32, i32* @MDIO_ST_C22, align 4
  %62 = call i32 @mt753x_mii_rw(%struct.gsw_mt753x* %48, i32 %49, i32 %50, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @MII_MMD_ADDR_DATA_REG, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @MDIO_CMD_WRITE, align 4
  %68 = load i32, i32* @MDIO_ST_C22, align 4
  %69 = call i32 @mt753x_mii_rw(%struct.gsw_mt753x* %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %71 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %70, i32 0, i32 1
  %72 = call i32 @mutex_unlock(i32* %71)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt753x_mii_rw(%struct.gsw_mt753x*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
