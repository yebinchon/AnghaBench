; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_core_pll_setup.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7531.c_mt7531_core_pll_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32 }

@TOP_SIG_SR = common dso_local global i32 0, align 4
@PAD_DUAL_SGMII_EN = common dso_local global i32 0, align 4
@HWSTRAP = common dso_local global i32 0, align 4
@XTAL_FSEL_M = common dso_local global i32 0, align 4
@XTAL_FSEL_S = common dso_local global i32 0, align 4
@PLLGP_EN = common dso_local global i32 0, align 4
@EN_COREPLL = common dso_local global i32 0, align 4
@SW_CLKSW = common dso_local global i32 0, align 4
@PLLGP_CR0 = common dso_local global i32 0, align 4
@RG_COREPLL_EN = common dso_local global i32 0, align 4
@SW_PLLGP = common dso_local global i32 0, align 4
@RG_COREPLL_POSDIV_M = common dso_local global i32 0, align 4
@RG_COREPLL_POSDIV_S = common dso_local global i32 0, align 4
@RG_COREPLL_SDM_PCW_M = common dso_local global i32 0, align 4
@RG_COREPLL_SDM_PCW_S = common dso_local global i32 0, align 4
@RG_COREPLL_SDM_PCW_CHG = common dso_local global i32 0, align 4
@ANA_PLLGP_CR5 = common dso_local global i32 0, align 4
@ANA_PLLGP_CR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsw_mt753x*)* @mt7531_core_pll_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7531_core_pll_setup(%struct.gsw_mt753x* %0) #0 {
  %2 = alloca %struct.gsw_mt753x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %2, align 8
  %5 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %6 = load i32, i32* @TOP_SIG_SR, align 4
  %7 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @PAD_DUAL_SGMII_EN, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %268

13:                                               ; preds = %1
  %14 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %15 = load i32, i32* @HWSTRAP, align 4
  %16 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @XTAL_FSEL_M, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @XTAL_FSEL_S, align 4
  %21 = ashr i32 %19, %20
  switch i32 %21, label %268 [
    i32 129, label %22
    i32 128, label %145
  ]

22:                                               ; preds = %13
  %23 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %24 = load i32, i32* @PLLGP_EN, align 4
  %25 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @EN_COREPLL, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %31 = load i32, i32* @PLLGP_EN, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %30, i32 %31, i32 %32)
  %34 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %35 = load i32, i32* @PLLGP_EN, align 4
  %36 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @SW_CLKSW, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %41 = load i32, i32* @PLLGP_EN, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %40, i32 %41, i32 %42)
  %44 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %45 = load i32, i32* @PLLGP_CR0, align 4
  %46 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @RG_COREPLL_EN, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %52 = load i32, i32* @PLLGP_CR0, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %51, i32 %52, i32 %53)
  %55 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %56 = load i32, i32* @PLLGP_EN, align 4
  %57 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %55, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* @SW_PLLGP, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %62 = load i32, i32* @PLLGP_EN, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %61, i32 %62, i32 %63)
  %65 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %66 = load i32, i32* @PLLGP_CR0, align 4
  %67 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %65, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* @RG_COREPLL_POSDIV_M, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %4, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @RG_COREPLL_POSDIV_S, align 4
  %73 = shl i32 2, %72
  %74 = load i32, i32* %4, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %4, align 4
  %76 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %77 = load i32, i32* @PLLGP_CR0, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %76, i32 %77, i32 %78)
  %80 = call i32 @usleep_range(i32 25, i32 35)
  %81 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %82 = load i32, i32* @PLLGP_CR0, align 4
  %83 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %81, i32 %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* @RG_COREPLL_SDM_PCW_M, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %4, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* @RG_COREPLL_SDM_PCW_S, align 4
  %89 = shl i32 1310720, %88
  %90 = load i32, i32* %4, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %4, align 4
  %92 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %93 = load i32, i32* @PLLGP_CR0, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %92, i32 %93, i32 %94)
  %96 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %97 = load i32, i32* @PLLGP_CR0, align 4
  %98 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %96, i32 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* @RG_COREPLL_SDM_PCW_CHG, align 4
  %100 = load i32, i32* %4, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %4, align 4
  %102 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %103 = load i32, i32* @PLLGP_CR0, align 4
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %102, i32 %103, i32 %104)
  %106 = call i32 @usleep_range(i32 10, i32 20)
  %107 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %108 = load i32, i32* @PLLGP_CR0, align 4
  %109 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %107, i32 %108)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* @RG_COREPLL_SDM_PCW_CHG, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %4, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %4, align 4
  %114 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %115 = load i32, i32* @PLLGP_CR0, align 4
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %114, i32 %115, i32 %116)
  %118 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %119 = load i32, i32* @ANA_PLLGP_CR5, align 4
  %120 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %118, i32 %119, i32 11337728)
  %121 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %122 = load i32, i32* @ANA_PLLGP_CR2, align 4
  %123 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %121, i32 %122, i32 83099648)
  %124 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %125 = load i32, i32* @PLLGP_CR0, align 4
  %126 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %124, i32 %125)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* @RG_COREPLL_EN, align 4
  %128 = load i32, i32* %4, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %4, align 4
  %130 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %131 = load i32, i32* @PLLGP_CR0, align 4
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %130, i32 %131, i32 %132)
  %134 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %135 = load i32, i32* @PLLGP_EN, align 4
  %136 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %134, i32 %135)
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* @EN_COREPLL, align 4
  %138 = load i32, i32* %4, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %4, align 4
  %140 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %141 = load i32, i32* @PLLGP_EN, align 4
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %140, i32 %141, i32 %142)
  %144 = call i32 @usleep_range(i32 25, i32 35)
  br label %268

