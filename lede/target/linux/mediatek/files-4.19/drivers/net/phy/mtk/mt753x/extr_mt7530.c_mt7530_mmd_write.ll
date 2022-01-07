; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7530.c_mt7530_mmd_write.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7530.c_mt7530_mmd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 (%struct.TYPE_5__*, i32, i32, i32)* }

@MT753X_NUM_PHYS = common dso_local global i32 0, align 4
@MT753X_SMI_ADDR_MASK = common dso_local global i32 0, align 4
@MII_MMD_ACC_CTL_REG = common dso_local global i32 0, align 4
@MMD_ADDR = common dso_local global i32 0, align 4
@MMD_CMD_S = common dso_local global i32 0, align 4
@MMD_DEVAD_S = common dso_local global i32 0, align 4
@MMD_DEVAD_M = common dso_local global i32 0, align 4
@MII_MMD_ADDR_DATA_REG = common dso_local global i32 0, align 4
@MMD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsw_mt753x*, i32, i32, i32, i32)* @mt7530_mmd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7530_mmd_write(%struct.gsw_mt753x* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  %20 = load i32, i32* @MT753X_SMI_ADDR_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %14, %5
  %23 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %24 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %29 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32)** %31, align 8
  %33 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %34 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @MII_MMD_ACC_CTL_REG, align 4
  %38 = load i32, i32* @MMD_ADDR, align 4
  %39 = load i32, i32* @MMD_CMD_S, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @MMD_DEVAD_S, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* @MMD_DEVAD_M, align 4
  %45 = and i32 %43, %44
  %46 = or i32 %40, %45
  %47 = call i32 %32(%struct.TYPE_5__* %35, i32 %36, i32 %37, i32 %46)
  %48 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %49 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32)** %51, align 8
  %53 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %54 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @MII_MMD_ADDR_DATA_REG, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 %52(%struct.TYPE_5__* %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %61 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32)** %63, align 8
  %65 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %66 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @MII_MMD_ACC_CTL_REG, align 4
  %70 = load i32, i32* @MMD_DATA, align 4
  %71 = load i32, i32* @MMD_CMD_S, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @MMD_DEVAD_S, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* @MMD_DEVAD_M, align 4
  %77 = and i32 %75, %76
  %78 = or i32 %72, %77
  %79 = call i32 %64(%struct.TYPE_5__* %67, i32 %68, i32 %69, i32 %78)
  %80 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %81 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %80, i32 0, i32 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32 (%struct.TYPE_5__*, i32, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32, i32)** %83, align 8
  %85 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %86 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @MII_MMD_ADDR_DATA_REG, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 %84(%struct.TYPE_5__* %87, i32 %88, i32 %89, i32 %90)
  %92 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %6, align 8
  %93 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
