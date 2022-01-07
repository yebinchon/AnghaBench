; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_spuravoid_pllupdate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_pmu_spuravoid_pllupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.bcma_bus* }
%struct.bcma_bus = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@__const.bcma_pmu_spuravoid_pllupdate.bcm5357_bcm43236_p1div = private unnamed_addr constant [3 x i32] [i32 1, i32 5, i32 5], align 4
@__const.bcma_pmu_spuravoid_pllupdate.bcm5357_bcm43236_ndiv = private unnamed_addr constant [3 x i32] [i32 48, i32 246, i32 252], align 4
@BCMA_CC_PMU_PLLCTL_ADDR = common dso_local global i32 0, align 4
@BCMA_CC_PMU_PLL_CTL0 = common dso_local global i32 0, align 4
@BCMA_CC_PMU_PLLCTL_DATA = common dso_local global i32 0, align 4
@BCMA_CC_PMU1_PLL0_PC0_P1DIV_MASK = common dso_local global i32 0, align 4
@BCMA_CC_PMU1_PLL0_PC0_P1DIV_SHIFT = common dso_local global i32 0, align 4
@BCMA_CC_PMU_PLL_CTL2 = common dso_local global i32 0, align 4
@BCMA_CC_PMU1_PLL0_PC2_NDIV_INT_MASK = common dso_local global i32 0, align 4
@BCMA_CC_PMU1_PLL0_PC2_NDIV_INT_SHIFT = common dso_local global i32 0, align 4
@BCMA_CC_PMU_CTL_PLL_UPD = common dso_local global i32 0, align 4
@BCMA_CC_PMU_PLL_CTL1 = common dso_local global i32 0, align 4
@BCMA_CC_PMU_PLL_CTL3 = common dso_local global i32 0, align 4
@BCMA_CC_PMU_PLL_CTL4 = common dso_local global i32 0, align 4
@BCMA_CC_PMU_PLL_CTL5 = common dso_local global i32 0, align 4
@BCMA_CC_PMU_CTL_NOILPONW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Unknown spuravoidance settings for chip 0x%04X, not changing PLL\0A\00", align 1
@BCMA_CC_PMU_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcma_pmu_spuravoid_pllupdate(%struct.bcma_drv_cc* %0, i32 %1) #0 {
  %3 = alloca %struct.bcma_drv_cc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca %struct.bcma_bus*, align 8
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast ([3 x i32]* @__const.bcma_pmu_spuravoid_pllupdate.bcm5357_bcm43236_p1div to i8*), i64 12, i1 false)
  %11 = bitcast [3 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast ([3 x i32]* @__const.bcma_pmu_spuravoid_pllupdate.bcm5357_bcm43236_ndiv to i8*), i64 12, i1 false)
  %12 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %13 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.bcma_bus*, %struct.bcma_bus** %15, align 8
  store %struct.bcma_bus* %16, %struct.bcma_bus** %9, align 8
  %17 = load %struct.bcma_bus*, %struct.bcma_bus** %9, align 8
  %18 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %255 [
    i32 129, label %21
    i32 130, label %21
    i32 128, label %21
    i32 137, label %94
    i32 134, label %94
    i32 141, label %124
    i32 140, label %124
    i32 136, label %124
    i32 133, label %167
    i32 131, label %167
    i32 132, label %167
    i32 143, label %212
    i32 142, label %212
    i32 139, label %212
    i32 138, label %212
    i32 135, label %212
  ]

21:                                               ; preds = %2, %2, %2
  %22 = load %struct.bcma_bus*, %struct.bcma_bus** %9, align 8
  %23 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 129
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load %struct.bcma_bus*, %struct.bcma_bus** %9, align 8
  %29 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 130
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.bcma_bus*, %struct.bcma_bus** %9, align 8
  %35 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 128
  br label %39

