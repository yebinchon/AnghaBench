; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_dma.c_S_Base_RawSamples.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_dma.c_S_Base_RawSamples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i16, i16 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { float }

@s_soundStarted = common dso_local global i32 0, align 4
@s_soundMuted = common dso_local global i64 0, align 8
@MAX_RAW_STREAMS = common dso_local global i32 0, align 4
@s_rawsamples = common dso_local global %struct.TYPE_7__** null, align 8
@s_muted = common dso_local global %struct.TYPE_9__* null, align 8
@MAX_GENTITIES = common dso_local global i32 0, align 4
@loopSounds = common dso_local global %struct.TYPE_10__* null, align 8
@s_volume = common dso_local global %struct.TYPE_8__* null, align 8
@s_rawend = common dso_local global i32* null, align 8
@s_soundtime = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"S_Base_RawSamples: resetting minimum: %i < %i\0A\00", align 1
@dma = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@MAX_RAW_SAMPLES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"S_Base_RawSamples: overflowed %i > %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_Base_RawSamples(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, float %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_7__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %26 = load i32, i32* @s_soundStarted, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %8
  %29 = load i64, i64* @s_soundMuted, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %8
  br label %472

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @MAX_RAW_STREAMS, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %32
  br label %472

40:                                               ; preds = %35
  %41 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @s_rawsamples, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %41, i64 %43
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %23, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @s_muted, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %88

51:                                               ; preds = %40
  %52 = load i32, i32* %16, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* @MAX_GENTITIES, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @loopSounds, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @S_SpatializeOrigin(i32 %64, i32 256, i32* %24, i32* %25)
  br label %67

66:                                               ; preds = %54, %51
  store i32 256, i32* %25, align 4
  store i32 256, i32* %24, align 4
  br label %67

67:                                               ; preds = %66, %58
  %68 = load i32, i32* %24, align 4
  %69 = sitofp i32 %68 to float
  %70 = load float, float* %15, align 4
  %71 = fmul float %69, %70
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_volume, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sitofp i32 %74 to float
  %76 = fmul float %71, %75
  %77 = fptosi float %76 to i32
  store i32 %77, i32* %21, align 4
  %78 = load i32, i32* %25, align 4
  %79 = sitofp i32 %78 to float
  %80 = load float, float* %15, align 4
  %81 = fmul float %79, %80
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_volume, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sitofp i32 %84 to float
  %86 = fmul float %81, %85
  %87 = fptosi float %86 to i32
  store i32 %87, i32* %22, align 4
  br label %88

88:                                               ; preds = %67, %50
  %89 = load i32*, i32** @s_rawend, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @s_soundtime, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %88
  %97 = load i32*, i32** @s_rawend, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @s_soundtime, align 4
  %103 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load i32, i32* @s_soundtime, align 4
  %105 = load i32*, i32** @s_rawend, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %104, i32* %108, align 4
  br label %109

109:                                              ; preds = %96, %88
  %110 = load i32, i32* %11, align 4
  %111 = sitofp i32 %110 to float
  %112 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dma, i32 0, i32 0), align 4
  %113 = fdiv float %111, %112
  store float %113, float* %20, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %244

116:                                              ; preds = %109
  %117 = load i32, i32* %12, align 4
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %119, label %244

119:                                              ; preds = %116
  %120 = load float, float* %20, align 4
  %121 = fpext float %120 to double
  %122 = fcmp oeq double %121, 1.000000e+00
  br i1 %122, label %123, label %180

123:                                              ; preds = %119
  store i32 0, i32* %17, align 4
  br label %124

124:                                              ; preds = %176, %123
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %179

