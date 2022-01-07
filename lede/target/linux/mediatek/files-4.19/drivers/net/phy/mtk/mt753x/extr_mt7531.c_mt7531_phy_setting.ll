; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_phy_setting.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_phy_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32 (%struct.gsw_mt753x*, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)* }

@PHY_DEV1F = common dso_local global i32 0, align 4
@PHY_DEV1F_REG_44 = common dso_local global i32 0, align 4
@MT753X_NUM_PHYS = common dso_local global i32 0, align 4
@PHY_DEV07 = common dso_local global i32 0, align 4
@PHY_DEV07_REG_03C = common dso_local global i32 0, align 4
@PHY_EXT_REG_14 = common dso_local global i32 0, align 4
@PHY_EN_DOWN_SHFIT = common dso_local global i32 0, align 4
@PHY_TR_REG_10 = common dso_local global i32 0, align 4
@PHY_TR_REG_12 = common dso_local global i32 0, align 4
@PHY_DEV1E = common dso_local global i32 0, align 4
@PHY_DEV1E_REG_123 = common dso_local global i32 0, align 4
@PHY_DEV1E_REG_A6 = common dso_local global i32 0, align 4
@PHY_EXT_REG_17 = common dso_local global i32 0, align 4
@PHY_LINKDOWN_POWER_SAVING_EN = common dso_local global i32 0, align 4
@PHY_DEV1E_REG_0C6 = common dso_local global i32 0, align 4
@PHY_POWER_SAVING_M = common dso_local global i32 0, align 4
@PHY_POWER_SAVING_TX = common dso_local global i32 0, align 4
@PHY_POWER_SAVING_S = common dso_local global i32 0, align 4
@PHY_DEV1E_REG_13 = common dso_local global i32 0, align 4
@PHY_DEV1E_REG_14 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsw_mt753x*)* @mt7531_phy_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7531_phy_setting(%struct.gsw_mt753x* %0) #0 {
  %2 = alloca %struct.gsw_mt753x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %2, align 8
  %5 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %6 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %5, i32 0, i32 2
  %7 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %6, align 8
  %8 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %9 = load i32, i32* @PHY_DEV1F, align 4
  %10 = load i32, i32* @PHY_DEV1F_REG_44, align 4
  %11 = call i32 %7(%struct.gsw_mt753x* %8, i32 0, i32 %9, i32 %10, i32 192)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %158, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @MT753X_NUM_PHYS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %161

