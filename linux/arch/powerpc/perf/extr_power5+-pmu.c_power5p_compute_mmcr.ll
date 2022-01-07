; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power5+-pmu.c_power5p_compute_mmcr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power5+-pmu.c_power5p_compute_mmcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64*, %struct.perf_event**)* @power5p_compute_mmcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power5p_compute_mmcr(i32* %0, i32 %1, i32* %2, i64* %3, %struct.perf_event** %4) #0 {
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
  %24 = alloca [4 x i8], align 1
  %25 = alloca [16 x i8], align 16
  %26 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.perf_event** %4, %struct.perf_event*** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %23, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 6
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %506

30:                                               ; preds = %5
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 0
  %32 = call i32 @memset(i8* %31, i32 0, i32 4)
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 0
  %34 = call i32 @memset(i8* %33, i32 0, i32 16)
  store i32 0, i32* %19, align 4
  br label %35

35:                                               ; preds = %147, %30
  %36 = load i32, i32* %19, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %150

39:                                               ; preds = %35
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %19, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PM_PMC_SH, align 4
  %46 = ashr i32 %44, %45
  %47 = load i32, i32* @PM_PMC_MSK, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %39
  %52 = load i32, i32* %14, align 4
  %53 = icmp ugt i32 %52, 6
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 -1, i32* %6, align 4
  br label %506

55:                                               ; preds = %51
  %56 = load i32, i32* %23, align 4
  %57 = load i32, i32* %14, align 4
  %58 = sub i32 %57, 1
  %59 = shl i32 1, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 -1, i32* %6, align 4
  br label %506

63:                                               ; preds = %55
  %64 = load i32, i32* %14, align 4
  %65 = sub i32 %64, 1
  %66 = shl i32 1, %65
  %67 = load i32, i32* %23, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %23, align 4
  br label %69

69:                                               ; preds = %63, %39
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PM_BUSEVENT_MSK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %146

78:                                               ; preds = %69
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PM_UNIT_SH, align 4
  %85 = ashr i32 %83, %84
  %86 = load i32, i32* @PM_UNIT_MSK, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %15, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @PM_BYTE_SH, align 4
  %94 = ashr i32 %92, %93
  %95 = load i32, i32* @PM_BYTE_MSK, align 4
  %96 = and i32 %94, %95
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @PM_LASTUNIT, align 4
  %99 = icmp ugt i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %78
  store i32 -1, i32* %6, align 4
  br label %506

101:                                              ; preds = %78
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* @PM_ISU0_ALT, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i64, i64* @PM_ISU0, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %15, align 4
  br label %108

108:                                              ; preds = %105, %101
  %109 = load i32, i32* %16, align 4
  %110 = icmp uge i32 %109, 4
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* @PM_LSU1, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i32 -1, i32* %6, align 4
  br label %506

116:                                              ; preds = %111
  %117 = load i32, i32* %15, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %16, align 4
  %120 = and i32 %119, 3
  store i32 %120, i32* %16, align 4
  br label %121

121:                                              ; preds = %116, %108
  %122 = load i32, i32* %16, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %121
  %129 = load i32, i32* %16, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  store i32 -1, i32* %6, align 4
  br label %506

137:                                              ; preds = %128, %121
  %138 = load i32, i32* %15, align 4
  %139 = trunc i32 %138 to i8
  %140 = load i32, i32* %16, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 %141
  store i8 %139, i8* %142, align 1
  %143 = load i32, i32* %15, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 %144
  store i8 1, i8* %145, align 1
  br label %146

146:                                              ; preds = %137, %69
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %19, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %19, align 4
  br label %35

150:                                              ; preds = %35
  %151 = load i64, i64* @PM_ISU0, align 8
  %152 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = load i64, i64* @PM_FPU, align 8
  %156 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = load i64, i64* @PM_IFU, align 8
  %160 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = or i32 %158, %162
  %164 = load i64, i64* @PM_ISU1, align 8
  %165 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = or i32 %163, %167
  %169 = and i32 %154, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %150
  %172 = load i32, i32* @PM_ISU0_ALT, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 %173
  store i8 1, i8* %174, align 1
  %175 = load i64, i64* @PM_ISU0, align 8
  %176 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 %175
  store i8 0, i8* %176, align 1
  br label %177