128:                                              ; preds = %124
  %129 = load i32*, i32** @s_rawend, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @MAX_RAW_SAMPLES, align 4
  %135 = sub nsw i32 %134, 1
  %136 = and i32 %133, %135
  store i32 %136, i32* %19, align 4
  %137 = load i32*, i32** @s_rawend, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = load i32*, i32** %14, align 8
  %144 = bitcast i32* %143 to i16*
  %145 = load i32, i32* %17, align 4
  %146 = mul nsw i32 %145, 2
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i16, i16* %144, i64 %147
  %149 = load i16, i16* %148, align 2
  %150 = sext i16 %149 to i32
  %151 = load i32, i32* %21, align 4
  %152 = mul nsw i32 %150, %151
  %153 = trunc i32 %152 to i16
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %155 = load i32, i32* %19, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  store i16 %153, i16* %158, align 2
  %159 = load i32*, i32** %14, align 8
  %160 = bitcast i32* %159 to i16*
  %161 = load i32, i32* %17, align 4
  %162 = mul nsw i32 %161, 2
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i16, i16* %160, i64 %164
  %166 = load i16, i16* %165, align 2
  %167 = sext i16 %166 to i32
  %168 = load i32, i32* %22, align 4
  %169 = mul nsw i32 %167, %168
  %170 = trunc i32 %169 to i16
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %172 = load i32, i32* %19, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 1
  store i16 %170, i16* %175, align 2
  br label %176

176:                                              ; preds = %128
  %177 = load i32, i32* %17, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %17, align 4
  br label %124

179:                                              ; preds = %124
  br label %243

180:                                              ; preds = %119
  store i32 0, i32* %17, align 4
  br label %181

181:                                              ; preds = %239, %180
  %182 = load i32, i32* %17, align 4
  %183 = sitofp i32 %182 to float
  %184 = load float, float* %20, align 4
  %185 = fmul float %183, %184
  %186 = fptosi float %185 to i32
  store i32 %186, i32* %18, align 4
  %187 = load i32, i32* %18, align 4
  %188 = load i32, i32* %10, align 4
  %189 = icmp sge i32 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %181
  br label %242

191:                                              ; preds = %181
  %192 = load i32*, i32** @s_rawend, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @MAX_RAW_SAMPLES, align 4
  %198 = sub nsw i32 %197, 1
  %199 = and i32 %196, %198
  store i32 %199, i32* %19, align 4
  %200 = load i32*, i32** @s_rawend, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 4
  %206 = load i32*, i32** %14, align 8
  %207 = bitcast i32* %206 to i16*
  %208 = load i32, i32* %18, align 4
  %209 = mul nsw i32 %208, 2
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i16, i16* %207, i64 %210
  %212 = load i16, i16* %211, align 2
  %213 = sext i16 %212 to i32
  %214 = load i32, i32* %21, align 4
  %215 = mul nsw i32 %213, %214
  %216 = trunc i32 %215 to i16
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %218 = load i32, i32* %19, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  store i16 %216, i16* %221, align 2
  %222 = load i32*, i32** %14, align 8
  %223 = bitcast i32* %222 to i16*
  %224 = load i32, i32* %18, align 4
  %225 = mul nsw i32 %224, 2
  %226 = add nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i16, i16* %223, i64 %227
  %229 = load i16, i16* %228, align 2
  %230 = sext i16 %229 to i32
  %231 = load i32, i32* %22, align 4
  %232 = mul nsw i32 %230, %231
  %233 = trunc i32 %232 to i16
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %235 = load i32, i32* %19, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 1
  store i16 %233, i16* %238, align 2
  br label %239

239:                                              ; preds = %191
  %240 = load i32, i32* %17, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %17, align 4
  br label %181

242:                                              ; preds = %190
  br label %243

243:                                              ; preds = %242, %179
  br label %454

244:                                              ; preds = %116, %109
  %245 = load i32, i32* %13, align 4
  %246 = icmp eq i32 %245, 1
  br i1 %246, label %247, label %310

247:                                              ; preds = %244
  %248 = load i32, i32* %12, align 4
  %249 = icmp eq i32 %248, 2
  br i1 %249, label %250, label %310

250:                                              ; preds = %247
  store i32 0, i32* %17, align 4
  br label %251

251:                                              ; preds = %306, %250
  %252 = load i32, i32* %17, align 4
  %253 = sitofp i32 %252 to float
  %254 = load float, float* %20, align 4
  %255 = fmul float %253, %254
  %256 = fptosi float %255 to i32
  store i32 %256, i32* %18, align 4
  %257 = load i32, i32* %18, align 4
  %258 = load i32, i32* %10, align 4
  %259 = icmp sge i32 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %251
  br label %309

