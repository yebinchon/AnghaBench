; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_ClassifySurfaces.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_ClassifySurfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { float*, float }
%struct.TYPE_8__ = type { i64, i32, i64, float**, float*, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i8*, i32, i32 }
%struct.TYPE_7__ = type { i32, float*, i32 }
%struct.TYPE_6__ = type { float*, float* }

@ClassifySurfaces.axii = internal global [6 x float*] [float* null, float* null, float* inttoptr (i64 -1 to float*), float* inttoptr (i64 1 to float*), float* null, float* null], align 16
@SURFACE_BAD = common dso_local global i64 0, align 8
@SURFACE_PATCH = common dso_local global i64 0, align 8
@SURFACE_FACE = common dso_local global i64 0, align 8
@SHADER_MAX_VERTEXES = common dso_local global i32 0, align 4
@SURFACE_FORCED_META = common dso_local global i64 0, align 8
@mapplanes = common dso_local global %struct.TYPE_9__* null, align 8
@qfalse = common dso_local global i8* null, align 8
@qtrue = common dso_local global i8* null, align 8
@PLANAR_EPSILON = common dso_local global i64 0, align 8
@C_VERTEXLIT = common dso_local global i32 0, align 4
@SURFACE_TRIANGLES = common dso_local global i64 0, align 8
@sampleSize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClassifySurfaces(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  br label %10

10:                                               ; preds = %460, %2
  %11 = load i32, i32* %3, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %465

13:                                               ; preds = %10
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SURFACE_BAD, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %13
  br label %460

25:                                               ; preds = %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 7
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %9, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SURFACE_PATCH, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %25
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SURFACE_FACE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SHADER_MAX_VERTEXES, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i64, i64* @SURFACE_FORCED_META, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %46, %40
  br label %51

51:                                               ; preds = %50, %34, %25
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 11
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ClearBounds(i32 %54, i32 %57)
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %81, %51
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %59
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load float*, float** %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 11
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @AddPointToBounds(float* %73, i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %65
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %59

84:                                               ; preds = %59
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp uge i64 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %84
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mapplanes, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load float*, float** %95, align 8
  %97 = load float*, float** %8, align 8
  %98 = call i32 @VectorCopy(float* %96, float* %97)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mapplanes, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load float, float* %104, align 8
  %106 = load float*, float** %8, align 8
  %107 = getelementptr inbounds float, float* %106, i64 3
  store float %105, float* %107, align 4
  br label %183

108:                                              ; preds = %84
  %109 = load float*, float** %8, align 8
  %110 = call i32 @VectorClear(float* %109)
  %111 = load float*, float** %8, align 8
  %112 = getelementptr inbounds float, float* %111, i64 3
  store float 0.000000e+00, float* %112, align 4
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %179, %108
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %182

119:                                              ; preds = %113
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load float*, float** %126, align 8
  %128 = getelementptr inbounds float, float* %127, i64 0
  %129 = load float, float* %128, align 4
  %130 = fcmp une float %129, 0.000000e+00
  br i1 %130, label %131, label %178

131:                                              ; preds = %119
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load float*, float** %138, align 8
  %140 = getelementptr inbounds float, float* %139, i64 1
  %141 = load float, float* %140, align 4
  %142 = fcmp une float %141, 0.000000e+00
  br i1 %142, label %143, label %178

143:                                              ; preds = %131
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load float*, float** %150, align 8
  %152 = getelementptr inbounds float, float* %151, i64 2
  %153 = load float, float* %152, align 4
  %154 = fcmp une float %153, 0.000000e+00
  br i1 %154, label %155, label %178

155:                                              ; preds = %143
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load float*, float** %162, align 8
  %164 = load float*, float** %8, align 8
  %165 = call i32 @VectorCopy(float* %163, float* %164)
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load float*, float** %172, align 8
  %174 = load float*, float** %8, align 8
  %175 = call float @DotProduct(float* %173, float* %174)
  %176 = load float*, float** %8, align 8
  %177 = getelementptr inbounds float, float* %176, i64 3
  store float %175, float* %177, align 4
  br label %182

178:                                              ; preds = %143, %131, %119
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %5, align 4
  br label %113

182:                                              ; preds = %155, %113
  br label %183

183:                                              ; preds = %182, %89
  %184 = load float*, float** %8, align 8
  %185 = call float @VectorLength(float* %184)
  %186 = fcmp ole float %185, 0.000000e+00
  br i1 %186, label %187, label %193

187:                                              ; preds = %183
  %188 = load i8*, i8** @qfalse, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 9
  store i8* %188, i8** %190, align 8
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 2
  store i64 -1, i64* %192, align 8
  br label %231

193:                                              ; preds = %183
  %194 = load i8*, i8** @qtrue, align 8
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 9
  store i8* %194, i8** %196, align 8
  store i32 0, i32* %5, align 4
  br label %197

197:                                              ; preds = %227, %193
  %198 = load i32, i32* %5, align 4
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = icmp slt i32 %198, %201
  br i1 %202, label %203, label %230

203:                                              ; preds = %197
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 8
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load float*, float** %210, align 8
  %212 = load float*, float** %8, align 8
  %213 = call float @DotProduct(float* %211, float* %212)
  %214 = load float*, float** %8, align 8
  %215 = getelementptr inbounds float, float* %214, i64 3
  %216 = load float, float* %215, align 4
  %217 = fsub float %213, %216
  store float %217, float* %7, align 4
  %218 = load float, float* %7, align 4
  %219 = call i64 @fabs(float %218)
  %220 = load i64, i64* @PLANAR_EPSILON, align 8
  %221 = icmp sgt i64 %219, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %203
  %223 = load i8*, i8** @qfalse, align 8
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 9
  store i8* %223, i8** %225, align 8
  br label %230

226:                                              ; preds = %203
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %5, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %5, align 4
  br label %197

230:                                              ; preds = %222, %197
  br label %231

231:                                              ; preds = %230, %187
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 9
  %234 = load i8*, i8** %233, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %263

236:                                              ; preds = %231
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = icmp ult i64 %239, 0
  br i1 %240, label %241, label %255

241:                                              ; preds = %236
  %242 = load float*, float** %8, align 8
  %243 = load float*, float** %8, align 8
  %244 = getelementptr inbounds float, float* %243, i64 3
  %245 = load float, float* %244, align 4
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 8
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i64 0
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = call i32 @FindFloatPlane(float* %242, float %245, i32 1, float** %250)
  %252 = sext i32 %251 to i64
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 2
  store i64 %252, i64* %254, align 8
  br label %255

255:                                              ; preds = %241, %236
  %256 = load float*, float** %8, align 8
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 3
  %259 = load float**, float*** %258, align 8
  %260 = getelementptr inbounds float*, float** %259, i64 2
  %261 = load float*, float** %260, align 8
  %262 = call i32 @VectorCopy(float* %256, float* %261)
  br label %272

263:                                              ; preds = %231
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 2
  store i64 -1, i64* %265, align 8
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 3
  %268 = load float**, float*** %267, align 8
  %269 = getelementptr inbounds float*, float** %268, i64 2
  %270 = load float*, float** %269, align 8
  %271 = call i32 @VectorClear(float* %270)
  br label %272

272:                                              ; preds = %263, %255
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @C_VERTEXLIT, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %272
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @SURFACE_TRIANGLES, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %292

285:                                              ; preds = %279, %272
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 4
  %288 = load float*, float** %287, align 8
  %289 = call i32 @VectorClear(float* %288)
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 5
  store i32 0, i32* %291, align 8
  br label %460

292:                                              ; preds = %279
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 1
  %295 = load float*, float** %294, align 8
  %296 = getelementptr inbounds float, float* %295, i64 0
  %297 = load float, float* %296, align 4
  %298 = fcmp une float %297, 0.000000e+00
  br i1 %298, label %313, label %299

299:                                              ; preds = %292
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 1
  %302 = load float*, float** %301, align 8
  %303 = getelementptr inbounds float, float* %302, i64 1
  %304 = load float, float* %303, align 4
  %305 = fcmp une float %304, 0.000000e+00
  br i1 %305, label %313, label %306

306:                                              ; preds = %299
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 1
  %309 = load float*, float** %308, align 8
  %310 = getelementptr inbounds float, float* %309, i64 2
  %311 = load float, float* %310, align 4
  %312 = fcmp une float %311, 0.000000e+00
  br i1 %312, label %313, label %321

313:                                              ; preds = %306, %299, %292
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 1
  %316 = load float*, float** %315, align 8
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 4
  %319 = load float*, float** %318, align 8
  %320 = call i32 @VectorCopy(float* %316, float* %319)
  br label %405

321:                                              ; preds = %306
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @SURFACE_FORCED_META, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %332

327:                                              ; preds = %321
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 4
  %330 = load float*, float** %329, align 8
  %331 = call i32 @VectorClear(float* %330)
  br label %404

332:                                              ; preds = %321
  %333 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 9
  %335 = load i8*, i8** %334, align 8
  %336 = icmp ne i8* %335, null
  br i1 %336, label %337, label %343

337:                                              ; preds = %332
  %338 = load float*, float** %8, align 8
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 4
  %341 = load float*, float** %340, align 8
  %342 = call i32 @CalcLightmapAxis(float* %338, float* %341)
  br label %403

343:                                              ; preds = %332
  store i32 0, i32* %6, align 4
  br label %344

344:                                              ; preds = %387, %343
  %345 = load i32, i32* %6, align 4
  %346 = icmp slt i32 %345, 6
  br i1 %346, label %347, label %390

347:                                              ; preds = %344
  store i32 0, i32* %5, align 4
  br label %348

348:                                              ; preds = %376, %347
  %349 = load i32, i32* %5, align 4
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = icmp slt i32 %349, %352
  br i1 %353, label %354, label %357

354:                                              ; preds = %348
  %355 = load i32, i32* %6, align 4
  %356 = icmp slt i32 %355, 6
  br label %357

357:                                              ; preds = %354, %348
  %358 = phi i1 [ false, %348 ], [ %356, %354 ]
  br i1 %358, label %359, label %379

359:                                              ; preds = %357
  %360 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 8
  %362 = load %struct.TYPE_6__*, %struct.TYPE_6__** %361, align 8
  %363 = load i32, i32* %5, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 1
  %367 = load float*, float** %366, align 8
  %368 = load i32, i32* %6, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [6 x float*], [6 x float*]* @ClassifySurfaces.axii, i64 0, i64 %369
  %371 = load float*, float** %370, align 8
  %372 = call float @DotProduct(float* %367, float* %371)
  %373 = fcmp olt float %372, 2.500000e-01
  br i1 %373, label %374, label %375

374:                                              ; preds = %359
  br label %379

375:                                              ; preds = %359
  br label %376

376:                                              ; preds = %375
  %377 = load i32, i32* %5, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %5, align 4
  br label %348

379:                                              ; preds = %374, %357
  %380 = load i32, i32* %5, align 4
  %381 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 8
  %384 = icmp eq i32 %380, %383
  br i1 %384, label %385, label %386

385:                                              ; preds = %379
  br label %390

386:                                              ; preds = %379
  br label %387

387:                                              ; preds = %386
  %388 = load i32, i32* %6, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %6, align 4
  br label %344

390:                                              ; preds = %385, %344
  %391 = load i32, i32* %6, align 4
  %392 = icmp slt i32 %391, 6
  br i1 %392, label %393, label %402

393:                                              ; preds = %390
  %394 = load i32, i32* %6, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [6 x float*], [6 x float*]* @ClassifySurfaces.axii, i64 0, i64 %395
  %397 = load float*, float** %396, align 8
  %398 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 4
  %400 = load float*, float** %399, align 8
  %401 = call i32 @VectorCopy(float* %397, float* %400)
  br label %402

402:                                              ; preds = %393, %390
  br label %403

403:                                              ; preds = %402, %337
  br label %404

404:                                              ; preds = %403, %327
  br label %405

405:                                              ; preds = %404, %313
  %406 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 5
  %408 = load i32, i32* %407, align 8
  %409 = icmp sle i32 %408, 0
  br i1 %409, label %410, label %459

410:                                              ; preds = %405
  %411 = load i32, i32* @sampleSize, align 4
  %412 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 5
  store i32 %411, i32* %413, align 8
  %414 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %415 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %414, i32 0, i32 7
  %416 = load %struct.TYPE_7__*, %struct.TYPE_7__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i32 0, i32 2
  %418 = load i32, i32* %417, align 8
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %428

420:                                              ; preds = %410
  %421 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %422 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %421, i32 0, i32 7
  %423 = load %struct.TYPE_7__*, %struct.TYPE_7__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 8
  %426 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %426, i32 0, i32 5
  store i32 %425, i32* %427, align 8
  br label %428

428:                                              ; preds = %420, %410
  %429 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %430 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %429, i32 0, i32 6
  %431 = load i32, i32* %430, align 4
  %432 = icmp sgt i32 %431, 0
  br i1 %432, label %433, label %441

433:                                              ; preds = %428
  %434 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %435 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %434, i32 0, i32 6
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %437, i32 0, i32 5
  %439 = load i32, i32* %438, align 8
  %440 = mul nsw i32 %439, %436
  store i32 %440, i32* %438, align 8
  br label %441

441:                                              ; preds = %433, %428
  %442 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %442, i32 0, i32 5
  %444 = load i32, i32* %443, align 8
  %445 = icmp sle i32 %444, 0
  br i1 %445, label %446, label %449

446:                                              ; preds = %441
  %447 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %448 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %447, i32 0, i32 5
  store i32 1, i32* %448, align 8
  br label %458

449:                                              ; preds = %441
  %450 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %451 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %450, i32 0, i32 5
  %452 = load i32, i32* %451, align 8
  %453 = icmp sgt i32 %452, 16384
  br i1 %453, label %454, label %457

454:                                              ; preds = %449
  %455 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %456 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %455, i32 0, i32 5
  store i32 16384, i32* %456, align 8
  br label %457

457:                                              ; preds = %454, %449
  br label %458

458:                                              ; preds = %457, %446
  br label %459

459:                                              ; preds = %458, %405
  br label %460

460:                                              ; preds = %459, %285, %24
  %461 = load i32, i32* %3, align 4
  %462 = add nsw i32 %461, -1
  store i32 %462, i32* %3, align 4
  %463 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %464 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %463, i32 1
  store %struct.TYPE_8__* %464, %struct.TYPE_8__** %4, align 8
  br label %10

465:                                              ; preds = %10
  ret void
}

declare dso_local i32 @ClearBounds(i32, i32) #1

declare dso_local i32 @AddPointToBounds(float*, i32, i32) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i32 @VectorClear(float*) #1

declare dso_local float @DotProduct(float*, float*) #1

declare dso_local float @VectorLength(float*) #1

declare dso_local i64 @fabs(float) #1

declare dso_local i32 @FindFloatPlane(float*, float, i32, float**) #1

declare dso_local i32 @CalcLightmapAxis(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