39:                                               ; preds = %33, %27, %21
  %40 = phi i1 [ true, %27 ], [ true, %21 ], [ %38, %33 ]
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 6, i32 0
  store i32 %42, i32* %6, align 4
  %43 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %44 = load i32, i32* @BCMA_CC_PMU_PLLCTL_ADDR, align 4
  %45 = load i32, i32* @BCMA_CC_PMU_PLL_CTL0, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i32 @bcma_pmu_write32(%struct.bcma_drv_cc* %43, i32 %44, i32 %47)
  %49 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %50 = load i32, i32* @BCMA_CC_PMU_PLLCTL_DATA, align 4
  %51 = call i32 @bcma_pmu_read32(%struct.bcma_drv_cc* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @BCMA_CC_PMU1_PLL0_PC0_P1DIV_MASK, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BCMA_CC_PMU1_PLL0_PC0_P1DIV_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %65 = load i32, i32* @BCMA_CC_PMU_PLLCTL_DATA, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @bcma_pmu_write32(%struct.bcma_drv_cc* %64, i32 %65, i32 %66)
  %68 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %69 = load i32, i32* @BCMA_CC_PMU_PLLCTL_ADDR, align 4
  %70 = load i32, i32* @BCMA_CC_PMU_PLL_CTL2, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %70, %71
  %73 = call i32 @bcma_pmu_write32(%struct.bcma_drv_cc* %68, i32 %69, i32 %72)
  %74 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %75 = load i32, i32* @BCMA_CC_PMU_PLLCTL_DATA, align 4
  %76 = call i32 @bcma_pmu_read32(%struct.bcma_drv_cc* %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* @BCMA_CC_PMU1_PLL0_PC2_NDIV_INT_MASK, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @BCMA_CC_PMU1_PLL0_PC2_NDIV_INT_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %90 = load i32, i32* @BCMA_CC_PMU_PLLCTL_DATA, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @bcma_pmu_write32(%struct.bcma_drv_cc* %89, i32 %90, i32 %91)
  %93 = load i32, i32* @BCMA_CC_PMU_CTL_PLL_UPD, align 4
  store i32 %93, i32* %5, align 4
  br label %262

94:                                               ; preds = %2, %2
  %95 = load i32, i32* %4, align 4
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %99 = load i32, i32* @BCMA_CC_PMU_PLL_CTL0, align 4
  %100 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %98, i32 %99, i32 290455572)
  %101 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %102 = load i32, i32* @BCMA_CC_PMU_PLL_CTL2, align 4
  %103 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %101, i32 %102, i32 264243720)
  br label %122

104:                                              ; preds = %94
  %105 = load i32, i32* %4, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %109 = load i32, i32* @BCMA_CC_PMU_PLL_CTL0, align 4
  %110 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %108, i32 %109, i32 290455572)
  %111 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %112 = load i32, i32* @BCMA_CC_PMU_PLL_CTL2, align 4
  %113 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %111, i32 %112, i32 257952264)
  br label %121

114:                                              ; preds = %104
  %115 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %116 = load i32, i32* @BCMA_CC_PMU_PLL_CTL0, align 4
  %117 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %115, i32 %116, i32 286261268)
  %118 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %119 = load i32, i32* @BCMA_CC_PMU_PLL_CTL2, align 4
  %120 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %118, i32 %119, i32 50334216)
  br label %121

121:                                              ; preds = %114, %107
  br label %122

122:                                              ; preds = %121, %97
  %123 = load i32, i32* @BCMA_CC_PMU_CTL_PLL_UPD, align 4
  store i32 %123, i32* %5, align 4
  br label %262

124:                                              ; preds = %2, %2, %2
  %125 = load i32, i32* %4, align 4
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %146

