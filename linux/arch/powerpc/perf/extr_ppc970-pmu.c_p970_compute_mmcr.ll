; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_ppc970-pmu.c_p970_compute_mmcr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_ppc970-pmu.c_p970_compute_mmcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }

@__const.p970_compute_mmcr.unitmap = private unnamed_addr constant [7 x i8] c"\00\00\18\08\10\04\07", align 1
@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@PM_UNIT_SH = common dso_local global i32 0, align 4
@PM_UNIT_MSK = common dso_local global i32 0, align 4
@PM_BYTE_SH = common dso_local global i32 0, align 4
@PM_BYTE_MSK = common dso_local global i32 0, align 4
@PM_LASTUNIT = common dso_local global i32 0, align 4
@PM_ISU = common dso_local global i64 0, align 8
@PM_FPU = common dso_local global i64 0, align 8
@PM_IFU = common dso_local global i64 0, align 8
@PM_VPU = common dso_local global i64 0, align 8
@PM_STS = common dso_local global i32 0, align 4
@MMCR1_TTM1SEL_SH = common dso_local global i64 0, align 8
@PM_LSU0 = common dso_local global i32 0, align 4
@PM_LSU1L = common dso_local global i32 0, align 4
@MMCR1_TTM3SEL_SH = common dso_local global i32 0, align 4
@MMCR1_TD_CP_DBG0SEL_SH = common dso_local global i32 0, align 4
@PM_PMCSEL_MSK = common dso_local global i32 0, align 4
@mmcr1_adder_bits = common dso_local global i64* null, align 8
@PM_SPCSEL_SH = common dso_local global i32 0, align 4
@PM_SPCSEL_MSK = common dso_local global i32 0, align 4
@MMCRA_SAMPLE_ENABLE = common dso_local global i64 0, align 8
@MMCR0_PMC1SEL_SH = common dso_local global i32 0, align 4
@MMCR1_PMC3SEL_SH = common dso_local global i32 0, align 4
@MMCR0_PMC1CE = common dso_local global i64 0, align 8
@MMCR0_PMCjCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64*, %struct.perf_event**)* @p970_compute_mmcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p970_compute_mmcr(i32* %0, i32 %1, i32* %2, i64* %3, %struct.perf_event** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.perf_event**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [2 x i32], align 4
  %23 = alloca [4 x i8], align 1
  %24 = alloca [16 x i8], align 16
  %25 = alloca [7 x i8], align 1
  %26 = alloca [2 x i8], align 1
  %27 = alloca [8 x i8], align 1
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.perf_event** %4, %struct.perf_event*** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %21, align 4
  %30 = bitcast [7 x i8]* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %30, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.p970_compute_mmcr.unitmap, i32 0, i32 0), i64 7, i1 false)
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 8
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %521

34:                                               ; preds = %5
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 0
  %38 = call i32 @memset(i8* %37, i32 0, i32 4)
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 0
  %40 = call i32 @memset(i8* %39, i32 0, i32 16)
  store i32 0, i32* %28, align 4
  br label %41

41:                                               ; preds = %141, %34
  %42 = load i32, i32* %28, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %144

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %28, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PM_PMC_SH, align 4
  %52 = ashr i32 %50, %51
  %53 = load i32, i32* @PM_PMC_MSK, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %45
  %58 = load i32, i32* %21, align 4
  %59 = load i32, i32* %15, align 4
  %60 = sub i32 %59, 1
  %61 = shl i32 1, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 -1, i32* %6, align 4
  br label %521

65:                                               ; preds = %57
  %66 = load i32, i32* %15, align 4
  %67 = sub i32 %66, 1
  %68 = shl i32 1, %67
  %69 = load i32, i32* %21, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %21, align 4
  %71 = load i32, i32* %15, align 4
  %72 = sub i32 %71, 1
  %73 = lshr i32 %72, 1
  %74 = and i32 %73, 1
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %65, %45
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %28, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @PM_UNIT_SH, align 4
  %86 = ashr i32 %84, %85
  %87 = load i32, i32* @PM_UNIT_MSK, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %16, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %28, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @PM_BYTE_SH, align 4
  %95 = ashr i32 %93, %94
  %96 = load i32, i32* @PM_BYTE_MSK, align 4
  %97 = and i32 %95, %96
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %140

100:                                              ; preds = %79
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* @PM_LASTUNIT, align 4
  %103 = icmp ugt i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 -1, i32* %6, align 4
  br label %521

