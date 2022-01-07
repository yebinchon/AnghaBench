; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_mix.c_S_PaintChannelFrom16_scalar.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_mix.c_S_PaintChannelFrom16_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, float, i32, i32, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i16*, %struct.TYPE_8__* }

@paintbuffer = common dso_local global %struct.TYPE_10__* null, align 8
@SND_CHUNK_SIZE = common dso_local global i32 0, align 4
@snd_vol = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_9__*, i32, i32, i32)* @S_PaintChannelFrom16_scalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @S_PaintChannelFrom16_scalar(%struct.TYPE_11__* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca i16*, align 8
  %21 = alloca float, align 4
  %22 = alloca [2 x float], align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  br label %349

31:                                               ; preds = %5
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @paintbuffer, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i64 %34
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %18, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %41, %44
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %40, %31
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = mul nsw i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, -2
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %60, %51
  br label %64

64:                                               ; preds = %63, %46
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  store %struct.TYPE_8__* %67, %struct.TYPE_8__** %19, align 8
  br label %68

68:                                               ; preds = %85, %64
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %19, align 8
  %76 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %80 = icmp ne %struct.TYPE_8__* %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %72
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %19, align 8
  br label %85

85:                                               ; preds = %81, %72
  br label %68

86:                                               ; preds = %68
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load float, float* %93, align 4
  %95 = fcmp oeq float %94, 1.000000e+00
  br i1 %95, label %96, label %172

96:                                               ; preds = %91, %86
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @snd_vol, align 4
  %101 = mul nsw i32 %99, %100
  store i32 %101, i32* %14, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @snd_vol, align 4
  %106 = mul nsw i32 %104, %105
  store i32 %106, i32* %15, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i16*, i16** %108, align 8
  store i16* %109, i16** %20, align 8
  store i32 0, i32* %16, align 4
  br label %110

110:                                              ; preds = %168, %96
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %171

114:                                              ; preds = %110
  %115 = load i16*, i16** %20, align 8
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i16, i16* %115, i64 %118
  %120 = load i16, i16* %119, align 2
  %121 = sext i16 %120 to i32
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %14, align 4
  %124 = mul nsw i32 %122, %123
  %125 = ashr i32 %124, 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, %125
  store i32 %132, i32* %130, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 2
  br i1 %136, label %137, label %145

137:                                              ; preds = %114
  %138 = load i16*, i16** %20, align 8
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i16, i16* %138, i64 %141
  %143 = load i16, i16* %142, align 2
  %144 = sext i16 %143 to i32
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %137, %114
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %15, align 4
  %148 = mul nsw i32 %146, %147
  %149 = ashr i32 %148, 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, %149
  store i32 %156, i32* %154, align 4
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %145
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  store %struct.TYPE_8__* %163, %struct.TYPE_8__** %19, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i16*, i16** %165, align 8
  store i16* %166, i16** %20, align 8
  store i32 0, i32* %9, align 4
  br label %167

167:                                              ; preds = %160, %145
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %16, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %16, align 4
  br label %110

171:                                              ; preds = %110
  br label %349

172:                                              ; preds = %91
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @snd_vol, align 4
  %177 = mul nsw i32 %175, %176
  %178 = sitofp i32 %177 to float
  store float %178, float* %24, align 4
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @snd_vol, align 4
  %183 = mul nsw i32 %181, %182
  %184 = sitofp i32 %183 to float
  store float %184, float* %25, align 4
  %185 = load i32, i32* %9, align 4
  %186 = sitofp i32 %185 to float
  store float %186, float* %21, align 4
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i16*, i16** %188, align 8
  store i16* %189, i16** %20, align 8
  store i32 0, i32* %16, align 4
  br label %190

190:                                              ; preds = %345, %172
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* %8, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %348

194:                                              ; preds = %190
  %195 = load float, float* %21, align 4
  %196 = fptosi float %195 to i32
  store i32 %196, i32* %12, align 4
  %197 = load float, float* %21, align 4
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 1
  %200 = load float, float* %199, align 4
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sitofp i32 %203 to float
  %205 = fmul float %200, %204
  %206 = fadd float %197, %205
  store float %206, float* %21, align 4
  %207 = load float, float* %21, align 4
  %208 = fptosi float %207 to i32
  store i32 %208, i32* %13, align 4
  %209 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 1
  store float 0.000000e+00, float* %209, align 4
  %210 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 0
  store float 0.000000e+00, float* %210, align 4
  %211 = load i32, i32* %12, align 4
  store i32 %211, i32* %17, align 4
  br label %212

212:                                              ; preds = %299, %194
  %213 = load i32, i32* %17, align 4
  %214 = load i32, i32* %13, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %305

216:                                              ; preds = %212
  %217 = load i32, i32* %17, align 4
  %218 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %238

220:                                              ; preds = %216
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %222, align 8
  store %struct.TYPE_8__* %223, %struct.TYPE_8__** %19, align 8
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %225 = icmp ne %struct.TYPE_8__* %224, null
  br i1 %225, label %230, label %226

226:                                              ; preds = %220
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %228, align 8
  store %struct.TYPE_8__* %229, %struct.TYPE_8__** %19, align 8
  br label %230

230:                                              ; preds = %226, %220
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = load i16*, i16** %232, align 8
  store i16* %233, i16** %20, align 8
  %234 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %235 = sitofp i32 %234 to float
  %236 = load float, float* %21, align 4
  %237 = fsub float %236, %235
  store float %237, float* %21, align 4
  br label %238

238:                                              ; preds = %230, %216
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp eq i32 %241, 2
  br i1 %242, label %243, label %271

243:                                              ; preds = %238
  %244 = load i16*, i16** %20, align 8
  %245 = load i32, i32* %17, align 4
  %246 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %247 = sub nsw i32 %246, 1
  %248 = and i32 %245, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i16, i16* %244, i64 %249
  %251 = load i16, i16* %250, align 2
  %252 = sext i16 %251 to i32
  %253 = sitofp i32 %252 to float
  %254 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 0
  %255 = load float, float* %254, align 4
  %256 = fadd float %255, %253
  store float %256, float* %254, align 4
  %257 = load i16*, i16** %20, align 8
  %258 = load i32, i32* %17, align 4
  %259 = add nsw i32 %258, 1
  %260 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %261 = sub nsw i32 %260, 1
  %262 = and i32 %259, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i16, i16* %257, i64 %263
  %265 = load i16, i16* %264, align 2
  %266 = sext i16 %265 to i32
  %267 = sitofp i32 %266 to float
  %268 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 1
  %269 = load float, float* %268, align 4
  %270 = fadd float %269, %267
  store float %270, float* %268, align 4
  br label %298

271:                                              ; preds = %238
  %272 = load i16*, i16** %20, align 8
  %273 = load i32, i32* %17, align 4
  %274 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %275 = sub nsw i32 %274, 1
  %276 = and i32 %273, %275
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i16, i16* %272, i64 %277
  %279 = load i16, i16* %278, align 2
  %280 = sext i16 %279 to i32
  %281 = sitofp i32 %280 to float
  %282 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 0
  %283 = load float, float* %282, align 4
  %284 = fadd float %283, %281
  store float %284, float* %282, align 4
  %285 = load i16*, i16** %20, align 8
  %286 = load i32, i32* %17, align 4
  %287 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %288 = sub nsw i32 %287, 1
  %289 = and i32 %286, %288
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i16, i16* %285, i64 %290
  %292 = load i16, i16* %291, align 2
  %293 = sext i16 %292 to i32
  %294 = sitofp i32 %293 to float
  %295 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 1
  %296 = load float, float* %295, align 4
  %297 = fadd float %296, %294
  store float %297, float* %295, align 4
  br label %298

298:                                              ; preds = %271, %243
  br label %299

299:                                              ; preds = %298
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* %17, align 4
  %304 = add nsw i32 %303, %302
  store i32 %304, i32* %17, align 4
  br label %212

305:                                              ; preds = %212
  %306 = load i32, i32* %13, align 4
  %307 = load i32, i32* %12, align 4
  %308 = sub nsw i32 %306, %307
  %309 = mul nsw i32 256, %308
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = sdiv i32 %309, %312
  %314 = sitofp i32 %313 to float
  store float %314, float* %23, align 4
  %315 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 0
  %316 = load float, float* %315, align 4
  %317 = load float, float* %24, align 4
  %318 = fmul float %316, %317
  %319 = load float, float* %23, align 4
  %320 = fdiv float %318, %319
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %322 = load i32, i32* %16, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = sitofp i32 %326 to float
  %328 = fadd float %327, %320
  %329 = fptosi float %328 to i32
  store i32 %329, i32* %325, align 4
  %330 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 1
  %331 = load float, float* %330, align 4
  %332 = load float, float* %25, align 4
  %333 = fmul float %331, %332
  %334 = load float, float* %23, align 4
  %335 = fdiv float %333, %334
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %337 = load i32, i32* %16, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = sitofp i32 %341 to float
  %343 = fadd float %342, %335
  %344 = fptosi float %343 to i32
  store i32 %344, i32* %340, align 4
  br label %345

345:                                              ; preds = %305
  %346 = load i32, i32* %16, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %16, align 4
  br label %190

348:                                              ; preds = %190
  br label %349

349:                                              ; preds = %30, %348, %171
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