127:                                              ; preds = %124
  %128 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %129 = load i32, i32* @BCMA_CC_PMU_PLL_CTL0, align 4
  %130 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %128, i32 %129, i32 290455568)
  %131 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %132 = load i32, i32* @BCMA_CC_PMU_PLL_CTL1, align 4
  %133 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %131, i32 %132, i32 789510)
  %134 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %135 = load i32, i32* @BCMA_CC_PMU_PLL_CTL2, align 4
  %136 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %134, i32 %135, i32 257952264)
  %137 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %138 = load i32, i32* @BCMA_CC_PMU_PLL_CTL3, align 4
  %139 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %137, i32 %138, i32 0)
  %140 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %141 = load i32, i32* @BCMA_CC_PMU_PLL_CTL4, align 4
  %142 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %140, i32 %141, i32 536996128)
  %143 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %144 = load i32, i32* @BCMA_CC_PMU_PLL_CTL5, align 4
  %145 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %143, i32 %144, i32 -2004318187)
  br label %165

146:                                              ; preds = %124
  %147 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %148 = load i32, i32* @BCMA_CC_PMU_PLL_CTL0, align 4
  %149 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %147, i32 %148, i32 286261264)
  %150 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %151 = load i32, i32* @BCMA_CC_PMU_PLL_CTL1, align 4
  %152 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %150, i32 %151, i32 789510)
  %153 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %154 = load i32, i32* @BCMA_CC_PMU_PLL_CTL2, align 4
  %155 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %153, i32 %154, i32 50334216)
  %156 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %157 = load i32, i32* @BCMA_CC_PMU_PLL_CTL3, align 4
  %158 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %156, i32 %157, i32 0)
  %159 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %160 = load i32, i32* @BCMA_CC_PMU_PLL_CTL4, align 4
  %161 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %159, i32 %160, i32 536872384)
  %162 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %163 = load i32, i32* @BCMA_CC_PMU_PLL_CTL5, align 4
  %164 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %162, i32 %163, i32 -2004318187)
  br label %165

165:                                              ; preds = %146, %127
  %166 = load i32, i32* @BCMA_CC_PMU_CTL_PLL_UPD, align 4
  store i32 %166, i32* %5, align 4
  br label %262

167:                                              ; preds = %2, %2, %2
  %168 = load i32, i32* %4, align 4
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %189

170:                                              ; preds = %167
  %171 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %172 = load i32, i32* @BCMA_CC_PMU_PLL_CTL0, align 4
  %173 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %171, i32 %172, i32 290455648)
  %174 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %175 = load i32, i32* @BCMA_CC_PMU_PLL_CTL1, align 4
  %176 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %174, i32 %175, i32 135007238)
  %177 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %178 = load i32, i32* @BCMA_CC_PMU_PLL_CTL2, align 4
  %179 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %177, i32 %178, i32 257949696)
  %180 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %181 = load i32, i32* @BCMA_CC_PMU_PLL_CTL3, align 4
  %182 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %180, i32 %181, i32 0)
  %183 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %184 = load i32, i32* @BCMA_CC_PMU_PLL_CTL4, align 4
  %185 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %183, i32 %184, i32 536996132)
  %186 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %187 = load i32, i32* @BCMA_CC_PMU_PLL_CTL5, align 4
  %188 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %186, i32 %187, i32 -2004318187)
  br label %208

189:                                              ; preds = %167
  %190 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %191 = load i32, i32* @BCMA_CC_PMU_PLL_CTL0, align 4
  %192 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %190, i32 %191, i32 286261344)
  %193 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %194 = load i32, i32* @BCMA_CC_PMU_PLL_CTL1, align 4
  %195 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %193, i32 %194, i32 135007238)
  %196 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %197 = load i32, i32* @BCMA_CC_PMU_PLL_CTL2, align 4
  %198 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %196, i32 %197, i32 50331648)
  %199 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %200 = load i32, i32* @BCMA_CC_PMU_PLL_CTL3, align 4
  %201 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %199, i32 %200, i32 0)
  %202 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %203 = load i32, i32* @BCMA_CC_PMU_PLL_CTL4, align 4
  %204 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %202, i32 %203, i32 536872384)
  %205 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %206 = load i32, i32* @BCMA_CC_PMU_PLL_CTL5, align 4
  %207 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %205, i32 %206, i32 -2004318187)
  br label %208

