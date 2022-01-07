; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_mdio.c_mt753x_mmd_write.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_mdio.c_mt753x_mmd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32, i32 }

@MT753X_NUM_PHYS = common dso_local global i32 0, align 4
@MT753X_SMI_ADDR_MASK = common dso_local global i32 0, align 4
@MDIO_CMD_ADDR = common dso_local global i32 0, align 4
@MDIO_ST_C45 = common dso_local global i32 0, align 4
@MDIO_CMD_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt753x_mmd_write(%struct.gsw_mt753x* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @MDIO_CMD_ADDR, align 4
  %31 = load i32, i32* @MDIO_ST_C45, align 4
  %32 = call i32 @mt753x_mii_rw(%struct.gsw_mt753x* %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @MDIO_CMD_WRITE, align 4
  %38 = load i32, i32* @MDIO_ST_C45, align 4
  %39 = call i32 @mt753x_mii_rw(%struct.gsw_mt753x* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %41 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
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
