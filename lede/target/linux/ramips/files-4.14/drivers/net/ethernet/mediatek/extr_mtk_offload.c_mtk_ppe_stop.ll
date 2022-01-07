; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_offload.c_mtk_ppe_stop.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_offload.c_mtk_ppe_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@MTK_PPE_ENTRY_CNT = common dso_local global i32 0, align 4
@FOE_STATE_INVALID = common dso_local global i32 0, align 4
@MTK_PPE_CAH_CTRL_X_MODE = common dso_local global i32 0, align 4
@MTK_REG_PPE_CAH_CTRL = common dso_local global i32 0, align 4
@MTK_PPE_CAH_CTRL_EN = common dso_local global i32 0, align 4
@MTK_PPE_GLO_CFG_EN = common dso_local global i32 0, align 4
@MTK_REG_PPE_GLO_CFG = common dso_local global i32 0, align 4
@MTK_PPE_FLOW_CFG_IPV4_NAT_FRAG_EN = common dso_local global i32 0, align 4
@MTK_PPE_FLOW_CFG_IPV4_NAPT_EN = common dso_local global i32 0, align 4
@MTK_PPE_FLOW_CFG_IPV4_NAT_EN = common dso_local global i32 0, align 4
@MTK_PPE_FLOW_CFG_FUC_FOE = common dso_local global i32 0, align 4
@MTK_PPE_FLOW_CFG_FMC_FOE = common dso_local global i32 0, align 4
@MTK_REG_PPE_FLOW_CFG = common dso_local global i32 0, align 4
@MTK_PPE_TB_CFG_FIN_AGE = common dso_local global i32 0, align 4
@MTK_PPE_TB_CFG_UDP_AGE = common dso_local global i32 0, align 4
@MTK_PPE_TB_CFG_TCP_AGE = common dso_local global i32 0, align 4
@MTK_PPE_TB_CFG_UNBD_AGE = common dso_local global i32 0, align 4
@MTK_PPE_TB_CFG_NTU_AGE = common dso_local global i32 0, align 4
@MTK_REG_PPE_TB_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"0x100 = 0x%x, 0x10c = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"reset pse\0A\00", align 1
@MTK_REG_PPE_TB_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_eth*)* @mtk_ppe_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_ppe_stop(%struct.mtk_eth* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_eth*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %8 = call i32 @MTK_GDMA_FWD_CFG(i32 0)
  %9 = call i32 @mtk_m32(%struct.mtk_eth* %7, i32 65535, i32 30583, i32 %8)
  %10 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %11 = call i32 @MTK_GDMA_FWD_CFG(i32 1)
  %12 = call i32 @mtk_m32(%struct.mtk_eth* %10, i32 65535, i32 30583, i32 %11)
  %13 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %14 = call i64 @mtk_ppe_busy_wait(%struct.mtk_eth* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ETIMEDOUT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %123

19:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %34, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MTK_PPE_ENTRY_CNT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i32, i32* @FOE_STATE_INVALID, align 4
  %26 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %27 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %25, i32* %33, align 4
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %20

37:                                               ; preds = %20
  %38 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %39 = load i32, i32* @MTK_PPE_CAH_CTRL_X_MODE, align 4
  %40 = load i32, i32* @MTK_REG_PPE_CAH_CTRL, align 4
  %41 = call i32 @mtk_m32(%struct.mtk_eth* %38, i32 0, i32 %39, i32 %40)
  %42 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %43 = load i32, i32* @MTK_PPE_CAH_CTRL_X_MODE, align 4
  %44 = load i32, i32* @MTK_PPE_CAH_CTRL_EN, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @MTK_REG_PPE_CAH_CTRL, align 4
  %47 = call i32 @mtk_m32(%struct.mtk_eth* %42, i32 %45, i32 0, i32 %46)
  %48 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %49 = load i32, i32* @MTK_PPE_GLO_CFG_EN, align 4
  %50 = load i32, i32* @MTK_REG_PPE_GLO_CFG, align 4
  %51 = call i32 @mtk_m32(%struct.mtk_eth* %48, i32 %49, i32 0, i32 %50)
  %52 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %53 = load i32, i32* @MTK_PPE_FLOW_CFG_IPV4_NAT_FRAG_EN, align 4
  %54 = load i32, i32* @MTK_PPE_FLOW_CFG_IPV4_NAPT_EN, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @MTK_PPE_FLOW_CFG_IPV4_NAT_EN, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @MTK_PPE_FLOW_CFG_FUC_FOE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @MTK_PPE_FLOW_CFG_FMC_FOE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @MTK_REG_PPE_FLOW_CFG, align 4
  %63 = call i32 @mtk_m32(%struct.mtk_eth* %52, i32 %61, i32 0, i32 %62)
  %64 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %65 = load i32, i32* @MTK_PPE_TB_CFG_FIN_AGE, align 4
  %66 = load i32, i32* @MTK_PPE_TB_CFG_UDP_AGE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @MTK_PPE_TB_CFG_TCP_AGE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @MTK_PPE_TB_CFG_UNBD_AGE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @MTK_PPE_TB_CFG_NTU_AGE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @MTK_REG_PPE_TB_CFG, align 4
  %75 = call i32 @mtk_m32(%struct.mtk_eth* %64, i32 0, i32 %73, i32 %74)
  %76 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %77 = call i32 @mtk_r32(%struct.mtk_eth* %76, i32 256)
  store i32 %77, i32* %4, align 4
  %78 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %79 = call i32 @mtk_r32(%struct.mtk_eth* %78, i32 268)
  store i32 %79, i32* %5, align 4
  %80 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %81 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 (i32, i8*, ...) @dev_info(i32 %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32, i32* %4, align 4
  %87 = and i32 %86, 65280
  %88 = ashr i32 %87, 8
  %89 = load i32, i32* %4, align 4
  %90 = and i32 %89, 255
  %91 = icmp sge i32 %88, %90
  br i1 %91, label %99, label %92

92:                                               ; preds = %37
  %93 = load i32, i32* %4, align 4
  %94 = and i32 %93, 65280
  %95 = ashr i32 %94, 8
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %96, 255
  %98 = icmp sge i32 %95, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %92, %37
  %100 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %101 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i32, i8*, ...) @dev_info(i32 %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %104 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %105 = call i32 @mtk_w32(%struct.mtk_eth* %104, i32 1, i32 4)
  br label %106

106:                                              ; preds = %99, %92
  %107 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %108 = load i32, i32* @MTK_REG_PPE_TB_BASE, align 4
  %109 = call i32 @mtk_w32(%struct.mtk_eth* %107, i32 0, i32 %108)
  %110 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %111 = call i64 @mtk_ppe_busy_wait(%struct.mtk_eth* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load i32, i32* @ETIMEDOUT, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %123

116:                                              ; preds = %106
  %117 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %118 = call i32 @MTK_GDMA_FWD_CFG(i32 0)
  %119 = call i32 @mtk_m32(%struct.mtk_eth* %117, i32 65535, i32 21845, i32 %118)
  %120 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %121 = call i32 @MTK_GDMA_FWD_CFG(i32 1)
  %122 = call i32 @mtk_m32(%struct.mtk_eth* %120, i32 65535, i32 21845, i32 %121)
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %116, %113, %16
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @mtk_m32(%struct.mtk_eth*, i32, i32, i32) #1

declare dso_local i32 @MTK_GDMA_FWD_CFG(i32) #1

declare dso_local i64 @mtk_ppe_busy_wait(%struct.mtk_eth*) #1

declare dso_local i32 @mtk_r32(%struct.mtk_eth*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @mtk_w32(%struct.mtk_eth*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