145:                                              ; preds = %13
  %146 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %147 = load i32, i32* @PLLGP_EN, align 4
  %148 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %146, i32 %147)
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* @EN_COREPLL, align 4
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %4, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %4, align 4
  %153 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %154 = load i32, i32* @PLLGP_EN, align 4
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %153, i32 %154, i32 %155)
  %157 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %158 = load i32, i32* @PLLGP_EN, align 4
  %159 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %157, i32 %158)
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* @SW_CLKSW, align 4
  %161 = load i32, i32* %4, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %4, align 4
  %163 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %164 = load i32, i32* @PLLGP_EN, align 4
  %165 = load i32, i32* %4, align 4
  %166 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %163, i32 %164, i32 %165)
  %167 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %168 = load i32, i32* @PLLGP_CR0, align 4
  %169 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %167, i32 %168)
  store i32 %169, i32* %4, align 4
  %170 = load i32, i32* @RG_COREPLL_EN, align 4
  %171 = xor i32 %170, -1
  %172 = load i32, i32* %4, align 4
  %173 = and i32 %172, %171
  store i32 %173, i32* %4, align 4
  %174 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %175 = load i32, i32* @PLLGP_CR0, align 4
  %176 = load i32, i32* %4, align 4
  %177 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %174, i32 %175, i32 %176)
  %178 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %179 = load i32, i32* @PLLGP_EN, align 4
  %180 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %178, i32 %179)
  store i32 %180, i32* %4, align 4
  %181 = load i32, i32* @SW_PLLGP, align 4
  %182 = load i32, i32* %4, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %4, align 4
  %184 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %185 = load i32, i32* @PLLGP_EN, align 4
  %186 = load i32, i32* %4, align 4
  %187 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %184, i32 %185, i32 %186)
  %188 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %189 = load i32, i32* @PLLGP_CR0, align 4
  %190 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %188, i32 %189)
  store i32 %190, i32* %4, align 4
  %191 = load i32, i32* @RG_COREPLL_POSDIV_M, align 4
  %192 = xor i32 %191, -1
  %193 = load i32, i32* %4, align 4
  %194 = and i32 %193, %192
  store i32 %194, i32* %4, align 4
  %195 = load i32, i32* @RG_COREPLL_POSDIV_S, align 4
  %196 = shl i32 2, %195
  %197 = load i32, i32* %4, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %4, align 4
  %199 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %200 = load i32, i32* @PLLGP_CR0, align 4
  %201 = load i32, i32* %4, align 4
  %202 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %199, i32 %200, i32 %201)
  %203 = call i32 @usleep_range(i32 25, i32 35)
  %204 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %205 = load i32, i32* @PLLGP_CR0, align 4
  %206 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %204, i32 %205)
  store i32 %206, i32* %4, align 4
  %207 = load i32, i32* @RG_COREPLL_SDM_PCW_M, align 4
  %208 = xor i32 %207, -1
  %209 = load i32, i32* %4, align 4
  %210 = and i32 %209, %208
  store i32 %210, i32* %4, align 4
  %211 = load i32, i32* @RG_COREPLL_SDM_PCW_S, align 4
  %212 = shl i32 1638400, %211
  %213 = load i32, i32* %4, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %4, align 4
  %215 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %216 = load i32, i32* @PLLGP_CR0, align 4
  %217 = load i32, i32* %4, align 4
  %218 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %215, i32 %216, i32 %217)
  %219 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %220 = load i32, i32* @PLLGP_CR0, align 4
  %221 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %219, i32 %220)
  store i32 %221, i32* %4, align 4
  %222 = load i32, i32* @RG_COREPLL_SDM_PCW_CHG, align 4
  %223 = load i32, i32* %4, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %4, align 4
  %225 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %226 = load i32, i32* @PLLGP_CR0, align 4
  %227 = load i32, i32* %4, align 4
  %228 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %225, i32 %226, i32 %227)
  %229 = call i32 @usleep_range(i32 10, i32 20)
  %230 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %231 = load i32, i32* @PLLGP_CR0, align 4
  %232 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %230, i32 %231)
  store i32 %232, i32* %4, align 4
  %233 = load i32, i32* @RG_COREPLL_SDM_PCW_CHG, align 4
  %234 = xor i32 %233, -1
  %235 = load i32, i32* %4, align 4
  %236 = and i32 %235, %234
  store i32 %236, i32* %4, align 4
  %237 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %238 = load i32, i32* @PLLGP_CR0, align 4
  %239 = load i32, i32* %4, align 4
  %240 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %237, i32 %238, i32 %239)
  %241 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %242 = load i32, i32* @ANA_PLLGP_CR5, align 4
  %243 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %241, i32 %242, i32 11337728)
  %244 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %245 = load i32, i32* @ANA_PLLGP_CR2, align 4
  %246 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %244, i32 %245, i32 83099648)
  %247 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %248 = load i32, i32* @PLLGP_CR0, align 4
  %249 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %247, i32 %248)
  store i32 %249, i32* %4, align 4
  %250 = load i32, i32* @RG_COREPLL_EN, align 4
  %251 = load i32, i32* %4, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %4, align 4
  %253 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %254 = load i32, i32* @PLLGP_CR0, align 4
  %255 = load i32, i32* %4, align 4
  %256 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %253, i32 %254, i32 %255)
  %257 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %258 = load i32, i32* @PLLGP_EN, align 4
  %259 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %257, i32 %258)
  store i32 %259, i32* %4, align 4
  %260 = load i32, i32* @EN_COREPLL, align 4
  %261 = load i32, i32* %4, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %4, align 4
  %263 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %264 = load i32, i32* @PLLGP_EN, align 4
  %265 = load i32, i32* %4, align 4
  %266 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %263, i32 %264, i32 %265)
  %267 = call i32 @usleep_range(i32 25, i32 35)
  br label %268

268:                                              ; preds = %12, %13, %145, %22
  ret void
}

declare dso_local i32 @mt753x_reg_read(%struct.gsw_mt753x*, i32) #1

declare dso_local i32 @mt753x_reg_write(%struct.gsw_mt753x*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
