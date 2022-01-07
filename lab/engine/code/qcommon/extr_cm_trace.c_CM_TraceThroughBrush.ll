; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_trace.c_CM_TraceThroughBrush.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_trace.c_CM_TraceThroughBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i32, i32*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { float, i32, i32, %struct.TYPE_12__, i8*, i8* }
%struct.TYPE_12__ = type { float, i64, i32 }
%struct.TYPE_9__ = type { float, i32, i64 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }

@c_brush_traces = common dso_local global i32 0, align 4
@qfalse = common dso_local global i8* null, align 8
@qtrue = common dso_local global i8* null, align 8
@SURFACE_CLIP_EPSILON = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CM_TraceThroughBrush(%struct.TYPE_11__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca float, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  store float -1.000000e+00, float* %9, align 4
  store float 1.000000e+00, float* %10, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %400

26:                                               ; preds = %2
  %27 = load i32, i32* @c_brush_traces, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @c_brush_traces, align 4
  %29 = load i8*, i8** @qfalse, align 8
  store i8* %29, i8** %13, align 8
  %30 = load i8*, i8** @qfalse, align 8
  store i8* %30, i8** %14, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %17, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %199

36:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %195, %36
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %198

43:                                               ; preds = %37
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i64 %48
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %16, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %6, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load float, float* %54, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load float, float* %58, align 8
  %60 = fadd float %55, %59
  store float %60, float* %8, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call float @DotProduct(i32 %63, i32 %67)
  store float %68, float* %18, align 4
  %69 = load float, float* %18, align 4
  %70 = fcmp ogt float %69, 0.000000e+00
  br i1 %70, label %71, label %90

71:                                               ; preds = %43
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %19, align 4
  %80 = call i32 @VectorSubtract(i32 %74, i32 %78, i32 %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %20, align 4
  %89 = call i32 @VectorSubtract(i32 %83, i32 %87, i32 %88)
  br label %109

90:                                               ; preds = %43
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %19, align 4
  %99 = call i32 @VectorAdd(i32 %93, i32 %97, i32 %98)
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %20, align 4
  %108 = call i32 @VectorAdd(i32 %102, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %90, %71
  %110 = load i32, i32* %19, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call float @DotProduct(i32 %110, i32 %113)
  %115 = load float, float* %8, align 4
  %116 = fsub float %114, %115
  store float %116, float* %11, align 4
  %117 = load i32, i32* %20, align 4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call float @DotProduct(i32 %117, i32 %120)
  %122 = load float, float* %8, align 4
  %123 = fsub float %121, %122
  store float %123, float* %12, align 4
  %124 = load float, float* %12, align 4
  %125 = fcmp ogt float %124, 0.000000e+00
  br i1 %125, label %126, label %128

126:                                              ; preds = %109
  %127 = load i8*, i8** @qtrue, align 8
  store i8* %127, i8** %13, align 8
  br label %128

128:                                              ; preds = %126, %109
  %129 = load float, float* %11, align 4
  %130 = fcmp ogt float %129, 0.000000e+00
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load i8*, i8** @qtrue, align 8
  store i8* %132, i8** %14, align 8
  br label %133

133:                                              ; preds = %131, %128
  %134 = load float, float* %11, align 4
  %135 = fcmp ogt float %134, 0.000000e+00
  br i1 %135, label %136, label %145

136:                                              ; preds = %133
  %137 = load float, float* %12, align 4
  %138 = load float, float* @SURFACE_CLIP_EPSILON, align 4
  %139 = fcmp oge float %137, %138
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load float, float* %12, align 4
  %142 = load float, float* %11, align 4
  %143 = fcmp oge float %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140, %136
  br label %400

145:                                              ; preds = %140, %133
  %146 = load float, float* %11, align 4
  %147 = fcmp ole float %146, 0.000000e+00
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load float, float* %12, align 4
  %150 = fcmp ole float %149, 0.000000e+00
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %195

152:                                              ; preds = %148, %145
  %153 = load float, float* %11, align 4
  %154 = load float, float* %12, align 4
  %155 = fcmp ogt float %153, %154
  br i1 %155, label %156, label %176

156:                                              ; preds = %152
  %157 = load float, float* %11, align 4
  %158 = load float, float* @SURFACE_CLIP_EPSILON, align 4
  %159 = fsub float %157, %158
  %160 = load float, float* %11, align 4
  %161 = load float, float* %12, align 4
  %162 = fsub float %160, %161
  %163 = fdiv float %159, %162
  store float %163, float* %15, align 4
  %164 = load float, float* %15, align 4
  %165 = fcmp olt float %164, 0.000000e+00
  br i1 %165, label %166, label %167

166:                                              ; preds = %156
  store float 0.000000e+00, float* %15, align 4
  br label %167

167:                                              ; preds = %166, %156
  %168 = load float, float* %15, align 4
  %169 = load float, float* %9, align 4
  %170 = fcmp ogt float %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load float, float* %15, align 4
  store float %172, float* %9, align 4
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %173, %struct.TYPE_12__** %7, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %174, %struct.TYPE_13__** %17, align 8
  br label %175

175:                                              ; preds = %171, %167
  br label %194

176:                                              ; preds = %152
  %177 = load float, float* %11, align 4
  %178 = load float, float* @SURFACE_CLIP_EPSILON, align 4
  %179 = fadd float %177, %178
  %180 = load float, float* %11, align 4
  %181 = load float, float* %12, align 4
  %182 = fsub float %180, %181
  %183 = fdiv float %179, %182
  store float %183, float* %15, align 4
  %184 = load float, float* %15, align 4
  %185 = fcmp ogt float %184, 1.000000e+00
  br i1 %185, label %186, label %187

186:                                              ; preds = %176
  store float 1.000000e+00, float* %15, align 4
  br label %187

187:                                              ; preds = %186, %176
  %188 = load float, float* %15, align 4
  %189 = load float, float* %10, align 4
  %190 = fcmp olt float %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = load float, float* %15, align 4
  store float %192, float* %10, align 4
  br label %193

193:                                              ; preds = %191, %187
  br label %194

194:                                              ; preds = %193, %175
  br label %195

195:                                              ; preds = %194, %151
  %196 = load i32, i32* %5, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %5, align 4
  br label %37

198:                                              ; preds = %37
  br label %325

199:                                              ; preds = %26
  store i32 0, i32* %5, align 4
  br label %200

200:                                              ; preds = %321, %199
  %201 = load i32, i32* %5, align 4
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp slt i32 %201, %204
  br i1 %205, label %206, label %324

206:                                              ; preds = %200
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %208, align 8
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i64 %211
  store %struct.TYPE_13__* %212, %struct.TYPE_13__** %16, align 8
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %214, align 8
  store %struct.TYPE_12__* %215, %struct.TYPE_12__** %6, align 8
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  %218 = load float, float* %217, align 8
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = call float @DotProduct(i32 %226, i32 %229)
  %231 = fsub float %218, %230
  store float %231, float* %8, align 4
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = call float @DotProduct(i32 %234, i32 %237)
  %239 = load float, float* %8, align 4
  %240 = fsub float %238, %239
  store float %240, float* %11, align 4
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = call float @DotProduct(i32 %243, i32 %246)
  %248 = load float, float* %8, align 4
  %249 = fsub float %247, %248
  store float %249, float* %12, align 4
  %250 = load float, float* %12, align 4
  %251 = fcmp ogt float %250, 0.000000e+00
  br i1 %251, label %252, label %254

252:                                              ; preds = %206
  %253 = load i8*, i8** @qtrue, align 8
  store i8* %253, i8** %13, align 8
  br label %254

254:                                              ; preds = %252, %206
  %255 = load float, float* %11, align 4
  %256 = fcmp ogt float %255, 0.000000e+00
  br i1 %256, label %257, label %259

257:                                              ; preds = %254
  %258 = load i8*, i8** @qtrue, align 8
  store i8* %258, i8** %14, align 8
  br label %259

259:                                              ; preds = %257, %254
  %260 = load float, float* %11, align 4
  %261 = fcmp ogt float %260, 0.000000e+00
  br i1 %261, label %262, label %271

262:                                              ; preds = %259
  %263 = load float, float* %12, align 4
  %264 = load float, float* @SURFACE_CLIP_EPSILON, align 4
  %265 = fcmp oge float %263, %264
  br i1 %265, label %270, label %266

266:                                              ; preds = %262
  %267 = load float, float* %12, align 4
  %268 = load float, float* %11, align 4
  %269 = fcmp oge float %267, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %266, %262
  br label %400

271:                                              ; preds = %266, %259
  %272 = load float, float* %11, align 4
  %273 = fcmp ole float %272, 0.000000e+00
  br i1 %273, label %274, label %278

274:                                              ; preds = %271
  %275 = load float, float* %12, align 4
  %276 = fcmp ole float %275, 0.000000e+00
  br i1 %276, label %277, label %278

277:                                              ; preds = %274
  br label %321

278:                                              ; preds = %274, %271
  %279 = load float, float* %11, align 4
  %280 = load float, float* %12, align 4
  %281 = fcmp ogt float %279, %280
  br i1 %281, label %282, label %302

282:                                              ; preds = %278
  %283 = load float, float* %11, align 4
  %284 = load float, float* @SURFACE_CLIP_EPSILON, align 4
  %285 = fsub float %283, %284
  %286 = load float, float* %11, align 4
  %287 = load float, float* %12, align 4
  %288 = fsub float %286, %287
  %289 = fdiv float %285, %288
  store float %289, float* %15, align 4
  %290 = load float, float* %15, align 4
  %291 = fcmp olt float %290, 0.000000e+00
  br i1 %291, label %292, label %293

292:                                              ; preds = %282
  store float 0.000000e+00, float* %15, align 4
  br label %293

293:                                              ; preds = %292, %282
  %294 = load float, float* %15, align 4
  %295 = load float, float* %9, align 4
  %296 = fcmp ogt float %294, %295
  br i1 %296, label %297, label %301

297:                                              ; preds = %293
  %298 = load float, float* %15, align 4
  store float %298, float* %9, align 4
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %299, %struct.TYPE_12__** %7, align 8
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %300, %struct.TYPE_13__** %17, align 8
  br label %301

301:                                              ; preds = %297, %293
  br label %320

302:                                              ; preds = %278
  %303 = load float, float* %11, align 4
  %304 = load float, float* @SURFACE_CLIP_EPSILON, align 4
  %305 = fadd float %303, %304
  %306 = load float, float* %11, align 4
  %307 = load float, float* %12, align 4
  %308 = fsub float %306, %307
  %309 = fdiv float %305, %308
  store float %309, float* %15, align 4
  %310 = load float, float* %15, align 4
  %311 = fcmp ogt float %310, 1.000000e+00
  br i1 %311, label %312, label %313

312:                                              ; preds = %302
  store float 1.000000e+00, float* %15, align 4
  br label %313

313:                                              ; preds = %312, %302
  %314 = load float, float* %15, align 4
  %315 = load float, float* %10, align 4
  %316 = fcmp olt float %314, %315
  br i1 %316, label %317, label %319

317:                                              ; preds = %313
  %318 = load float, float* %15, align 4
  store float %318, float* %10, align 4
  br label %319

319:                                              ; preds = %317, %313
  br label %320

320:                                              ; preds = %319, %301
  br label %321

321:                                              ; preds = %320, %277
  %322 = load i32, i32* %5, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %5, align 4
  br label %200

324:                                              ; preds = %200
  br label %325

325:                                              ; preds = %324, %198
  %326 = load i8*, i8** %14, align 8
  %327 = icmp ne i8* %326, null
  br i1 %327, label %350, label %328

328:                                              ; preds = %325
  %329 = load i8*, i8** @qtrue, align 8
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 5
  store i8* %329, i8** %332, align 8
  %333 = load i8*, i8** %13, align 8
  %334 = icmp ne i8* %333, null
  br i1 %334, label %349, label %335

335:                                              ; preds = %328
  %336 = load i8*, i8** @qtrue, align 8
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i32 0, i32 4
  store i8* %336, i8** %339, align 8
  %340 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 0
  store float 0.000000e+00, float* %342, align 8
  %343 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 1
  store i32 %345, i32* %348, align 4
  br label %349

349:                                              ; preds = %335, %328
  br label %400

350:                                              ; preds = %325
  %351 = load float, float* %9, align 4
  %352 = load float, float* %10, align 4
  %353 = fcmp olt float %351, %352
  br i1 %353, label %354, label %400

354:                                              ; preds = %350
  %355 = load float, float* %9, align 4
  %356 = fcmp ogt float %355, -1.000000e+00
  br i1 %356, label %357, label %399

357:                                              ; preds = %354
  %358 = load float, float* %9, align 4
  %359 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 0
  %362 = load float, float* %361, align 8
  %363 = fcmp olt float %358, %362
  br i1 %363, label %364, label %399

364:                                              ; preds = %357
  %365 = load float, float* %9, align 4
  %366 = fcmp olt float %365, 0.000000e+00
  br i1 %366, label %367, label %368

367:                                              ; preds = %364
  store float 0.000000e+00, float* %9, align 4
  br label %368

368:                                              ; preds = %367, %364
  %369 = load float, float* %9, align 4
  %370 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 0
  store float %369, float* %372, align 8
  %373 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %374 = icmp ne %struct.TYPE_12__* %373, null
  br i1 %374, label %375, label %382

375:                                              ; preds = %368
  %376 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %377, i32 0, i32 3
  %379 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %380 = bitcast %struct.TYPE_12__* %378 to i8*
  %381 = bitcast %struct.TYPE_12__* %379 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %380, i8* align 8 %381, i64 24, i1 false)
  br label %382

382:                                              ; preds = %375, %368
  %383 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %384 = icmp ne %struct.TYPE_13__* %383, null
  br i1 %384, label %385, label %392

385:                                              ; preds = %382
  %386 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %387 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %390 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %390, i32 0, i32 2
  store i32 %388, i32* %391, align 8
  br label %392

392:                                              ; preds = %385, %382
  %393 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %397 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %397, i32 0, i32 1
  store i32 %395, i32* %398, align 4
  br label %399

399:                                              ; preds = %392, %357, %354
  br label %400

400:                                              ; preds = %25, %144, %270, %349, %399, %350
  ret void
}

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