105:                                              ; preds = %100
  %106 = load i32, i32* %15, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %17, align 4
  %110 = and i32 %109, 1
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %108, %105
  %116 = load i32, i32* %17, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %115
  %123 = load i32, i32* %17, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = load i32, i32* %16, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  store i32 -1, i32* %6, align 4
  br label %521

131:                                              ; preds = %122, %115
  %132 = load i32, i32* %16, align 4
  %133 = trunc i32 %132 to i8
  %134 = load i32, i32* %17, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 %135
  store i8 %133, i8* %136, align 1
  %137 = load i32, i32* %16, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 %138
  store i8 1, i8* %139, align 1
  br label %140

140:                                              ; preds = %131, %79
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %28, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %28, align 4
  br label %41

144:                                              ; preds = %41
  %145 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ugt i32 %146, 4
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ugt i32 %150, 4
  br i1 %151, label %152, label %153

152:                                              ; preds = %148, %144
  store i32 -1, i32* %6, align 4
  br label %521

153:                                              ; preds = %148
  %154 = load i64, i64* @PM_ISU, align 8
  %155 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = load i64, i64* @PM_FPU, align 8
  %159 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = load i64, i64* @PM_IFU, align 8
  %163 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = or i32 %161, %165
  %167 = load i64, i64* @PM_VPU, align 8
  %168 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = or i32 %166, %170
  %172 = and i32 %157, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %153
  %175 = load i64, i64* @PM_ISU, align 8
  %176 = getelementptr inbounds [7 x i8], [7 x i8]* %25, i64 0, i64 %175
  store i8 6, i8* %176, align 1
  br label %177

177:                                              ; preds = %174, %153
  %178 = getelementptr inbounds [2 x i8], [2 x i8]* %26, i64 0, i64 1
  store i8 0, i8* %178, align 1
  %179 = getelementptr inbounds [2 x i8], [2 x i8]* %26, i64 0, i64 0
  store i8 0, i8* %179, align 1
  %180 = load i64, i64* @PM_FPU, align 8
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %28, align 4
  br label %182

182:                                              ; preds = %213, %177
  %183 = load i32, i32* %28, align 4
  %184 = load i32, i32* @PM_STS, align 4
  %185 = icmp sle i32 %183, %184
  br i1 %185, label %186, label %216

186:                                              ; preds = %182
  %187 = load i32, i32* %28, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = icmp ne i8 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %186
  br label %213

193:                                              ; preds = %186
  %194 = load i32, i32* %28, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [7 x i8], [7 x i8]* %25, i64 0, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  store i32 %198, i32* %19, align 4
  %199 = load i32, i32* %19, align 4
  %200 = lshr i32 %199, 2
  %201 = and i32 %200, 1
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds [2 x i8], [2 x i8]* %26, i64 0, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = add i8 %204, 1
  store i8 %205, i8* %203, align 1
  %206 = load i32, i32* %19, align 4
  %207 = and i32 %206, -5
  %208 = zext i32 %207 to i64
  %209 = load i64, i64* @MMCR1_TTM1SEL_SH, align 8
  %210 = shl i64 %208, %209
  %211 = load i64, i64* %13, align 8
  %212 = or i64 %211, %210
  store i64 %212, i64* %13, align 8
  br label %213

213:                                              ; preds = %193, %192
  %214 = load i32, i32* %28, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %28, align 4
  br label %182

216:                                              ; preds = %182
  %217 = getelementptr inbounds [2 x i8], [2 x i8]* %26, i64 0, i64 0
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  %220 = icmp sgt i32 %219, 1
  br i1 %220, label %226, label %221

221:                                              ; preds = %216
  %222 = getelementptr inbounds [2 x i8], [2 x i8]* %26, i64 0, i64 1
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = icmp sgt i32 %224, 1
  br i1 %225, label %226, label %227

226:                                              ; preds = %221, %216
  store i32 -1, i32* %6, align 4
  br label %521

227:                                              ; preds = %221
  store i32 0, i32* %17, align 4
  br label %228

228:                                              ; preds = %286, %227
  %229 = load i32, i32* %17, align 4
  %230 = icmp ult i32 %229, 4
  br i1 %230, label %231, label %289

231:                                              ; preds = %228
  %232 = load i32, i32* %17, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds [4 x i8], [4 x i8]* %23, i64 0, i64 %233
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  store i32 %236, i32* %16, align 4
  %237 = load i32, i32* %16, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %231
  br label %286