177:                                              ; preds = %171, %150
  store i32 0, i32* %26, align 4
  %178 = load i64, i64* @PM_FPU, align 8
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %19, align 4
  br label %180

180:                                              ; preds = %204, %177
  %181 = load i32, i32* %19, align 4
  %182 = sext i32 %181 to i64
  %183 = load i64, i64* @PM_ISU1, align 8
  %184 = icmp ule i64 %182, %183
  br i1 %184, label %185, label %207

185:                                              ; preds = %180
  %186 = load i32, i32* %19, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = icmp ne i8 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %185
  br label %204

192:                                              ; preds = %185
  %193 = load i32, i32* %26, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %26, align 4
  %195 = icmp ne i32 %193, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  store i32 -1, i32* %6, align 4
  br label %506

197:                                              ; preds = %192
  %198 = load i32, i32* %19, align 4
  %199 = sext i32 %198 to i64
  %200 = load i64, i64* @MMCR1_TTM0SEL_SH, align 8
  %201 = shl i64 %199, %200
  %202 = load i64, i64* %12, align 8
  %203 = or i64 %202, %201
  store i64 %203, i64* %12, align 8
  br label %204

204:                                              ; preds = %197, %191
  %205 = load i32, i32* %19, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %19, align 4
  br label %180

207:                                              ; preds = %180
  store i32 0, i32* %26, align 4
  br label %208

208:                                              ; preds = %232, %207
  %209 = load i32, i32* %19, align 4
  %210 = load i32, i32* @PM_GRS, align 4
  %211 = icmp sle i32 %209, %210
  br i1 %211, label %212, label %235

212:                                              ; preds = %208
  %213 = load i32, i32* %19, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = icmp ne i8 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %212
  br label %232

219:                                              ; preds = %212
  %220 = load i32, i32* %26, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %26, align 4
  %222 = icmp ne i32 %220, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  store i32 -1, i32* %6, align 4
  br label %506

224:                                              ; preds = %219
  %225 = load i32, i32* %19, align 4
  %226 = and i32 %225, 3
  %227 = sext i32 %226 to i64
  %228 = load i64, i64* @MMCR1_TTM1SEL_SH, align 8
  %229 = shl i64 %227, %228
  %230 = load i64, i64* %12, align 8
  %231 = or i64 %230, %229
  store i64 %231, i64* %12, align 8
  br label %232

232:                                              ; preds = %224, %218
  %233 = load i32, i32* %19, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %19, align 4
  br label %208

235:                                              ; preds = %208
  %236 = load i32, i32* %26, align 4
  %237 = icmp sgt i32 %236, 1
  br i1 %237, label %238, label %239

238:                                              ; preds = %235
  store i32 -1, i32* %6, align 4
  br label %506

239:                                              ; preds = %235
  store i32 0, i32* %16, align 4
  br label %240

240:                                              ; preds = %294, %239
  %241 = load i32, i32* %16, align 4
  %242 = icmp ult i32 %241, 4
  br i1 %242, label %243, label %297

243:                                              ; preds = %240
  %244 = load i32, i32* %16, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  store i32 %248, i32* %15, align 4
  %249 = load i32, i32* %15, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %243
  br label %294

252:                                              ; preds = %243
  %253 = load i32, i32* %15, align 4
  %254 = zext i32 %253 to i64
  %255 = load i64, i64* @PM_ISU0, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %266

257:                                              ; preds = %252
  %258 = load i32, i32* @PM_ISU0_ALT, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = zext i8 %261 to i32
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %257
  %265 = load i32, i32* @PM_ISU0_ALT, align 4
  store i32 %265, i32* %15, align 4
  br label %281

