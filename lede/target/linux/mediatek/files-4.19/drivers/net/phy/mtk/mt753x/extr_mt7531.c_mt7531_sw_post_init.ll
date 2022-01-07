; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_sw_post_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_sw_post_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)* }

@PHY_DEV1F = common dso_local global i32 0, align 4
@PHY_DEV1F_REG_403 = common dso_local global i32 0, align 4
@PHY_EN_BYPASS_MODE = common dso_local global i32 0, align 4
@POWER_ON_OFF = common dso_local global i32 0, align 4
@MT753X_NUM_PHYS = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ISOLATE = common dso_local global i32 0, align 4
@CHIP_REV = common dso_local global i32 0, align 4
@CHIP_REV_M = common dso_local global i32 0, align 4
@CHIP_REV_E1 = common dso_local global i32 0, align 4
@GBE_EFUSE = common dso_local global i32 0, align 4
@GBE_SEL_EFUSE_EN = common dso_local global i32 0, align 4
@GBE_EFUSE_SETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsw_mt753x*)* @mt7531_sw_post_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7531_sw_post_init(%struct.gsw_mt753x* %0) #0 {
  %2 = alloca %struct.gsw_mt753x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %2, align 8
  %5 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %6 = call i32 @mt7531_phy_pll_setup(%struct.gsw_mt753x* %5)
  %7 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %8 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %7, i32 0, i32 0
  %9 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %8, align 8
  %10 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %11 = load i32, i32* @PHY_DEV1F, align 4
  %12 = load i32, i32* @PHY_DEV1F_REG_403, align 4
  %13 = call i32 %9(%struct.gsw_mt753x* %10, i32 0, i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @PHY_EN_BYPASS_MODE, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @POWER_ON_OFF, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %22 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %21, i32 0, i32 2
  %23 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %22, align 8
  %24 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %25 = load i32, i32* @PHY_DEV1F, align 4
  %26 = load i32, i32* @PHY_DEV1F_REG_403, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 %23(%struct.gsw_mt753x* %24, i32 0, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %30 = call i32 @mt7531_phy_setting(%struct.gsw_mt753x* %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %55, %1
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @MT753X_NUM_PHYS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %31
  %36 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %37 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %36, i32 0, i32 1
  %38 = load i32 (%struct.gsw_mt753x*, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32)** %37, align 8
  %39 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @MII_BMCR, align 4
  %42 = call i32 %38(%struct.gsw_mt753x* %39, i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @BMCR_ISOLATE, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %48 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %47, i32 0, i32 3
  %49 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %48, align 8
  %50 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @MII_BMCR, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 %49(%struct.gsw_mt753x* %50, i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %35
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %31

58:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %67, %58
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @MT753X_NUM_PHYS, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @mt7531_adjust_line_driving(%struct.gsw_mt753x* %64, i32 %65)
  br label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %59

70:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %79, %70
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @MT753X_NUM_PHYS, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @mt7531_eee_setting(%struct.gsw_mt753x* %76, i32 %77)
  br label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %71

82:                                               ; preds = %71
  %83 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %84 = load i32, i32* @CHIP_REV, align 4
  %85 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %83, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* @CHIP_REV_M, align 4
  %87 = load i32, i32* %4, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @CHIP_REV_E1, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %94 = call i32 @mt7531_internal_phy_calibration(%struct.gsw_mt753x* %93)
  br label %127

95:                                               ; preds = %82
  %96 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %97 = load i32, i32* @GBE_EFUSE, align 4
  %98 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %96, i32 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @GBE_SEL_EFUSE_EN, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %95
  %104 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %105 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %104, i32 0, i32 0
  %106 = load i32 (%struct.gsw_mt753x*, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32)** %105, align 8
  %107 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %108 = load i32, i32* @PHY_DEV1F, align 4
  %109 = load i32, i32* @PHY_DEV1F_REG_403, align 4
  %110 = call i32 %106(%struct.gsw_mt753x* %107, i32 0, i32 %108, i32 %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* @GBE_EFUSE_SETTING, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %4, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %4, align 4
  %115 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %116 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %115, i32 0, i32 2
  %117 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %116, align 8
  %118 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %119 = load i32, i32* @PHY_DEV1F, align 4
  %120 = load i32, i32* @PHY_DEV1F_REG_403, align 4
  %121 = load i32, i32* %4, align 4
  %122 = call i32 %117(%struct.gsw_mt753x* %118, i32 0, i32 %119, i32 %120, i32 %121)
  br label %126

123:                                              ; preds = %95
  %124 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %125 = call i32 @mt7531_internal_phy_calibration(%struct.gsw_mt753x* %124)
  br label %126

126:                                              ; preds = %123, %103
  br label %127

127:                                              ; preds = %126, %92
  ret i32 0
}

declare dso_local i32 @mt7531_phy_pll_setup(%struct.gsw_mt753x*) #1

declare dso_local i32 @mt7531_phy_setting(%struct.gsw_mt753x*) #1

declare dso_local i32 @mt7531_adjust_line_driving(%struct.gsw_mt753x*, i32) #1

declare dso_local i32 @mt7531_eee_setting(%struct.gsw_mt753x*, i32) #1

declare dso_local i32 @mt753x_reg_read(%struct.gsw_mt753x*, i32) #1

declare dso_local i32 @mt7531_internal_phy_calibration(%struct.gsw_mt753x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
