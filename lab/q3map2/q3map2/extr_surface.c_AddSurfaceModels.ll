; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_AddSurfaceModels.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_AddSurfaceModels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32, i64*, %struct.TYPE_21__*, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_21__ = type { i32*, i32*, i32*, float** }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_21__*, i32 }

@patchSubdivisions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AddSurfaceModels(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [5 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_21__, align 8
  %17 = alloca [3 x %struct.TYPE_21__*], align 16
  %18 = alloca float, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = icmp eq %struct.TYPE_20__* %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %25 = icmp eq %struct.TYPE_17__* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %32 = icmp eq %struct.TYPE_18__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %21, %1
  store i32 0, i32* %2, align 4
  br label %523

34:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %38, align 8
  store %struct.TYPE_18__* %39, %struct.TYPE_18__** %4, align 8
  br label %40

40:                                               ; preds = %517, %34
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = icmp ne %struct.TYPE_18__* %41, null
  br i1 %42, label %43, label %521

43:                                               ; preds = %40
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %515 [
    i32 132, label %47
    i32 133, label %47
    i32 129, label %263
    i32 128, label %453
    i32 131, label %453
    i32 130, label %453
  ]

47:                                               ; preds = %43, %43
  %48 = call i32 @memset(%struct.TYPE_21__* %16, i32 0, i32 32)
  store float 0.000000e+00, float* %18, align 4
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %126, %47
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %129

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @VectorAdd(i32* %57, i32* %65, i32* %67)
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 5
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @VectorAdd(i32* %70, i32* %78, i32* %80)
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 5
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, %91
  store i32 %96, i32* %94, align 4
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 5
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, %106
  store i32 %111, i32* %109, align 4
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 3
  %119 = load float**, float*** %118, align 8
  %120 = getelementptr inbounds float*, float** %119, i64 0
  %121 = load float*, float** %120, align 8
  %122 = getelementptr inbounds float, float* %121, i64 3
  %123 = load float, float* %122, align 4
  %124 = load float, float* %18, align 4
  %125 = fadd float %124, %123
  store float %125, float* %18, align 4
  br label %126

126:                                              ; preds = %55
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %49

129:                                              ; preds = %49
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = sdiv i32 %136, %132
  store i32 %137, i32* %135, align 4
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = sdiv i32 %144, %140
  store i32 %145, i32* %143, align 4
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = load i32, i32* %151, align 4
  %153 = sdiv i32 %152, %148
  store i32 %153, i32* %151, align 4
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = call float @VectorNormalize(i32* %155, i32* %157)
  %159 = fcmp oeq float %158, 0.000000e+00
  br i1 %159, label %160, label %170

160:                                              ; preds = %129
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 5
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @VectorCopy(i32* %166, i32* %168)
  br label %170

170:                                              ; preds = %160, %129
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = sdiv i32 %177, %173
  store i32 %178, i32* %176, align 4
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = sdiv i32 %185, %181
  store i32 %186, i32* %184, align 4
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = sitofp i32 %189 to float
  %191 = load float, float* %18, align 4
  %192 = fdiv float %191, %190
  store float %192, float* %18, align 4
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 3
  %194 = load float**, float*** %193, align 8
  %195 = getelementptr inbounds float*, float** %194, i64 0
  %196 = load float*, float** %195, align 8
  %197 = getelementptr inbounds float, float* %196, i64 0
  store float 2.550000e+02, float* %197, align 4
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 3
  %199 = load float**, float*** %198, align 8
  %200 = getelementptr inbounds float*, float** %199, i64 0
  %201 = load float*, float** %200, align 8
  %202 = getelementptr inbounds float, float* %201, i64 1
  store float 2.550000e+02, float* %202, align 4
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 3
  %204 = load float**, float*** %203, align 8
  %205 = getelementptr inbounds float*, float** %204, i64 0
  %206 = load float*, float** %205, align 8
  %207 = getelementptr inbounds float, float* %206, i64 2
  store float 2.550000e+02, float* %207, align 4
  %208 = load float, float* %18, align 4
  %209 = fcmp ogt float %208, 2.550000e+02
  br i1 %209, label %210, label %211

210:                                              ; preds = %170
  br label %213

211:                                              ; preds = %170
  %212 = load float, float* %18, align 4
  br label %213

213:                                              ; preds = %211, %210
  %214 = phi float [ 2.550000e+02, %210 ], [ %212, %211 ]
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 3
  %216 = load float**, float*** %215, align 8
  %217 = getelementptr inbounds float*, float** %216, i64 0
  %218 = load float*, float** %217, align 8
  %219 = getelementptr inbounds float, float* %218, i64 2
  store float %214, float* %219, align 4
  %220 = getelementptr inbounds [3 x %struct.TYPE_21__*], [3 x %struct.TYPE_21__*]* %17, i64 0, i64 0
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %220, align 16
  store i32 0, i32* %5, align 4
  br label %221

221:                                              ; preds = %259, %213
  %222 = load i32, i32* %5, align 4
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp slt i32 %222, %225
  br i1 %226, label %227, label %262

227:                                              ; preds = %221
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 5
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %229, align 8
  %231 = load i32, i32* %5, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i64 %232
  %234 = getelementptr inbounds [3 x %struct.TYPE_21__*], [3 x %struct.TYPE_21__*]* %17, i64 0, i64 1
  store %struct.TYPE_21__* %233, %struct.TYPE_21__** %234, align 8
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 5
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %236, align 8
  %238 = load i32, i32* %5, align 4
  %239 = add nsw i32 %238, 1
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = srem i32 %239, %242
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i64 %244
  %246 = getelementptr inbounds [3 x %struct.TYPE_21__*], [3 x %struct.TYPE_21__*]* %17, i64 0, i64 2
  store %struct.TYPE_21__* %245, %struct.TYPE_21__** %246, align 16
  %247 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %249 = getelementptr inbounds [3 x %struct.TYPE_21__*], [3 x %struct.TYPE_21__*]* %17, i64 0, i64 0
  %250 = call i32 @AddSurfaceModelsToTriangle_r(%struct.TYPE_20__* %247, %struct.TYPE_18__* %248, %struct.TYPE_21__** %249)
  store i32 %250, i32* %8, align 4
  %251 = load i32, i32* %8, align 4
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %227
  %254 = load i32, i32* %8, align 4
  store i32 %254, i32* %2, align 4
  br label %523

255:                                              ; preds = %227
  %256 = load i32, i32* %8, align 4
  %257 = load i32, i32* %11, align 4
  %258 = add nsw i32 %257, %256
  store i32 %258, i32* %11, align 4
  br label %259

259:                                              ; preds = %255
  %260 = load i32, i32* %5, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %5, align 4
  br label %221

262:                                              ; preds = %221
  br label %516

263:                                              ; preds = %43
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  store i32 %266, i32* %267, align 8
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 7
  %270 = load i32, i32* %269, align 4
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  store i32 %270, i32* %271, align 8
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 5
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  store %struct.TYPE_21__* %274, %struct.TYPE_21__** %275, align 8
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 6
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @patchSubdivisions, align 4
  %280 = call i32 @IterationsForCurve(i32 %278, i32 %279)
  store i32 %280, i32* %12, align 4
  %281 = load i32, i32* %12, align 4
  %282 = call %struct.TYPE_19__* @SubdivideMesh2(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %13, i32 %281)
  store %struct.TYPE_19__* %282, %struct.TYPE_19__** %15, align 8
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %284 = call i32 @PutMeshOnCurve(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %283)
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %286 = call %struct.TYPE_19__* @RemoveLinearMeshColumnsRows(%struct.TYPE_19__* %285)
  store %struct.TYPE_19__* %286, %struct.TYPE_19__** %14, align 8
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %288 = call i32 @FreeMesh(%struct.TYPE_19__* %287)
  store i32 0, i32* %7, align 4
  br label %289

289:                                              ; preds = %447, %263
  %290 = load i32, i32* %7, align 4
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = sub nsw i32 %293, 1
  %295 = icmp slt i32 %290, %294
  br i1 %295, label %296, label %450

296:                                              ; preds = %289
  store i32 0, i32* %6, align 4
  br label %297

297:                                              ; preds = %443, %296
  %298 = load i32, i32* %6, align 4
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = sub nsw i32 %301, 1
  %303 = icmp slt i32 %298, %302
  br i1 %303, label %304, label %446

304:                                              ; preds = %297
  %305 = load i32, i32* %6, align 4
  %306 = load i32, i32* %7, align 4
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = mul nsw i32 %306, %309
  %311 = add nsw i32 %305, %310
  %312 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  store i32 %311, i32* %312, align 16
  %313 = load i32, i32* %6, align 4
  %314 = load i32, i32* %7, align 4
  %315 = add nsw i32 %314, 1
  %316 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = mul nsw i32 %315, %318
  %320 = add nsw i32 %313, %319
  %321 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 1
  store i32 %320, i32* %321, align 4
  %322 = load i32, i32* %6, align 4
  %323 = add nsw i32 %322, 1
  %324 = load i32, i32* %7, align 4
  %325 = add nsw i32 %324, 1
  %326 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %327 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = mul nsw i32 %325, %328
  %330 = add nsw i32 %323, %329
  %331 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 2
  store i32 %330, i32* %331, align 8
  %332 = load i32, i32* %6, align 4
  %333 = add nsw i32 %332, 1
  %334 = load i32, i32* %7, align 4
  %335 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %336 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = mul nsw i32 %334, %337
  %339 = add nsw i32 %333, %338
  %340 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 3
  store i32 %339, i32* %340, align 4
  %341 = load i32, i32* %6, align 4
  %342 = load i32, i32* %7, align 4
  %343 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %344 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = mul nsw i32 %342, %345
  %347 = add nsw i32 %341, %346
  %348 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 4
  store i32 %347, i32* %348, align 16
  %349 = load i32, i32* %6, align 4
  %350 = load i32, i32* %7, align 4
  %351 = add nsw i32 %349, %350
  %352 = and i32 %351, 1
  store i32 %352, i32* %10, align 4
  %353 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %354 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %353, i32 0, i32 1
  %355 = load %struct.TYPE_21__*, %struct.TYPE_21__** %354, align 8
  %356 = load i32, i32* %10, align 4
  %357 = add nsw i32 %356, 0
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %355, i64 %361
  %363 = getelementptr inbounds [3 x %struct.TYPE_21__*], [3 x %struct.TYPE_21__*]* %17, i64 0, i64 0
  store %struct.TYPE_21__* %362, %struct.TYPE_21__** %363, align 16
  %364 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %365 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %364, i32 0, i32 1
  %366 = load %struct.TYPE_21__*, %struct.TYPE_21__** %365, align 8
  %367 = load i32, i32* %10, align 4
  %368 = add nsw i32 %367, 1
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %366, i64 %372
  %374 = getelementptr inbounds [3 x %struct.TYPE_21__*], [3 x %struct.TYPE_21__*]* %17, i64 0, i64 1
  store %struct.TYPE_21__* %373, %struct.TYPE_21__** %374, align 8
  %375 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %376 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %375, i32 0, i32 1
  %377 = load %struct.TYPE_21__*, %struct.TYPE_21__** %376, align 8
  %378 = load i32, i32* %10, align 4
  %379 = add nsw i32 %378, 2
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %377, i64 %383
  %385 = getelementptr inbounds [3 x %struct.TYPE_21__*], [3 x %struct.TYPE_21__*]* %17, i64 0, i64 2
  store %struct.TYPE_21__* %384, %struct.TYPE_21__** %385, align 16
  %386 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %387 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %388 = getelementptr inbounds [3 x %struct.TYPE_21__*], [3 x %struct.TYPE_21__*]* %17, i64 0, i64 0
  %389 = call i32 @AddSurfaceModelsToTriangle_r(%struct.TYPE_20__* %386, %struct.TYPE_18__* %387, %struct.TYPE_21__** %388)
  store i32 %389, i32* %8, align 4
  %390 = load i32, i32* %8, align 4
  %391 = icmp slt i32 %390, 0
  br i1 %391, label %392, label %394

392:                                              ; preds = %304
  %393 = load i32, i32* %8, align 4
  store i32 %393, i32* %2, align 4
  br label %523

394:                                              ; preds = %304
  %395 = load i32, i32* %8, align 4
  %396 = load i32, i32* %11, align 4
  %397 = add nsw i32 %396, %395
  store i32 %397, i32* %11, align 4
  %398 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %399 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %398, i32 0, i32 1
  %400 = load %struct.TYPE_21__*, %struct.TYPE_21__** %399, align 8
  %401 = load i32, i32* %10, align 4
  %402 = add nsw i32 %401, 0
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %400, i64 %406
  %408 = getelementptr inbounds [3 x %struct.TYPE_21__*], [3 x %struct.TYPE_21__*]* %17, i64 0, i64 0
  store %struct.TYPE_21__* %407, %struct.TYPE_21__** %408, align 16
  %409 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %410 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %409, i32 0, i32 1
  %411 = load %struct.TYPE_21__*, %struct.TYPE_21__** %410, align 8
  %412 = load i32, i32* %10, align 4
  %413 = add nsw i32 %412, 2
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %411, i64 %417
  %419 = getelementptr inbounds [3 x %struct.TYPE_21__*], [3 x %struct.TYPE_21__*]* %17, i64 0, i64 1
  store %struct.TYPE_21__* %418, %struct.TYPE_21__** %419, align 8
  %420 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %421 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %420, i32 0, i32 1
  %422 = load %struct.TYPE_21__*, %struct.TYPE_21__** %421, align 8
  %423 = load i32, i32* %10, align 4
  %424 = add nsw i32 %423, 3
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %422, i64 %428
  %430 = getelementptr inbounds [3 x %struct.TYPE_21__*], [3 x %struct.TYPE_21__*]* %17, i64 0, i64 2
  store %struct.TYPE_21__* %429, %struct.TYPE_21__** %430, align 16
  %431 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %432 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %433 = getelementptr inbounds [3 x %struct.TYPE_21__*], [3 x %struct.TYPE_21__*]* %17, i64 0, i64 0
  %434 = call i32 @AddSurfaceModelsToTriangle_r(%struct.TYPE_20__* %431, %struct.TYPE_18__* %432, %struct.TYPE_21__** %433)
  store i32 %434, i32* %8, align 4
  %435 = load i32, i32* %8, align 4
  %436 = icmp slt i32 %435, 0
  br i1 %436, label %437, label %439

437:                                              ; preds = %394
  %438 = load i32, i32* %8, align 4
  store i32 %438, i32* %2, align 4
  br label %523

439:                                              ; preds = %394
  %440 = load i32, i32* %8, align 4
  %441 = load i32, i32* %11, align 4
  %442 = add nsw i32 %441, %440
  store i32 %442, i32* %11, align 4
  br label %443

443:                                              ; preds = %439
  %444 = load i32, i32* %6, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %6, align 4
  br label %297

446:                                              ; preds = %297
  br label %447

447:                                              ; preds = %446
  %448 = load i32, i32* %7, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %7, align 4
  br label %289

450:                                              ; preds = %289
  %451 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %452 = call i32 @FreeMesh(%struct.TYPE_19__* %451)
  br label %516

453:                                              ; preds = %43, %43, %43
  store i32 0, i32* %5, align 4
  br label %454

454:                                              ; preds = %511, %453
  %455 = load i32, i32* %5, align 4
  %456 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %457 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %456, i32 0, i32 3
  %458 = load i32, i32* %457, align 4
  %459 = icmp slt i32 %455, %458
  br i1 %459, label %460, label %514

460:                                              ; preds = %454
  %461 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %462 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %461, i32 0, i32 5
  %463 = load %struct.TYPE_21__*, %struct.TYPE_21__** %462, align 8
  %464 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %465 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %464, i32 0, i32 4
  %466 = load i64*, i64** %465, align 8
  %467 = load i32, i32* %5, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i64, i64* %466, i64 %468
  %470 = load i64, i64* %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %463, i64 %470
  %472 = getelementptr inbounds [3 x %struct.TYPE_21__*], [3 x %struct.TYPE_21__*]* %17, i64 0, i64 0
  store %struct.TYPE_21__* %471, %struct.TYPE_21__** %472, align 16
  %473 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %474 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %473, i32 0, i32 5
  %475 = load %struct.TYPE_21__*, %struct.TYPE_21__** %474, align 8
  %476 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %477 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %476, i32 0, i32 4
  %478 = load i64*, i64** %477, align 8
  %479 = load i32, i32* %5, align 4
  %480 = add nsw i32 %479, 1
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i64, i64* %478, i64 %481
  %483 = load i64, i64* %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %475, i64 %483
  %485 = getelementptr inbounds [3 x %struct.TYPE_21__*], [3 x %struct.TYPE_21__*]* %17, i64 0, i64 1
  store %struct.TYPE_21__* %484, %struct.TYPE_21__** %485, align 8
  %486 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %487 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %486, i32 0, i32 5
  %488 = load %struct.TYPE_21__*, %struct.TYPE_21__** %487, align 8
  %489 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %490 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %489, i32 0, i32 4
  %491 = load i64*, i64** %490, align 8
  %492 = load i32, i32* %5, align 4
  %493 = add nsw i32 %492, 2
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i64, i64* %491, i64 %494
  %496 = load i64, i64* %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %488, i64 %496
  %498 = getelementptr inbounds [3 x %struct.TYPE_21__*], [3 x %struct.TYPE_21__*]* %17, i64 0, i64 2
  store %struct.TYPE_21__* %497, %struct.TYPE_21__** %498, align 16
  %499 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %500 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %501 = getelementptr inbounds [3 x %struct.TYPE_21__*], [3 x %struct.TYPE_21__*]* %17, i64 0, i64 0
  %502 = call i32 @AddSurfaceModelsToTriangle_r(%struct.TYPE_20__* %499, %struct.TYPE_18__* %500, %struct.TYPE_21__** %501)
  store i32 %502, i32* %8, align 4
  %503 = load i32, i32* %8, align 4
  %504 = icmp slt i32 %503, 0
  br i1 %504, label %505, label %507

505:                                              ; preds = %460
  %506 = load i32, i32* %8, align 4
  store i32 %506, i32* %2, align 4
  br label %523

507:                                              ; preds = %460
  %508 = load i32, i32* %8, align 4
  %509 = load i32, i32* %11, align 4
  %510 = add nsw i32 %509, %508
  store i32 %510, i32* %11, align 4
  br label %511

511:                                              ; preds = %507
  %512 = load i32, i32* %5, align 4
  %513 = add nsw i32 %512, 3
  store i32 %513, i32* %5, align 4
  br label %454

514:                                              ; preds = %454
  br label %516

515:                                              ; preds = %43
  br label %516

516:                                              ; preds = %515, %514, %450, %262
  br label %517

517:                                              ; preds = %516
  %518 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %519 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %518, i32 0, i32 0
  %520 = load %struct.TYPE_18__*, %struct.TYPE_18__** %519, align 8
  store %struct.TYPE_18__* %520, %struct.TYPE_18__** %4, align 8
  br label %40

521:                                              ; preds = %40
  %522 = load i32, i32* %11, align 4
  store i32 %522, i32* %2, align 4
  br label %523

523:                                              ; preds = %521, %505, %437, %392, %253, %33
  %524 = load i32, i32* %2, align 4
  ret i32 %524
}

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @VectorAdd(i32*, i32*, i32*) #1

declare dso_local float @VectorNormalize(i32*, i32*) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @AddSurfaceModelsToTriangle_r(%struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_21__**) #1

declare dso_local i32 @IterationsForCurve(i32, i32) #1

declare dso_local %struct.TYPE_19__* @SubdivideMesh2(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8, i32) #1

declare dso_local i32 @PutMeshOnCurve(%struct.TYPE_19__* byval(%struct.TYPE_19__) align 8) #1

declare dso_local %struct.TYPE_19__* @RemoveLinearMeshColumnsRows(%struct.TYPE_19__*) #1

declare dso_local i32 @FreeMesh(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
