; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_offload.c_mtk_ppe_start.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_offload.c_mtk_ppe_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { i32, i32, i32 }

@MTK_REG_PPE_TB_BASE = common dso_local global i32 0, align 4
@MTK_PPE_TBL_SZ = common dso_local global i32 0, align 4
@MTK_PPE_TB_CFG_HASH_MODE_MASK = common dso_local global i32 0, align 4
@MTK_PPE_TB_CFG_TBL_SZ_MASK = common dso_local global i32 0, align 4
@MTK_PPE_TB_CFG_HASH_MODE1 = common dso_local global i32 0, align 4
@MTK_PPE_TB_CFG_TBL_SZ_4K = common dso_local global i32 0, align 4
@MTK_REG_PPE_TB_CFG = common dso_local global i32 0, align 4
@MTK_PPE_HASH_SEED = common dso_local global i32 0, align 4
@MTK_REG_PPE_HASH_SEED = common dso_local global i32 0, align 4
@MTK_PPE_CAH_CTRL_X_MODE = common dso_local global i32 0, align 4
@MTK_PPE_TB_CFG_ENTRY_SZ_MASK = common dso_local global i32 0, align 4
@MTK_PPE_TB_CFG_SMA_MASK = common dso_local global i32 0, align 4
@MTK_PPE_TB_CFG_ENTRY_SZ_64B = common dso_local global i32 0, align 4
@MTK_PPE_TB_CFG_SMA_FWD_CPU = common dso_local global i32 0, align 4
@MTK_REG_PPE_IP_PROT_CHK = common dso_local global i32 0, align 4
@MTK_REG_PPE_CAH_CTRL = common dso_local global i32 0, align 4
@MTK_PPE_CAH_CTRL_EN = common dso_local global i32 0, align 4
@MTK_PPE_FLOW_CFG_IPV4_NAT_FRAG_EN = common dso_local global i32 0, align 4
@MTK_PPE_FLOW_CFG_IPV4_NAPT_EN = common dso_local global i32 0, align 4
@MTK_PPE_FLOW_CFG_IPV4_NAT_EN = common dso_local global i32 0, align 4
@MTK_PPE_FLOW_CFG_IPV4_GREK_EN = common dso_local global i32 0, align 4
@MTK_REG_PPE_FLOW_CFG = common dso_local global i32 0, align 4
@MTK_PPE_TB_CFG_UNBD_AGE = common dso_local global i32 0, align 4
@MTK_PPE_TB_CFG_NTU_AGE = common dso_local global i32 0, align 4
@MTK_PPE_TB_CFG_FIN_AGE = common dso_local global i32 0, align 4
@MTK_PPE_TB_CFG_UDP_AGE = common dso_local global i32 0, align 4
@MTK_PPE_TB_CFG_TCP_AGE = common dso_local global i32 0, align 4
@MTK_PPE_UNB_AGE_MNP_MASK = common dso_local global i32 0, align 4
@MTK_PPE_UNB_AGE_DLTA_MASK = common dso_local global i32 0, align 4
@MTK_PPE_UNB_AGE_MNP = common dso_local global i32 0, align 4
@MTK_PPE_UNB_AGE_DLTA = common dso_local global i32 0, align 4
@MTK_REG_PPE_UNB_AGE = common dso_local global i32 0, align 4
@MTK_PPE_BND_AGE0_NTU_DLTA_MASK = common dso_local global i32 0, align 4
@MTK_PPE_BND_AGE0_UDP_DLTA_MASK = common dso_local global i32 0, align 4
@MTK_PPE_BND_AGE0_NTU_DLTA = common dso_local global i32 0, align 4
@MTK_PPE_BND_AGE0_UDP_DLTA = common dso_local global i32 0, align 4
@MTK_REG_PPE_BND_AGE0 = common dso_local global i32 0, align 4
@MTK_PPE_BND_AGE1_FIN_DLTA_MASK = common dso_local global i32 0, align 4
@MTK_PPE_BND_AGE1_TCP_DLTA_MASK = common dso_local global i32 0, align 4
@MTK_PPE_BND_AGE1_FIN_DLTA = common dso_local global i32 0, align 4
@MTK_PPE_BND_AGE1_TCP_DLTA = common dso_local global i32 0, align 4
@MTK_REG_PPE_BND_AGE1 = common dso_local global i32 0, align 4
@MTK_PPE_TB_CFG_KA_MASK = common dso_local global i32 0, align 4
@MTK_PPE_TB_CFG_KA = common dso_local global i32 0, align 4
@MTK_PPE_KA_UDP = common dso_local global i32 0, align 4
@MTK_PPE_KA_TCP = common dso_local global i32 0, align 4
@MTK_PPE_KA_T = common dso_local global i32 0, align 4
@MTK_REG_PPE_KA = common dso_local global i32 0, align 4
@MTK_REG_PPE_BIND_LMT_0 = common dso_local global i32 0, align 4
@MTK_PPE_NTU_KA = common dso_local global i32 0, align 4
@MTK_REG_PPE_BIND_LMT_1 = common dso_local global i32 0, align 4
@MTK_PPE_BNDR_RATE_MASK = common dso_local global i32 0, align 4
@MTK_REG_PPE_BNDR = common dso_local global i32 0, align 4
@MTK_PPE_GLO_CFG_EN = common dso_local global i32 0, align 4
@MTK_REG_PPE_GLO_CFG = common dso_local global i32 0, align 4
@MTK_REG_PPE_DFT_CPORT = common dso_local global i32 0, align 4
@MTK_PPE_GLO_CFG_TTL0_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"PPE started\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_eth*)* @mtk_ppe_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_ppe_start(%struct.mtk_eth* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_eth*, align 8
  %4 = alloca i32, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %3, align 8
  %5 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %6 = call i32 @mtk_init_foe_table(%struct.mtk_eth* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %154

11:                                               ; preds = %1
  %12 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %13 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %14 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MTK_REG_PPE_TB_BASE, align 4
  %17 = call i32 @mtk_w32(%struct.mtk_eth* %12, i32 %15, i32 %16)
  %18 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %19 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MTK_PPE_TBL_SZ, align 4
  %22 = call i32 @memset(i32 %20, i32 0, i32 %21)
  %23 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %24 = load i32, i32* @MTK_PPE_TB_CFG_HASH_MODE_MASK, align 4
  %25 = load i32, i32* @MTK_PPE_TB_CFG_TBL_SZ_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MTK_PPE_TB_CFG_HASH_MODE1, align 4
  %28 = load i32, i32* @MTK_PPE_TB_CFG_TBL_SZ_4K, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @MTK_REG_PPE_TB_CFG, align 4
  %31 = call i32 @mtk_m32(%struct.mtk_eth* %23, i32 %26, i32 %29, i32 %30)
  %32 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %33 = load i32, i32* @MTK_PPE_HASH_SEED, align 4
  %34 = load i32, i32* @MTK_REG_PPE_HASH_SEED, align 4
  %35 = call i32 @mtk_w32(%struct.mtk_eth* %32, i32 %33, i32 %34)
  %36 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %37 = load i32, i32* @MTK_PPE_CAH_CTRL_X_MODE, align 4
  %38 = load i32, i32* @MTK_PPE_TB_CFG_ENTRY_SZ_MASK, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @MTK_PPE_TB_CFG_SMA_MASK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @MTK_PPE_TB_CFG_ENTRY_SZ_64B, align 4
  %43 = load i32, i32* @MTK_PPE_TB_CFG_SMA_FWD_CPU, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MTK_REG_PPE_TB_CFG, align 4
  %46 = call i32 @mtk_m32(%struct.mtk_eth* %36, i32 %41, i32 %44, i32 %45)
  %47 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %48 = load i32, i32* @MTK_REG_PPE_IP_PROT_CHK, align 4
  %49 = call i32 @mtk_w32(%struct.mtk_eth* %47, i32 -1, i32 %48)
  %50 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %51 = load i32, i32* @MTK_PPE_CAH_CTRL_X_MODE, align 4
  %52 = load i32, i32* @MTK_REG_PPE_CAH_CTRL, align 4
  %53 = call i32 @mtk_m32(%struct.mtk_eth* %50, i32 0, i32 %51, i32 %52)
  %54 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %55 = load i32, i32* @MTK_PPE_CAH_CTRL_X_MODE, align 4
  %56 = load i32, i32* @MTK_PPE_CAH_CTRL_EN, align 4
  %57 = load i32, i32* @MTK_REG_PPE_CAH_CTRL, align 4
  %58 = call i32 @mtk_m32(%struct.mtk_eth* %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %60 = load i32, i32* @MTK_PPE_FLOW_CFG_IPV4_NAT_FRAG_EN, align 4
  %61 = load i32, i32* @MTK_PPE_FLOW_CFG_IPV4_NAPT_EN, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @MTK_PPE_FLOW_CFG_IPV4_NAT_EN, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @MTK_PPE_FLOW_CFG_IPV4_GREK_EN, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @MTK_REG_PPE_FLOW_CFG, align 4
  %68 = call i32 @mtk_m32(%struct.mtk_eth* %59, i32 0, i32 %66, i32 %67)
  %69 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %70 = load i32, i32* @MTK_PPE_TB_CFG_UNBD_AGE, align 4
  %71 = load i32, i32* @MTK_PPE_TB_CFG_NTU_AGE, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @MTK_PPE_TB_CFG_FIN_AGE, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @MTK_PPE_TB_CFG_UDP_AGE, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @MTK_PPE_TB_CFG_TCP_AGE, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @MTK_REG_PPE_TB_CFG, align 4
  %80 = call i32 @mtk_m32(%struct.mtk_eth* %69, i32 0, i32 %78, i32 %79)
  %81 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %82 = load i32, i32* @MTK_PPE_UNB_AGE_MNP_MASK, align 4
  %83 = load i32, i32* @MTK_PPE_UNB_AGE_DLTA_MASK, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @MTK_PPE_UNB_AGE_MNP, align 4
  %86 = load i32, i32* @MTK_PPE_UNB_AGE_DLTA, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @MTK_REG_PPE_UNB_AGE, align 4
  %89 = call i32 @mtk_m32(%struct.mtk_eth* %81, i32 %84, i32 %87, i32 %88)
  %90 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %91 = load i32, i32* @MTK_PPE_BND_AGE0_NTU_DLTA_MASK, align 4
  %92 = load i32, i32* @MTK_PPE_BND_AGE0_UDP_DLTA_MASK, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @MTK_PPE_BND_AGE0_NTU_DLTA, align 4
  %95 = load i32, i32* @MTK_PPE_BND_AGE0_UDP_DLTA, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @MTK_REG_PPE_BND_AGE0, align 4
  %98 = call i32 @mtk_m32(%struct.mtk_eth* %90, i32 %93, i32 %96, i32 %97)
  %99 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %100 = load i32, i32* @MTK_PPE_BND_AGE1_FIN_DLTA_MASK, align 4
  %101 = load i32, i32* @MTK_PPE_BND_AGE1_TCP_DLTA_MASK, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @MTK_PPE_BND_AGE1_FIN_DLTA, align 4
  %104 = load i32, i32* @MTK_PPE_BND_AGE1_TCP_DLTA, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @MTK_REG_PPE_BND_AGE1, align 4
  %107 = call i32 @mtk_m32(%struct.mtk_eth* %99, i32 %102, i32 %105, i32 %106)
  %108 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %109 = load i32, i32* @MTK_PPE_TB_CFG_KA_MASK, align 4
  %110 = load i32, i32* @MTK_PPE_TB_CFG_KA, align 4
  %111 = load i32, i32* @MTK_REG_PPE_TB_CFG, align 4
  %112 = call i32 @mtk_m32(%struct.mtk_eth* %108, i32 %109, i32 %110, i32 %111)
  %113 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %114 = load i32, i32* @MTK_PPE_KA_UDP, align 4
  %115 = load i32, i32* @MTK_PPE_KA_TCP, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @MTK_PPE_KA_T, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @MTK_REG_PPE_KA, align 4
  %120 = call i32 @mtk_w32(%struct.mtk_eth* %113, i32 %118, i32 %119)
  %121 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %122 = load i32, i32* @MTK_REG_PPE_BIND_LMT_0, align 4
  %123 = call i32 @mtk_w32(%struct.mtk_eth* %121, i32 1073692671, i32 %122)
  %124 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %125 = load i32, i32* @MTK_PPE_NTU_KA, align 4
  %126 = or i32 %125, 16383
  %127 = load i32, i32* @MTK_REG_PPE_BIND_LMT_1, align 4
  %128 = call i32 @mtk_w32(%struct.mtk_eth* %124, i32 %126, i32 %127)
  %129 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %130 = load i32, i32* @MTK_PPE_BNDR_RATE_MASK, align 4
  %131 = load i32, i32* @MTK_REG_PPE_BNDR, align 4
  %132 = call i32 @mtk_m32(%struct.mtk_eth* %129, i32 %130, i32 1, i32 %131)
  %133 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %134 = load i32, i32* @MTK_PPE_GLO_CFG_EN, align 4
  %135 = load i32, i32* @MTK_REG_PPE_GLO_CFG, align 4
  %136 = call i32 @mtk_m32(%struct.mtk_eth* %133, i32 0, i32 %134, i32 %135)
  %137 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %138 = load i32, i32* @MTK_REG_PPE_DFT_CPORT, align 4
  %139 = call i32 @mtk_w32(%struct.mtk_eth* %137, i32 1431655765, i32 %138)
  %140 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %141 = load i32, i32* @MTK_PPE_GLO_CFG_TTL0_DROP, align 4
  %142 = load i32, i32* @MTK_REG_PPE_GLO_CFG, align 4
  %143 = call i32 @mtk_m32(%struct.mtk_eth* %140, i32 %141, i32 0, i32 %142)
  %144 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %145 = call i32 @MTK_GDMA_FWD_CFG(i32 0)
  %146 = call i32 @mtk_m32(%struct.mtk_eth* %144, i32 65535, i32 17476, i32 %145)
  %147 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %148 = call i32 @MTK_GDMA_FWD_CFG(i32 1)
  %149 = call i32 @mtk_m32(%struct.mtk_eth* %147, i32 65535, i32 17476, i32 %148)
  %150 = load %struct.mtk_eth*, %struct.mtk_eth** %3, align 8
  %151 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @dev_info(i32 %152, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %11, %9
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @mtk_init_foe_table(%struct.mtk_eth*) #1

declare dso_local i32 @mtk_w32(%struct.mtk_eth*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mtk_m32(%struct.mtk_eth*, i32, i32, i32) #1

declare dso_local i32 @MTK_GDMA_FWD_CFG(i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