208:                                              ; preds = %189, %170
  %209 = load i32, i32* @BCMA_CC_PMU_CTL_PLL_UPD, align 4
  %210 = load i32, i32* @BCMA_CC_PMU_CTL_NOILPONW, align 4
  %211 = or i32 %209, %210
  store i32 %211, i32* %5, align 4
  br label %262

212:                                              ; preds = %2, %2, %2, %2, %2
  %213 = load i32, i32* %4, align 4
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %215, label %234

215:                                              ; preds = %212
  %216 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %217 = load i32, i32* @BCMA_CC_PMU_PLL_CTL0, align 4
  %218 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %216, i32 %217, i32 17825812)
  %219 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %220 = load i32, i32* @BCMA_CC_PMU_PLL_CTL1, align 4
  %221 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %219, i32 %220, i32 67898374)
  %222 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %223 = load i32, i32* @BCMA_CC_PMU_PLL_CTL2, align 4
  %224 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %222, i32 %223, i32 51644936)
  %225 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %226 = load i32, i32* @BCMA_CC_PMU_PLL_CTL3, align 4
  %227 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %225, i32 %226, i32 3355443)
  %228 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %229 = load i32, i32* @BCMA_CC_PMU_PLL_CTL4, align 4
  %230 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %228, i32 %229, i32 539764768)
  %231 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %232 = load i32, i32* @BCMA_CC_PMU_PLL_CTL5, align 4
  %233 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %231, i32 %232, i32 -2004318187)
  br label %253

234:                                              ; preds = %212
  %235 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %236 = load i32, i32* @BCMA_CC_PMU_PLL_CTL0, align 4
  %237 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %235, i32 %236, i32 286261268)
  %238 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %239 = load i32, i32* @BCMA_CC_PMU_PLL_CTL1, align 4
  %240 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %238, i32 %239, i32 67898374)
  %241 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %242 = load i32, i32* @BCMA_CC_PMU_PLL_CTL2, align 4
  %243 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %241, i32 %242, i32 50334216)
  %244 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %245 = load i32, i32* @BCMA_CC_PMU_PLL_CTL3, align 4
  %246 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %244, i32 %245, i32 0)
  %247 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %248 = load i32, i32* @BCMA_CC_PMU_PLL_CTL4, align 4
  %249 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %247, i32 %248, i32 536872384)
  %250 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %251 = load i32, i32* @BCMA_CC_PMU_PLL_CTL5, align 4
  %252 = call i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc* %250, i32 %251, i32 -2004318187)
  br label %253

253:                                              ; preds = %234, %215
  %254 = load i32, i32* @BCMA_CC_PMU_CTL_PLL_UPD, align 4
  store i32 %254, i32* %5, align 4
  br label %262

255:                                              ; preds = %2
  %256 = load %struct.bcma_bus*, %struct.bcma_bus** %9, align 8
  %257 = load %struct.bcma_bus*, %struct.bcma_bus** %9, align 8
  %258 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @bcma_err(%struct.bcma_bus* %256, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %260)
  br label %262

262:                                              ; preds = %255, %253, %208, %165, %122, %39
  %263 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %264 = load i32, i32* @BCMA_CC_PMU_CTL, align 4
  %265 = call i32 @bcma_pmu_read32(%struct.bcma_drv_cc* %263, i32 %264)
  %266 = load i32, i32* %5, align 4
  %267 = or i32 %266, %265
  store i32 %267, i32* %5, align 4
  %268 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %269 = load i32, i32* @BCMA_CC_PMU_CTL, align 4
  %270 = load i32, i32* %5, align 4
  %271 = call i32 @bcma_pmu_write32(%struct.bcma_drv_cc* %268, i32 %269, i32 %270)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bcma_pmu_write32(%struct.bcma_drv_cc*, i32, i32) #2

declare dso_local i32 @bcma_pmu_read32(%struct.bcma_drv_cc*, i32) #2

declare dso_local i32 @bcma_pmu_spuravoid_pll_write(%struct.bcma_drv_cc*, i32, i32) #2

declare dso_local i32 @bcma_err(%struct.bcma_bus*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
