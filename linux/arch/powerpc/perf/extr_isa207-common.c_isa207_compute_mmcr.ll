; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_isa207-common.c_isa207_compute_mmcr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_isa207-common.c_isa207_compute_mmcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@EVENT_PMC_SHIFT = common dso_local global i32 0, align 4
@EVENT_PMC_MASK = common dso_local global i32 0, align 4
@EVENT_UNIT_SHIFT = common dso_local global i32 0, align 4
@EVENT_UNIT_MASK = common dso_local global i32 0, align 4
@EVENT_PSEL_MASK = common dso_local global i32 0, align 4
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@MMCR1_DC_IC_QUAL_SHIFT = common dso_local global i64 0, align 8
@EVENT_IS_L1 = common dso_local global i32 0, align 4
@MMCRA_SAMPLE_ENABLE = common dso_local global i64 0, align 8
@EVENT_SAMPLE_SHIFT = common dso_local global i32 0, align 4
@EVENT_SAMPLE_MASK = common dso_local global i32 0, align 4
@MMCRA_SAMP_MODE_SHIFT = common dso_local global i64 0, align 8
@MMCRA_SAMP_ELIG_SHIFT = common dso_local global i64 0, align 8
@EVENT_THR_CTL_SHIFT = common dso_local global i32 0, align 4
@EVENT_THR_CTL_MASK = common dso_local global i32 0, align 4
@MMCR1_FAB_SHIFT = common dso_local global i32 0, align 4
@MMCRA_THR_CTL_SHIFT = common dso_local global i64 0, align 8
@EVENT_THR_SEL_SHIFT = common dso_local global i32 0, align 4
@EVENT_THR_SEL_MASK = common dso_local global i32 0, align 4
@MMCRA_THR_SEL_SHIFT = common dso_local global i64 0, align 8
@EVENT_THR_CMP_SHIFT = common dso_local global i32 0, align 4
@EVENT_THR_CMP_MASK = common dso_local global i32 0, align 4
@EVENT_WANTS_BHRB = common dso_local global i32 0, align 4
@EVENT_IFM_SHIFT = common dso_local global i32 0, align 4
@EVENT_IFM_MASK = common dso_local global i32 0, align 4
@MMCRA_IFM_SHIFT = common dso_local global i64 0, align 8
@CPU_FTR_HVMODE = common dso_local global i32 0, align 4
@MMCR0_PMC1CE = common dso_local global i64 0, align 8
@MMCR0_PMCjCE = common dso_local global i64 0, align 8
@MMCR0_FC56 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isa207_compute_mmcr(i32* %0, i32 %1, i32* %2, i64* %3, %struct.perf_event** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.perf_event**, align 8
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
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store %struct.perf_event** %4, %struct.perf_event*** %10, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %44, %5
  %23 = load i32, i32* %21, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %21, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @EVENT_PMC_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = load i32, i32* @EVENT_PMC_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %19, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load i32, i32* %19, align 4
  %40 = shl i32 1, %39
  %41 = load i32, i32* %20, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %20, align 4
  br label %43

43:                                               ; preds = %38, %26
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %21, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %21, align 4
  br label %22

47:                                               ; preds = %22
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %21, align 4
  br label %48

48:                                               ; preds = %371, %47
  %49 = load i32, i32* %21, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %374

52:                                               ; preds = %48
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %21, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @EVENT_PMC_SHIFT, align 4
  %59 = ashr i32 %57, %58
  %60 = load i32, i32* @EVENT_PMC_MASK, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %19, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %21, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @EVENT_UNIT_SHIFT, align 4
  %68 = ashr i32 %66, %67
  %69 = load i32, i32* @EVENT_UNIT_MASK, align 4
  %70 = and i32 %68, %69
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %14, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %21, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @combine_from_event(i32 %76)
  store i64 %77, i64* %15, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %21, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @EVENT_PSEL_MASK, align 4
  %84 = and i32 %82, %83
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %16, align 8
  %86 = load i32, i32* %19, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %108, label %88

88:                                               ; preds = %52
  store i32 1, i32* %19, align 4
  br label %89

89:                                               ; preds = %100, %88
  %90 = load i32, i32* %19, align 4
  %91 = icmp ule i32 %90, 4
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %19, align 4
  %95 = shl i32 1, %94
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  br label %103

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %19, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %19, align 4
  br label %89

103:                                              ; preds = %98, %89
  %104 = load i32, i32* %19, align 4
  %105 = shl i32 1, %104
  %106 = load i32, i32* %20, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %20, align 4
  br label %108

108:                                              ; preds = %103, %52
  %109 = load i32, i32* %19, align 4
  %110 = icmp ule i32 %109, 4
  br i1 %110, label %111, label %130

111:                                              ; preds = %108
  %112 = load i64, i64* %14, align 8
  %113 = load i32, i32* %19, align 4
  %114 = call i64 @MMCR1_UNIT_SHIFT(i32 %113)
  %115 = shl i64 %112, %114
  %116 = load i64, i64* %12, align 8
  %117 = or i64 %116, %115
  store i64 %117, i64* %12, align 8
  %118 = load i64, i64* %15, align 8
  %119 = load i32, i32* %19, align 4
  %120 = call i64 @combine_shift(i32 %119)
  %121 = shl i64 %118, %120
  %122 = load i64, i64* %12, align 8
  %123 = or i64 %122, %121
  store i64 %123, i64* %12, align 8
  %124 = load i64, i64* %16, align 8
  %125 = load i32, i32* %19, align 4
  %126 = call i64 @MMCR1_PMCSEL_SHIFT(i32 %125)
  %127 = shl i64 %124, %126
  %128 = load i64, i64* %12, align 8
  %129 = or i64 %128, %127
  store i64 %129, i64* %12, align 8
  br label %130

130:                                              ; preds = %111, %108
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %21, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @mmcra_sdar_mode(i32 %135, i64* %11)
  %137 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %138 = call i64 @cpu_has_feature(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %130
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* %21, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @dc_ic_rld_quad_l1_sel(i32 %145)
  store i64 %146, i64* %17, align 8
  %147 = load i64, i64* %17, align 8
  %148 = load i64, i64* @MMCR1_DC_IC_QUAL_SHIFT, align 8
  %149 = shl i64 %147, %148
  %150 = load i64, i64* %12, align 8
  %151 = or i64 %150, %149
  store i64 %151, i64* %12, align 8
  br label %174

152:                                              ; preds = %130
  %153 = load i32*, i32** %6, align 8
  %154 = load i32, i32* %21, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @EVENT_IS_L1, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %152
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %21, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @dc_ic_rld_quad_l1_sel(i32 %166)
  store i64 %167, i64* %17, align 8
  %168 = load i64, i64* %17, align 8
  %169 = load i64, i64* @MMCR1_DC_IC_QUAL_SHIFT, align 8
  %170 = shl i64 %168, %169
  %171 = load i64, i64* %12, align 8
  %172 = or i64 %171, %170
  store i64 %172, i64* %12, align 8
  br label %173

173:                                              ; preds = %161, %152
  br label %174

174:                                              ; preds = %173, %140
  %175 = load i32*, i32** %6, align 8
  %176 = load i32, i32* %21, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @is_event_marked(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %212

182:                                              ; preds = %174
  %183 = load i64, i64* @MMCRA_SAMPLE_ENABLE, align 8
  %184 = load i64, i64* %11, align 8
  %185 = or i64 %184, %183
  store i64 %185, i64* %11, align 8
  %186 = load i32*, i32** %6, align 8
  %187 = load i32, i32* %21, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @EVENT_SAMPLE_SHIFT, align 4
  %192 = ashr i32 %190, %191
  %193 = load i32, i32* @EVENT_SAMPLE_MASK, align 4
  %194 = and i32 %192, %193
  %195 = sext i32 %194 to i64
  store i64 %195, i64* %18, align 8
  %196 = load i64, i64* %18, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %182
  %199 = load i64, i64* %18, align 8
  %200 = and i64 %199, 3
  %201 = load i64, i64* @MMCRA_SAMP_MODE_SHIFT, align 8
  %202 = shl i64 %200, %201
  %203 = load i64, i64* %11, align 8
  %204 = or i64 %203, %202
  store i64 %204, i64* %11, align 8
  %205 = load i64, i64* %18, align 8
  %206 = lshr i64 %205, 2
  %207 = load i64, i64* @MMCRA_SAMP_ELIG_SHIFT, align 8
  %208 = shl i64 %206, %207
  %209 = load i64, i64* %11, align 8
  %210 = or i64 %209, %208
  store i64 %210, i64* %11, align 8
  br label %211

211:                                              ; preds = %198, %182
  br label %212

212:                                              ; preds = %211, %174
  %213 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %214 = call i64 @cpu_has_feature(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %239, label %216

216:                                              ; preds = %212
  %217 = load i32*, i32** %6, align 8
  %218 = load i32, i32* %21, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = call i64 @event_is_fab_match(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %239

224:                                              ; preds = %216
  %225 = load i32*, i32** %6, align 8
  %226 = load i32, i32* %21, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @EVENT_THR_CTL_SHIFT, align 4
  %231 = ashr i32 %229, %230
  %232 = load i32, i32* @EVENT_THR_CTL_MASK, align 4
  %233 = and i32 %231, %232
  %234 = load i32, i32* @MMCR1_FAB_SHIFT, align 4
  %235 = shl i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = load i64, i64* %12, align 8
  %238 = or i64 %237, %236
  store i64 %238, i64* %12, align 8
  br label %284

239:                                              ; preds = %216, %212
  %240 = load i32*, i32** %6, align 8
  %241 = load i32, i32* %21, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @EVENT_THR_CTL_SHIFT, align 4
  %246 = ashr i32 %244, %245
  %247 = load i32, i32* @EVENT_THR_CTL_MASK, align 4
  %248 = and i32 %246, %247
  %249 = sext i32 %248 to i64
  store i64 %249, i64* %18, align 8
  %250 = load i64, i64* %18, align 8
  %251 = load i64, i64* @MMCRA_THR_CTL_SHIFT, align 8
  %252 = shl i64 %250, %251
  %253 = load i64, i64* %11, align 8
  %254 = or i64 %253, %252
  store i64 %254, i64* %11, align 8
  %255 = load i32*, i32** %6, align 8
  %256 = load i32, i32* %21, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @EVENT_THR_SEL_SHIFT, align 4
  %261 = ashr i32 %259, %260
  %262 = load i32, i32* @EVENT_THR_SEL_MASK, align 4
  %263 = and i32 %261, %262
  %264 = sext i32 %263 to i64
  store i64 %264, i64* %18, align 8
  %265 = load i64, i64* %18, align 8
  %266 = load i64, i64* @MMCRA_THR_SEL_SHIFT, align 8
  %267 = shl i64 %265, %266
  %268 = load i64, i64* %11, align 8
  %269 = or i64 %268, %267
  store i64 %269, i64* %11, align 8
  %270 = load i32*, i32** %6, align 8
  %271 = load i32, i32* %21, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @EVENT_THR_CMP_SHIFT, align 4
  %276 = ashr i32 %274, %275
  %277 = load i32, i32* @EVENT_THR_CMP_MASK, align 4
  %278 = and i32 %276, %277
  %279 = sext i32 %278 to i64
  store i64 %279, i64* %18, align 8
  %280 = load i64, i64* %18, align 8
  %281 = call i64 @thresh_cmp_val(i64 %280)
  %282 = load i64, i64* %11, align 8
  %283 = or i64 %282, %281
  store i64 %283, i64* %11, align 8
  br label %284

284:                                              ; preds = %239, %224
  %285 = load i32*, i32** %6, align 8
  %286 = load i32, i32* %21, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @EVENT_WANTS_BHRB, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %309

293:                                              ; preds = %284
  %294 = load i32*, i32** %6, align 8
  %295 = load i32, i32* %21, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @EVENT_IFM_SHIFT, align 4
  %300 = ashr i32 %298, %299
  %301 = load i32, i32* @EVENT_IFM_MASK, align 4
  %302 = and i32 %300, %301
  %303 = sext i32 %302 to i64
  store i64 %303, i64* %18, align 8
  %304 = load i64, i64* %18, align 8
  %305 = load i64, i64* @MMCRA_IFM_SHIFT, align 8
  %306 = shl i64 %304, %305
  %307 = load i64, i64* %11, align 8
  %308 = or i64 %307, %306
  store i64 %308, i64* %11, align 8
  br label %309

309:                                              ; preds = %293, %284
  %310 = load %struct.perf_event**, %struct.perf_event*** %10, align 8
  %311 = load i32, i32* %21, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %310, i64 %312
  %314 = load %struct.perf_event*, %struct.perf_event** %313, align 8
  %315 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %315, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %309
  %320 = load i32, i32* %19, align 4
  %321 = call i64 @MMCR2_FCP(i32 %320)
  %322 = load i64, i64* %13, align 8
  %323 = or i64 %322, %321
  store i64 %323, i64* %13, align 8
  br label %324

324:                                              ; preds = %319, %309
  %325 = load %struct.perf_event**, %struct.perf_event*** %10, align 8
  %326 = load i32, i32* %21, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %325, i64 %327
  %329 = load %struct.perf_event*, %struct.perf_event** %328, align 8
  %330 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %339

334:                                              ; preds = %324
  %335 = load i32, i32* %19, align 4
  %336 = call i64 @MMCR2_FCH(i32 %335)
  %337 = load i64, i64* %13, align 8
  %338 = or i64 %337, %336
  store i64 %338, i64* %13, align 8
  br label %339

339:                                              ; preds = %334, %324
  %340 = load %struct.perf_event**, %struct.perf_event*** %10, align 8
  %341 = load i32, i32* %21, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %340, i64 %342
  %344 = load %struct.perf_event*, %struct.perf_event** %343, align 8
  %345 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %364

349:                                              ; preds = %339
  %350 = load i32, i32* @CPU_FTR_HVMODE, align 4
  %351 = call i64 @cpu_has_feature(i32 %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %358

353:                                              ; preds = %349
  %354 = load i32, i32* %19, align 4
  %355 = call i64 @MMCR2_FCH(i32 %354)
  %356 = load i64, i64* %13, align 8
  %357 = or i64 %356, %355
  store i64 %357, i64* %13, align 8
  br label %363

358:                                              ; preds = %349
  %359 = load i32, i32* %19, align 4
  %360 = call i64 @MMCR2_FCS(i32 %359)
  %361 = load i64, i64* %13, align 8
  %362 = or i64 %361, %360
  store i64 %362, i64* %13, align 8
  br label %363

363:                                              ; preds = %358, %353
  br label %364

364:                                              ; preds = %363, %339
  %365 = load i32, i32* %19, align 4
  %366 = sub i32 %365, 1
  %367 = load i32*, i32** %8, align 8
  %368 = load i32, i32* %21, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %367, i64 %369
  store i32 %366, i32* %370, align 4
  br label %371

371:                                              ; preds = %364
  %372 = load i32, i32* %21, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %21, align 4
  br label %48

374:                                              ; preds = %48
  %375 = load i64*, i64** %9, align 8
  %376 = getelementptr inbounds i64, i64* %375, i64 0
  store i64 0, i64* %376, align 8
  %377 = load i32, i32* %20, align 4
  %378 = and i32 %377, 2
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %384

380:                                              ; preds = %374
  %381 = load i64, i64* @MMCR0_PMC1CE, align 8
  %382 = load i64*, i64** %9, align 8
  %383 = getelementptr inbounds i64, i64* %382, i64 0
  store i64 %381, i64* %383, align 8
  br label %384

384:                                              ; preds = %380, %374
  %385 = load i32, i32* %20, align 4
  %386 = and i32 %385, 124
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %394

388:                                              ; preds = %384
  %389 = load i64, i64* @MMCR0_PMCjCE, align 8
  %390 = load i64*, i64** %9, align 8
  %391 = getelementptr inbounds i64, i64* %390, i64 0
  %392 = load i64, i64* %391, align 8
  %393 = or i64 %392, %389
  store i64 %393, i64* %391, align 8
  br label %394

394:                                              ; preds = %388, %384
  %395 = load i32, i32* %20, align 4
  %396 = and i32 %395, 96
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %404, label %398

398:                                              ; preds = %394
  %399 = load i64, i64* @MMCR0_FC56, align 8
  %400 = load i64*, i64** %9, align 8
  %401 = getelementptr inbounds i64, i64* %400, i64 0
  %402 = load i64, i64* %401, align 8
  %403 = or i64 %402, %399
  store i64 %403, i64* %401, align 8
  br label %404

404:                                              ; preds = %398, %394
  %405 = load i64, i64* %12, align 8
  %406 = load i64*, i64** %9, align 8
  %407 = getelementptr inbounds i64, i64* %406, i64 1
  store i64 %405, i64* %407, align 8
  %408 = load i64, i64* %11, align 8
  %409 = load i64*, i64** %9, align 8
  %410 = getelementptr inbounds i64, i64* %409, i64 2
  store i64 %408, i64* %410, align 8
  %411 = load i64, i64* %13, align 8
  %412 = load i64*, i64** %9, align 8
  %413 = getelementptr inbounds i64, i64* %412, i64 3
  store i64 %411, i64* %413, align 8
  ret i32 0
}

declare dso_local i64 @combine_from_event(i32) #1

declare dso_local i64 @MMCR1_UNIT_SHIFT(i32) #1

declare dso_local i64 @combine_shift(i32) #1

declare dso_local i64 @MMCR1_PMCSEL_SHIFT(i32) #1

declare dso_local i32 @mmcra_sdar_mode(i32, i64*) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i64 @dc_ic_rld_quad_l1_sel(i32) #1

declare dso_local i64 @is_event_marked(i32) #1

declare dso_local i64 @event_is_fab_match(i32) #1

declare dso_local i64 @thresh_cmp_val(i64) #1

declare dso_local i64 @MMCR2_FCP(i32) #1

declare dso_local i64 @MMCR2_FCH(i32) #1

declare dso_local i64 @MMCR2_FCS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