240:                                              ; preds = %231
  %241 = load i32, i32* %16, align 4
  %242 = load i32, i32* @PM_STS, align 4
  %243 = icmp ule i32 %241, %242
  br i1 %243, label %244, label %252

244:                                              ; preds = %240
  %245 = load i32, i32* %16, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds [7 x i8], [7 x i8]* %25, i64 0, i64 %246
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = ashr i32 %249, 2
  %251 = and i32 %250, 1
  store i32 %251, i32* %19, align 4
  br label %275

252:                                              ; preds = %240
  %253 = load i32, i32* %16, align 4
  %254 = load i32, i32* @PM_LSU0, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  store i32 2, i32* %19, align 4
  br label %274

257:                                              ; preds = %252
  store i32 3, i32* %19, align 4
  %258 = load i32, i32* %16, align 4
  %259 = load i32, i32* @PM_LSU1L, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %273

261:                                              ; preds = %257
  %262 = load i32, i32* %17, align 4
  %263 = icmp uge i32 %262, 2
  br i1 %263, label %264, label %273

264:                                              ; preds = %261
  %265 = load i32, i32* @MMCR1_TTM3SEL_SH, align 4
  %266 = add nsw i32 %265, 3
  %267 = load i32, i32* %17, align 4
  %268 = sub i32 %266, %267
  %269 = zext i32 %268 to i64
  %270 = shl i64 1, %269
  %271 = load i64, i64* %13, align 8
  %272 = or i64 %271, %270
  store i64 %272, i64* %13, align 8
  br label %273

273:                                              ; preds = %264, %261, %257
  br label %274

274:                                              ; preds = %273, %256
  br label %275

275:                                              ; preds = %274, %244
  %276 = load i32, i32* %19, align 4
  %277 = zext i32 %276 to i64
  %278 = load i32, i32* @MMCR1_TD_CP_DBG0SEL_SH, align 4
  %279 = load i32, i32* %17, align 4
  %280 = mul i32 2, %279
  %281 = sub i32 %278, %280
  %282 = zext i32 %281 to i64
  %283 = shl i64 %277, %282
  %284 = load i64, i64* %13, align 8
  %285 = or i64 %284, %283
  store i64 %285, i64* %13, align 8
  br label %286

286:                                              ; preds = %275, %239
  %287 = load i32, i32* %17, align 4
  %288 = add i32 %287, 1
  store i32 %288, i32* %17, align 4
  br label %228

289:                                              ; preds = %228
  %290 = getelementptr inbounds [8 x i8], [8 x i8]* %27, i64 0, i64 0
  %291 = call i32 @memset(i8* %290, i32 8, i32 8)
  store i32 0, i32* %28, align 4
  br label %292

292:                                              ; preds = %447, %289
  %293 = load i32, i32* %28, align 4
  %294 = load i32, i32* %8, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %450

296:                                              ; preds = %292
  %297 = load i32*, i32** %7, align 8
  %298 = load i32, i32* %28, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @PM_PMC_SH, align 4
  %303 = ashr i32 %301, %302
  %304 = load i32, i32* @PM_PMC_MSK, align 4
  %305 = and i32 %303, %304
  store i32 %305, i32* %15, align 4
  %306 = load i32*, i32** %7, align 8
  %307 = load i32, i32* %28, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @PM_UNIT_SH, align 4
  %312 = ashr i32 %310, %311
  %313 = load i32, i32* @PM_UNIT_MSK, align 4
  %314 = and i32 %312, %313
  store i32 %314, i32* %16, align 4
  %315 = load i32*, i32** %7, align 8
  %316 = load i32, i32* %28, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @PM_BYTE_SH, align 4
  %321 = ashr i32 %319, %320
  %322 = load i32, i32* @PM_BYTE_MSK, align 4
  %323 = and i32 %321, %322
  store i32 %323, i32* %17, align 4
  %324 = load i32*, i32** %7, align 8
  %325 = load i32, i32* %28, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @PM_PMCSEL_MSK, align 4
  %330 = and i32 %328, %329
  store i32 %330, i32* %18, align 4
  %331 = load i32, i32* %15, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %392, label %333

333:                                              ; preds = %296
  %334 = load i32, i32* %16, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %343

336:                                              ; preds = %333
  %337 = load i32, i32* %17, align 4
  %338 = and i32 %337, 2
  %339 = shl i32 %338, 2
  %340 = or i32 16, %339
  %341 = load i32, i32* %18, align 4
  %342 = or i32 %341, %340
  store i32 %342, i32* %18, align 4
  br label %346

