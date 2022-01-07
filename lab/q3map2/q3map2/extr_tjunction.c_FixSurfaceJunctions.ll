; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_tjunction.c_FixSurfaceJunctions.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_tjunction.c_FixSurfaceJunctions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { float, %struct.TYPE_11__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { float*, i64**, i32, i32, i64** }

@MAX_SURFACE_VERTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"MAX_SURFACE_VERTS\00", align 1
@edgeLines = common dso_local global %struct.TYPE_12__* null, align 8
@ON_EPSILON = common dso_local global float 0.000000e+00, align 4
@MAX_LIGHTMAPS = common dso_local global i32 0, align 4
@c_addedVerts = common dso_local global i32 0, align 4
@c_totalVerts = common dso_local global i32 0, align 4
@c_natural = common dso_local global i32 0, align 4
@c_cant = common dso_local global i32 0, align 4
@c_rotate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FixSurfaceJunctions(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %23 = load i32, i32* @MAX_SURFACE_VERTS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %9, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %27 = load i32, i32* @MAX_SURFACE_VERTS, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %11, align 8
  %30 = load i32, i32* @MAX_SURFACE_VERTS, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %12, align 8
  %33 = load i32, i32* @MAX_SURFACE_VERTS, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca %struct.TYPE_13__, i64 %34, align 16
  store i64 %34, i64* %13, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %8, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %388, %1
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %391

45:                                               ; preds = %39
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %26, i64 %47
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %32, i64 %51
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* @MAX_SURFACE_VERTS, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = call i32 @Error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %45
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i64 %60
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i64 %66
  %68 = bitcast %struct.TYPE_13__* %61 to i8*
  %69 = bitcast %struct.TYPE_13__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %68, i8* align 8 %69, i64 32, i1 false)
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %29, i64 %72
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %16, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i64 %80
  store %struct.TYPE_13__* %81, %struct.TYPE_13__** %14, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = srem i32 %86, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i64 %91
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %15, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 4
  %100 = load i64**, i64*** %99, align 8
  %101 = getelementptr inbounds i64*, i64** %100, i64 0
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %109

108:                                              ; preds = %58
  br label %388

109:                                              ; preds = %58
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** @edgeLines, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i64 %112
  store %struct.TYPE_12__* %113, %struct.TYPE_12__** %6, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %21, align 4
  %121 = call i32 @VectorSubtract(i32 %116, i32 %119, i32 %120)
  %122 = load i32, i32* %21, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call float @DotProduct(i32 %122, i32 %125)
  store float %126, float* %17, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %21, align 4
  %134 = call i32 @VectorSubtract(i32 %129, i32 %132, i32 %133)
  %135 = load i32, i32* %21, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call float @DotProduct(i32 %135, i32 %138)
  store float %139, float* %18, align 4
  %140 = load float, float* %17, align 4
  %141 = load float, float* %18, align 4
  %142 = fcmp olt float %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %109
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  store %struct.TYPE_11__* %147, %struct.TYPE_11__** %7, align 8
  br label %153

148:                                              ; preds = %109
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  store %struct.TYPE_11__* %152, %struct.TYPE_11__** %7, align 8
  br label %153

153:                                              ; preds = %148, %143
  br label %154

154:                                              ; preds = %386, %153
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = icmp ne %struct.TYPE_11__* %155, %157
  br i1 %158, label %159, label %387

159:                                              ; preds = %154
  %160 = load float, float* %17, align 4
  %161 = load float, float* %18, align 4
  %162 = fcmp olt float %160, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %159
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load float, float* %165, align 8
  %167 = load float, float* %18, align 4
  %168 = load float, float* @ON_EPSILON, align 4
  %169 = fsub float %167, %168
  %170 = fcmp ogt float %166, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  br label %387

172:                                              ; preds = %163
  br label %183

173:                                              ; preds = %159
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = load float, float* %175, align 8
  %177 = load float, float* %18, align 4
  %178 = load float, float* @ON_EPSILON, align 4
  %179 = fadd float %177, %178
  %180 = fcmp olt float %176, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %173
  br label %387

182:                                              ; preds = %173
  br label %183

183:                                              ; preds = %182, %172
  %184 = load float, float* %17, align 4
  %185 = load float, float* %18, align 4
  %186 = fcmp olt float %184, %185
  br i1 %186, label %187, label %195

187:                                              ; preds = %183
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = load float, float* %189, align 8
  %191 = load float, float* %17, align 4
  %192 = load float, float* @ON_EPSILON, align 4
  %193 = fadd float %191, %192
  %194 = fcmp ogt float %190, %193
  br i1 %194, label %207, label %195

195:                                              ; preds = %187, %183
  %196 = load float, float* %17, align 4
  %197 = load float, float* %18, align 4
  %198 = fcmp ogt float %196, %197
  br i1 %198, label %199, label %374

199:                                              ; preds = %195
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = load float, float* %201, align 8
  %203 = load float, float* %17, align 4
  %204 = load float, float* @ON_EPSILON, align 4
  %205 = fsub float %203, %204
  %206 = fcmp olt float %202, %205
  br i1 %206, label %207, label %374

207:                                              ; preds = %199, %187
  %208 = load i32, i32* %16, align 4
  %209 = load i32, i32* @MAX_SURFACE_VERTS, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %207
  %212 = call i32 @Error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %213

213:                                              ; preds = %211, %207
  %214 = load i32, i32* %16, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i64 %215
  %217 = call i32 @memset(%struct.TYPE_13__* %216, i32 0, i32 32)
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %16, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @VectorCopy(i32 %220, i32 %225)
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  %229 = load float, float* %228, align 8
  %230 = load float, float* %17, align 4
  %231 = fsub float %229, %230
  %232 = load float, float* %18, align 4
  %233 = load float, float* %17, align 4
  %234 = fsub float %232, %233
  %235 = fdiv float %231, %234
  store float %235, float* %19, align 4
  store i32 0, i32* %4, align 4
  br label %236

236:                                              ; preds = %273, %213
  %237 = load i32, i32* %4, align 4
  %238 = icmp slt i32 %237, 2
  br i1 %238, label %239, label %276

239:                                              ; preds = %236
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 0
  %242 = load float*, float** %241, align 8
  %243 = load i32, i32* %4, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds float, float* %242, i64 %244
  %246 = load float, float* %245, align 4
  %247 = load float, float* %19, align 4
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  %250 = load float*, float** %249, align 8
  %251 = load i32, i32* %4, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %250, i64 %252
  %254 = load float, float* %253, align 4
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 0
  %257 = load float*, float** %256, align 8
  %258 = load i32, i32* %4, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds float, float* %257, i64 %259
  %261 = load float, float* %260, align 4
  %262 = fsub float %254, %261
  %263 = fmul float %247, %262
  %264 = fadd float %246, %263
  %265 = load i32, i32* %16, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 0
  %269 = load float*, float** %268, align 16
  %270 = load i32, i32* %4, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds float, float* %269, i64 %271
  store float %264, float* %272, align 4
  br label %273

273:                                              ; preds = %239
  %274 = load i32, i32* %4, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %4, align 4
  br label %236

276:                                              ; preds = %236
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* %16, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 16
  %285 = call i32 @VectorCopy(i32 %279, i32 %284)
  store i32 0, i32* %5, align 4
  br label %286

286:                                              ; preds = %359, %276
  %287 = load i32, i32* %5, align 4
  %288 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %362

290:                                              ; preds = %286
  store i32 0, i32* %4, align 4
  br label %291

291:                                              ; preds = %355, %290
  %292 = load i32, i32* %4, align 4
  %293 = icmp slt i32 %292, 4
  br i1 %293, label %294, label %358

294:                                              ; preds = %291
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 1
  %297 = load i64**, i64*** %296, align 8
  %298 = load i32, i32* %5, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i64*, i64** %297, i64 %299
  %301 = load i64*, i64** %300, align 8
  %302 = load i32, i32* %4, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i64, i64* %301, i64 %303
  %305 = load i64, i64* %304, align 8
  %306 = sitofp i64 %305 to float
  %307 = load float, float* %19, align 4
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 1
  %310 = load i64**, i64*** %309, align 8
  %311 = load i32, i32* %5, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i64*, i64** %310, i64 %312
  %314 = load i64*, i64** %313, align 8
  %315 = load i32, i32* %4, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i64, i64* %314, i64 %316
  %318 = load i64, i64* %317, align 8
  %319 = sitofp i64 %318 to float
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 1
  %322 = load i64**, i64*** %321, align 8
  %323 = load i32, i32* %5, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i64*, i64** %322, i64 %324
  %326 = load i64*, i64** %325, align 8
  %327 = load i32, i32* %4, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i64, i64* %326, i64 %328
  %330 = load i64, i64* %329, align 8
  %331 = sitofp i64 %330 to float
  %332 = fsub float %319, %331
  %333 = fmul float %307, %332
  %334 = fadd float %306, %333
  store float %334, float* %20, align 4
  %335 = load float, float* %20, align 4
  %336 = fcmp olt float %335, 2.550000e+02
  br i1 %336, label %337, label %339

337:                                              ; preds = %294
  %338 = load float, float* %20, align 4
  br label %340

339:                                              ; preds = %294
  br label %340

340:                                              ; preds = %339, %337
  %341 = phi float [ %338, %337 ], [ 2.550000e+02, %339 ]
  %342 = fptosi float %341 to i64
  %343 = load i32, i32* %16, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %345, i32 0, i32 1
  %347 = load i64**, i64*** %346, align 8
  %348 = load i32, i32* %5, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i64*, i64** %347, i64 %349
  %351 = load i64*, i64** %350, align 8
  %352 = load i32, i32* %4, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i64, i64* %351, i64 %353
  store i64 %342, i64* %354, align 8
  br label %355

355:                                              ; preds = %340
  %356 = load i32, i32* %4, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %4, align 4
  br label %291

358:                                              ; preds = %291
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %5, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %5, align 4
  br label %286

362:                                              ; preds = %286
  %363 = load i32, i32* %3, align 4
  %364 = load i32, i32* %16, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %29, i64 %365
  store i32 %363, i32* %366, align 4
  %367 = load i32, i32* %16, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %16, align 4
  %369 = load i32, i32* %3, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %26, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %371, align 4
  br label %374

374:                                              ; preds = %362, %199, %195
  %375 = load float, float* %17, align 4
  %376 = load float, float* %18, align 4
  %377 = fcmp olt float %375, %376
  br i1 %377, label %378, label %382

378:                                              ; preds = %374
  %379 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %379, i32 0, i32 2
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** %380, align 8
  store %struct.TYPE_11__* %381, %struct.TYPE_11__** %7, align 8
  br label %386

382:                                              ; preds = %374
  %383 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 1
  %385 = load %struct.TYPE_11__*, %struct.TYPE_11__** %384, align 8
  store %struct.TYPE_11__* %385, %struct.TYPE_11__** %7, align 8
  br label %386

386:                                              ; preds = %382, %378
  br label %154

387:                                              ; preds = %181, %171, %154
  br label %388

388:                                              ; preds = %387, %108
  %389 = load i32, i32* %3, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %3, align 4
  br label %39

391:                                              ; preds = %39
  %392 = load i32, i32* %16, align 4
  %393 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %394 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = sub nsw i32 %392, %395
  %397 = load i32, i32* @c_addedVerts, align 4
  %398 = add nsw i32 %397, %396
  store i32 %398, i32* @c_addedVerts, align 4
  %399 = load i32, i32* %16, align 4
  %400 = load i32, i32* @c_totalVerts, align 4
  %401 = add nsw i32 %400, %399
  store i32 %401, i32* @c_totalVerts, align 4
  store i32 0, i32* %3, align 4
  br label %402

402:                                              ; preds = %444, %391
  %403 = load i32, i32* %3, align 4
  %404 = load i32, i32* %16, align 4
  %405 = icmp slt i32 %403, %404
  br i1 %405, label %406, label %447

406:                                              ; preds = %402
  %407 = load i32, i32* %3, align 4
  %408 = add nsw i32 %407, 1
  %409 = load i32, i32* %16, align 4
  %410 = srem i32 %408, %409
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %29, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* %3, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %29, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = icmp eq i32 %413, %417
  br i1 %418, label %419, label %420

419:                                              ; preds = %406
  br label %444

420:                                              ; preds = %406
  %421 = load i32, i32* %3, align 4
  %422 = load i32, i32* %16, align 4
  %423 = add nsw i32 %421, %422
  %424 = sub nsw i32 %423, 1
  %425 = load i32, i32* %16, align 4
  %426 = srem i32 %424, %425
  store i32 %426, i32* %4, align 4
  %427 = load i32, i32* %3, align 4
  %428 = load i32, i32* %16, align 4
  %429 = add nsw i32 %427, %428
  %430 = sub nsw i32 %429, 2
  %431 = load i32, i32* %16, align 4
  %432 = srem i32 %430, %431
  store i32 %432, i32* %5, align 4
  %433 = load i32, i32* %4, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %29, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* %5, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %29, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = icmp eq i32 %436, %440
  br i1 %441, label %442, label %443

442:                                              ; preds = %420
  br label %444

443:                                              ; preds = %420
  br label %447

444:                                              ; preds = %442, %419
  %445 = load i32, i32* %3, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %3, align 4
  br label %402

447:                                              ; preds = %443, %402
  %448 = load i32, i32* %3, align 4
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %472

450:                                              ; preds = %447
  %451 = load i32, i32* @c_natural, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* @c_natural, align 4
  %453 = load i32, i32* %16, align 4
  %454 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %455 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %454, i32 0, i32 0
  store i32 %453, i32* %455, align 8
  %456 = load i32, i32* %16, align 4
  %457 = sext i32 %456 to i64
  %458 = mul i64 %457, 32
  %459 = trunc i64 %458 to i32
  %460 = call i8* @safe_malloc(i32 %459)
  %461 = bitcast i8* %460 to %struct.TYPE_13__*
  %462 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %463 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %462, i32 0, i32 1
  store %struct.TYPE_13__* %461, %struct.TYPE_13__** %463, align 8
  %464 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %465 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %464, i32 0, i32 1
  %466 = load %struct.TYPE_13__*, %struct.TYPE_13__** %465, align 8
  %467 = load i32, i32* %16, align 4
  %468 = sext i32 %467 to i64
  %469 = mul i64 %468, 32
  %470 = trunc i64 %469 to i32
  %471 = call i32 @memcpy(%struct.TYPE_13__* %466, %struct.TYPE_13__* %35, i32 %470)
  store i32 1, i32* %22, align 4
  br label %522

472:                                              ; preds = %447
  %473 = load i32, i32* %3, align 4
  %474 = load i32, i32* %16, align 4
  %475 = icmp eq i32 %473, %474
  br i1 %475, label %476, label %479

476:                                              ; preds = %472
  %477 = load i32, i32* @c_cant, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* @c_cant, align 4
  br label %482

479:                                              ; preds = %472
  %480 = load i32, i32* @c_rotate, align 4
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* @c_rotate, align 4
  br label %482

482:                                              ; preds = %479, %476
  %483 = load i32, i32* %16, align 4
  %484 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %485 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %484, i32 0, i32 0
  store i32 %483, i32* %485, align 8
  %486 = load i32, i32* %16, align 4
  %487 = sext i32 %486 to i64
  %488 = mul i64 %487, 32
  %489 = trunc i64 %488 to i32
  %490 = call i8* @safe_malloc(i32 %489)
  %491 = bitcast i8* %490 to %struct.TYPE_13__*
  %492 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %493 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %492, i32 0, i32 1
  store %struct.TYPE_13__* %491, %struct.TYPE_13__** %493, align 8
  store i32 0, i32* %4, align 4
  br label %494

494:                                              ; preds = %518, %482
  %495 = load i32, i32* %4, align 4
  %496 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %497 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 8
  %499 = icmp slt i32 %495, %498
  br i1 %499, label %500, label %521

500:                                              ; preds = %494
  %501 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %502 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %501, i32 0, i32 1
  %503 = load %struct.TYPE_13__*, %struct.TYPE_13__** %502, align 8
  %504 = load i32, i32* %4, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %503, i64 %505
  %507 = load i32, i32* %4, align 4
  %508 = load i32, i32* %3, align 4
  %509 = add nsw i32 %507, %508
  %510 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %511 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 8
  %513 = srem i32 %509, %512
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i64 %514
  %516 = bitcast %struct.TYPE_13__* %506 to i8*
  %517 = bitcast %struct.TYPE_13__* %515 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %516, i8* align 16 %517, i64 32, i1 false)
  br label %518

518:                                              ; preds = %500
  %519 = load i32, i32* %4, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %4, align 4
  br label %494

521:                                              ; preds = %494
  store i32 0, i32* %22, align 4
  br label %522

522:                                              ; preds = %521, %450
  %523 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %523)
  %524 = load i32, i32* %22, align 4
  switch i32 %524, label %526 [
    i32 0, label %525
    i32 1, label %525
  ]

525:                                              ; preds = %522, %522
  ret void

526:                                              ; preds = %522
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Error(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @VectorSubtract(i32, i32, i32) #2

declare dso_local float @DotProduct(i32, i32) #2

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #2

declare dso_local i32 @VectorCopy(i32, i32) #2

declare dso_local i8* @safe_malloc(i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
