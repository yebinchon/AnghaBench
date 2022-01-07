; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_mac_port_setup.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_mac_port_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32 }
%struct.mt753x_port_cfg = type { i32, i32, i64, i64, i64 }

@MT753X_NUM_PORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"port %d is not a MAC port\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IPG_96BIT_WITH_SHORT_IPG = common dso_local global i32 0, align 4
@IPG_CFG_S = common dso_local global i32 0, align 4
@MAC_MODE = common dso_local global i32 0, align 4
@MAC_TX_EN = common dso_local global i32 0, align 4
@MAC_RX_EN = common dso_local global i32 0, align 4
@BKOFF_EN = common dso_local global i32 0, align 4
@BACKPR_EN = common dso_local global i32 0, align 4
@MAC_SPD_2500 = common dso_local global i64 0, align 8
@MAC_SPD_1000 = common dso_local global i32 0, align 4
@FORCE_MODE_LNK = common dso_local global i32 0, align 4
@FORCE_LINK = common dso_local global i32 0, align 4
@FORCE_MODE_SPD = common dso_local global i32 0, align 4
@FORCE_MODE_DPX = common dso_local global i32 0, align 4
@FORCE_MODE_RX_FC = common dso_local global i32 0, align 4
@FORCE_MODE_TX_FC = common dso_local global i32 0, align 4
@FORCE_RX_FC = common dso_local global i32 0, align 4
@FORCE_TX_FC = common dso_local global i32 0, align 4
@FORCE_SPD_S = common dso_local global i32 0, align 4
@FORCE_DPX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s is not supported by port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsw_mt753x*, i32, %struct.mt753x_port_cfg*)* @mt7531_mac_port_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7531_mac_port_setup(%struct.gsw_mt753x* %0, i32 %1, %struct.mt753x_port_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gsw_mt753x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt753x_port_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mt753x_port_cfg* %2, %struct.mt753x_port_cfg** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 5
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MT753X_NUM_PORTS, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12, %3
  %17 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %18 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %140

24:                                               ; preds = %12
  %25 = load %struct.mt753x_port_cfg*, %struct.mt753x_port_cfg** %7, align 8
  %26 = getelementptr inbounds %struct.mt753x_port_cfg, %struct.mt753x_port_cfg* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %91

29:                                               ; preds = %24
  %30 = load i32, i32* @IPG_96BIT_WITH_SHORT_IPG, align 4
  %31 = load i32, i32* @IPG_CFG_S, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* @MAC_MODE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @MAC_TX_EN, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @MAC_RX_EN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @BKOFF_EN, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @BACKPR_EN, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load %struct.mt753x_port_cfg*, %struct.mt753x_port_cfg** %7, align 8
  %44 = getelementptr inbounds %struct.mt753x_port_cfg, %struct.mt753x_port_cfg* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %90

47:                                               ; preds = %29
  %48 = load %struct.mt753x_port_cfg*, %struct.mt753x_port_cfg** %7, align 8
  %49 = getelementptr inbounds %struct.mt753x_port_cfg, %struct.mt753x_port_cfg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %9, align 4
  %51 = load %struct.mt753x_port_cfg*, %struct.mt753x_port_cfg** %7, align 8
  %52 = getelementptr inbounds %struct.mt753x_port_cfg, %struct.mt753x_port_cfg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @MAC_SPD_2500, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @MAC_SPD_1000, align 4
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %57, %47
  %60 = load i32, i32* @FORCE_MODE_LNK, align 4
  %61 = load i32, i32* @FORCE_LINK, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @FORCE_MODE_SPD, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @FORCE_MODE_DPX, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @FORCE_MODE_RX_FC, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @FORCE_MODE_TX_FC, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @FORCE_RX_FC, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @FORCE_TX_FC, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @FORCE_SPD_S, align 4
  %77 = shl i32 %75, %76
  %78 = or i32 %74, %77
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load %struct.mt753x_port_cfg*, %struct.mt753x_port_cfg** %7, align 8
  %82 = getelementptr inbounds %struct.mt753x_port_cfg, %struct.mt753x_port_cfg* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %59
  %86 = load i32, i32* @FORCE_DPX, align 4
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %85, %59
  br label %90

90:                                               ; preds = %89, %29
  br label %93

91:                                               ; preds = %24
  %92 = load i32, i32* @FORCE_MODE_LNK, align 4
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %91, %90
  %94 = load %struct.mt753x_port_cfg*, %struct.mt753x_port_cfg** %7, align 8
  %95 = getelementptr inbounds %struct.mt753x_port_cfg, %struct.mt753x_port_cfg* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %117 [
    i32 129, label %97
    i32 128, label %101
  ]

97:                                               ; preds = %93
  %98 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @mt7531_set_port_rgmii(%struct.gsw_mt753x* %98, i32 %99)
  br label %134

101:                                              ; preds = %93
  %102 = load %struct.mt753x_port_cfg*, %struct.mt753x_port_cfg** %7, align 8
  %103 = getelementptr inbounds %struct.mt753x_port_cfg, %struct.mt753x_port_cfg* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.mt753x_port_cfg*, %struct.mt753x_port_cfg** %7, align 8
  %110 = call i32 @mt7531_set_port_sgmii_force_mode(%struct.gsw_mt753x* %107, i32 %108, %struct.mt753x_port_cfg* %109)
  br label %116

111:                                              ; preds = %101
  %112 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.mt753x_port_cfg*, %struct.mt753x_port_cfg** %7, align 8
  %115 = call i32 @mt7531_set_port_sgmii_an_mode(%struct.gsw_mt753x* %112, i32 %113, %struct.mt753x_port_cfg* %114)
  br label %116

116:                                              ; preds = %111, %106
  br label %134

117:                                              ; preds = %93
  %118 = load %struct.mt753x_port_cfg*, %struct.mt753x_port_cfg** %7, align 8
  %119 = getelementptr inbounds %struct.mt753x_port_cfg, %struct.mt753x_port_cfg* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %124 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.mt753x_port_cfg*, %struct.mt753x_port_cfg** %7, align 8
  %127 = getelementptr inbounds %struct.mt753x_port_cfg, %struct.mt753x_port_cfg* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @phy_modes(i32 %128)
  %130 = load i32, i32* %6, align 4
  %131 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %122, %117
  %133 = load i32, i32* @FORCE_MODE_LNK, align 4
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %132, %116, %97
  %135 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @PMCR(i32 %136)
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %135, i32 %137, i32 %138)
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %134, %16
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @dev_info(i32, i8*, i32, ...) #1

declare dso_local i32 @mt7531_set_port_rgmii(%struct.gsw_mt753x*, i32) #1

declare dso_local i32 @mt7531_set_port_sgmii_force_mode(%struct.gsw_mt753x*, i32, %struct.mt753x_port_cfg*) #1

declare dso_local i32 @mt7531_set_port_sgmii_an_mode(%struct.gsw_mt753x*, i32, %struct.mt753x_port_cfg*) #1

declare dso_local i32 @phy_modes(i32) #1

declare dso_local i32 @mt753x_reg_write(%struct.gsw_mt753x*, i32, i32) #1

declare dso_local i32 @PMCR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
