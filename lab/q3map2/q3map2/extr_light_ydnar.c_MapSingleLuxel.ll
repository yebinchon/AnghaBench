; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_MapSingleLuxel.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_MapSingleLuxel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, float*, i32**, float*, i32 }
%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { float }
%struct.TYPE_13__ = type { i32**, float*, float* }

@MapSingleLuxel.nudges = internal global [9 x [2 x float]] [[2 x float] [float -1.280000e+02, float 0.000000e+00], [2 x float] [float 1.280000e+02, float 0.000000e+00], [2 x float] [float 0.000000e+00, float 1.280000e+02], [2 x float] [float 0.000000e+00, float -1.280000e+02], [2 x float] [float -1.280000e+02, float 1.280000e+02], [2 x float] [float 1.280000e+02, float -1.280000e+02], [2 x float] [float 1.280000e+02, float 1.280000e+02], [2 x float] [float -1.280000e+02, float -1.280000e+02], [2 x float] [float 1.290000e+02, float 1.290000e+02]], align 16
@surfaceClusters = common dso_local global i32* null, align 8
@CLUSTER_OCCLUDED = common dso_local global i32 0, align 4
@DEFAULT_LIGHTMAP_SAMPLE_OFFSET = common dso_local global float 0.000000e+00, align 4
@LUXEL_EPSILON = common dso_local global i32 0, align 4
@dark = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@master_mutex = common dso_local global i32 0, align 4
@numLuxelsOccluded = common dso_local global i32 0, align 4
@numLuxelsMapped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_13__*, float*, float, float**, float**)* @MapSingleLuxel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MapSingleLuxel(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1, %struct.TYPE_13__* %2, float* %3, float %4, float** %5, float** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float**, align 8
  %15 = alloca float**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca %struct.TYPE_11__*, align 8
  %29 = alloca float*, align 8
  %30 = alloca [3 x float*], align 16
  %31 = alloca float*, align 8
  %32 = alloca float*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %11, align 8
  store float* %3, float** %12, align 8
  store float %4, float* %13, align 4
  store float** %5, float*** %14, align 8
  store float** %6, float*** %15, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %17, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %7
  store i32 0, i32* %17, align 4
  br label %62

50:                                               ; preds = %7
  %51 = load i32, i32* %17, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %51, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %17, align 4
  br label %61

61:                                               ; preds = %56, %50
  br label %62

62:                                               ; preds = %61, %49
  %63 = load i32, i32* %18, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %18, align 4
  br label %78

66:                                               ; preds = %62
  %67 = load i32, i32* %18, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sge i32 %67, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %18, align 4
  br label %77

77:                                               ; preds = %72, %66
  br label %78

78:                                               ; preds = %77, %65
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %80 = icmp ne %struct.TYPE_10__* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  store %struct.TYPE_11__* %84, %struct.TYPE_11__** %28, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %19, align 4
  %88 = load i32*, i32** @surfaceClusters, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32* %92, i32** %20, align 8
  br label %94

93:                                               ; preds = %78
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %28, align 8
  store i32 0, i32* %19, align 4
  store i32* null, i32** %20, align 8
  br label %94

94:                                               ; preds = %93, %81
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %18, align 4
  %97 = call float* @SUPER_LUXEL(i32 0, i32 %95, i32 %96)
  store float* %97, float** %23, align 8
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %18, align 4
  %100 = call float* @SUPER_ORIGIN(i32 %98, i32 %99)
  store float* %100, float** %24, align 8
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %18, align 4
  %103 = call float* @SUPER_NORMAL(i32 %101, i32 %102)
  store float* %103, float** %25, align 8
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %18, align 4
  %106 = call i32* @SUPER_CLUSTER(i32 %104, i32 %105)
  store i32* %106, i32** %22, align 8
  %107 = load i32*, i32** %22, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CLUSTER_OCCLUDED, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %94
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  %114 = load float*, float** %113, align 8
  %115 = icmp ne float* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32*, i32** %22, align 8
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %8, align 4
  br label %512

119:                                              ; preds = %111, %94
  %120 = load i32*, i32** %22, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %150

123:                                              ; preds = %119
  %124 = load float**, float*** %14, align 8
  %125 = icmp ne float** %124, null
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %129 = load float*, float** %29, align 8
  %130 = load float**, float*** %14, align 8
  %131 = load float**, float*** %15, align 8
  %132 = call i32 @PerturbNormal(%struct.TYPE_13__* %127, %struct.TYPE_11__* %128, float* %129, float** %130, float** %131)
  br label %139

133:                                              ; preds = %123
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load float*, float** %135, align 8
  %137 = load float*, float** %29, align 8
  %138 = call i32 @VectorCopy(float* %136, float* %137)
  br label %139

139:                                              ; preds = %133, %126
  %140 = load float*, float** %25, align 8
  %141 = load float*, float** %29, align 8
  %142 = load float*, float** %25, align 8
  %143 = call i32 @VectorAdd(float* %140, float* %141, float* %142)
  %144 = load float*, float** %23, align 8
  %145 = getelementptr inbounds float, float* %144, i64 3
  %146 = load float, float* %145, align 4
  %147 = fadd float %146, 1.000000e+00
  store float %147, float* %145, align 4
  %148 = load i32*, i32** %22, align 8
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %8, align 4
  br label %512

150:                                              ; preds = %119
  br label %151

151:                                              ; preds = %150
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 3
  %154 = load i32**, i32*** %153, align 8
  %155 = icmp ne i32** %154, null
  br i1 %155, label %156, label %232

156:                                              ; preds = %151
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 4
  %159 = load float*, float** %158, align 8
  %160 = load float*, float** %24, align 8
  %161 = call i32 @VectorCopy(float* %159, float* %160)
  store i32 0, i32* %16, align 4
  br label %162

162:                                              ; preds = %203, %156
  %163 = load i32, i32* %16, align 4
  %164 = icmp slt i32 %163, 3
  br i1 %164, label %165, label %206

165:                                              ; preds = %162
  %166 = load i32, i32* %16, align 4
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %166, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %203

172:                                              ; preds = %165
  %173 = load i32, i32* %17, align 4
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 3
  %176 = load i32**, i32*** %175, align 8
  %177 = getelementptr inbounds i32*, i32** %176, i64 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %16, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = mul nsw i32 %173, %182
  %184 = load i32, i32* %18, align 4
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 3
  %187 = load i32**, i32*** %186, align 8
  %188 = getelementptr inbounds i32*, i32** %187, i64 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %16, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = mul nsw i32 %184, %193
  %195 = add nsw i32 %183, %194
  %196 = sitofp i32 %195 to float
  %197 = load float*, float** %24, align 8
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %197, i64 %199
  %201 = load float, float* %200, align 4
  %202 = fadd float %201, %196
  store float %202, float* %200, align 4
  br label %203

203:                                              ; preds = %172, %171
  %204 = load i32, i32* %16, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %16, align 4
  br label %162

206:                                              ; preds = %162
  %207 = load float*, float** %24, align 8
  %208 = load float*, float** %12, align 8
  %209 = call float @DotProduct(float* %207, float* %208)
  %210 = load float*, float** %12, align 8
  %211 = getelementptr inbounds float, float* %210, i64 3
  %212 = load float, float* %211, align 4
  %213 = fsub float %209, %212
  store float %213, float* %26, align 4
  %214 = load float*, float** %12, align 8
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, float* %214, i64 %218
  %220 = load float, float* %219, align 4
  %221 = load float, float* %26, align 4
  %222 = fdiv float %221, %220
  store float %222, float* %26, align 4
  %223 = load float, float* %26, align 4
  %224 = load float*, float** %24, align 8
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %224, i64 %228
  %230 = load float, float* %229, align 4
  %231 = fsub float %230, %223
  store float %231, float* %229, align 4
  br label %238

232:                                              ; preds = %151
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 2
  %235 = load float*, float** %234, align 8
  %236 = load float*, float** %24, align 8
  %237 = call i32 @VectorCopy(float* %235, float* %236)
  br label %238

238:                                              ; preds = %232, %206
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 2
  %241 = load float*, float** %240, align 8
  %242 = icmp ne float* %241, null
  br i1 %242, label %243, label %268

243:                                              ; preds = %238
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 3
  %246 = load i32**, i32*** %245, align 8
  %247 = getelementptr inbounds i32*, i32** %246, i64 0
  %248 = load i32*, i32** %247, align 8
  %249 = bitcast i32* %248 to float*
  %250 = getelementptr inbounds [3 x float*], [3 x float*]* %30, i64 0, i64 0
  %251 = load float*, float** %250, align 16
  %252 = call i32 @VectorCopy(float* %249, float* %251)
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 3
  %255 = load i32**, i32*** %254, align 8
  %256 = getelementptr inbounds i32*, i32** %255, i64 1
  %257 = load i32*, i32** %256, align 8
  %258 = bitcast i32* %257 to float*
  %259 = getelementptr inbounds [3 x float*], [3 x float*]* %30, i64 0, i64 1
  %260 = load float*, float** %259, align 8
  %261 = call i32 @VectorCopy(float* %258, float* %260)
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 2
  %264 = load float*, float** %263, align 8
  %265 = getelementptr inbounds [3 x float*], [3 x float*]* %30, i64 0, i64 2
  %266 = load float*, float** %265, align 16
  %267 = call i32 @VectorCopy(float* %264, float* %266)
  br label %291

268:                                              ; preds = %238
  %269 = load float*, float** %12, align 8
  %270 = icmp ne float* %269, null
  br i1 %270, label %271, label %276

271:                                              ; preds = %268
  %272 = load float*, float** %12, align 8
  %273 = getelementptr inbounds [3 x float*], [3 x float*]* %30, i64 0, i64 2
  %274 = load float*, float** %273, align 16
  %275 = call i32 @VectorCopy(float* %272, float* %274)
  br label %283

276:                                              ; preds = %268
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 1
  %279 = load float*, float** %278, align 8
  %280 = getelementptr inbounds [3 x float*], [3 x float*]* %30, i64 0, i64 2
  %281 = load float*, float** %280, align 16
  %282 = call i32 @VectorCopy(float* %279, float* %281)
  br label %283

283:                                              ; preds = %276, %271
  %284 = getelementptr inbounds [3 x float*], [3 x float*]* %30, i64 0, i64 2
  %285 = load float*, float** %284, align 16
  %286 = getelementptr inbounds [3 x float*], [3 x float*]* %30, i64 0, i64 0
  %287 = load float*, float** %286, align 16
  %288 = getelementptr inbounds [3 x float*], [3 x float*]* %30, i64 0, i64 1
  %289 = load float*, float** %288, align 8
  %290 = call i32 @MakeNormalVectors(float* %285, float* %287, float* %289)
  br label %291

291:                                              ; preds = %283, %243
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %293 = icmp ne %struct.TYPE_11__* %292, null
  br i1 %293, label %294, label %298

294:                                              ; preds = %291
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 0
  %297 = load float, float* %296, align 4
  store float %297, float* %27, align 4
  br label %300

298:                                              ; preds = %291
  %299 = load float, float* @DEFAULT_LIGHTMAP_SAMPLE_OFFSET, align 4
  store float %299, float* %27, align 4
  br label %300

300:                                              ; preds = %298, %294
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 5
  %303 = load i32, i32* %302, align 8
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %305, label %312

305:                                              ; preds = %300
  %306 = load float*, float** %24, align 8
  %307 = load float, float* %27, align 4
  %308 = getelementptr inbounds [3 x float*], [3 x float*]* %30, i64 0, i64 2
  %309 = load float*, float** %308, align 16
  %310 = load float*, float** %24, align 8
  %311 = call i32 @VectorMA(float* %306, float %307, float* %309, float* %310)
  br label %343

312:                                              ; preds = %300
  %313 = getelementptr inbounds [3 x float*], [3 x float*]* %30, i64 0, i64 2
  %314 = load float*, float** %313, align 16
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 5
  %317 = load i32, i32* %316, align 8
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds float, float* %314, i64 %318
  %320 = load float, float* %319, align 4
  %321 = fcmp olt float %320, 0.000000e+00
  br i1 %321, label %322, label %332

322:                                              ; preds = %312
  %323 = load float, float* %27, align 4
  %324 = load float*, float** %24, align 8
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 5
  %327 = load i32, i32* %326, align 8
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds float, float* %324, i64 %328
  %330 = load float, float* %329, align 4
  %331 = fsub float %330, %323
  store float %331, float* %329, align 4
  br label %342

332:                                              ; preds = %312
  %333 = load float, float* %27, align 4
  %334 = load float*, float** %24, align 8
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 5
  %337 = load i32, i32* %336, align 8
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds float, float* %334, i64 %338
  %340 = load float, float* %339, align 4
  %341 = fadd float %340, %333
  store float %341, float* %339, align 4
  br label %342

342:                                              ; preds = %332, %322
  br label %343

343:                                              ; preds = %342, %305
  %344 = load float*, float** %24, align 8
  %345 = load i32, i32* @LUXEL_EPSILON, align 4
  %346 = load i32, i32* %19, align 4
  %347 = load i32*, i32** %20, align 8
  %348 = call i32 @ClusterForPointExtFilter(float* %344, i32 %345, i32 %346, i32* %347)
  store i32 %348, i32* %21, align 4
  %349 = load float*, float** %23, align 8
  %350 = getelementptr inbounds float, float* %349, i64 1
  store float 0.000000e+00, float* %350, align 4
  %351 = load i32, i32* %21, align 4
  %352 = icmp slt i32 %351, 0
  br i1 %352, label %353, label %427

353:                                              ; preds = %343
  %354 = load i64, i64* @dark, align 8
  %355 = load i64, i64* @qfalse, align 8
  %356 = icmp eq i64 %354, %355
  br i1 %356, label %357, label %427

357:                                              ; preds = %353
  store float* getelementptr inbounds ([9 x [2 x float]], [9 x [2 x float]]* @MapSingleLuxel.nudges, i64 0, i64 0, i64 0), float** %32, align 8
  br label %358

358:                                              ; preds = %421, %357
  %359 = load float*, float** %32, align 8
  %360 = getelementptr inbounds float, float* %359, i64 0
  %361 = load float, float* %360, align 4
  %362 = fcmp ogt float %361, 1.290000e+02
  br i1 %362, label %363, label %366

363:                                              ; preds = %358
  %364 = load i32, i32* %21, align 4
  %365 = icmp slt i32 %364, 0
  br label %366

366:                                              ; preds = %363, %358
  %367 = phi i1 [ false, %358 ], [ %365, %363 ]
  br i1 %367, label %368, label %426

368:                                              ; preds = %366
  store i32 0, i32* %16, align 4
  br label %369

369:                                              ; preds = %404, %368
  %370 = load i32, i32* %16, align 4
  %371 = icmp slt i32 %370, 3
  br i1 %371, label %372, label %407

372:                                              ; preds = %369
  %373 = load float*, float** %24, align 8
  %374 = load i32, i32* %16, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds float, float* %373, i64 %375
  %377 = load float, float* %376, align 4
  %378 = load float*, float** %32, align 8
  %379 = getelementptr inbounds float, float* %378, i64 0
  %380 = load float, float* %379, align 4
  %381 = getelementptr inbounds [3 x float*], [3 x float*]* %30, i64 0, i64 0
  %382 = load float*, float** %381, align 16
  %383 = load i32, i32* %16, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds float, float* %382, i64 %384
  %386 = load float, float* %385, align 4
  %387 = fmul float %380, %386
  %388 = fadd float %377, %387
  %389 = load float*, float** %32, align 8
  %390 = getelementptr inbounds float, float* %389, i64 1
  %391 = load float, float* %390, align 4
  %392 = getelementptr inbounds [3 x float*], [3 x float*]* %30, i64 0, i64 1
  %393 = load float*, float** %392, align 8
  %394 = load i32, i32* %16, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds float, float* %393, i64 %395
  %397 = load float, float* %396, align 4
  %398 = fmul float %391, %397
  %399 = fadd float %388, %398
  %400 = load float*, float** %31, align 8
  %401 = load i32, i32* %16, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds float, float* %400, i64 %402
  store float %399, float* %403, align 4
  br label %404

404:                                              ; preds = %372
  %405 = load i32, i32* %16, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %16, align 4
  br label %369

407:                                              ; preds = %369
  %408 = load float*, float** %32, align 8
  %409 = getelementptr inbounds float, float* %408, i64 2
  store float* %409, float** %32, align 8
  %410 = load float*, float** %31, align 8
  %411 = load i32, i32* @LUXEL_EPSILON, align 4
  %412 = load i32, i32* %19, align 4
  %413 = load i32*, i32** %20, align 8
  %414 = call i32 @ClusterForPointExtFilter(float* %410, i32 %411, i32 %412, i32* %413)
  store i32 %414, i32* %21, align 4
  %415 = load i32, i32* %21, align 4
  %416 = icmp sge i32 %415, 0
  br i1 %416, label %417, label %421

417:                                              ; preds = %407
  %418 = load float*, float** %31, align 8
  %419 = load float*, float** %24, align 8
  %420 = call i32 @VectorCopy(float* %418, float* %419)
  br label %421

421:                                              ; preds = %417, %407
  %422 = load float*, float** %23, align 8
  %423 = getelementptr inbounds float, float* %422, i64 1
  %424 = load float, float* %423, align 4
  %425 = fadd float %424, 1.000000e+00
  store float %425, float* %423, align 4
  br label %358

426:                                              ; preds = %366
  br label %427

427:                                              ; preds = %426, %353, %343
  %428 = load i32, i32* %21, align 4
  %429 = icmp slt i32 %428, 0
  br i1 %429, label %430, label %463

430:                                              ; preds = %427
  %431 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %432 = icmp ne %struct.TYPE_11__* %431, null
  br i1 %432, label %433, label %463

433:                                              ; preds = %430
  %434 = load i64, i64* @dark, align 8
  %435 = load i64, i64* @qfalse, align 8
  %436 = icmp eq i64 %434, %435
  br i1 %436, label %437, label %463

437:                                              ; preds = %433
  %438 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %439 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %438, i32 0, i32 2
  %440 = load float*, float** %439, align 8
  %441 = load float, float* %27, align 4
  %442 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %443 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %442, i32 0, i32 1
  %444 = load float*, float** %443, align 8
  %445 = load float*, float** %31, align 8
  %446 = call i32 @VectorMA(float* %440, float %441, float* %444, float* %445)
  %447 = load float*, float** %31, align 8
  %448 = load i32, i32* @LUXEL_EPSILON, align 4
  %449 = load i32, i32* %19, align 4
  %450 = load i32*, i32** %20, align 8
  %451 = call i32 @ClusterForPointExtFilter(float* %447, i32 %448, i32 %449, i32* %450)
  store i32 %451, i32* %21, align 4
  %452 = load i32, i32* %21, align 4
  %453 = icmp sge i32 %452, 0
  br i1 %453, label %454, label %458

454:                                              ; preds = %437
  %455 = load float*, float** %31, align 8
  %456 = load float*, float** %24, align 8
  %457 = call i32 @VectorCopy(float* %455, float* %456)
  br label %458

458:                                              ; preds = %454, %437
  %459 = load float*, float** %23, align 8
  %460 = getelementptr inbounds float, float* %459, i64 1
  %461 = load float, float* %460, align 4
  %462 = fadd float %461, 1.000000e+00
  store float %462, float* %460, align 4
  br label %463

463:                                              ; preds = %458, %433, %430, %427
  %464 = load i32, i32* %21, align 4
  %465 = icmp slt i32 %464, 0
  br i1 %465, label %466, label %479

466:                                              ; preds = %463
  %467 = load i32, i32* @CLUSTER_OCCLUDED, align 4
  %468 = load i32*, i32** %22, align 8
  store i32 %467, i32* %468, align 4
  %469 = load float*, float** %24, align 8
  %470 = call i32 @VectorClear(float* %469)
  %471 = load float*, float** %25, align 8
  %472 = call i32 @VectorClear(float* %471)
  %473 = call i32 @pthread_mutex_lock(i32* @master_mutex)
  %474 = load i32, i32* @numLuxelsOccluded, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* @numLuxelsOccluded, align 4
  %476 = call i32 @pthread_mutex_unlock(i32* @master_mutex)
  %477 = load i32*, i32** %22, align 8
  %478 = load i32, i32* %477, align 4
  store i32 %478, i32* %8, align 4
  br label %512

479:                                              ; preds = %463
  %480 = load float**, float*** %14, align 8
  %481 = icmp ne float** %480, null
  br i1 %481, label %482, label %489

482:                                              ; preds = %479
  %483 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %484 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %485 = load float*, float** %29, align 8
  %486 = load float**, float*** %14, align 8
  %487 = load float**, float*** %15, align 8
  %488 = call i32 @PerturbNormal(%struct.TYPE_13__* %483, %struct.TYPE_11__* %484, float* %485, float** %486, float** %487)
  br label %495

489:                                              ; preds = %479
  %490 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %491 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %490, i32 0, i32 1
  %492 = load float*, float** %491, align 8
  %493 = load float*, float** %29, align 8
  %494 = call i32 @VectorCopy(float* %492, float* %493)
  br label %495

495:                                              ; preds = %489, %482
  %496 = load i32, i32* %21, align 4
  %497 = load i32*, i32** %22, align 8
  store i32 %496, i32* %497, align 4
  %498 = load float*, float** %29, align 8
  %499 = load float*, float** %25, align 8
  %500 = call i32 @VectorCopy(float* %498, float* %499)
  %501 = load float, float* %13, align 4
  %502 = load float*, float** %23, align 8
  %503 = getelementptr inbounds float, float* %502, i64 0
  store float %501, float* %503, align 4
  %504 = load float*, float** %23, align 8
  %505 = getelementptr inbounds float, float* %504, i64 3
  store float 1.000000e+00, float* %505, align 4
  %506 = call i32 @pthread_mutex_lock(i32* @master_mutex)
  %507 = load i32, i32* @numLuxelsMapped, align 4
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* @numLuxelsMapped, align 4
  %509 = call i32 @pthread_mutex_unlock(i32* @master_mutex)
  %510 = load i32*, i32** %22, align 8
  %511 = load i32, i32* %510, align 4
  store i32 %511, i32* %8, align 4
  br label %512

512:                                              ; preds = %495, %466, %139, %116
  %513 = load i32, i32* %8, align 4
  ret i32 %513
}

declare dso_local float* @SUPER_LUXEL(i32, i32, i32) #1

declare dso_local float* @SUPER_ORIGIN(i32, i32) #1

declare dso_local float* @SUPER_NORMAL(i32, i32) #1

declare dso_local i32* @SUPER_CLUSTER(i32, i32) #1

declare dso_local i32 @PerturbNormal(%struct.TYPE_13__*, %struct.TYPE_11__*, float*, float**, float**) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i32 @VectorAdd(float*, float*, float*) #1

declare dso_local float @DotProduct(float*, float*) #1

declare dso_local i32 @MakeNormalVectors(float*, float*, float*) #1

declare dso_local i32 @VectorMA(float*, float, float*, float*) #1

declare dso_local i32 @ClusterForPointExtFilter(float*, i32, i32, i32*) #1

declare dso_local i32 @VectorClear(float*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