16:                                               ; preds = %12
  %17 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %18 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %17, i32 0, i32 2
  %19 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %18, align 8
  %20 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @PHY_DEV07, align 4
  %23 = load i32, i32* @PHY_DEV07_REG_03C, align 4
  %24 = call i32 %19(%struct.gsw_mt753x* %20, i32 %21, i32 %22, i32 %23, i32 0)
  %25 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %26 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %25, i32 0, i32 3
  %27 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %26, align 8
  %28 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 %27(%struct.gsw_mt753x* %28, i32 %29, i32 31, i32 1)
  %31 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %32 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %31, i32 0, i32 0
  %33 = load i32 (%struct.gsw_mt753x*, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32)** %32, align 8
  %34 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @PHY_EXT_REG_14, align 4
  %37 = call i32 %33(%struct.gsw_mt753x* %34, i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @PHY_EN_DOWN_SHFIT, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %42 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %41, i32 0, i32 3
  %43 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %42, align 8
  %44 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @PHY_EXT_REG_14, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 %43(%struct.gsw_mt753x* %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %50 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %49, i32 0, i32 3
  %51 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %50, align 8
  %52 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 %51(%struct.gsw_mt753x* %52, i32 %53, i32 31, i32 21173)
  %55 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %56 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %55, i32 0, i32 3
  %57 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %56, align 8
  %58 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @PHY_TR_REG_10, align 4
  %61 = call i32 %57(%struct.gsw_mt753x* %58, i32 %59, i32 %60, i32 44974)
  %62 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %63 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %62, i32 0, i32 3
  %64 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %63, align 8
  %65 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @PHY_TR_REG_12, align 4
  %68 = call i32 %64(%struct.gsw_mt753x* %65, i32 %66, i32 %67, i32 47)
  %69 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %70 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %69, i32 0, i32 3
  %71 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %70, align 8
  %72 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @PHY_TR_REG_10, align 4
  %75 = call i32 %71(%struct.gsw_mt753x* %72, i32 %73, i32 %74, i32 36782)
  %76 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %77 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %76, i32 0, i32 3
  %78 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %77, align 8
  %79 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %80 = load i32, i32* %3, align 4
  %81 = call i32 %78(%struct.gsw_mt753x* %79, i32 %80, i32 31, i32 0)
  %82 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %83 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %82, i32 0, i32 2
  %84 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %83, align 8
  %85 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @PHY_DEV1E, align 4
  %88 = load i32, i32* @PHY_DEV1E_REG_123, align 4
  %89 = call i32 %84(%struct.gsw_mt753x* %85, i32 %86, i32 %87, i32 %88, i32 65535)
  %90 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %91 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %90, i32 0, i32 2
  %92 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %91, align 8
  %93 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @PHY_DEV1E, align 4
  %96 = load i32, i32* @PHY_DEV1E_REG_A6, align 4
  %97 = call i32 %92(%struct.gsw_mt753x* %93, i32 %94, i32 %95, i32 %96, i32 768)
  %98 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %99 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %98, i32 0, i32 0
  %100 = load i32 (%struct.gsw_mt753x*, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32)** %99, align 8
  %101 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @PHY_EXT_REG_17, align 4
  %104 = call i32 %100(%struct.gsw_mt753x* %101, i32 %102, i32 %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* @PHY_LINKDOWN_POWER_SAVING_EN, align 4
  %106 = load i32, i32* %4, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %4, align 4
  %108 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %109 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %108, i32 0, i32 3
  %110 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %109, align 8
  %111 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @PHY_EXT_REG_17, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 %110(%struct.gsw_mt753x* %111, i32 %112, i32 %113, i32 %114)
  %116 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %117 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %116, i32 0, i32 1
  %118 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %117, align 8
  %119 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* @PHY_DEV1E, align 4
  %122 = load i32, i32* @PHY_DEV1E_REG_0C6, align 4
  %123 = call i32 %118(%struct.gsw_mt753x* %119, i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* @PHY_POWER_SAVING_M, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %4, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* @PHY_POWER_SAVING_TX, align 4
  %129 = load i32, i32* @PHY_POWER_SAVING_S, align 4
  %130 = shl i32 %128, %129
  %131 = load i32, i32* %4, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %4, align 4
  %133 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %134 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %133, i32 0, i32 2
  %135 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %134, align 8
  %136 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* @PHY_DEV1E, align 4
  %139 = load i32, i32* @PHY_DEV1E_REG_0C6, align 4
  %140 = load i32, i32* %4, align 4
  %141 = call i32 %135(%struct.gsw_mt753x* %136, i32 %137, i32 %138, i32 %139, i32 %140)
  %142 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %143 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %142, i32 0, i32 2
  %144 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %143, align 8
  %145 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %146 = load i32, i32* %3, align 4
  %147 = load i32, i32* @PHY_DEV1E, align 4
  %148 = load i32, i32* @PHY_DEV1E_REG_13, align 4
  %149 = call i32 %144(%struct.gsw_mt753x* %145, i32 %146, i32 %147, i32 %148, i32 1028)
  %150 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %151 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %150, i32 0, i32 2
  %152 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %151, align 8
  %153 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* @PHY_DEV1E, align 4
  %156 = load i32, i32* @PHY_DEV1E_REG_14, align 4
  %157 = call i32 %152(%struct.gsw_mt753x* %153, i32 %154, i32 %155, i32 %156, i32 1028)
  br label %158

158:                                              ; preds = %16
  %159 = load i32, i32* %3, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %3, align 4
  br label %12

161:                                              ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