266:                                              ; preds = %257, %252
  %267 = load i32, i32* %15, align 4
  %268 = load i32, i32* @PM_LSU1, align 4
  %269 = add i32 %268, 1
  %270 = icmp eq i32 %267, %269
  br i1 %270, label %271, label %280

271:                                              ; preds = %266
  %272 = load i32, i32* @MMCR1_TTM3SEL_SH, align 4
  %273 = add nsw i32 %272, 3
  %274 = load i32, i32* %16, align 4
  %275 = sub i32 %273, %274
  %276 = zext i32 %275 to i64
  %277 = shl i64 1, %276
  %278 = load i64, i64* %12, align 8
  %279 = or i64 %278, %277
  store i64 %279, i64* %12, align 8
  br label %280

280:                                              ; preds = %271, %266
  br label %281

281:                                              ; preds = %280, %264
  %282 = load i32, i32* %15, align 4
  %283 = lshr i32 %282, 2
  store i32 %283, i32* %18, align 4
  %284 = load i32, i32* %18, align 4
  %285 = zext i32 %284 to i64
  %286 = load i32, i32* @MMCR1_TD_CP_DBG0SEL_SH, align 4
  %287 = load i32, i32* %16, align 4
  %288 = mul i32 2, %287
  %289 = sub i32 %286, %288
  %290 = zext i32 %289 to i64
  %291 = shl i64 %285, %290
  %292 = load i64, i64* %12, align 8
  %293 = or i64 %292, %291
  store i64 %293, i64* %12, align 8
  br label %294

294:                                              ; preds = %281, %251
  %295 = load i32, i32* %16, align 4
  %296 = add i32 %295, 1
  store i32 %296, i32* %16, align 4
  br label %240

297:                                              ; preds = %240
  store i32 0, i32* %19, align 4
  br label %298

298:                                              ; preds = %476, %297
  %299 = load i32, i32* %19, align 4
  %300 = load i32, i32* %8, align 4
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %302, label %479

302:                                              ; preds = %298
  %303 = load i32*, i32** %7, align 8
  %304 = load i32, i32* %19, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @PM_PMC_SH, align 4
  %309 = ashr i32 %307, %308
  %310 = load i32, i32* @PM_PMC_MSK, align 4
  %311 = and i32 %309, %310
  store i32 %311, i32* %14, align 4
  %312 = load i32*, i32** %7, align 8
  %313 = load i32, i32* %19, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @PM_UNIT_SH, align 4
  %318 = ashr i32 %316, %317
  %319 = load i32, i32* @PM_UNIT_MSK, align 4
  %320 = and i32 %318, %319
  store i32 %320, i32* %15, align 4
  %321 = load i32*, i32** %7, align 8
  %322 = load i32, i32* %19, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @PM_BYTE_SH, align 4
  %327 = ashr i32 %325, %326
  %328 = load i32, i32* @PM_BYTE_MSK, align 4
  %329 = and i32 %327, %328
  store i32 %329, i32* %16, align 4
  %330 = load i32*, i32** %7, align 8
  %331 = load i32, i32* %19, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @PM_PMCSEL_MSK, align 4
  %336 = and i32 %334, %335
  store i32 %336, i32* %17, align 4
  %337 = load i32*, i32** %7, align 8
  %338 = load i32, i32* %19, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @PM_BUSEVENT_MSK, align 4
  %343 = and i32 %341, %342
  store i32 %343, i32* %20, align 4
  %344 = load i32, i32* %14, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %370, label %346

346:                                              ; preds = %302
  store i32 0, i32* %14, align 4
  br label %347

347:                                              ; preds = %358, %346
  %348 = load i32, i32* %14, align 4
  %349 = icmp ult i32 %348, 4
  br i1 %349, label %350, label %361

350:                                              ; preds = %347
  %351 = load i32, i32* %23, align 4
  %352 = load i32, i32* %14, align 4
  %353 = shl i32 1, %352
  %354 = and i32 %351, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %357, label %356

