; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_trace.c_SubdivideTraceNode_r.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_trace.c_SubdivideTraceNode_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32*, float*, float*, i32, i64*, float*, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64* }

@numTraceNodes = common dso_local global i32 0, align 4
@traceNodes = common dso_local global %struct.TYPE_13__* null, align 8
@MAX_TRACE_DEPTH = common dso_local global i32 0, align 4
@numTraceLeafNodes = common dso_local global i32 0, align 4
@traceWindings = common dso_local global %struct.TYPE_12__* null, align 8
@MAX_NODE_TRIANGLES = common dso_local global i32 0, align 4
@PLANE_X = common dso_local global i32 0, align 4
@PLANE_Y = common dso_local global i32 0, align 4
@PLANE_Z = common dso_local global i32 0, align 4
@MIN_NODE_SIZE = common dso_local global i64 0, align 8
@maxTraceDepth = common dso_local global i32 0, align 4
@deadWinding = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @SubdivideTraceNode_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SubdivideTraceNode_r(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca float, align 4
  %14 = alloca [3 x double], align 16
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca %struct.TYPE_12__, align 8
  %20 = alloca %struct.TYPE_12__, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @numTraceNodes, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %2
  br label %455

28:                                               ; preds = %23
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** @traceNodes, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i64 %31
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %15, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @MAX_TRACE_DEPTH, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @numTraceLeafNodes, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @numTraceLeafNodes, align 4
  br label %455

39:                                               ; preds = %28
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %39
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %4, align 4
  call void @SubdivideTraceNode_r(i32 %57, i32 %58)
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %4, align 4
  call void @SubdivideTraceNode_r(i32 %59, i32 %60)
  br label %455

61:                                               ; preds = %39
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = load float*, float** %63, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 3
  %67 = load float*, float** %66, align 8
  %68 = call i32 @ClearBounds(float* %64, float* %67)
  %69 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 0
  %70 = call i32 @VectorClear(double* %69)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %157, %61
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %160

77:                                               ; preds = %71
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** @traceWindings, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 5
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i64 %85
  store %struct.TYPE_12__* %86, %struct.TYPE_12__** %18, align 8
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %153, %77
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %156

93:                                               ; preds = %87
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 2
  %104 = load float*, float** %103, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 3
  %107 = load float*, float** %106, align 8
  %108 = call i32 @AddPointToBounds(i64* %101, float* %104, float* %107)
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 0
  %118 = load i64, i64* %117, align 8
  %119 = sitofp i64 %118 to double
  %120 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 0
  %121 = load double, double* %120, align 16
  %122 = fadd double %121, %119
  store double %122, double* %120, align 16
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 1
  %132 = load i64, i64* %131, align 8
  %133 = sitofp i64 %132 to double
  %134 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 1
  %135 = load double, double* %134, align 8
  %136 = fadd double %135, %133
  store double %136, double* %134, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 2
  %146 = load i64, i64* %145, align 8
  %147 = sitofp i64 %146 to double
  %148 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 2
  %149 = load double, double* %148, align 16
  %150 = fadd double %149, %147
  store double %150, double* %148, align 16
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %93
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %6, align 4
  br label %87

156:                                              ; preds = %87
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %5, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %5, align 4
  br label %71

160:                                              ; preds = %71
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = mul nsw i32 %164, 2
  %166 = sub nsw i32 %161, %165
  %167 = load i32, i32* @MAX_NODE_TRIANGLES, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %160
  %170 = load i32, i32* @numTraceLeafNodes, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* @numTraceLeafNodes, align 4
  br label %455

172:                                              ; preds = %160
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 3
  %175 = load float*, float** %174, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 2
  %178 = load float*, float** %177, align 8
  %179 = load i64*, i64** %12, align 8
  %180 = call i32 @VectorSubtract(float* %175, float* %178, i64* %179)
  %181 = load i64*, i64** %12, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64*, i64** %12, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp sge i64 %183, %186
  br i1 %187, label %188, label %198

188:                                              ; preds = %172
  %189 = load i64*, i64** %12, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64*, i64** %12, align 8
  %193 = getelementptr inbounds i64, i64* %192, i64 2
  %194 = load i64, i64* %193, align 8
  %195 = icmp sge i64 %191, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %188
  %197 = load i32, i32* @PLANE_X, align 4
  store i32 %197, i32* %11, align 4
  br label %219

198:                                              ; preds = %188, %172
  %199 = load i64*, i64** %12, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64*, i64** %12, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp sge i64 %201, %204
  br i1 %205, label %206, label %216

206:                                              ; preds = %198
  %207 = load i64*, i64** %12, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 1
  %209 = load i64, i64* %208, align 8
  %210 = load i64*, i64** %12, align 8
  %211 = getelementptr inbounds i64, i64* %210, i64 2
  %212 = load i64, i64* %211, align 8
  %213 = icmp sge i64 %209, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %206
  %215 = load i32, i32* @PLANE_Y, align 4
  store i32 %215, i32* %11, align 4
  br label %218

216:                                              ; preds = %206, %198
  %217 = load i32, i32* @PLANE_Z, align 4
  store i32 %217, i32* %11, align 4
  br label %218

218:                                              ; preds = %216, %214
  br label %219

219:                                              ; preds = %218, %196
  %220 = load i64*, i64** %12, align 8
  %221 = load i32, i32* %11, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %220, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @MIN_NODE_SIZE, align 8
  %226 = icmp sle i64 %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %219
  %228 = load i32, i32* @numTraceLeafNodes, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* @numTraceLeafNodes, align 4
  br label %455

230:                                              ; preds = %219
  %231 = load i32, i32* %4, align 4
  %232 = load i32, i32* @maxTraceDepth, align 4
  %233 = icmp sgt i32 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = load i32, i32* %4, align 4
  store i32 %235, i32* @maxTraceDepth, align 4
  br label %236

236:                                              ; preds = %234, %230
  %237 = load i32, i32* %11, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 %238
  %240 = load double, double* %239, align 8
  %241 = load i32, i32* %7, align 4
  %242 = sitofp i32 %241 to double
  %243 = fdiv double %240, %242
  %244 = fptrunc double %243 to float
  %245 = call float @floor(float %244)
  store float %245, float* %13, align 4
  %246 = load float, float* %13, align 4
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 2
  %249 = load float*, float** %248, align 8
  %250 = load i32, i32* %11, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %249, i64 %251
  %253 = load float, float* %252, align 4
  %254 = fcmp ole float %246, %253
  br i1 %254, label %265, label %255

255:                                              ; preds = %236
  %256 = load float, float* %13, align 4
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 3
  %259 = load float*, float** %258, align 8
  %260 = load i32, i32* %11, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %259, i64 %261
  %263 = load float, float* %262, align 4
  %264 = fcmp oge float %256, %263
  br i1 %264, label %265, label %283

265:                                              ; preds = %255, %236
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 2
  %268 = load float*, float** %267, align 8
  %269 = load i32, i32* %11, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %268, i64 %270
  %272 = load float, float* %271, align 4
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 3
  %275 = load float*, float** %274, align 8
  %276 = load i32, i32* %11, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds float, float* %275, i64 %277
  %279 = load float, float* %278, align 4
  %280 = fadd float %272, %279
  %281 = fmul float 5.000000e-01, %280
  %282 = call float @floor(float %281)
  store float %282, float* %13, align 4
  br label %283

283:                                              ; preds = %265, %255
  %284 = call i32 (...) @AllocTraceNode()
  store i32 %284, i32* %9, align 4
  %285 = call i32 (...) @AllocTraceNode()
  store i32 %285, i32* %10, align 4
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** @traceNodes, align 8
  %287 = load i32, i32* %3, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i64 %288
  store %struct.TYPE_13__* %289, %struct.TYPE_13__** %15, align 8
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** @traceNodes, align 8
  %291 = load i32, i32* %9, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i64 %292
  store %struct.TYPE_13__* %293, %struct.TYPE_13__** %16, align 8
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** @traceNodes, align 8
  %295 = load i32, i32* %10, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i64 %296
  store %struct.TYPE_13__* %297, %struct.TYPE_13__** %17, align 8
  %298 = load i32, i32* %11, align 4
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 0
  store i32 %298, i32* %300, align 8
  %301 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 6
  %303 = load float*, float** %302, align 8
  %304 = load i32, i32* %11, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds float, float* %303, i64 %305
  store float 1.000000e+00, float* %306, align 4
  %307 = load float, float* %13, align 4
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 6
  %310 = load float*, float** %309, align 8
  %311 = getelementptr inbounds float, float* %310, i64 3
  store float %307, float* %311, align 4
  %312 = load i32, i32* %9, align 4
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 0
  store i32 %312, i32* %316, align 4
  %317 = load i32, i32* %10, align 4
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 1
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 1
  store i32 %317, i32* %321, align 4
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 7
  %324 = load i32, i32* %323, align 8
  %325 = ashr i32 %324, 1
  %326 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 7
  store i32 %325, i32* %327, align 8
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 7
  %330 = load i32, i32* %329, align 8
  %331 = sext i32 %330 to i64
  %332 = mul i64 %331, 8
  %333 = trunc i64 %332 to i32
  %334 = call i8* @safe_malloc(i32 %333)
  %335 = bitcast i8* %334 to i64*
  %336 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 5
  store i64* %335, i64** %337, align 8
  %338 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %339 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %338, i32 0, i32 7
  %340 = load i32, i32* %339, align 8
  %341 = ashr i32 %340, 1
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 7
  store i32 %341, i32* %343, align 8
  %344 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 7
  %346 = load i32, i32* %345, align 8
  %347 = sext i32 %346 to i64
  %348 = mul i64 %347, 8
  %349 = trunc i64 %348 to i32
  %350 = call i8* @safe_malloc(i32 %349)
  %351 = bitcast i8* %350 to i64*
  %352 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 5
  store i64* %351, i64** %353, align 8
  store i32 0, i32* %5, align 4
  br label %354

354:                                              ; preds = %409, %283
  %355 = load i32, i32* %5, align 4
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 4
  %358 = load i32, i32* %357, align 8
  %359 = icmp slt i32 %355, %358
  br i1 %359, label %360, label %412

360:                                              ; preds = %354
  %361 = load %struct.TYPE_12__*, %struct.TYPE_12__** @traceWindings, align 8
  %362 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %363 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %362, i32 0, i32 5
  %364 = load i64*, i64** %363, align 8
  %365 = load i32, i32* %5, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i64, i64* %364, i64 %366
  %368 = load i64, i64* %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %361, i64 %368
  store %struct.TYPE_12__* %369, %struct.TYPE_12__** %18, align 8
  %370 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %371 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %372 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %371, i32 0, i32 6
  %373 = load float*, float** %372, align 8
  %374 = call i32 @ClipTraceWinding(%struct.TYPE_12__* %370, float* %373, %struct.TYPE_12__* %19, %struct.TYPE_12__* %20)
  %375 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = icmp sge i32 %376, 3
  br i1 %377, label %382, label %378

378:                                              ; preds = %360
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = icmp sge i32 %380, 3
  br i1 %381, label %382, label %390

382:                                              ; preds = %378, %360
  %383 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i32 0, i32 5
  %385 = load i64*, i64** %384, align 8
  %386 = load i32, i32* %5, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i64, i64* %385, i64 %387
  %389 = load i64, i64* %388, align 8
  store i64 %389, i64* @deadWinding, align 8
  br label %390

390:                                              ; preds = %382, %378
  %391 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = icmp sge i32 %392, 3
  br i1 %393, label %394, label %399

394:                                              ; preds = %390
  %395 = call i32 @AddTraceWinding(%struct.TYPE_12__* %19)
  store i32 %395, i32* %8, align 4
  %396 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %397 = load i32, i32* %8, align 4
  %398 = call i32 @AddItemToTraceNode(%struct.TYPE_13__* %396, i32 %397)
  br label %399

399:                                              ; preds = %394, %390
  %400 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = icmp sge i32 %401, 3
  br i1 %402, label %403, label %408

403:                                              ; preds = %399
  %404 = call i32 @AddTraceWinding(%struct.TYPE_12__* %20)
  store i32 %404, i32* %8, align 4
  %405 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %406 = load i32, i32* %8, align 4
  %407 = call i32 @AddItemToTraceNode(%struct.TYPE_13__* %405, i32 %406)
  br label %408

408:                                              ; preds = %403, %399
  br label %409

409:                                              ; preds = %408
  %410 = load i32, i32* %5, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %5, align 4
  br label %354

412:                                              ; preds = %354
  %413 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %414 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %413, i32 0, i32 4
  store i32 0, i32* %414, align 8
  %415 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %416 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %415, i32 0, i32 7
  store i32 0, i32* %416, align 8
  %417 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %418 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %417, i32 0, i32 5
  %419 = load i64*, i64** %418, align 8
  %420 = call i32 @free(i64* %419)
  %421 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %422 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %421, i32 0, i32 5
  store i64* null, i64** %422, align 8
  %423 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %424 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %423, i32 0, i32 4
  %425 = load i32, i32* %424, align 8
  %426 = icmp sle i32 %425, 0
  br i1 %426, label %427, label %436

427:                                              ; preds = %412
  %428 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %429 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %428, i32 0, i32 7
  store i32 0, i32* %429, align 8
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 5
  %432 = load i64*, i64** %431, align 8
  %433 = call i32 @free(i64* %432)
  %434 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %435 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %434, i32 0, i32 5
  store i64* null, i64** %435, align 8
  br label %436

436:                                              ; preds = %427, %412
  %437 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %438 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %437, i32 0, i32 4
  %439 = load i32, i32* %438, align 8
  %440 = icmp sle i32 %439, 0
  br i1 %440, label %441, label %450

441:                                              ; preds = %436
  %442 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %443 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %442, i32 0, i32 7
  store i32 0, i32* %443, align 8
  %444 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %445 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %444, i32 0, i32 5
  %446 = load i64*, i64** %445, align 8
  %447 = call i32 @free(i64* %446)
  %448 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %449 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %448, i32 0, i32 5
  store i64* null, i64** %449, align 8
  br label %450

450:                                              ; preds = %441, %436
  %451 = load i32, i32* %9, align 4
  %452 = load i32, i32* %4, align 4
  call void @SubdivideTraceNode_r(i32 %451, i32 %452)
  %453 = load i32, i32* %10, align 4
  %454 = load i32, i32* %4, align 4
  call void @SubdivideTraceNode_r(i32 %453, i32 %454)
  br label %455

455:                                              ; preds = %450, %227, %169, %46, %36, %27
  ret void
}

declare dso_local i32 @ClearBounds(float*, float*) #1

declare dso_local i32 @VectorClear(double*) #1

declare dso_local i32 @AddPointToBounds(i64*, float*, float*) #1

declare dso_local i32 @VectorSubtract(float*, float*, i64*) #1

declare dso_local float @floor(float) #1

declare dso_local i32 @AllocTraceNode(...) #1

declare dso_local i8* @safe_malloc(i32) #1

declare dso_local i32 @ClipTraceWinding(%struct.TYPE_12__*, float*, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @AddTraceWinding(%struct.TYPE_12__*) #1

declare dso_local i32 @AddItemToTraceNode(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
