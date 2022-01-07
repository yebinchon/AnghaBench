; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power5-pmu.c_power5_compute_mmcr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power5-pmu.c_power5_compute_mmcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }

@MMCRA_SDAR_DCACHE_MISS = common dso_local global i64 0, align 8
@MMCRA_SDAR_ERAT_MISS = common dso_local global i64 0, align 8
@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@PM_BUSEVENT_MSK = common dso_local global i32 0, align 4
@PM_UNIT_SH = common dso_local global i32 0, align 4
@PM_UNIT_MSK = common dso_local global i32 0, align 4
@PM_BYTE_SH = common dso_local global i32 0, align 4
@PM_BYTE_MSK = common dso_local global i32 0, align 4
@PM_LASTUNIT = common dso_local global i32 0, align 4
@PM_ISU0_ALT = common dso_local global i32 0, align 4
@PM_ISU0 = common dso_local global i64 0, align 8
@PM_LSU1 = common dso_local global i32 0, align 4
@PM_FPU = common dso_local global i64 0, align 8
@PM_IFU = common dso_local global i64 0, align 8
@PM_ISU1 = common dso_local global i64 0, align 8
@MMCR1_TTM0SEL_SH = common dso_local global i64 0, align 8
@PM_GRS = common dso_local global i32 0, align 4
@MMCR1_TTM1SEL_SH = common dso_local global i64 0, align 8
@MMCR1_TTM3SEL_SH = common dso_local global i32 0, align 4
@MMCR1_TD_CP_DBG0SEL_SH = common dso_local global i32 0, align 4
@PM_PMCSEL_MSK = common dso_local global i32 0, align 4
@MMCR1_PMC1_ADDER_SEL_SH = common dso_local global i32 0, align 4
@PM_GRS_SH = common dso_local global i32 0, align 4
@PM_GRS_MSK = common dso_local global i32 0, align 4
@grsel_shift = common dso_local global i64* null, align 8
@MMCRA_SAMPLE_ENABLE = common dso_local global i64 0, align 8
@MMCR0_PMC1CE = common dso_local global i64 0, align 8
@MMCR0_PMCjCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64*, %struct.perf_event**)* @power5_compute_mmcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power5_compute_mmcr(i32* %0, i32 %1, i32* %2, i64* %3, %struct.perf_event** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.perf_event**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [2 x i32], align 4
  %26 = alloca [4 x i8], align 1
  %27 = alloca [16 x i8], align 16
  %28 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.perf_event** %4, %struct.perf_event*** %11, align 8
  store i64 0, i64* %12, align 8
  %29 = load i64, i64* @MMCRA_SDAR_DCACHE_MISS, align 8
  %30 = load i64, i64* @MMCRA_SDAR_ERAT_MISS, align 8
  %31 = or i64 %29, %30
  store i64 %31, i64* %13, align 8
  store i32 0, i32* %24, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 6
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %548

35:                                               ; preds = %5
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 1
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 0
  %39 = call i32 @memset(i8* %38, i32 0, i32 4)
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %27, i64 0, i64 0
  %41 = call i32 @memset(i8* %40, i32 0, i32 16)
  store i32 0, i32* %20, align 4
  br label %42

42:                                               ; preds = %175, %35
  %43 = load i32, i32* %20, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %178

46:                                               ; preds = %42
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %20, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PM_PMC_SH, align 4
  %53 = ashr i32 %51, %52
  %54 = load i32, i32* @PM_PMC_MSK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %46
  %59 = load i32, i32* %14, align 4
  %60 = icmp ugt i32 %59, 6
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 -1, i32* %6, align 4
  br label %548

62:                                               ; preds = %58
  %63 = load i32, i32* %24, align 4
  %64 = load i32, i32* %14, align 4
  %65 = sub i32 %64, 1
  %66 = shl i32 1, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 -1, i32* %6, align 4
  br label %548

70:                                               ; preds = %62
  %71 = load i32, i32* %14, align 4
  %72 = sub i32 %71, 1
  %73 = shl i32 1, %72
  %74 = load i32, i32* %24, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %24, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ule i32 %76, 4
  br i1 %77, label %78, label %86

78:                                               ; preds = %70
  %79 = load i32, i32* %14, align 4
  %80 = sub i32 %79, 1
  %81 = lshr i32 %80, 1
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %78, %70
  br label %87

87:                                               ; preds = %86, %46
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %20, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @PM_BUSEVENT_MSK, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %174

96:                                               ; preds = %87
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %20, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @PM_UNIT_SH, align 4
  %103 = ashr i32 %101, %102
  %104 = load i32, i32* @PM_UNIT_MSK, align 4
  %105 = and i32 %103, %104
  store i32 %105, i32* %15, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %20, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @PM_BYTE_SH, align 4
  %112 = ashr i32 %110, %111
  %113 = load i32, i32* @PM_BYTE_MSK, align 4
  %114 = and i32 %112, %113
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* @PM_LASTUNIT, align 4
  %117 = icmp ugt i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %96
  store i32 -1, i32* %6, align 4
  br label %548

119:                                              ; preds = %96
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* @PM_ISU0_ALT, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i64, i64* @PM_ISU0, align 8
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %15, align 4
  br label %126

126:                                              ; preds = %123, %119
  %127 = load i32, i32* %16, align 4
  %128 = icmp uge i32 %127, 4
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* @PM_LSU1, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i32 -1, i32* %6, align 4
  br label %548

134:                                              ; preds = %129
  %135 = load i32, i32* %15, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %16, align 4
  %138 = and i32 %137, 3
  store i32 %138, i32* %16, align 4
  br label %139

139:                                              ; preds = %134, %126
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %16, align 4
  %144 = and i32 %143, 1
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %142, %139
  %150 = load i32, i32* %16, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %149
  %157 = load i32, i32* %16, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = load i32, i32* %15, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  store i32 -1, i32* %6, align 4
  br label %548

165:                                              ; preds = %156, %149
  %166 = load i32, i32* %15, align 4
  %167 = trunc i32 %166 to i8
  %168 = load i32, i32* %16, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 %169
  store i8 %167, i8* %170, align 1
  %171 = load i32, i32* %15, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds [16 x i8], [16 x i8]* %27, i64 0, i64 %172
  store i8 1, i8* %173, align 1
  br label %174

174:                                              ; preds = %165, %87
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %20, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %20, align 4
  br label %42

178:                                              ; preds = %42
  %179 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp ugt i32 %180, 2
  br i1 %181, label %186, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp ugt i32 %184, 2
  br i1 %185, label %186, label %187

186:                                              ; preds = %182, %178
  store i32 -1, i32* %6, align 4
  br label %548

187:                                              ; preds = %182
  %188 = load i64, i64* @PM_ISU0, align 8
  %189 = getelementptr inbounds [16 x i8], [16 x i8]* %27, i64 0, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = load i64, i64* @PM_FPU, align 8
  %193 = getelementptr inbounds [16 x i8], [16 x i8]* %27, i64 0, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = load i64, i64* @PM_IFU, align 8
  %197 = getelementptr inbounds [16 x i8], [16 x i8]* %27, i64 0, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = or i32 %195, %199
  %201 = load i64, i64* @PM_ISU1, align 8
  %202 = getelementptr inbounds [16 x i8], [16 x i8]* %27, i64 0, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = or i32 %200, %204
  %206 = and i32 %191, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %187
  %209 = load i32, i32* @PM_ISU0_ALT, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds [16 x i8], [16 x i8]* %27, i64 0, i64 %210
  store i8 1, i8* %211, align 1
  %212 = load i64, i64* @PM_ISU0, align 8
  %213 = getelementptr inbounds [16 x i8], [16 x i8]* %27, i64 0, i64 %212
  store i8 0, i8* %213, align 1
  br label %214

214:                                              ; preds = %208, %187
  store i32 0, i32* %28, align 4
  %215 = load i64, i64* @PM_FPU, align 8
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %20, align 4
  br label %217

217:                                              ; preds = %241, %214
  %218 = load i32, i32* %20, align 4
  %219 = sext i32 %218 to i64
  %220 = load i64, i64* @PM_ISU1, align 8
  %221 = icmp ule i64 %219, %220
  br i1 %221, label %222, label %244

222:                                              ; preds = %217
  %223 = load i32, i32* %20, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [16 x i8], [16 x i8]* %27, i64 0, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = icmp ne i8 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %222
  br label %241

229:                                              ; preds = %222
  %230 = load i32, i32* %28, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %28, align 4
  %232 = icmp ne i32 %230, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %229
  store i32 -1, i32* %6, align 4
  br label %548

234:                                              ; preds = %229
  %235 = load i32, i32* %20, align 4
  %236 = sext i32 %235 to i64
  %237 = load i64, i64* @MMCR1_TTM0SEL_SH, align 8
  %238 = shl i64 %236, %237
  %239 = load i64, i64* %12, align 8
  %240 = or i64 %239, %238
  store i64 %240, i64* %12, align 8
  br label %241

241:                                              ; preds = %234, %228
  %242 = load i32, i32* %20, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %20, align 4
  br label %217

244:                                              ; preds = %217
  store i32 0, i32* %28, align 4
  br label %245

245:                                              ; preds = %269, %244
  %246 = load i32, i32* %20, align 4
  %247 = load i32, i32* @PM_GRS, align 4
  %248 = icmp sle i32 %246, %247
  br i1 %248, label %249, label %272

249:                                              ; preds = %245
  %250 = load i32, i32* %20, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [16 x i8], [16 x i8]* %27, i64 0, i64 %251
  %253 = load i8, i8* %252, align 1
  %254 = icmp ne i8 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %249
  br label %269

256:                                              ; preds = %249
  %257 = load i32, i32* %28, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %28, align 4
  %259 = icmp ne i32 %257, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %256
  store i32 -1, i32* %6, align 4
  br label %548

261:                                              ; preds = %256
  %262 = load i32, i32* %20, align 4
  %263 = and i32 %262, 3
  %264 = sext i32 %263 to i64
  %265 = load i64, i64* @MMCR1_TTM1SEL_SH, align 8
  %266 = shl i64 %264, %265
  %267 = load i64, i64* %12, align 8
  %268 = or i64 %267, %266
  store i64 %268, i64* %12, align 8
  br label %269

269:                                              ; preds = %261, %255
  %270 = load i32, i32* %20, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %20, align 4
  br label %245

272:                                              ; preds = %245
  %273 = load i32, i32* %28, align 4
  %274 = icmp sgt i32 %273, 1
  br i1 %274, label %275, label %276

275:                                              ; preds = %272
  store i32 -1, i32* %6, align 4
  br label %548

276:                                              ; preds = %272
  store i32 0, i32* %16, align 4
  br label %277

277:                                              ; preds = %331, %276
  %278 = load i32, i32* %16, align 4
  %279 = icmp ult i32 %278, 4
  br i1 %279, label %280, label %334

280:                                              ; preds = %277
  %281 = load i32, i32* %16, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i64 0, i64 %282
  %284 = load i8, i8* %283, align 1
  %285 = zext i8 %284 to i32
  store i32 %285, i32* %15, align 4
  %286 = load i32, i32* %15, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %280
  br label %331

289:                                              ; preds = %280
  %290 = load i32, i32* %15, align 4
  %291 = zext i32 %290 to i64
  %292 = load i64, i64* @PM_ISU0, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %303

294:                                              ; preds = %289
  %295 = load i32, i32* @PM_ISU0_ALT, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds [16 x i8], [16 x i8]* %27, i64 0, i64 %296
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i32
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %294
  %302 = load i32, i32* @PM_ISU0_ALT, align 4
  store i32 %302, i32* %15, align 4
  br label %318

303:                                              ; preds = %294, %289
  %304 = load i32, i32* %15, align 4
  %305 = load i32, i32* @PM_LSU1, align 4
  %306 = add i32 %305, 1
  %307 = icmp eq i32 %304, %306
  br i1 %307, label %308, label %317

308:                                              ; preds = %303
  %309 = load i32, i32* @MMCR1_TTM3SEL_SH, align 4
  %310 = add nsw i32 %309, 3
  %311 = load i32, i32* %16, align 4
  %312 = sub i32 %310, %311
  %313 = zext i32 %312 to i64
  %314 = shl i64 1, %313
  %315 = load i64, i64* %12, align 8
  %316 = or i64 %315, %314
  store i64 %316, i64* %12, align 8
  br label %317

317:                                              ; preds = %308, %303
  br label %318

318:                                              ; preds = %317, %301
  %319 = load i32, i32* %15, align 4
  %320 = lshr i32 %319, 2
  store i32 %320, i32* %18, align 4
  %321 = load i32, i32* %18, align 4
  %322 = zext i32 %321 to i64
  %323 = load i32, i32* @MMCR1_TD_CP_DBG0SEL_SH, align 4
  %324 = load i32, i32* %16, align 4
  %325 = mul i32 2, %324
  %326 = sub i32 %323, %325
  %327 = zext i32 %326 to i64
  %328 = shl i64 %322, %327
  %329 = load i64, i64* %12, align 8
  %330 = or i64 %329, %328
  store i64 %330, i64* %12, align 8
  br label %331

331:                                              ; preds = %318, %288
  %332 = load i32, i32* %16, align 4
  %333 = add i32 %332, 1
  store i32 %333, i32* %16, align 4
  br label %277

334:                                              ; preds = %277
  store i32 0, i32* %20, align 4
  br label %335

335:                                              ; preds = %518, %334
  %336 = load i32, i32* %20, align 4
  %337 = load i32, i32* %8, align 4
  %338 = icmp slt i32 %336, %337
  br i1 %338, label %339, label %521

339:                                              ; preds = %335
  %340 = load i32*, i32** %7, align 8
  %341 = load i32, i32* %20, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @PM_PMC_SH, align 4
  %346 = ashr i32 %344, %345
  %347 = load i32, i32* @PM_PMC_MSK, align 4
  %348 = and i32 %346, %347
  store i32 %348, i32* %14, align 4
  %349 = load i32*, i32** %7, align 8
  %350 = load i32, i32* %20, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @PM_UNIT_SH, align 4
  %355 = ashr i32 %353, %354
  %356 = load i32, i32* @PM_UNIT_MSK, align 4
  %357 = and i32 %355, %356
  store i32 %357, i32* %15, align 4
  %358 = load i32*, i32** %7, align 8
  %359 = load i32, i32* %20, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @PM_BYTE_SH, align 4
  %364 = ashr i32 %362, %363
  %365 = load i32, i32* @PM_BYTE_MSK, align 4
  %366 = and i32 %364, %365
  store i32 %366, i32* %16, align 4
  %367 = load i32*, i32** %7, align 8
  %368 = load i32, i32* %20, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %367, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* @PM_PMCSEL_MSK, align 4
  %373 = and i32 %371, %372
  store i32 %373, i32* %17, align 4
  %374 = load i32*, i32** %7, align 8
  %375 = load i32, i32* %20, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @PM_BUSEVENT_MSK, align 4
  %380 = and i32 %378, %379
  store i32 %380, i32* %21, align 4
  %381 = load i32, i32* %14, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %429, label %383

383:                                              ; preds = %339
  store i32 0, i32* %14, align 4
  br label %384

384:                                              ; preds = %421, %383
  %385 = load i32, i32* %14, align 4
  %386 = icmp ult i32 %385, 4
  br i1 %386, label %387, label %424

387:                                              ; preds = %384
  %388 = load i32, i32* %24, align 4
  %389 = load i32, i32* %14, align 4
  %390 = shl i32 1, %389
  %391 = and i32 %388, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %387
  br label %421

394:                                              ; preds = %387
  %395 = load i32, i32* %14, align 4
  %396 = lshr i32 %395, 1
  %397 = and i32 %396, 1
  store i32 %397, i32* %19, align 4
  %398 = load i32, i32* %21, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %407

400:                                              ; preds = %394
  %401 = load i32, i32* %19, align 4
  %402 = load i32, i32* %16, align 4
  %403 = and i32 %402, 1
  %404 = icmp eq i32 %401, %403
  br i1 %404, label %405, label %406

405:                                              ; preds = %400
  br label %424

406:                                              ; preds = %400
  br label %420

407:                                              ; preds = %394
  %408 = load i32, i32* %19, align 4
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = icmp ult i32 %411, 2
  br i1 %412, label %413, label %419

413:                                              ; preds = %407
  %414 = load i32, i32* %19, align 4
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = add i32 %417, 1
  store i32 %418, i32* %416, align 4
  br label %424

419:                                              ; preds = %407
  br label %420

420:                                              ; preds = %419, %406
  br label %421

421:                                              ; preds = %420, %393
  %422 = load i32, i32* %14, align 4
  %423 = add i32 %422, 1
  store i32 %423, i32* %14, align 4
  br label %384

424:                                              ; preds = %413, %405, %384
  %425 = load i32, i32* %14, align 4
  %426 = shl i32 1, %425
  %427 = load i32, i32* %24, align 4
  %428 = or i32 %427, %426
  store i32 %428, i32* %24, align 4
  br label %460

429:                                              ; preds = %339
  %430 = load i32, i32* %14, align 4
  %431 = icmp ule i32 %430, 4
  br i1 %431, label %432, label %456

432:                                              ; preds = %429
  %433 = load i32, i32* %14, align 4
  %434 = add i32 %433, -1
  store i32 %434, i32* %14, align 4
  %435 = load i32, i32* %17, align 4
  %436 = icmp eq i32 %435, 8
  br i1 %436, label %440, label %437

437:                                              ; preds = %432
  %438 = load i32, i32* %17, align 4
  %439 = icmp eq i32 %438, 16
  br i1 %439, label %440, label %455

440:                                              ; preds = %437, %432
  %441 = load i32, i32* %21, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %455

443:                                              ; preds = %440
  %444 = load i32, i32* %16, align 4
  %445 = and i32 %444, 2
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %455

447:                                              ; preds = %443
  %448 = load i32, i32* @MMCR1_PMC1_ADDER_SEL_SH, align 4
  %449 = load i32, i32* %14, align 4
  %450 = sub i32 %448, %449
  %451 = zext i32 %450 to i64
  %452 = shl i64 1, %451
  %453 = load i64, i64* %12, align 8
  %454 = or i64 %453, %452
  store i64 %454, i64* %12, align 8
  br label %455

455:                                              ; preds = %447, %443, %440, %437
  br label %459

456:                                              ; preds = %429
  %457 = load i32, i32* %14, align 4
  %458 = add i32 %457, -1
  store i32 %458, i32* %14, align 4
  br label %459

459:                                              ; preds = %456, %455
  br label %460

460:                                              ; preds = %459, %424
  %461 = load i32, i32* %21, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %489

463:                                              ; preds = %460
  %464 = load i32, i32* %15, align 4
  %465 = load i32, i32* @PM_GRS, align 4
  %466 = icmp eq i32 %464, %465
  br i1 %466, label %467, label %489

467:                                              ; preds = %463
  %468 = load i32, i32* %17, align 4
  %469 = and i32 %468, 7
  store i32 %469, i32* %22, align 4
  %470 = load i32*, i32** %7, align 8
  %471 = load i32, i32* %20, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %470, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = load i32, i32* @PM_GRS_SH, align 4
  %476 = ashr i32 %474, %475
  %477 = load i32, i32* @PM_GRS_MSK, align 4
  %478 = and i32 %476, %477
  store i32 %478, i32* %23, align 4
  %479 = load i32, i32* %23, align 4
  %480 = sext i32 %479 to i64
  %481 = load i64*, i64** @grsel_shift, align 8
  %482 = load i32, i32* %22, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i64, i64* %481, i64 %483
  %485 = load i64, i64* %484, align 8
  %486 = shl i64 %480, %485
  %487 = load i64, i64* %12, align 8
  %488 = or i64 %487, %486
  store i64 %488, i64* %12, align 8
  br label %489

489:                                              ; preds = %467, %463, %460
  %490 = load i32*, i32** %7, align 8
  %491 = load i32, i32* %20, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i32, i32* %490, i64 %492
  %494 = load i32, i32* %493, align 4
  %495 = call i64 @power5_marked_instr_event(i32 %494)
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %497, label %501

497:                                              ; preds = %489
  %498 = load i64, i64* @MMCRA_SAMPLE_ENABLE, align 8
  %499 = load i64, i64* %13, align 8
  %500 = or i64 %499, %498
  store i64 %500, i64* %13, align 8
  br label %501

501:                                              ; preds = %497, %489
  %502 = load i32, i32* %14, align 4
  %503 = icmp ule i32 %502, 3
  br i1 %503, label %504, label %512

504:                                              ; preds = %501
  %505 = load i32, i32* %17, align 4
  %506 = load i32, i32* %14, align 4
  %507 = call i32 @MMCR1_PMCSEL_SH(i32 %506)
  %508 = shl i32 %505, %507
  %509 = zext i32 %508 to i64
  %510 = load i64, i64* %12, align 8
  %511 = or i64 %510, %509
  store i64 %511, i64* %12, align 8
  br label %512

512:                                              ; preds = %504, %501
  %513 = load i32, i32* %14, align 4
  %514 = load i32*, i32** %9, align 8
  %515 = load i32, i32* %20, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i32, i32* %514, i64 %516
  store i32 %513, i32* %517, align 4
  br label %518

518:                                              ; preds = %512
  %519 = load i32, i32* %20, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %20, align 4
  br label %335

521:                                              ; preds = %335
  %522 = load i64*, i64** %10, align 8
  %523 = getelementptr inbounds i64, i64* %522, i64 0
  store i64 0, i64* %523, align 8
  %524 = load i32, i32* %24, align 4
  %525 = and i32 %524, 1
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %531

527:                                              ; preds = %521
  %528 = load i64, i64* @MMCR0_PMC1CE, align 8
  %529 = load i64*, i64** %10, align 8
  %530 = getelementptr inbounds i64, i64* %529, i64 0
  store i64 %528, i64* %530, align 8
  br label %531

531:                                              ; preds = %527, %521
  %532 = load i32, i32* %24, align 4
  %533 = and i32 %532, 62
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %541

535:                                              ; preds = %531
  %536 = load i64, i64* @MMCR0_PMCjCE, align 8
  %537 = load i64*, i64** %10, align 8
  %538 = getelementptr inbounds i64, i64* %537, i64 0
  %539 = load i64, i64* %538, align 8
  %540 = or i64 %539, %536
  store i64 %540, i64* %538, align 8
  br label %541

541:                                              ; preds = %535, %531
  %542 = load i64, i64* %12, align 8
  %543 = load i64*, i64** %10, align 8
  %544 = getelementptr inbounds i64, i64* %543, i64 1
  store i64 %542, i64* %544, align 8
  %545 = load i64, i64* %13, align 8
  %546 = load i64*, i64** %10, align 8
  %547 = getelementptr inbounds i64, i64* %546, i64 2
  store i64 %545, i64* %547, align 8
  store i32 0, i32* %6, align 4
  br label %548

548:                                              ; preds = %541, %275, %260, %233, %186, %164, %133, %118, %69, %61, %34
  %549 = load i32, i32* %6, align 4
  ret i32 %549
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @power5_marked_instr_event(i32) #1

declare dso_local i32 @MMCR1_PMCSEL_SH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