261:                                              ; preds = %251
  %262 = load i32*, i32** @s_rawend, align 8
  %263 = load i32, i32* %9, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @MAX_RAW_SAMPLES, align 4
  %268 = sub nsw i32 %267, 1
  %269 = and i32 %266, %268
  store i32 %269, i32* %19, align 4
  %270 = load i32*, i32** @s_rawend, align 8
  %271 = load i32, i32* %9, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %273, align 4
  %276 = load i32*, i32** %14, align 8
  %277 = bitcast i32* %276 to i16*
  %278 = load i32, i32* %18, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i16, i16* %277, i64 %279
  %281 = load i16, i16* %280, align 2
  %282 = sext i16 %281 to i32
  %283 = load i32, i32* %21, align 4
  %284 = mul nsw i32 %282, %283
  %285 = trunc i32 %284 to i16
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %287 = load i32, i32* %19, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 0
  store i16 %285, i16* %290, align 2
  %291 = load i32*, i32** %14, align 8
  %292 = bitcast i32* %291 to i16*
  %293 = load i32, i32* %18, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i16, i16* %292, i64 %294
  %296 = load i16, i16* %295, align 2
  %297 = sext i16 %296 to i32
  %298 = load i32, i32* %22, align 4
  %299 = mul nsw i32 %297, %298
  %300 = trunc i32 %299 to i16
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %302 = load i32, i32* %19, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 1
  store i16 %300, i16* %305, align 2
  br label %306

306:                                              ; preds = %261
  %307 = load i32, i32* %17, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %17, align 4
  br label %251

309:                                              ; preds = %260
  br label %453

310:                                              ; preds = %247, %244
  %311 = load i32, i32* %13, align 4
  %312 = icmp eq i32 %311, 2
  br i1 %312, label %313, label %383

313:                                              ; preds = %310
  %314 = load i32, i32* %12, align 4
  %315 = icmp eq i32 %314, 1
  br i1 %315, label %316, label %383

316:                                              ; preds = %313
  %317 = load i32, i32* %21, align 4
  %318 = mul nsw i32 %317, 256
  store i32 %318, i32* %21, align 4
  %319 = load i32, i32* %22, align 4
  %320 = mul nsw i32 %319, 256
  store i32 %320, i32* %22, align 4
  store i32 0, i32* %17, align 4
  br label %321

321:                                              ; preds = %379, %316
  %322 = load i32, i32* %17, align 4
  %323 = sitofp i32 %322 to float
  %324 = load float, float* %20, align 4
  %325 = fmul float %323, %324
  %326 = fptosi float %325 to i32
  store i32 %326, i32* %18, align 4
  %327 = load i32, i32* %18, align 4
  %328 = load i32, i32* %10, align 4
  %329 = icmp sge i32 %327, %328
  br i1 %329, label %330, label %331

330:                                              ; preds = %321
  br label %382

331:                                              ; preds = %321
  %332 = load i32*, i32** @s_rawend, align 8
  %333 = load i32, i32* %9, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @MAX_RAW_SAMPLES, align 4
  %338 = sub nsw i32 %337, 1
  %339 = and i32 %336, %338
  store i32 %339, i32* %19, align 4
  %340 = load i32*, i32** @s_rawend, align 8
  %341 = load i32, i32* %9, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %343, align 4
  %346 = load i32*, i32** %14, align 8
  %347 = bitcast i32* %346 to i8*
  %348 = load i32, i32* %18, align 4
  %349 = mul nsw i32 %348, 2
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8, i8* %347, i64 %350
  %352 = load i8, i8* %351, align 1
  %353 = sext i8 %352 to i32
  %354 = load i32, i32* %21, align 4
  %355 = mul nsw i32 %353, %354
  %356 = trunc i32 %355 to i16
  %357 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %358 = load i32, i32* %19, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %360, i32 0, i32 0
  store i16 %356, i16* %361, align 2
  %362 = load i32*, i32** %14, align 8
  %363 = bitcast i32* %362 to i8*
  %364 = load i32, i32* %18, align 4
  %365 = mul nsw i32 %364, 2
  %366 = add nsw i32 %365, 1
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8, i8* %363, i64 %367
  %369 = load i8, i8* %368, align 1
  %370 = sext i8 %369 to i32
  %371 = load i32, i32* %22, align 4
  %372 = mul nsw i32 %370, %371
  %373 = trunc i32 %372 to i16
  %374 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %375 = load i32, i32* %19, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 1
  store i16 %373, i16* %378, align 2
  br label %379