356:                                              ; preds = %350
  br label %361

357:                                              ; preds = %350
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %14, align 4
  %360 = add i32 %359, 1
  store i32 %360, i32* %14, align 4
  br label %347

361:                                              ; preds = %356, %347
  %362 = load i32, i32* %14, align 4
  %363 = icmp uge i32 %362, 4
  br i1 %363, label %364, label %365

364:                                              ; preds = %361
  store i32 -1, i32* %6, align 4
  br label %506

365:                                              ; preds = %361
  %366 = load i32, i32* %14, align 4
  %367 = shl i32 1, %366
  %368 = load i32, i32* %23, align 4
  %369 = or i32 %368, %367
  store i32 %369, i32* %23, align 4
  br label %404

370:                                              ; preds = %302
  %371 = load i32, i32* %14, align 4
  %372 = icmp ule i32 %371, 4
  br i1 %372, label %373, label %400

373:                                              ; preds = %370
  %374 = load i32, i32* %14, align 4
  %375 = add i32 %374, -1
  store i32 %375, i32* %14, align 4
  %376 = load i32, i32* %20, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %399

378:                                              ; preds = %373
  %379 = load i32, i32* %16, align 4
  %380 = and i32 %379, 2
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %399

382:                                              ; preds = %378
  %383 = load i32, i32* %17, align 4
  %384 = icmp eq i32 %383, 8
  br i1 %384, label %391, label %385

385:                                              ; preds = %382
  %386 = load i32, i32* %17, align 4
  %387 = icmp eq i32 %386, 16
  br i1 %387, label %391, label %388

388:                                              ; preds = %385
  %389 = load i32, i32* %17, align 4
  %390 = icmp eq i32 %389, 40
  br i1 %390, label %391, label %399

391:                                              ; preds = %388, %385, %382
  %392 = load i32, i32* @MMCR1_PMC1_ADDER_SEL_SH, align 4
  %393 = load i32, i32* %14, align 4
  %394 = sub i32 %392, %393
  %395 = zext i32 %394 to i64
  %396 = shl i64 1, %395
  %397 = load i64, i64* %12, align 8
  %398 = or i64 %397, %396
  store i64 %398, i64* %12, align 8
  br label %399

399:                                              ; preds = %391, %388, %378, %373
  br label %403

400:                                              ; preds = %370
  %401 = load i32, i32* %14, align 4
  %402 = add i32 %401, -1
  store i32 %402, i32* %14, align 4
  br label %403

403:                                              ; preds = %400, %399
  br label %404

404:                                              ; preds = %403, %365
  %405 = load i32, i32* %20, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %433

407:                                              ; preds = %404
  %408 = load i32, i32* %15, align 4
  %409 = load i32, i32* @PM_GRS, align 4
  %410 = icmp eq i32 %408, %409
  br i1 %410, label %411, label %433

411:                                              ; preds = %407
  %412 = load i32, i32* %17, align 4
  %413 = and i32 %412, 7
  store i32 %413, i32* %21, align 4
  %414 = load i32*, i32** %7, align 8
  %415 = load i32, i32* %19, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* @PM_GRS_SH, align 4
  %420 = ashr i32 %418, %419
  %421 = load i32, i32* @PM_GRS_MSK, align 4
  %422 = and i32 %420, %421
  store i32 %422, i32* %22, align 4
  %423 = load i32, i32* %22, align 4
  %424 = sext i32 %423 to i64
  %425 = load i64*, i64** @grsel_shift, align 8
  %426 = load i32, i32* %21, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i64, i64* %425, i64 %427
  %429 = load i64, i64* %428, align 8
  %430 = shl i64 %424, %429
  %431 = load i64, i64* %12, align 8
  %432 = or i64 %431, %430
  store i64 %432, i64* %12, align 8
  br label %433

433:                                              ; preds = %411, %407, %404
  %434 = load i32*, i32** %7, align 8
  %435 = load i32, i32* %19, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %434, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = call i64 @power5p_marked_instr_event(i32 %438)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %445