343:                                              ; preds = %333
  %344 = load i32, i32* %18, align 4
  %345 = or i32 %344, 8
  store i32 %345, i32* %18, align 4
  br label %346

346:                                              ; preds = %343, %336
  store i32 0, i32* %15, align 4
  br label %347

347:                                              ; preds = %384, %346
  %348 = load i32, i32* %15, align 4
  %349 = icmp ult i32 %348, 8
  br i1 %349, label %350, label %387

350:                                              ; preds = %347
  %351 = load i32, i32* %21, align 4
  %352 = load i32, i32* %15, align 4
  %353 = shl i32 1, %352
  %354 = and i32 %351, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %350
  br label %384

357:                                              ; preds = %350
  %358 = load i32, i32* %15, align 4
  %359 = lshr i32 %358, 1
  %360 = and i32 %359, 1
  store i32 %360, i32* %20, align 4
  %361 = load i32, i32* %16, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %370

363:                                              ; preds = %357
  %364 = load i32, i32* %20, align 4
  %365 = load i32, i32* %17, align 4
  %366 = and i32 %365, 1
  %367 = icmp eq i32 %364, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %363
  br label %387

369:                                              ; preds = %363
  br label %383

370:                                              ; preds = %357
  %371 = load i32, i32* %20, align 4
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = icmp ult i32 %374, 4
  br i1 %375, label %376, label %382

376:                                              ; preds = %370
  %377 = load i32, i32* %20, align 4
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = add i32 %380, 1
  store i32 %381, i32* %379, align 4
  br label %387

382:                                              ; preds = %370
  br label %383

383:                                              ; preds = %382, %369
  br label %384

384:                                              ; preds = %383, %356
  %385 = load i32, i32* %15, align 4
  %386 = add i32 %385, 1
  store i32 %386, i32* %15, align 4
  br label %347

387:                                              ; preds = %376, %368, %347
  %388 = load i32, i32* %15, align 4
  %389 = shl i32 1, %388
  %390 = load i32, i32* %21, align 4
  %391 = or i32 %390, %389
  store i32 %391, i32* %21, align 4
  br label %411

392:                                              ; preds = %296
  %393 = load i32, i32* %15, align 4
  %394 = add i32 %393, -1
  store i32 %394, i32* %15, align 4
  %395 = load i32, i32* %18, align 4
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %410

397:                                              ; preds = %392
  %398 = load i32, i32* %17, align 4
  %399 = and i32 %398, 2
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %410

401:                                              ; preds = %397
  %402 = load i64*, i64** @mmcr1_adder_bits, align 8
  %403 = load i32, i32* %15, align 4
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds i64, i64* %402, i64 %404
  %406 = load i64, i64* %405, align 8
  %407 = shl i64 1, %406
  %408 = load i64, i64* %13, align 8
  %409 = or i64 %408, %407
  store i64 %409, i64* %13, align 8
  br label %410

410:                                              ; preds = %401, %397, %392
  br label %411

411:                                              ; preds = %410, %387
  %412 = load i32, i32* %18, align 4
  %413 = trunc i32 %412 to i8
  %414 = load i32, i32* %15, align 4
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds [8 x i8], [8 x i8]* %27, i64 0, i64 %415
  store i8 %413, i8* %416, align 1
  %417 = load i32, i32* %15, align 4
  %418 = load i32*, i32** %9, align 8
  %419 = load i32, i32* %28, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  store i32 %417, i32* %421, align 4
  %422 = load i32*, i32** %7, align 8
  %423 = load i32, i32* %28, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %422, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* @PM_SPCSEL_SH, align 4
  %428 = ashr i32 %426, %427
  %429 = load i32, i32* @PM_SPCSEL_MSK, align 4
  %430 = and i32 %428, %429
  store i32 %430, i32* %29, align 4
  %431 = load i32, i32* %29, align 4
  %432 = sext i32 %431 to i64
  %433 = load i64, i64* %13, align 8
  %434 = or i64 %433, %432
  store i64 %434, i64* %13, align 8
  %435 = load i32*, i32** %7, align 8
  %436 = load i32, i32* %28, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %435, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = call i64 @p970_marked_instr_event(i32 %439)
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %446

442:                                              ; preds = %411
  %443 = load i64, i64* @MMCRA_SAMPLE_ENABLE, align 8
  %444 = load i64, i64* %14, align 8
  %445 = or i64 %444, %443
  store i64 %445, i64* %14, align 8
  br label %446

