; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_set_port_sgmii_an_mode.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_set_port_sgmii_an_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32 }
%struct.mt753x_port_cfg = type { i32 }

@MT753X_NUM_PORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"port %d is not a SGMII port\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RG_TPHY_SPEED_1000 = common dso_local global i32 0, align 4
@RG_TPHY_SPEED_2500 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"invalid SGMII speed idx %d for port %d\0A\00", align 1
@RG_TPHY_SPEED_M = common dso_local global i32 0, align 4
@RG_TPHY_SPEED_S = common dso_local global i32 0, align 4
@SGMII_REMOTE_FAULT_DIS = common dso_local global i32 0, align 4
@SGMII_AN_RESTART = common dso_local global i32 0, align 4
@SGMII_LINK_STATUS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsw_mt753x*, i32, %struct.mt753x_port_cfg*)* @mt7531_set_port_sgmii_an_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7531_set_port_sgmii_an_mode(%struct.gsw_mt753x* %0, i32 %1, %struct.mt753x_port_cfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gsw_mt753x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt753x_port_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mt753x_port_cfg* %2, %struct.mt753x_port_cfg** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MT753X_NUM_PORTS, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15, %3
  %20 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %21 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %114

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %28, 5
  store i32 %29, i32* %9, align 4
  %30 = load %struct.mt753x_port_cfg*, %struct.mt753x_port_cfg** %7, align 8
  %31 = getelementptr inbounds %struct.mt753x_port_cfg, %struct.mt753x_port_cfg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %37 [
    i32 129, label %33
    i32 128, label %35
  ]

33:                                               ; preds = %27
  %34 = load i32, i32* @RG_TPHY_SPEED_1000, align 4
  store i32 %34, i32* %8, align 4
  br label %47

35:                                               ; preds = %27
  %36 = load i32, i32* @RG_TPHY_SPEED_2500, align 4
  store i32 %36, i32* %8, align 4
  br label %47

37:                                               ; preds = %27
  %38 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %39 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mt753x_port_cfg*, %struct.mt753x_port_cfg** %7, align 8
  %42 = getelementptr inbounds %struct.mt753x_port_cfg, %struct.mt753x_port_cfg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* @RG_TPHY_SPEED_1000, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %37, %35, %33
  %48 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @PHYA_CTRL_SIGNAL3(i32 %49)
  %51 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %48, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* @RG_TPHY_SPEED_M, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @RG_TPHY_SPEED_S, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @PHYA_CTRL_SIGNAL3(i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %61, i32 %63, i32 %64)
  %66 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @SGMII_MODE(i32 %67)
  %69 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %66, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* @SGMII_REMOTE_FAULT_DIS, align 4
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %10, align 4
  %73 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @SGMII_MODE(i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %73, i32 %75, i32 %76)
  %78 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @PCS_CONTROL_1(i32 %79)
  %81 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %78, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* @SGMII_AN_RESTART, align 4
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @PCS_CONTROL_1(i32 %86)
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %85, i32 %87, i32 %88)
  store i32 2000000, i32* %12, align 4
  %90 = call i32 (...) @ktime_get()
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @ktime_add_us(i32 %90, i32 %91)
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %47, %112
  %94 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @PCS_CONTROL_1(i32 %95)
  %97 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %94, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* @SGMII_LINK_STATUS, align 4
  %99 = load i32, i32* %10, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %113

104:                                              ; preds = %93
  %105 = call i32 (...) @ktime_get()
  %106 = load i32, i32* %11, align 4
  %107 = call i64 @ktime_compare(i32 %105, i32 %106)
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* @ETIMEDOUT, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %114

112:                                              ; preds = %104
  br label %93

113:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %109, %19
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @dev_info(i32, i8*, i32, ...) #1

declare dso_local i32 @mt753x_reg_read(%struct.gsw_mt753x*, i32) #1

declare dso_local i32 @PHYA_CTRL_SIGNAL3(i32) #1

declare dso_local i32 @mt753x_reg_write(%struct.gsw_mt753x*, i32, i32) #1

declare dso_local i32 @SGMII_MODE(i32) #1

declare dso_local i32 @PCS_CONTROL_1(i32) #1

declare dso_local i32 @ktime_add_us(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @ktime_compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
