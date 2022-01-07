; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7530.c_mt7530_phy_setting.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7530.c_mt7530_phy_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32 (%struct.gsw_mt753x*, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)* }

@MT753X_NUM_PHYS = common dso_local global i32 0, align 4
@PHY_DEV07 = common dso_local global i32 0, align 4
@PHY_DEV07_REG_03C = common dso_local global i32 0, align 4
@PHY_EXT_REG_14 = common dso_local global i32 0, align 4
@PHY_EN_DOWN_SHFIT = common dso_local global i32 0, align 4
@PHY_TR_REG_10 = common dso_local global i32 0, align 4
@PHY_TR_REG_12 = common dso_local global i32 0, align 4
@PHY_LPI_REG_11 = common dso_local global i32 0, align 4
@PHY_DEV1E = common dso_local global i32 0, align 4
@PHY_DEV1E_REG_123 = common dso_local global i32 0, align 4
@PHY_DEV1E_REG_A6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsw_mt753x*)* @mt7530_phy_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7530_phy_setting(%struct.gsw_mt753x* %0) #0 {
  %2 = alloca %struct.gsw_mt753x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %104, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MT753X_NUM_PHYS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %107

9:                                                ; preds = %5
  %10 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %11 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %10, i32 0, i32 1
  %12 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %11, align 8
  %13 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @PHY_DEV07, align 4
  %16 = load i32, i32* @PHY_DEV07_REG_03C, align 4
  %17 = call i32 %12(%struct.gsw_mt753x* %13, i32 %14, i32 %15, i32 %16, i32 0)
  %18 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %19 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %18, i32 0, i32 2
  %20 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %19, align 8
  %21 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 %20(%struct.gsw_mt753x* %21, i32 %22, i32 31, i32 1)
  %24 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %25 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %24, i32 0, i32 0
  %26 = load i32 (%struct.gsw_mt753x*, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32)** %25, align 8
  %27 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @PHY_EXT_REG_14, align 4
  %30 = call i32 %26(%struct.gsw_mt753x* %27, i32 %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @PHY_EN_DOWN_SHFIT, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %35 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %34, i32 0, i32 2
  %36 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %35, align 8
  %37 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @PHY_EXT_REG_14, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 %36(%struct.gsw_mt753x* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %43 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %42, i32 0, i32 2
  %44 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %43, align 8
  %45 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 %44(%struct.gsw_mt753x* %45, i32 %46, i32 31, i32 21173)
  %48 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %49 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %48, i32 0, i32 2
  %50 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %49, align 8
  %51 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @PHY_TR_REG_10, align 4
  %54 = call i32 %50(%struct.gsw_mt753x* %51, i32 %52, i32 %53, i32 44974)
  %55 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %56 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %55, i32 0, i32 2
  %57 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %56, align 8
  %58 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @PHY_TR_REG_12, align 4
  %61 = call i32 %57(%struct.gsw_mt753x* %58, i32 %59, i32 %60, i32 47)
  %62 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %63 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %62, i32 0, i32 2
  %64 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %63, align 8
  %65 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @PHY_TR_REG_10, align 4
  %68 = call i32 %64(%struct.gsw_mt753x* %65, i32 %66, i32 %67, i32 36782)
  %69 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %70 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %69, i32 0, i32 2
  %71 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %70, align 8
  %72 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 %71(%struct.gsw_mt753x* %72, i32 %73, i32 31, i32 3)
  %75 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %76 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %75, i32 0, i32 2
  %77 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %76, align 8
  %78 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @PHY_LPI_REG_11, align 4
  %81 = call i32 %77(%struct.gsw_mt753x* %78, i32 %79, i32 %80, i32 75)
  %82 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %83 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %82, i32 0, i32 2
  %84 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %83, align 8
  %85 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %86 = load i32, i32* %3, align 4
  %87 = call i32 %84(%struct.gsw_mt753x* %85, i32 %86, i32 31, i32 0)
  %88 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %89 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %88, i32 0, i32 1
  %90 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %89, align 8
  %91 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @PHY_DEV1E, align 4
  %94 = load i32, i32* @PHY_DEV1E_REG_123, align 4
  %95 = call i32 %90(%struct.gsw_mt753x* %91, i32 %92, i32 %93, i32 %94, i32 65535)
  %96 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %97 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %96, i32 0, i32 1
  %98 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %97, align 8
  %99 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @PHY_DEV1E, align 4
  %102 = load i32, i32* @PHY_DEV1E_REG_A6, align 4
  %103 = call i32 %98(%struct.gsw_mt753x* %99, i32 %100, i32 %101, i32 %102, i32 768)
  br label %104

104:                                              ; preds = %9
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %3, align 4
  br label %5

107:                                              ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