379:                                              ; preds = %331
  %380 = load i32, i32* %17, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %17, align 4
  br label %321

382:                                              ; preds = %330
  br label %452

383:                                              ; preds = %313, %310
  %384 = load i32, i32* %13, align 4
  %385 = icmp eq i32 %384, 1
  br i1 %385, label %386, label %451

386:                                              ; preds = %383
  %387 = load i32, i32* %12, align 4
  %388 = icmp eq i32 %387, 1
  br i1 %388, label %389, label %451

389:                                              ; preds = %386
  %390 = load i32, i32* %21, align 4
  %391 = mul nsw i32 %390, 256
  store i32 %391, i32* %21, align 4
  %392 = load i32, i32* %22, align 4
  %393 = mul nsw i32 %392, 256
  store i32 %393, i32* %22, align 4
  store i32 0, i32* %17, align 4
  br label %394

394:                                              ; preds = %447, %389
  %395 = load i32, i32* %17, align 4
  %396 = sitofp i32 %395 to float
  %397 = load float, float* %20, align 4
  %398 = fmul float %396, %397
  %399 = fptosi float %398 to i32
  store i32 %399, i32* %18, align 4
  %400 = load i32, i32* %18, align 4
  %401 = load i32, i32* %10, align 4
  %402 = icmp sge i32 %400, %401
  br i1 %402, label %403, label %404

403:                                              ; preds = %394
  br label %450

404:                                              ; preds = %394
  %405 = load i32*, i32** @s_rawend, align 8
  %406 = load i32, i32* %9, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %405, i64 %407
  %409 = load i32, i32* %408, align 4
  %410 = load i32, i32* @MAX_RAW_SAMPLES, align 4
  %411 = sub nsw i32 %410, 1
  %412 = and i32 %409, %411
  store i32 %412, i32* %19, align 4
  %413 = load i32*, i32** @s_rawend, align 8
  %414 = load i32, i32* %9, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %413, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %416, align 4
  %419 = load i32*, i32** %14, align 8
  %420 = load i32, i32* %18, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = sub nsw i32 %423, 128
  %425 = load i32, i32* %21, align 4
  %426 = mul nsw i32 %424, %425
  %427 = trunc i32 %426 to i16
  %428 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %429 = load i32, i32* %19, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %428, i64 %430
  %432 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %431, i32 0, i32 0
  store i16 %427, i16* %432, align 2
  %433 = load i32*, i32** %14, align 8
  %434 = load i32, i32* %18, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %433, i64 %435
  %437 = load i32, i32* %436, align 4
  %438 = sub nsw i32 %437, 128
  %439 = load i32, i32* %22, align 4
  %440 = mul nsw i32 %438, %439
  %441 = trunc i32 %440 to i16
  %442 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %443 = load i32, i32* %19, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %442, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %445, i32 0, i32 1
  store i16 %441, i16* %446, align 2
  br label %447

447:                                              ; preds = %404
  %448 = load i32, i32* %17, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %17, align 4
  br label %394

450:                                              ; preds = %403
  br label %451

451:                                              ; preds = %450, %386, %383
  br label %452

452:                                              ; preds = %451, %382
  br label %453

453:                                              ; preds = %452, %309
  br label %454

454:                                              ; preds = %453, %243
  %455 = load i32*, i32** @s_rawend, align 8
  %456 = load i32, i32* %9, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %455, i64 %457
  %459 = load i32, i32* %458, align 4
  %460 = load i32, i32* @s_soundtime, align 4
  %461 = load i32, i32* @MAX_RAW_SAMPLES, align 4
  %462 = add nsw i32 %460, %461
  %463 = icmp sgt i32 %459, %462
  br i1 %463, label %464, label %472

464:                                              ; preds = %454
  %465 = load i32*, i32** @s_rawend, align 8
  %466 = load i32, i32* %9, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %465, i64 %467
  %469 = load i32, i32* %468, align 4
  %470 = load i32, i32* @s_soundtime, align 4
  %471 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %469, i32 %470)
  br label %472

472:                                              ; preds = %31, %39, %464, %454
  ret void
}

declare dso_local i32 @S_SpatializeOrigin(i32, i32, i32*, i32*) #1

declare dso_local i32 @Com_DPrintf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
