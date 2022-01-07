; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_FilterWindingIntoTree_r.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_FilterWindingIntoTree_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_17__ = type { i32, i32** }
%struct.TYPE_21__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { float*, float* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_20__**, i32* }

@PLANENUM_LEAF = common dso_local global i64 0, align 8
@mapplanes = common dso_local global %struct.TYPE_19__* null, align 8
@vec3_origin = common dso_local global i32 0, align 4
@ON_EPSILON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FilterWindingIntoTree_r(%struct.TYPE_17__* %0, %struct.TYPE_21__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %18, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %150

26:                                               ; preds = %3
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %28 = icmp ne %struct.TYPE_18__* %27, null
  br i1 %28, label %29, label %150

29:                                               ; preds = %26
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load float*, float** %31, align 8
  %33 = getelementptr inbounds float, float* %32, i64 0
  %34 = load float, float* %33, align 4
  %35 = fcmp une float %34, 0.000000e+00
  br i1 %35, label %71, label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = load float*, float** %38, align 8
  %40 = getelementptr inbounds float, float* %39, i64 0
  %41 = load float, float* %40, align 4
  %42 = fcmp une float %41, 0.000000e+00
  br i1 %42, label %71, label %43

43:                                               ; preds = %36
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load float*, float** %45, align 8
  %47 = getelementptr inbounds float, float* %46, i64 1
  %48 = load float, float* %47, align 4
  %49 = fcmp une float %48, 0.000000e+00
  br i1 %49, label %71, label %50

50:                                               ; preds = %43
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = load float*, float** %52, align 8
  %54 = getelementptr inbounds float, float* %53, i64 1
  %55 = load float, float* %54, align 4
  %56 = fcmp une float %55, 0.000000e+00
  br i1 %56, label %71, label %57

57:                                               ; preds = %50
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load float*, float** %59, align 8
  %61 = getelementptr inbounds float, float* %60, i64 2
  %62 = load float, float* %61, align 4
  %63 = fcmp une float %62, 0.000000e+00
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load float*, float** %66, align 8
  %68 = getelementptr inbounds float, float* %67, i64 2
  %69 = load float, float* %68, align 4
  %70 = fcmp une float %69, 0.000000e+00
  br i1 %70, label %71, label %150

71:                                               ; preds = %64, %57, %50, %43, %36, %29
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %74, 3
  %76 = call %struct.TYPE_17__* @AllocWinding(i32 %75)
  store %struct.TYPE_17__* %76, %struct.TYPE_17__** %15, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 %79, 3
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %143, %71
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %146

89:                                               ; preds = %83
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load i32**, i32*** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @VectorCopy(i32* %96, i32* %103)
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = load i32**, i32*** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load float*, float** %113, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = mul nsw i32 %118, 2
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %117, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @VectorAdd(i32* %111, float* %114, i32* %122)
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 1
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 1
  %133 = load float*, float** %132, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 1
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = mul nsw i32 %137, 3
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %136, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @VectorAdd(i32* %130, float* %133, i32* %141)
  br label %143

143:                                              ; preds = %89
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %83

146:                                              ; preds = %83
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %148 = call i32 @FreeWinding(%struct.TYPE_17__* %147)
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %149, %struct.TYPE_17__** %5, align 8
  br label %150

150:                                              ; preds = %146, %64, %26, %3
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @PLANENUM_LEAF, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %289

156:                                              ; preds = %150
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** @mapplanes, align 8
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i64 %160
  store %struct.TYPE_19__* %161, %struct.TYPE_19__** %10, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i32*, i32** %12, align 8
  %166 = call i32 @VectorCopy(i32* %164, i32* %165)
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32*, i32** %12, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 3
  store i32 %169, i32* %171, align 4
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp uge i64 %174, 0
  br i1 %175, label %176, label %250

176:                                              ; preds = %156
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** @mapplanes, align 8
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i64 %180
  store %struct.TYPE_19__* %181, %struct.TYPE_19__** %11, align 8
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i32*, i32** %13, align 8
  %186 = call i32 @VectorCopy(i32* %184, i32* %185)
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32*, i32** %13, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 3
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* @vec3_origin, align 4
  %193 = load i32*, i32** %13, align 8
  %194 = load i32*, i32** %14, align 8
  %195 = call i32 @VectorSubtract(i32 %192, i32* %193, i32* %194)
  %196 = load i32*, i32** %13, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 3
  %198 = load i32, i32* %197, align 4
  %199 = sub nsw i32 0, %198
  %200 = load i32*, i32** %14, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 3
  store i32 %199, i32* %201, align 4
  %202 = load i32*, i32** %12, align 8
  %203 = load i32*, i32** %13, align 8
  %204 = call float @DotProduct(i32* %202, i32* %203)
  %205 = fcmp ogt float %204, 0x3FEFF7CEE0000000
  br i1 %205, label %206, label %225

206:                                              ; preds = %176
  %207 = load i32*, i32** %12, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 3
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %13, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 3
  %212 = load i32, i32* %211, align 4
  %213 = sub nsw i32 %209, %212
  %214 = call float @fabs(i32 %213)
  %215 = fcmp olt float %214, 0x3F50624DE0000000
  br i1 %215, label %216, label %225

216:                                              ; preds = %206
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %221, i64 0
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %222, align 8
  %224 = call i32 @FilterWindingIntoTree_r(%struct.TYPE_17__* %217, %struct.TYPE_21__* %218, %struct.TYPE_20__* %223)
  store i32 %224, i32* %4, align 4
  br label %293

225:                                              ; preds = %206, %176
  %226 = load i32*, i32** %12, align 8
  %227 = load i32*, i32** %14, align 8
  %228 = call float @DotProduct(i32* %226, i32* %227)
  %229 = fcmp ogt float %228, 0x3FEFF7CEE0000000
  br i1 %229, label %230, label %249

230:                                              ; preds = %225
  %231 = load i32*, i32** %12, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 3
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %14, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 3
  %236 = load i32, i32* %235, align 4
  %237 = sub nsw i32 %233, %236
  %238 = call float @fabs(i32 %237)
  %239 = fcmp olt float %238, 0x3F50624DE0000000
  br i1 %239, label %240, label %249

240:                                              ; preds = %230
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %245, i64 1
  %247 = load %struct.TYPE_20__*, %struct.TYPE_20__** %246, align 8
  %248 = call i32 @FilterWindingIntoTree_r(%struct.TYPE_17__* %241, %struct.TYPE_21__* %242, %struct.TYPE_20__* %247)
  store i32 %248, i32* %4, align 4
  br label %293

249:                                              ; preds = %230, %225
  br label %250

250:                                              ; preds = %249, %156
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %252 = load i32*, i32** %12, align 8
  %253 = load i32*, i32** %12, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 3
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @ON_EPSILON, align 4
  %257 = call i32 @ClipWindingEpsilon(%struct.TYPE_17__* %251, i32* %252, i32 %255, i32 %256, %struct.TYPE_17__** %16, %struct.TYPE_17__** %17)
  store i32 0, i32* %9, align 4
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %259 = icmp ne %struct.TYPE_17__* %258, null
  br i1 %259, label %260, label %271

260:                                              ; preds = %250
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i32 0, i32 1
  %265 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %265, i64 0
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %266, align 8
  %268 = call i32 @FilterWindingIntoTree_r(%struct.TYPE_17__* %261, %struct.TYPE_21__* %262, %struct.TYPE_20__* %267)
  %269 = load i32, i32* %9, align 4
  %270 = add nsw i32 %269, %268
  store i32 %270, i32* %9, align 4
  br label %271

271:                                              ; preds = %260, %250
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %273 = icmp ne %struct.TYPE_17__* %272, null
  br i1 %273, label %274, label %285

274:                                              ; preds = %271
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %279, i64 1
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %280, align 8
  %282 = call i32 @FilterWindingIntoTree_r(%struct.TYPE_17__* %275, %struct.TYPE_21__* %276, %struct.TYPE_20__* %281)
  %283 = load i32, i32* %9, align 4
  %284 = add nsw i32 %283, %282
  store i32 %284, i32* %9, align 4
  br label %285

285:                                              ; preds = %274, %271
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %287 = call i32 @FreeWinding(%struct.TYPE_17__* %286)
  %288 = load i32, i32* %9, align 4
  store i32 %288, i32* %4, align 4
  br label %293

289:                                              ; preds = %150
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %292 = call i32 @AddReferenceToLeaf(%struct.TYPE_21__* %290, %struct.TYPE_20__* %291)
  store i32 %292, i32* %4, align 4
  br label %293

293:                                              ; preds = %289, %285, %240, %216
  %294 = load i32, i32* %4, align 4
  ret i32 %294
}

declare dso_local %struct.TYPE_17__* @AllocWinding(i32) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @VectorAdd(i32*, float*, i32*) #1

declare dso_local i32 @FreeWinding(%struct.TYPE_17__*) #1

declare dso_local i32 @VectorSubtract(i32, i32*, i32*) #1

declare dso_local float @DotProduct(i32*, i32*) #1

declare dso_local float @fabs(i32) #1

declare dso_local i32 @ClipWindingEpsilon(%struct.TYPE_17__*, i32*, i32, i32, %struct.TYPE_17__**, %struct.TYPE_17__**) #1

declare dso_local i32 @AddReferenceToLeaf(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
