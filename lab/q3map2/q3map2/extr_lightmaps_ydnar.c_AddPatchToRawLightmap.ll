; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_AddPatchToRawLightmap.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps_ydnar.c_AddPatchToRawLightmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { float**, i32 }
%struct.TYPE_17__ = type { i32, float, i32, i32, i32, i8**, i8* }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_19__* }

@MAX_EXPANDED_AXIS = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@bspDrawSurfaces = common dso_local global %struct.TYPE_20__* null, align 8
@surfaceInfos = common dso_local global %struct.TYPE_16__* null, align 8
@yDrawVerts = common dso_local global %struct.TYPE_19__* null, align 8
@superSample = common dso_local global float 0.000000e+00, align 4
@qfalse = common dso_local global i8* null, align 8
@numPatchesLightmapped = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @AddPatchToRawLightmap(i32 %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %24 = load i32, i32* @MAX_EXPANDED_AXIS, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %21, align 8
  %27 = alloca float, i64 %25, align 16
  store i64 %25, i64* %22, align 8
  %28 = load i32, i32* @MAX_EXPANDED_AXIS, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca float, i64 %29, align 16
  store i64 %29, i64* %23, align 8
  %31 = load i8*, i8** @qtrue, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 6
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** @bspDrawSurfaces, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i64 %36
  store %struct.TYPE_20__* %37, %struct.TYPE_20__** %5, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** @surfaceInfos, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i64 %40
  store %struct.TYPE_16__* %41, %struct.TYPE_16__** %6, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** @yDrawVerts, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  store %struct.TYPE_19__* %54, %struct.TYPE_19__** %55, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = bitcast %struct.TYPE_18__* %13 to { i64, %struct.TYPE_19__* }*
  %60 = getelementptr inbounds { i64, %struct.TYPE_19__* }, { i64, %struct.TYPE_19__* }* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds { i64, %struct.TYPE_19__* }, { i64, %struct.TYPE_19__* }* %59, i32 0, i32 1
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  %64 = call %struct.TYPE_18__* @SubdivideMesh2(i64 %61, %struct.TYPE_19__* %63, i32 %58)
  store %struct.TYPE_18__* %64, %struct.TYPE_18__** %14, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %66 = bitcast %struct.TYPE_18__* %65 to { i64, %struct.TYPE_19__* }*
  %67 = getelementptr inbounds { i64, %struct.TYPE_19__* }, { i64, %struct.TYPE_19__* }* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds { i64, %struct.TYPE_19__* }, { i64, %struct.TYPE_19__* }* %66, i32 0, i32 1
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = call i32 @PutMeshOnCurve(i64 %68, %struct.TYPE_19__* %70)
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %73 = call %struct.TYPE_18__* @RemoveLinearMeshColumnsRows(%struct.TYPE_18__* %72)
  store %struct.TYPE_18__* %73, %struct.TYPE_18__** %15, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %75 = call i32 @FreeMesh(%struct.TYPE_18__* %74)
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  store %struct.TYPE_19__* %78, %struct.TYPE_19__** %9, align 8
  %79 = mul nuw i64 4, %25
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memset(float* %27, i32 0, i32 %80)
  %82 = mul nuw i64 4, %29
  %83 = trunc i64 %82 to i32
  %84 = call i32 @memset(float* %30, i32 0, i32 %83)
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %205, %2
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %208

91:                                               ; preds = %85
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %201, %91
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %204

98:                                               ; preds = %92
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %149

105:                                              ; preds = %98
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = mul nsw i32 %107, %110
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i64 %114
  store %struct.TYPE_19__* %115, %struct.TYPE_19__** %10, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = mul nsw i32 %117, %120
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %121, %122
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i64 %125
  store %struct.TYPE_19__* %126, %struct.TYPE_19__** %11, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @VectorSubtract(i32 %129, i32 %132, i32 %133)
  %135 = load i32, i32* %12, align 4
  %136 = call float @VectorLength(i32 %135)
  store float %136, float* %20, align 4
  %137 = load float, float* %20, align 4
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %27, i64 %139
  %141 = load float, float* %140, align 4
  %142 = fcmp ogt float %137, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %105
  %144 = load float, float* %20, align 4
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %27, i64 %146
  store float %144, float* %147, align 4
  br label %148

148:                                              ; preds = %143, %105
  br label %149

149:                                              ; preds = %148, %98
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %200

156:                                              ; preds = %149
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %158 = load i32, i32* %8, align 4
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = mul nsw i32 %158, %161
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %162, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i64 %165
  store %struct.TYPE_19__* %166, %struct.TYPE_19__** %10, align 8
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = mul nsw i32 %169, %172
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %173, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i64 %176
  store %struct.TYPE_19__* %177, %struct.TYPE_19__** %11, align 8
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %12, align 4
  %185 = call i32 @VectorSubtract(i32 %180, i32 %183, i32 %184)
  %186 = load i32, i32* %12, align 4
  %187 = call float @VectorLength(i32 %186)
  store float %187, float* %20, align 4
  %188 = load float, float* %20, align 4
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %30, i64 %190
  %192 = load float, float* %191, align 4
  %193 = fcmp ogt float %188, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %156
  %195 = load float, float* %20, align 4
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %30, i64 %197
  store float %195, float* %198, align 4
  br label %199

199:                                              ; preds = %194, %156
  br label %200

200:                                              ; preds = %199, %149
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %7, align 4
  br label %92

204:                                              ; preds = %92
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %8, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %8, align 4
  br label %85

208:                                              ; preds = %85
  store float 0.000000e+00, float* %20, align 4
  store i32 0, i32* %7, align 4
  br label %209

209:                                              ; preds = %223, %208
  %210 = load i32, i32* %7, align 4
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = sub nsw i32 %213, 1
  %215 = icmp slt i32 %210, %214
  br i1 %215, label %216, label %226

216:                                              ; preds = %209
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, float* %27, i64 %218
  %220 = load float, float* %219, align 4
  %221 = load float, float* %20, align 4
  %222 = fadd float %221, %220
  store float %222, float* %20, align 4
  br label %223

223:                                              ; preds = %216
  %224 = load i32, i32* %7, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %7, align 4
  br label %209

226:                                              ; preds = %209
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 1
  %229 = load float, float* %228, align 4
  %230 = fcmp une float %229, 0.000000e+00
  br i1 %230, label %231, label %239

231:                                              ; preds = %226
  %232 = load float, float* %20, align 4
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 1
  %235 = load float, float* %234, align 4
  %236 = fdiv float %232, %235
  %237 = call i8* @ceil(float %236)
  %238 = getelementptr i8, i8* %237, i64 1
  br label %240

239:                                              ; preds = %226
  br label %240

240:                                              ; preds = %239, %231
  %241 = phi i8* [ %238, %231 ], [ null, %239 ]
  %242 = ptrtoint i8* %241 to i32
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 0
  store i32 %242, i32* %244, align 8
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp slt i32 %247, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %240
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 0
  store i32 %255, i32* %257, align 8
  br label %258

258:                                              ; preds = %252, %240
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = icmp sgt i32 %261, %264
  br i1 %265, label %266, label %272

266:                                              ; preds = %258
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 0
  store i32 %269, i32* %271, align 8
  br label %272

272:                                              ; preds = %266, %258
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = sub nsw i32 %275, 1
  %277 = sitofp i32 %276 to float
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = sub nsw i32 %280, 1
  %282 = sitofp i32 %281 to float
  %283 = fdiv float %277, %282
  store float %283, float* %16, align 4
  store float 0.000000e+00, float* %20, align 4
  store i32 0, i32* %8, align 4
  br label %284

284:                                              ; preds = %298, %272
  %285 = load i32, i32* %8, align 4
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = sub nsw i32 %288, 1
  %290 = icmp slt i32 %285, %289
  br i1 %290, label %291, label %301

291:                                              ; preds = %284
  %292 = load i32, i32* %8, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds float, float* %30, i64 %293
  %295 = load float, float* %294, align 4
  %296 = load float, float* %20, align 4
  %297 = fadd float %296, %295
  store float %297, float* %20, align 4
  br label %298

298:                                              ; preds = %291
  %299 = load i32, i32* %8, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %8, align 4
  br label %284

301:                                              ; preds = %284
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 1
  %304 = load float, float* %303, align 4
  %305 = fcmp une float %304, 0.000000e+00
  br i1 %305, label %306, label %314

306:                                              ; preds = %301
  %307 = load float, float* %20, align 4
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 1
  %310 = load float, float* %309, align 4
  %311 = fdiv float %307, %310
  %312 = call i8* @ceil(float %311)
  %313 = getelementptr i8, i8* %312, i64 1
  br label %315

314:                                              ; preds = %301
  br label %315

315:                                              ; preds = %314, %306
  %316 = phi i8* [ %313, %306 ], [ null, %314 ]
  %317 = ptrtoint i8* %316 to i32
  %318 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 3
  store i32 %317, i32* %319, align 4
  %320 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = icmp slt i32 %322, %325
  br i1 %326, label %327, label %333

327:                                              ; preds = %315
  %328 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %331, i32 0, i32 3
  store i32 %330, i32* %332, align 4
  br label %333

333:                                              ; preds = %327, %315
  %334 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 4
  %339 = load i32, i32* %338, align 8
  %340 = icmp sgt i32 %336, %339
  br i1 %340, label %341, label %347

341:                                              ; preds = %333
  %342 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %345, i32 0, i32 3
  store i32 %344, i32* %346, align 4
  br label %347

347:                                              ; preds = %341, %333
  %348 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 4
  %351 = sub nsw i32 %350, 1
  %352 = sitofp i32 %351 to float
  %353 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = sub nsw i32 %355, 1
  %357 = sitofp i32 %356 to float
  %358 = fdiv float %352, %357
  store float %358, float* %17, align 4
  %359 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %360 = call i32 @FreeMesh(%struct.TYPE_18__* %359)
  %361 = load i8*, i8** @qtrue, align 8
  %362 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %362, i32 0, i32 5
  %364 = load i8**, i8*** %363, align 8
  %365 = getelementptr inbounds i8*, i8** %364, i64 0
  store i8* %361, i8** %365, align 8
  %366 = load i8*, i8** @qtrue, align 8
  %367 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %367, i32 0, i32 5
  %369 = load i8**, i8*** %368, align 8
  %370 = getelementptr inbounds i8*, i8** %369, i64 1
  store i8* %366, i8** %370, align 8
  %371 = load %struct.TYPE_19__*, %struct.TYPE_19__** @yDrawVerts, align 8
  %372 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %372, i32 0, i32 2
  %374 = load i64, i64* %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %371, i64 %374
  store %struct.TYPE_19__* %375, %struct.TYPE_19__** %9, align 8
  store i32 0, i32* %8, align 4
  br label %376

376:                                              ; preds = %507, %347
  %377 = load i32, i32* %8, align 4
  %378 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = icmp slt i32 %377, %380
  br i1 %381, label %382, label %510

382:                                              ; preds = %376
  %383 = load float, float* %17, align 4
  %384 = load i32, i32* %8, align 4
  %385 = sitofp i32 %384 to float
  %386 = fmul float %383, %385
  %387 = fadd float %386, 5.000000e-01
  store float %387, float* %19, align 4
  store i32 0, i32* %7, align 4
  br label %388

388:                                              ; preds = %469, %382
  %389 = load i32, i32* %7, align 4
  %390 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %391 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = icmp slt i32 %389, %392
  br i1 %393, label %394, label %472

394:                                              ; preds = %388
  %395 = load float, float* %16, align 4
  %396 = load i32, i32* %7, align 4
  %397 = sitofp i32 %396 to float
  %398 = fmul float %395, %397
  %399 = fadd float %398, 5.000000e-01
  store float %399, float* %18, align 4
  %400 = load float, float* %18, align 4
  %401 = load float, float* @superSample, align 4
  %402 = fmul float %400, %401
  %403 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %404 = load i32, i32* %8, align 4
  %405 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = mul nsw i32 %404, %407
  %409 = load i32, i32* %7, align 4
  %410 = add nsw i32 %408, %409
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %403, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %412, i32 0, i32 0
  %414 = load float**, float*** %413, align 8
  %415 = getelementptr inbounds float*, float** %414, i64 0
  %416 = load float*, float** %415, align 8
  %417 = getelementptr inbounds float, float* %416, i64 0
  store float %402, float* %417, align 4
  %418 = load float, float* %19, align 4
  %419 = load float, float* @superSample, align 4
  %420 = fmul float %418, %419
  %421 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %422 = load i32, i32* %8, align 4
  %423 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = mul nsw i32 %422, %425
  %427 = load i32, i32* %7, align 4
  %428 = add nsw i32 %426, %427
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %421, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %430, i32 0, i32 0
  %432 = load float**, float*** %431, align 8
  %433 = getelementptr inbounds float*, float** %432, i64 0
  %434 = load float*, float** %433, align 8
  %435 = getelementptr inbounds float, float* %434, i64 1
  store float %420, float* %435, align 4
  %436 = load i32, i32* %8, align 4
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %468

438:                                              ; preds = %394
  %439 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %440 = load i32, i32* %7, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %439, i64 %441
  %443 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 8
  %445 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %446 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %447 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 4
  %449 = sub nsw i32 %448, 1
  %450 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %451 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = mul nsw i32 %449, %452
  %454 = load i32, i32* %7, align 4
  %455 = add nsw i32 %453, %454
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %445, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 8
  %460 = call i32 @VectorCompare(i32 %444, i32 %459)
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %468, label %462

462:                                              ; preds = %438
  %463 = load i8*, i8** @qfalse, align 8
  %464 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %465 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %464, i32 0, i32 5
  %466 = load i8**, i8*** %465, align 8
  %467 = getelementptr inbounds i8*, i8** %466, i64 1
  store i8* %463, i8** %467, align 8
  br label %468

468:                                              ; preds = %462, %438, %394
  br label %469

469:                                              ; preds = %468
  %470 = load i32, i32* %7, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %7, align 4
  br label %388

472:                                              ; preds = %388
  %473 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %474 = load i32, i32* %8, align 4
  %475 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %476 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = mul nsw i32 %474, %477
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %473, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 8
  %483 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %484 = load i32, i32* %8, align 4
  %485 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %486 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = mul nsw i32 %484, %487
  %489 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %490 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = sub nsw i32 %491, 1
  %493 = add nsw i32 %488, %492
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %483, i64 %494
  %496 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %495, i32 0, i32 1
  %497 = load i32, i32* %496, align 8
  %498 = call i32 @VectorCompare(i32 %482, i32 %497)
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %506, label %500

500:                                              ; preds = %472
  %501 = load i8*, i8** @qfalse, align 8
  %502 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %503 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %502, i32 0, i32 5
  %504 = load i8**, i8*** %503, align 8
  %505 = getelementptr inbounds i8*, i8** %504, i64 0
  store i8* %501, i8** %505, align 8
  br label %506

506:                                              ; preds = %500, %472
  br label %507

507:                                              ; preds = %506
  %508 = load i32, i32* %8, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %8, align 4
  br label %376

510:                                              ; preds = %376
  %511 = load i32, i32* @numPatchesLightmapped, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* @numPatchesLightmapped, align 4
  %513 = load i8*, i8** @qtrue, align 8
  %514 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %514)
  ret i8* %513
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_18__* @SubdivideMesh2(i64, %struct.TYPE_19__*, i32) #2

declare dso_local i32 @PutMeshOnCurve(i64, %struct.TYPE_19__*) #2

declare dso_local %struct.TYPE_18__* @RemoveLinearMeshColumnsRows(%struct.TYPE_18__*) #2

declare dso_local i32 @FreeMesh(%struct.TYPE_18__*) #2

declare dso_local i32 @memset(float*, i32, i32) #2

declare dso_local i32 @VectorSubtract(i32, i32, i32) #2

declare dso_local float @VectorLength(i32) #2

declare dso_local i8* @ceil(float) #2

declare dso_local i32 @VectorCompare(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
