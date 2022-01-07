; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_decals.c_ProjectDecalOntoWinding.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_decals.c_ProjectDecalOntoWinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { float**, i32, float**, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_18__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { float*, float*, i32**, i32 }
%struct.TYPE_15__ = type { i32, float** }

@entityOrigin = common dso_local global i32 0, align 4
@numDecalSurfaces = common dso_local global i32 0, align 4
@SURFACE_DECAL = common dso_local global i32 0, align 4
@MAX_LIGHTMAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*)* @ProjectDecalOntoWinding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProjectDecalOntoWinding(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca float*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = call i32 @FreeWinding(%struct.TYPE_15__* %22)
  br label %371

24:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %48, %24
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %25
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load float**, float*** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float*, float** %34, i64 %36
  %38 = load float*, float** %37, align 8
  %39 = load i32, i32* @entityOrigin, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load float**, float*** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float*, float** %42, i64 %44
  %46 = load float*, float** %45, align 8
  %47 = call i32 @VectorAdd(float* %38, i32 %39, float* %46)
  br label %48

48:                                               ; preds = %31
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %25

51:                                               ; preds = %25
  %52 = load float*, float** %16, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load float**, float*** %54, align 8
  %56 = getelementptr inbounds float*, float** %55, i64 0
  %57 = load float*, float** %56, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load float**, float*** %59, align 8
  %61 = getelementptr inbounds float*, float** %60, i64 1
  %62 = load float*, float** %61, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load float**, float*** %64, align 8
  %66 = getelementptr inbounds float*, float** %65, i64 2
  %67 = load float*, float** %66, align 8
  %68 = call i32 @PlaneFromPoints(float* %52, float* %57, float* %62, float* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %51
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %72 = call i32 @FreeWinding(%struct.TYPE_15__* %71)
  br label %371

73:                                               ; preds = %51
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load float**, float*** %75, align 8
  %77 = getelementptr inbounds float*, float** %76, i64 0
  %78 = load float*, float** %77, align 8
  %79 = load float*, float** %16, align 8
  %80 = call float @DotProduct(float* %78, float* %79)
  store float %80, float* %9, align 4
  %81 = load float, float* %9, align 4
  %82 = fcmp olt float %81, 0xBF1A36E2E0000000
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %85 = call i32 @FreeWinding(%struct.TYPE_15__* %84)
  br label %371

86:                                               ; preds = %73
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %125, %86
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %128

93:                                               ; preds = %87
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load float**, float*** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float*, float** %97, i64 %99
  %101 = load float*, float** %100, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load float**, float*** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float*, float** %104, i64 %106
  %108 = load float*, float** %107, align 8
  %109 = getelementptr inbounds float, float* %108, i64 3
  %110 = load float, float* %109, align 4
  %111 = call i32 @ClipWindingEpsilon(%struct.TYPE_15__* %94, float* %101, float %110, float 6.250000e-02, %struct.TYPE_15__** %12, %struct.TYPE_15__** %13)
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %113 = call i32 @FreeWinding(%struct.TYPE_15__* %112)
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %115 = icmp ne %struct.TYPE_15__* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %93
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %118 = call i32 @FreeWinding(%struct.TYPE_15__* %117)
  br label %119

119:                                              ; preds = %116, %93
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %121 = icmp eq %struct.TYPE_15__* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %371

123:                                              ; preds = %119
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %124, %struct.TYPE_15__** %6, align 8
  br label %125

125:                                              ; preds = %123
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %87

128:                                              ; preds = %87
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %130 = icmp eq %struct.TYPE_15__* %129, null
  br i1 %130, label %136, label %131

131:                                              ; preds = %128
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %134, 3
  br i1 %135, label %136, label %137

136:                                              ; preds = %131, %128
  br label %371

137:                                              ; preds = %131
  %138 = load i32, i32* @numDecalSurfaces, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* @numDecalSurfaces, align 4
  %140 = load i32, i32* @SURFACE_DECAL, align 4
  %141 = call %struct.TYPE_16__* @AllocDrawSurface(i32 %140)
  store %struct.TYPE_16__* %141, %struct.TYPE_16__** %14, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 7
  store i32 %144, i32* %146, align 4
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 6
  store i32 %149, i32* %151, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 4
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = mul i64 %180, 32
  %182 = trunc i64 %181 to i32
  %183 = call %struct.TYPE_18__* @safe_malloc(i32 %182)
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 1
  store %struct.TYPE_18__* %183, %struct.TYPE_18__** %185, align 8
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %187, align 8
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = mul i64 %192, 32
  %194 = trunc i64 %193 to i32
  %195 = call i32 @memset(%struct.TYPE_18__* %188, i32 0, i32 %194)
  store i32 0, i32* %7, align 4
  br label %196

196:                                              ; preds = %368, %137
  %197 = load i32, i32* %7, align 4
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %371

202:                                              ; preds = %196
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %204, align 8
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i64 %207
  store %struct.TYPE_18__* %208, %struct.TYPE_18__** %15, align 8
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 1
  %211 = load float**, float*** %210, align 8
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float*, float** %211, i64 %213
  %215 = load float*, float** %214, align 8
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 0
  %218 = load float**, float*** %217, align 8
  %219 = getelementptr inbounds float*, float** %218, i64 0
  %220 = load float*, float** %219, align 8
  %221 = call float @DotProduct(float* %215, float* %220)
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 0
  %224 = load float**, float*** %223, align 8
  %225 = getelementptr inbounds float*, float** %224, i64 0
  %226 = load float*, float** %225, align 8
  %227 = getelementptr inbounds float, float* %226, i64 3
  %228 = load float, float* %227, align 4
  %229 = fsub float %221, %228
  store float %229, float* %9, align 4
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 1
  %232 = load float**, float*** %231, align 8
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float*, float** %232, i64 %234
  %236 = load float*, float** %235, align 8
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 0
  %239 = load float**, float*** %238, align 8
  %240 = getelementptr inbounds float*, float** %239, i64 1
  %241 = load float*, float** %240, align 8
  %242 = call float @DotProduct(float* %236, float* %241)
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 0
  %245 = load float**, float*** %244, align 8
  %246 = getelementptr inbounds float*, float** %245, i64 1
  %247 = load float*, float** %246, align 8
  %248 = getelementptr inbounds float, float* %247, i64 3
  %249 = load float, float* %248, align 4
  %250 = fsub float %242, %249
  store float %250, float* %10, align 4
  %251 = load float, float* %10, align 4
  %252 = fmul float 2.550000e+02, %251
  %253 = load float, float* %9, align 4
  %254 = load float, float* %10, align 4
  %255 = fadd float %253, %254
  %256 = fdiv float %252, %255
  store float %256, float* %11, align 4
  %257 = load float, float* %11, align 4
  %258 = fcmp ogt float %257, 2.550000e+02
  br i1 %258, label %259, label %260

259:                                              ; preds = %202
  store float 2.550000e+02, float* %11, align 4
  br label %265

260:                                              ; preds = %202
  %261 = load float, float* %11, align 4
  %262 = fcmp olt float %261, 0.000000e+00
  br i1 %262, label %263, label %264

263:                                              ; preds = %260
  store float 0.000000e+00, float* %11, align 4
  br label %264

264:                                              ; preds = %263, %260
  br label %265

265:                                              ; preds = %264, %259
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 1
  %268 = load float**, float*** %267, align 8
  %269 = load i32, i32* %7, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float*, float** %268, i64 %270
  %272 = load float*, float** %271, align 8
  %273 = load i32, i32* @entityOrigin, align 4
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 0
  %276 = load float*, float** %275, align 8
  %277 = call i32 @VectorSubtract(float* %272, i32 %273, float* %276)
  %278 = load float*, float** %16, align 8
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @VectorCopy(float* %278, i32 %281)
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 0
  %285 = load float*, float** %284, align 8
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 2
  %288 = load float**, float*** %287, align 8
  %289 = getelementptr inbounds float*, float** %288, i64 0
  %290 = load float*, float** %289, align 8
  %291 = call float @DotProduct(float* %285, float* %290)
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 2
  %294 = load float**, float*** %293, align 8
  %295 = getelementptr inbounds float*, float** %294, i64 0
  %296 = load float*, float** %295, align 8
  %297 = getelementptr inbounds float, float* %296, i64 3
  %298 = load float, float* %297, align 4
  %299 = fadd float %291, %298
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 1
  %302 = load float*, float** %301, align 8
  %303 = getelementptr inbounds float, float* %302, i64 0
  store float %299, float* %303, align 4
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 0
  %306 = load float*, float** %305, align 8
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 2
  %309 = load float**, float*** %308, align 8
  %310 = getelementptr inbounds float*, float** %309, i64 1
  %311 = load float*, float** %310, align 8
  %312 = call float @DotProduct(float* %306, float* %311)
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 2
  %315 = load float**, float*** %314, align 8
  %316 = getelementptr inbounds float*, float** %315, i64 1
  %317 = load float*, float** %316, align 8
  %318 = getelementptr inbounds float, float* %317, i64 3
  %319 = load float, float* %318, align 4
  %320 = fadd float %312, %319
  %321 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i32 0, i32 1
  %323 = load float*, float** %322, align 8
  %324 = getelementptr inbounds float, float* %323, i64 1
  store float %320, float* %324, align 4
  store i32 0, i32* %8, align 4
  br label %325

325:                                              ; preds = %364, %265
  %326 = load i32, i32* %8, align 4
  %327 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %328 = icmp slt i32 %326, %327
  br i1 %328, label %329, label %367

329:                                              ; preds = %325
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %330, i32 0, i32 2
  %332 = load i32**, i32*** %331, align 8
  %333 = load i32, i32* %8, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32*, i32** %332, i64 %334
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 0
  store i32 255, i32* %337, align 4
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %339 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %338, i32 0, i32 2
  %340 = load i32**, i32*** %339, align 8
  %341 = load i32, i32* %8, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32*, i32** %340, i64 %342
  %344 = load i32*, i32** %343, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 1
  store i32 255, i32* %345, align 4
  %346 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %347 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %346, i32 0, i32 2
  %348 = load i32**, i32*** %347, align 8
  %349 = load i32, i32* %8, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32*, i32** %348, i64 %350
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 2
  store i32 255, i32* %353, align 4
  %354 = load float, float* %11, align 4
  %355 = fptosi float %354 to i32
  %356 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %356, i32 0, i32 2
  %358 = load i32**, i32*** %357, align 8
  %359 = load i32, i32* %8, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32*, i32** %358, i64 %360
  %362 = load i32*, i32** %361, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 3
  store i32 %355, i32* %363, align 4
  br label %364

364:                                              ; preds = %329
  %365 = load i32, i32* %8, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %8, align 4
  br label %325

367:                                              ; preds = %325
  br label %368

368:                                              ; preds = %367
  %369 = load i32, i32* %7, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %7, align 4
  br label %196

371:                                              ; preds = %21, %70, %83, %122, %136, %196
  ret void
}

declare dso_local i32 @FreeWinding(%struct.TYPE_15__*) #1

declare dso_local i32 @VectorAdd(float*, i32, float*) #1

declare dso_local i32 @PlaneFromPoints(float*, float*, float*, float*) #1

declare dso_local float @DotProduct(float*, float*) #1

declare dso_local i32 @ClipWindingEpsilon(%struct.TYPE_15__*, float*, float, float, %struct.TYPE_15__**, %struct.TYPE_15__**) #1

declare dso_local %struct.TYPE_16__* @AllocDrawSurface(i32) #1

declare dso_local %struct.TYPE_18__* @safe_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @VectorSubtract(float*, i32, float*) #1

declare dso_local i32 @VectorCopy(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