446:                                              ; preds = %442, %411
  br label %447

447:                                              ; preds = %446
  %448 = load i32, i32* %28, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %28, align 4
  br label %292

450:                                              ; preds = %292
  store i32 0, i32* %15, align 4
  br label %451

451:                                              ; preds = %468, %450
  %452 = load i32, i32* %15, align 4
  %453 = icmp ult i32 %452, 2
  br i1 %453, label %454, label %471

454:                                              ; preds = %451
  %455 = load i32, i32* %15, align 4
  %456 = zext i32 %455 to i64
  %457 = getelementptr inbounds [8 x i8], [8 x i8]* %27, i64 0, i64 %456
  %458 = load i8, i8* %457, align 1
  %459 = zext i8 %458 to i32
  %460 = load i32, i32* @MMCR0_PMC1SEL_SH, align 4
  %461 = load i32, i32* %15, align 4
  %462 = mul i32 7, %461
  %463 = sub i32 %460, %462
  %464 = shl i32 %459, %463
  %465 = sext i32 %464 to i64
  %466 = load i64, i64* %12, align 8
  %467 = or i64 %466, %465
  store i64 %467, i64* %12, align 8
  br label %468

468:                                              ; preds = %454
  %469 = load i32, i32* %15, align 4
  %470 = add i32 %469, 1
  store i32 %470, i32* %15, align 4
  br label %451

471:                                              ; preds = %451
  br label %472

472:                                              ; preds = %490, %471
  %473 = load i32, i32* %15, align 4
  %474 = icmp ult i32 %473, 8
  br i1 %474, label %475, label %493

475:                                              ; preds = %472
  %476 = load i32, i32* %15, align 4
  %477 = zext i32 %476 to i64
  %478 = getelementptr inbounds [8 x i8], [8 x i8]* %27, i64 0, i64 %477
  %479 = load i8, i8* %478, align 1
  %480 = zext i8 %479 to i64
  %481 = load i32, i32* @MMCR1_PMC3SEL_SH, align 4
  %482 = load i32, i32* %15, align 4
  %483 = sub i32 %482, 2
  %484 = mul i32 5, %483
  %485 = sub i32 %481, %484
  %486 = zext i32 %485 to i64
  %487 = shl i64 %480, %486
  %488 = load i64, i64* %13, align 8
  %489 = or i64 %488, %487
  store i64 %489, i64* %13, align 8
  br label %490

490:                                              ; preds = %475
  %491 = load i32, i32* %15, align 4
  %492 = add i32 %491, 1
  store i32 %492, i32* %15, align 4
  br label %472

493:                                              ; preds = %472
  %494 = load i32, i32* %21, align 4
  %495 = and i32 %494, 1
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %501

497:                                              ; preds = %493
  %498 = load i64, i64* @MMCR0_PMC1CE, align 8
  %499 = load i64, i64* %12, align 8
  %500 = or i64 %499, %498
  store i64 %500, i64* %12, align 8
  br label %501

501:                                              ; preds = %497, %493
  %502 = load i32, i32* %21, align 4
  %503 = and i32 %502, 254
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %509

505:                                              ; preds = %501
  %506 = load i64, i64* @MMCR0_PMCjCE, align 8
  %507 = load i64, i64* %12, align 8
  %508 = or i64 %507, %506
  store i64 %508, i64* %12, align 8
  br label %509

509:                                              ; preds = %505, %501
  %510 = load i64, i64* %14, align 8
  %511 = or i64 %510, 8192
  store i64 %511, i64* %14, align 8
  %512 = load i64, i64* %12, align 8
  %513 = load i64*, i64** %10, align 8
  %514 = getelementptr inbounds i64, i64* %513, i64 0
  store i64 %512, i64* %514, align 8
  %515 = load i64, i64* %13, align 8
  %516 = load i64*, i64** %10, align 8
  %517 = getelementptr inbounds i64, i64* %516, i64 1
  store i64 %515, i64* %517, align 8
  %518 = load i64, i64* %14, align 8
  %519 = load i64*, i64** %10, align 8
  %520 = getelementptr inbounds i64, i64* %519, i64 2
  store i64 %518, i64* %520, align 8
  store i32 0, i32* %6, align 4
  br label %521

521:                                              ; preds = %509, %226, %152, %130, %104, %64, %33
  %522 = load i32, i32* %6, align 4
  ret i32 %522
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @p970_marked_instr_event(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
