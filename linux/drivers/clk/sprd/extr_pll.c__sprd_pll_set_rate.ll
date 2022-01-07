; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sprd/extr_pll.c__sprd_pll_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sprd/extr_pll.c__sprd_pll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_pll = type { i64, i32, i32, i32, i32 }
%struct.reg_cfg = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PLL_PREDIV = common dso_local global i32 0, align 4
@PLL_POSTDIV = common dso_local global i32 0, align 4
@PLL_DIV_S = common dso_local global i32 0, align 4
@PLL_SDM_EN = common dso_local global i32 0, align 4
@CLK_PLL_1M = common dso_local global i32 0, align 4
@PLL_NINT = common dso_local global i32 0, align 4
@PLL_KINT = common dso_local global i32 0, align 4
@PLL_IBIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_pll*, i64, i64)* @_sprd_pll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sprd_pll_set_rate(%struct.sprd_pll* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sprd_pll*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.reg_cfg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.sprd_pll* %0, %struct.sprd_pll** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %22 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %23 = getelementptr inbounds %struct.sprd_pll, %struct.sprd_pll* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %25 = load i64, i64* %6, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %21, align 4
  %27 = load i64, i64* %15, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.reg_cfg* @kcalloc(i64 %27, i32 16, i32 %28)
  store %struct.reg_cfg* %29, %struct.reg_cfg** %8, align 8
  %30 = load %struct.reg_cfg*, %struct.reg_cfg** %8, align 8
  %31 = icmp ne %struct.reg_cfg* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %334

35:                                               ; preds = %3
  %36 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %37 = call i32 @pll_get_refin(%struct.sprd_pll* %36)
  store i32 %37, i32* %20, align 4
  %38 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %39 = load i32, i32* @PLL_PREDIV, align 4
  %40 = call i64 @pmask(%struct.sprd_pll* %38, i32 %39)
  store i64 %40, i64* %10, align 8
  %41 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %42 = load i32, i32* @PLL_PREDIV, align 4
  %43 = call i64 @pindex(%struct.sprd_pll* %41, i32 %42)
  store i64 %43, i64* %14, align 8
  %44 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %45 = load i32, i32* @PLL_PREDIV, align 4
  %46 = call i64 @pwidth(%struct.sprd_pll* %44, i32 %45)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %35
  %50 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %51 = load i64, i64* %14, align 8
  %52 = call i64 @sprd_pll_read(%struct.sprd_pll* %50, i64 %51)
  %53 = load i64, i64* %10, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* %20, align 4
  %58 = mul nsw i32 %57, 2
  store i32 %58, i32* %20, align 4
  br label %59

59:                                               ; preds = %56, %49, %35
  %60 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %61 = load i32, i32* @PLL_POSTDIV, align 4
  %62 = call i64 @pmask(%struct.sprd_pll* %60, i32 %61)
  store i64 %62, i64* %10, align 8
  %63 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %64 = load i32, i32* @PLL_POSTDIV, align 4
  %65 = call i64 @pindex(%struct.sprd_pll* %63, i32 %64)
  store i64 %65, i64* %14, align 8
  %66 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %67 = load i32, i32* @PLL_POSTDIV, align 4
  %68 = call i64 @pwidth(%struct.sprd_pll* %66, i32 %67)
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.reg_cfg*, %struct.reg_cfg** %8, align 8
  %71 = load i64, i64* %14, align 8
  %72 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %70, i64 %71
  %73 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %72, i32 0, i32 0
  store i64 %69, i64* %73, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %106

76:                                               ; preds = %59
  %77 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %78 = getelementptr inbounds %struct.sprd_pll, %struct.sprd_pll* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* %21, align 4
  %83 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %84 = getelementptr inbounds %struct.sprd_pll, %struct.sprd_pll* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp sle i32 %82, %85
  br i1 %86, label %98, label %87

87:                                               ; preds = %81, %76
  %88 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %89 = getelementptr inbounds %struct.sprd_pll, %struct.sprd_pll* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %87
  %93 = load i32, i32* %21, align 4
  %94 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %95 = getelementptr inbounds %struct.sprd_pll, %struct.sprd_pll* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %93, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %92, %81
  %99 = load i64, i64* %10, align 8
  %100 = load %struct.reg_cfg*, %struct.reg_cfg** %8, align 8
  %101 = load i64, i64* %14, align 8
  %102 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %100, i64 %101
  %103 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = or i64 %104, %99
  store i64 %105, i64* %103, align 8
  br label %106

106:                                              ; preds = %98, %92, %87, %59
  %107 = load i64, i64* %12, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load i32, i32* %21, align 4
  %111 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %112 = getelementptr inbounds %struct.sprd_pll, %struct.sprd_pll* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = icmp sle i32 %110, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32, i32* %21, align 4
  %117 = mul nsw i32 %116, 2
  store i32 %117, i32* %21, align 4
  br label %118

118:                                              ; preds = %115, %109, %106
  %119 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %120 = load i32, i32* @PLL_DIV_S, align 4
  %121 = call i64 @pmask(%struct.sprd_pll* %119, i32 %120)
  store i64 %121, i64* %10, align 8
  %122 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %123 = load i32, i32* @PLL_DIV_S, align 4
  %124 = call i64 @pindex(%struct.sprd_pll* %122, i32 %123)
  store i64 %124, i64* %14, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load %struct.reg_cfg*, %struct.reg_cfg** %8, align 8
  %127 = load i64, i64* %14, align 8
  %128 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %126, i64 %127
  %129 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = or i64 %130, %125
  store i64 %131, i64* %129, align 8
  %132 = load i64, i64* %10, align 8
  %133 = load %struct.reg_cfg*, %struct.reg_cfg** %8, align 8
  %134 = load i64, i64* %14, align 8
  %135 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %133, i64 %134
  %136 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = or i64 %137, %132
  store i64 %138, i64* %136, align 8
  %139 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %140 = load i32, i32* @PLL_SDM_EN, align 4
  %141 = call i64 @pmask(%struct.sprd_pll* %139, i32 %140)
  store i64 %141, i64* %10, align 8
  %142 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %143 = load i32, i32* @PLL_SDM_EN, align 4
  %144 = call i64 @pindex(%struct.sprd_pll* %142, i32 %143)
  store i64 %144, i64* %14, align 8
  %145 = load i64, i64* %10, align 8
  %146 = load %struct.reg_cfg*, %struct.reg_cfg** %8, align 8
  %147 = load i64, i64* %14, align 8
  %148 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %146, i64 %147
  %149 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = or i64 %150, %145
  store i64 %151, i64* %149, align 8
  %152 = load i64, i64* %10, align 8
  %153 = load %struct.reg_cfg*, %struct.reg_cfg** %8, align 8
  %154 = load i64, i64* %14, align 8
  %155 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %153, i64 %154
  %156 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = or i64 %157, %152
  store i64 %158, i64* %156, align 8
  %159 = load i32, i32* %21, align 4
  %160 = load i32, i32* %20, align 4
  %161 = load i32, i32* @CLK_PLL_1M, align 4
  %162 = mul nsw i32 %160, %161
  %163 = call i64 @do_div(i32 %159, i32 %162)
  store i64 %163, i64* %18, align 8
  %164 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %165 = load i32, i32* @PLL_NINT, align 4
  %166 = call i64 @pmask(%struct.sprd_pll* %164, i32 %165)
  store i64 %166, i64* %10, align 8
  %167 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %168 = load i32, i32* @PLL_NINT, align 4
  %169 = call i64 @pindex(%struct.sprd_pll* %167, i32 %168)
  store i64 %169, i64* %14, align 8
  %170 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %171 = load i32, i32* @PLL_NINT, align 4
  %172 = call i64 @pshift(%struct.sprd_pll* %170, i32 %171)
  store i64 %172, i64* %11, align 8
  %173 = load i64, i64* %18, align 8
  %174 = load i64, i64* %11, align 8
  %175 = shl i64 %173, %174
  %176 = load i64, i64* %10, align 8
  %177 = and i64 %175, %176
  %178 = load %struct.reg_cfg*, %struct.reg_cfg** %8, align 8
  %179 = load i64, i64* %14, align 8
  %180 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %178, i64 %179
  %181 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = or i64 %182, %177
  store i64 %183, i64* %181, align 8
  %184 = load i64, i64* %10, align 8
  %185 = load %struct.reg_cfg*, %struct.reg_cfg** %8, align 8
  %186 = load i64, i64* %14, align 8
  %187 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %185, i64 %186
  %188 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = or i64 %189, %184
  store i64 %190, i64* %188, align 8
  %191 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %192 = load i32, i32* @PLL_KINT, align 4
  %193 = call i64 @pmask(%struct.sprd_pll* %191, i32 %192)
  store i64 %193, i64* %10, align 8
  %194 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %195 = load i32, i32* @PLL_KINT, align 4
  %196 = call i64 @pindex(%struct.sprd_pll* %194, i32 %195)
  store i64 %196, i64* %14, align 8
  %197 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %198 = load i32, i32* @PLL_KINT, align 4
  %199 = call i64 @pwidth(%struct.sprd_pll* %197, i32 %198)
  store i64 %199, i64* %12, align 8
  %200 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %201 = load i32, i32* @PLL_KINT, align 4
  %202 = call i64 @pshift(%struct.sprd_pll* %200, i32 %201)
  store i64 %202, i64* %11, align 8
  %203 = load i32, i32* %21, align 4
  %204 = sext i32 %203 to i64
  %205 = load i32, i32* %20, align 4
  %206 = sext i32 %205 to i64
  %207 = load i64, i64* %18, align 8
  %208 = mul i64 %206, %207
  %209 = load i32, i32* @CLK_PLL_1M, align 4
  %210 = sext i32 %209 to i64
  %211 = mul i64 %208, %210
  %212 = sub i64 %204, %211
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %19, align 4
  %214 = load i32, i32* %19, align 4
  %215 = call i64 @do_div(i32 %214, i32 10000)
  %216 = load i64, i64* %10, align 8
  %217 = load i64, i64* %11, align 8
  %218 = lshr i64 %216, %217
  %219 = add i64 %218, 1
  %220 = mul i64 %215, %219
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %19, align 4
  %222 = load i32, i32* %19, align 4
  %223 = load i32, i32* %20, align 4
  %224 = mul nsw i32 %223, 100
  %225 = call i64 @DIV_ROUND_CLOSEST_ULL(i32 %222, i32 %224)
  store i64 %225, i64* %17, align 8
  %226 = load i64, i64* %17, align 8
  %227 = load i64, i64* %11, align 8
  %228 = shl i64 %226, %227
  %229 = load i64, i64* %10, align 8
  %230 = and i64 %228, %229
  %231 = load %struct.reg_cfg*, %struct.reg_cfg** %8, align 8
  %232 = load i64, i64* %14, align 8
  %233 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %231, i64 %232
  %234 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = or i64 %235, %230
  store i64 %236, i64* %234, align 8
  %237 = load i64, i64* %10, align 8
  %238 = load %struct.reg_cfg*, %struct.reg_cfg** %8, align 8
  %239 = load i64, i64* %14, align 8
  %240 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %238, i64 %239
  %241 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = or i64 %242, %237
  store i64 %243, i64* %241, align 8
  %244 = load i32, i32* %21, align 4
  %245 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %246 = getelementptr inbounds %struct.sprd_pll, %struct.sprd_pll* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = call i64 @pll_get_ibias(i32 %244, i32 %247)
  store i64 %248, i64* %13, align 8
  %249 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %250 = load i32, i32* @PLL_IBIAS, align 4
  %251 = call i64 @pmask(%struct.sprd_pll* %249, i32 %250)
  store i64 %251, i64* %10, align 8
  %252 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %253 = load i32, i32* @PLL_IBIAS, align 4
  %254 = call i64 @pindex(%struct.sprd_pll* %252, i32 %253)
  store i64 %254, i64* %14, align 8
  %255 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %256 = load i32, i32* @PLL_IBIAS, align 4
  %257 = call i64 @pshift(%struct.sprd_pll* %255, i32 %256)
  store i64 %257, i64* %11, align 8
  %258 = load i64, i64* %13, align 8
  %259 = load i64, i64* %11, align 8
  %260 = shl i64 %258, %259
  %261 = load i64, i64* %10, align 8
  %262 = and i64 %260, %261
  %263 = load %struct.reg_cfg*, %struct.reg_cfg** %8, align 8
  %264 = load i64, i64* %14, align 8
  %265 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %263, i64 %264
  %266 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = or i64 %267, %262
  store i64 %268, i64* %266, align 8
  %269 = load i64, i64* %10, align 8
  %270 = load %struct.reg_cfg*, %struct.reg_cfg** %8, align 8
  %271 = load i64, i64* %14, align 8
  %272 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %270, i64 %271
  %273 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = or i64 %274, %269
  store i64 %275, i64* %273, align 8
  store i64 0, i64* %16, align 8
  br label %276

276:                                              ; preds = %319, %118
  %277 = load i64, i64* %16, align 8
  %278 = load i64, i64* %15, align 8
  %279 = icmp ult i64 %277, %278
  br i1 %279, label %280, label %322

280:                                              ; preds = %276
  %281 = load %struct.reg_cfg*, %struct.reg_cfg** %8, align 8
  %282 = load i64, i64* %16, align 8
  %283 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %281, i64 %282
  %284 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %318

287:                                              ; preds = %280
  %288 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %289 = load i64, i64* %16, align 8
  %290 = load %struct.reg_cfg*, %struct.reg_cfg** %8, align 8
  %291 = load i64, i64* %16, align 8
  %292 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %290, i64 %291
  %293 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = trunc i64 %294 to i32
  %296 = load %struct.reg_cfg*, %struct.reg_cfg** %8, align 8
  %297 = load i64, i64* %16, align 8
  %298 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %296, i64 %297
  %299 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = call i32 @sprd_pll_write(%struct.sprd_pll* %288, i64 %289, i32 %295, i64 %300)
  %302 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %303 = load i64, i64* %16, align 8
  %304 = load %struct.reg_cfg*, %struct.reg_cfg** %8, align 8
  %305 = load i64, i64* %16, align 8
  %306 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %304, i64 %305
  %307 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = trunc i64 %308 to i32
  %310 = load %struct.reg_cfg*, %struct.reg_cfg** %8, align 8
  %311 = load i64, i64* %16, align 8
  %312 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %310, i64 %311
  %313 = getelementptr inbounds %struct.reg_cfg, %struct.reg_cfg* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = call i32 @SPRD_PLL_WRITE_CHECK(%struct.sprd_pll* %302, i64 %303, i32 %309, i64 %314)
  %316 = load i32, i32* %9, align 4
  %317 = or i32 %316, %315
  store i32 %317, i32* %9, align 4
  br label %318

318:                                              ; preds = %287, %280
  br label %319

319:                                              ; preds = %318
  %320 = load i64, i64* %16, align 8
  %321 = add i64 %320, 1
  store i64 %321, i64* %16, align 8
  br label %276

322:                                              ; preds = %276
  %323 = load i32, i32* %9, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %330, label %325

325:                                              ; preds = %322
  %326 = load %struct.sprd_pll*, %struct.sprd_pll** %5, align 8
  %327 = getelementptr inbounds %struct.sprd_pll, %struct.sprd_pll* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @udelay(i32 %328)
  br label %330

330:                                              ; preds = %325, %322
  %331 = load %struct.reg_cfg*, %struct.reg_cfg** %8, align 8
  %332 = call i32 @kfree(%struct.reg_cfg* %331)
  %333 = load i32, i32* %9, align 4
  store i32 %333, i32* %4, align 4
  br label %334

334:                                              ; preds = %330, %32
  %335 = load i32, i32* %4, align 4
  ret i32 %335
}

declare dso_local %struct.reg_cfg* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @pll_get_refin(%struct.sprd_pll*) #1

declare dso_local i64 @pmask(%struct.sprd_pll*, i32) #1

declare dso_local i64 @pindex(%struct.sprd_pll*, i32) #1

declare dso_local i64 @pwidth(%struct.sprd_pll*, i32) #1

declare dso_local i64 @sprd_pll_read(%struct.sprd_pll*, i64) #1

declare dso_local i64 @do_div(i32, i32) #1

declare dso_local i64 @pshift(%struct.sprd_pll*, i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

declare dso_local i64 @pll_get_ibias(i32, i32) #1

declare dso_local i32 @sprd_pll_write(%struct.sprd_pll*, i64, i32, i64) #1

declare dso_local i32 @SPRD_PLL_WRITE_CHECK(%struct.sprd_pll*, i64, i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @kfree(%struct.reg_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