441:                                              ; preds = %433
  %442 = load i64, i64* @MMCRA_SAMPLE_ENABLE, align 8
  %443 = load i64, i64* %13, align 8
  %444 = or i64 %443, %442
  store i64 %444, i64* %13, align 8
  br label %445

445:                                              ; preds = %441, %433
  %446 = load i32, i32* %17, align 4
  %447 = and i32 %446, 88
  %448 = icmp eq i32 %447, 64
  br i1 %448, label %449, label %459

449:                                              ; preds = %445
  %450 = load i32, i32* %16, align 4
  %451 = and i32 %450, 1
  %452 = load i32, i32* %14, align 4
  %453 = lshr i32 %452, 1
  %454 = and i32 %453, 1
  %455 = icmp ne i32 %451, %454
  br i1 %455, label %456, label %459

456:                                              ; preds = %449
  %457 = load i32, i32* %17, align 4
  %458 = or i32 %457, 16
  store i32 %458, i32* %17, align 4
  br label %459

459:                                              ; preds = %456, %449, %445
  %460 = load i32, i32* %14, align 4
  %461 = icmp ule i32 %460, 3
  br i1 %461, label %462, label %470

462:                                              ; preds = %459
  %463 = load i32, i32* %17, align 4
  %464 = load i32, i32* %14, align 4
  %465 = call i32 @MMCR1_PMCSEL_SH(i32 %464)
  %466 = shl i32 %463, %465
  %467 = zext i32 %466 to i64
  %468 = load i64, i64* %12, align 8
  %469 = or i64 %468, %467
  store i64 %469, i64* %12, align 8
  br label %470

470:                                              ; preds = %462, %459
  %471 = load i32, i32* %14, align 4
  %472 = load i32*, i32** %9, align 8
  %473 = load i32, i32* %19, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %472, i64 %474
  store i32 %471, i32* %475, align 4
  br label %476

476:                                              ; preds = %470
  %477 = load i32, i32* %19, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %19, align 4
  br label %298

479:                                              ; preds = %298
  %480 = load i64*, i64** %10, align 8
  %481 = getelementptr inbounds i64, i64* %480, i64 0
  store i64 0, i64* %481, align 8
  %482 = load i32, i32* %23, align 4
  %483 = and i32 %482, 1
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %489

485:                                              ; preds = %479
  %486 = load i64, i64* @MMCR0_PMC1CE, align 8
  %487 = load i64*, i64** %10, align 8
  %488 = getelementptr inbounds i64, i64* %487, i64 0
  store i64 %486, i64* %488, align 8
  br label %489

489:                                              ; preds = %485, %479
  %490 = load i32, i32* %23, align 4
  %491 = and i32 %490, 62
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %499

493:                                              ; preds = %489
  %494 = load i64, i64* @MMCR0_PMCjCE, align 8
  %495 = load i64*, i64** %10, align 8
  %496 = getelementptr inbounds i64, i64* %495, i64 0
  %497 = load i64, i64* %496, align 8
  %498 = or i64 %497, %494
  store i64 %498, i64* %496, align 8
  br label %499

499:                                              ; preds = %493, %489
  %500 = load i64, i64* %12, align 8
  %501 = load i64*, i64** %10, align 8
  %502 = getelementptr inbounds i64, i64* %501, i64 1
  store i64 %500, i64* %502, align 8
  %503 = load i64, i64* %13, align 8
  %504 = load i64*, i64** %10, align 8
  %505 = getelementptr inbounds i64, i64* %504, i64 2
  store i64 %503, i64* %505, align 8
  store i32 0, i32* %6, align 4
  br label %506

506:                                              ; preds = %499, %364, %238, %223, %196, %136, %115, %100, %62, %54, %29
  %507 = load i32, i32* %6, align 4
  ret i32 %507
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @power5p_marked_instr_event(i32) #1

declare dso_local i32 @MMCR1_PMCSEL_SH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
