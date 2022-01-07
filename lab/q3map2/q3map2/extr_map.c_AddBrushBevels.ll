; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_map.c_AddBrushBevels.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_map.c_AddBrushBevels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, float*, float*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i64, i8*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_9__ = type { float* }

@buildBrush = common dso_local global %struct.TYPE_10__* null, align 8
@mapplanes = common dso_local global %struct.TYPE_9__* null, align 8
@MAX_BUILD_SIDES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"MAX_BUILD_SIDES\00", align 1
@qtrue = common dso_local global i8* null, align 8
@bevelSnap = common dso_local global float 0.000000e+00, align 4
@c_boxbevels = common dso_local global i32 0, align 4
@c_edgebevels = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddBrushBevels() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float, align 4
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %227, %0
  %20 = load i32, i32* %1, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %230

22:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %23

23:                                               ; preds = %221, %22
  %24 = load i32, i32* %2, align 4
  %25 = icmp sle i32 %24, 1
  br i1 %25, label %26, label %226

26:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %9, align 8
  br label %30

30:                                               ; preds = %70, %26
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %75

36:                                               ; preds = %30
  %37 = load i32, i32* %2, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mapplanes, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load float*, float** %45, align 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %46, i64 %48
  %50 = load float, float* %49, align 4
  %51 = fcmp oeq float %50, 1.000000e+00
  br i1 %51, label %68, label %52

52:                                               ; preds = %39, %36
  %53 = load i32, i32* %2, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mapplanes, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load float*, float** %61, align 8
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  %66 = load float, float* %65, align 4
  %67 = fcmp oeq float %66, -1.000000e+00
  br i1 %67, label %68, label %69

68:                                               ; preds = %55, %39
  br label %75

69:                                               ; preds = %55, %52
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 1
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %9, align 8
  br label %30

75:                                               ; preds = %68, %30
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %185

81:                                               ; preds = %75
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MAX_BUILD_SIDES, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load i8*, i8** @qtrue, align 8
  %95 = call i32 @xml_Select(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %93, i8* %94)
  br label %96

96:                                               ; preds = %87, %81
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %98 = call i32 @memset(%struct.TYPE_8__* %97, i32 0, i32 32)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  %103 = load float*, float** %13, align 8
  %104 = call i32 @VectorClear(float* %103)
  %105 = load i32, i32* %2, align 4
  %106 = sitofp i32 %105 to float
  %107 = load float*, float** %13, align 8
  %108 = load i32, i32* %1, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %107, i64 %109
  store float %106, float* %110, align 4
  %111 = load i32, i32* %2, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %138

113:                                              ; preds = %96
  %114 = load float, float* @bevelSnap, align 4
  %115 = fcmp ogt float %114, 0.000000e+00
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load float*, float** %118, align 8
  %120 = load i32, i32* %1, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %119, i64 %121
  %123 = load float, float* %122, align 4
  %124 = load float, float* @bevelSnap, align 4
  %125 = fdiv float %123, %124
  %126 = call float @floor(float %125)
  %127 = load float, float* @bevelSnap, align 4
  %128 = fmul float %126, %127
  store float %128, float* %14, align 4
  br label %137

129:                                              ; preds = %113
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load float*, float** %131, align 8
  %133 = load i32, i32* %1, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float, float* %132, i64 %134
  %136 = load float, float* %135, align 4
  store float %136, float* %14, align 4
  br label %137

137:                                              ; preds = %129, %116
  br label %165

138:                                              ; preds = %96
  %139 = load float, float* @bevelSnap, align 4
  %140 = fcmp ogt float %139, 0.000000e+00
  br i1 %140, label %141, label %155

141:                                              ; preds = %138
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 2
  %144 = load float*, float** %143, align 8
  %145 = load i32, i32* %1, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %144, i64 %146
  %148 = load float, float* %147, align 4
  %149 = load float, float* @bevelSnap, align 4
  %150 = fdiv float %148, %149
  %151 = call float @ceil(float %150)
  %152 = fneg float %151
  %153 = load float, float* @bevelSnap, align 4
  %154 = fmul float %152, %153
  store float %154, float* %14, align 4
  br label %164

155:                                              ; preds = %138
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 2
  %158 = load float*, float** %157, align 8
  %159 = load i32, i32* %1, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float, float* %158, i64 %160
  %162 = load float, float* %161, align 4
  %163 = fneg float %162
  store float %163, float* %14, align 4
  br label %164

164:                                              ; preds = %155, %141
  br label %165

165:                                              ; preds = %164, %137
  %166 = load float*, float** %13, align 8
  %167 = load float, float* %14, align 4
  %168 = call i8* @FindFloatPlane(float* %166, float %167, i32 0, i32* null)
  %169 = ptrtoint i8* %168 to i64
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  store i64 %169, i64* %171, align 8
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 3
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  %180 = load i8*, i8** @qtrue, align 8
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  store i8* %180, i8** %182, align 8
  %183 = load i32, i32* @c_boxbevels, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* @c_boxbevels, align 4
  br label %185

185:                                              ; preds = %165, %75
  %186 = load i32, i32* %3, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %220

189:                                              ; preds = %185
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 3
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i64 %194
  %196 = bitcast %struct.TYPE_8__* %8 to i8*
  %197 = bitcast %struct.TYPE_8__* %195 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %196, i8* align 8 %197, i64 32, i1 false)
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 3
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i64 %202
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 3
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = load i32, i32* %3, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i64 %208
  %210 = bitcast %struct.TYPE_8__* %203 to i8*
  %211 = bitcast %struct.TYPE_8__* %209 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %210, i8* align 8 %211, i64 32, i1 false)
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 3
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %213, align 8
  %215 = load i32, i32* %3, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i64 %216
  %218 = bitcast %struct.TYPE_8__* %217 to i8*
  %219 = bitcast %struct.TYPE_8__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %218, i8* align 8 %219, i64 32, i1 false)
  br label %220

220:                                              ; preds = %189, %185
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %2, align 4
  %223 = add nsw i32 %222, 2
  store i32 %223, i32* %2, align 4
  %224 = load i32, i32* %7, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %7, align 4
  br label %23

226:                                              ; preds = %23
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %1, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %1, align 4
  br label %19

230:                                              ; preds = %19
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp eq i32 %233, 6
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  br label %530

236:                                              ; preds = %230
  store i32 6, i32* %3, align 4
  br label %237

237:                                              ; preds = %527, %236
  %238 = load i32, i32* %3, align 4
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp slt i32 %238, %241
  br i1 %242, label %243, label %530

243:                                              ; preds = %237
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 3
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %245, align 8
  %247 = load i32, i32* %3, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i64 %248
  store %struct.TYPE_8__* %249, %struct.TYPE_8__** %9, align 8
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 3
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %251, align 8
  store %struct.TYPE_7__* %252, %struct.TYPE_7__** %11, align 8
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %254 = icmp ne %struct.TYPE_7__* %253, null
  br i1 %254, label %256, label %255

255:                                              ; preds = %243
  br label %527

256:                                              ; preds = %243
  store i32 0, i32* %4, align 4
  br label %257

257:                                              ; preds = %523, %256
  %258 = load i32, i32* %4, align 4
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp slt i32 %258, %261
  br i1 %262, label %263, label %526

263:                                              ; preds = %257
  %264 = load i32, i32* %4, align 4
  %265 = add nsw i32 %264, 1
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = srem i32 %265, %268
  store i32 %269, i32* %5, align 4
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %4, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %5, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load float*, float** %15, align 8
  %285 = call i32 @VectorSubtract(i32 %276, i32 %283, float* %284)
  %286 = load float*, float** %15, align 8
  %287 = load float*, float** %15, align 8
  %288 = call float @VectorNormalize(float* %286, float* %287)
  %289 = fcmp olt float %288, 5.000000e-01
  br i1 %289, label %290, label %291

290:                                              ; preds = %263
  br label %523

291:                                              ; preds = %263
  %292 = load float*, float** %15, align 8
  %293 = call i32 @SnapNormal(float* %292)
  store i32 0, i32* %5, align 4
  br label %294

294:                                              ; preds = %329, %291
  %295 = load i32, i32* %5, align 4
  %296 = icmp slt i32 %295, 3
  br i1 %296, label %297, label %332

297:                                              ; preds = %294
  %298 = load float*, float** %15, align 8
  %299 = load i32, i32* %5, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds float, float* %298, i64 %300
  %302 = load float, float* %301, align 4
  %303 = fcmp oeq float %302, -1.000000e+00
  br i1 %303, label %327, label %304

304:                                              ; preds = %297
  %305 = load float*, float** %15, align 8
  %306 = load i32, i32* %5, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds float, float* %305, i64 %307
  %309 = load float, float* %308, align 4
  %310 = fcmp oeq float %309, 1.000000e+00
  br i1 %310, label %327, label %311

311:                                              ; preds = %304
  %312 = load float*, float** %15, align 8
  %313 = load i32, i32* %5, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds float, float* %312, i64 %314
  %316 = load float, float* %315, align 4
  %317 = fcmp oeq float %316, 0.000000e+00
  br i1 %317, label %318, label %328

318:                                              ; preds = %311
  %319 = load float*, float** %15, align 8
  %320 = load i32, i32* %5, align 4
  %321 = add nsw i32 %320, 1
  %322 = srem i32 %321, 3
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds float, float* %319, i64 %323
  %325 = load float, float* %324, align 4
  %326 = fcmp oeq float %325, 0.000000e+00
  br i1 %326, label %327, label %328

327:                                              ; preds = %318, %304, %297
  br label %332

328:                                              ; preds = %318, %311
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %5, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %5, align 4
  br label %294

332:                                              ; preds = %327, %294
  %333 = load i32, i32* %5, align 4
  %334 = icmp ne i32 %333, 3
  br i1 %334, label %335, label %336

335:                                              ; preds = %332
  br label %523

336:                                              ; preds = %332
  store i32 0, i32* %1, align 4
  br label %337

337:                                              ; preds = %519, %336
  %338 = load i32, i32* %1, align 4
  %339 = icmp slt i32 %338, 3
  br i1 %339, label %340, label %522

340:                                              ; preds = %337
  store i32 -1, i32* %2, align 4
  br label %341

341:                                              ; preds = %515, %340
  %342 = load i32, i32* %2, align 4
  %343 = icmp sle i32 %342, 1
  br i1 %343, label %344, label %518

344:                                              ; preds = %341
  %345 = load float*, float** %16, align 8
  %346 = call i32 @VectorClear(float* %345)
  %347 = load i32, i32* %2, align 4
  %348 = sitofp i32 %347 to float
  %349 = load float*, float** %16, align 8
  %350 = load i32, i32* %1, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds float, float* %349, i64 %351
  store float %348, float* %352, align 4
  %353 = load float*, float** %15, align 8
  %354 = load float*, float** %16, align 8
  %355 = load float*, float** %13, align 8
  %356 = call i32 @CrossProduct(float* %353, float* %354, float* %355)
  %357 = load float*, float** %13, align 8
  %358 = load float*, float** %13, align 8
  %359 = call float @VectorNormalize(float* %357, float* %358)
  %360 = fcmp olt float %359, 5.000000e-01
  br i1 %360, label %361, label %362

361:                                              ; preds = %344
  br label %515

362:                                              ; preds = %344
  %363 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 1
  %365 = load i32*, i32** %364, align 8
  %366 = load i32, i32* %4, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %365, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = load float*, float** %13, align 8
  %371 = call float @DotProduct(i32 %369, float* %370)
  store float %371, float* %14, align 4
  store i32 0, i32* %5, align 4
  br label %372

372:                                              ; preds = %450, %362
  %373 = load i32, i32* %5, align 4
  %374 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = icmp slt i32 %373, %376
  br i1 %377, label %378, label %453

378:                                              ; preds = %372
  %379 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mapplanes, align 8
  %380 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %381 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %380, i32 0, i32 3
  %382 = load %struct.TYPE_8__*, %struct.TYPE_8__** %381, align 8
  %383 = load i32, i32* %5, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %379, i64 %387
  %389 = load float*, float** %13, align 8
  %390 = load float, float* %14, align 4
  %391 = call i64 @PlaneEqual(%struct.TYPE_9__* %388, float* %389, float %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %378
  br label %453

394:                                              ; preds = %378
  %395 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %396 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %395, i32 0, i32 3
  %397 = load %struct.TYPE_8__*, %struct.TYPE_8__** %396, align 8
  %398 = load i32, i32* %5, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %397, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %400, i32 0, i32 3
  %402 = load %struct.TYPE_7__*, %struct.TYPE_7__** %401, align 8
  store %struct.TYPE_7__* %402, %struct.TYPE_7__** %12, align 8
  %403 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %404 = icmp ne %struct.TYPE_7__* %403, null
  br i1 %404, label %406, label %405

405:                                              ; preds = %394
  br label %450

406:                                              ; preds = %394
  store float 0.000000e+00, float* %18, align 4
  store i32 0, i32* %6, align 4
  br label %407

407:                                              ; preds = %435, %406
  %408 = load i32, i32* %6, align 4
  %409 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %410 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = icmp slt i32 %408, %411
  br i1 %412, label %413, label %438

413:                                              ; preds = %407
  %414 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %415 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %414, i32 0, i32 1
  %416 = load i32*, i32** %415, align 8
  %417 = load i32, i32* %6, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = load float*, float** %13, align 8
  %422 = call float @DotProduct(i32 %420, float* %421)
  %423 = load float, float* %14, align 4
  %424 = fsub float %422, %423
  store float %424, float* %17, align 4
  %425 = load float, float* %17, align 4
  %426 = fcmp ogt float %425, 0x3FB99999A0000000
  br i1 %426, label %427, label %428

427:                                              ; preds = %413
  br label %438

428:                                              ; preds = %413
  %429 = load float, float* %17, align 4
  %430 = load float, float* %18, align 4
  %431 = fcmp olt float %429, %430
  br i1 %431, label %432, label %434

432:                                              ; preds = %428
  %433 = load float, float* %17, align 4
  store float %433, float* %18, align 4
  br label %434

434:                                              ; preds = %432, %428
  br label %435

435:                                              ; preds = %434
  %436 = load i32, i32* %6, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %6, align 4
  br label %407

438:                                              ; preds = %427, %407
  %439 = load i32, i32* %6, align 4
  %440 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %441 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = icmp ne i32 %439, %442
  br i1 %443, label %444, label %445

444:                                              ; preds = %438
  br label %453

445:                                              ; preds = %438
  %446 = load float, float* %18, align 4
  %447 = fcmp ogt float %446, 0xBFB99999A0000000
  br i1 %447, label %448, label %449

448:                                              ; preds = %445
  br label %453

449:                                              ; preds = %445
  br label %450

450:                                              ; preds = %449, %405
  %451 = load i32, i32* %5, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %5, align 4
  br label %372

453:                                              ; preds = %448, %444, %393, %372
  %454 = load i32, i32* %5, align 4
  %455 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %456 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = icmp ne i32 %454, %457
  br i1 %458, label %459, label %460

459:                                              ; preds = %453
  br label %515

460:                                              ; preds = %453
  %461 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %462 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = load i32, i32* @MAX_BUILD_SIDES, align 4
  %465 = icmp eq i32 %463, %464
  br i1 %465, label %466, label %475

466:                                              ; preds = %460
  %467 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %468 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %467, i32 0, i32 5
  %469 = load i32, i32* %468, align 4
  %470 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %471 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %470, i32 0, i32 4
  %472 = load i32, i32* %471, align 8
  %473 = load i8*, i8** @qtrue, align 8
  %474 = call i32 @xml_Select(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %469, i32 %472, i8* %473)
  br label %475

475:                                              ; preds = %466, %460
  %476 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %477 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %476, i32 0, i32 3
  %478 = load %struct.TYPE_8__*, %struct.TYPE_8__** %477, align 8
  %479 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %480 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %478, i64 %482
  store %struct.TYPE_8__* %483, %struct.TYPE_8__** %10, align 8
  %484 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %485 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %485, align 8
  %488 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %489 = call i32 @memset(%struct.TYPE_8__* %488, i32 0, i32 32)
  %490 = load float*, float** %13, align 8
  %491 = load float, float* %14, align 4
  %492 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %493 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %492, i32 0, i32 1
  %494 = load i32*, i32** %493, align 8
  %495 = load i32, i32* %4, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i32, i32* %494, i64 %496
  %498 = call i8* @FindFloatPlane(float* %490, float %491, i32 1, i32* %497)
  %499 = ptrtoint i8* %498 to i64
  %500 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %501 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %500, i32 0, i32 0
  store i64 %499, i64* %501, align 8
  %502 = load %struct.TYPE_10__*, %struct.TYPE_10__** @buildBrush, align 8
  %503 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %502, i32 0, i32 3
  %504 = load %struct.TYPE_8__*, %struct.TYPE_8__** %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %504, i64 0
  %506 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %505, i32 0, i32 2
  %507 = load i32, i32* %506, align 8
  %508 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %509 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %508, i32 0, i32 2
  store i32 %507, i32* %509, align 8
  %510 = load i8*, i8** @qtrue, align 8
  %511 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %512 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %511, i32 0, i32 1
  store i8* %510, i8** %512, align 8
  %513 = load i32, i32* @c_edgebevels, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* @c_edgebevels, align 4
  br label %515

515:                                              ; preds = %475, %459, %361
  %516 = load i32, i32* %2, align 4
  %517 = add nsw i32 %516, 2
  store i32 %517, i32* %2, align 4
  br label %341

518:                                              ; preds = %341
  br label %519

519:                                              ; preds = %518
  %520 = load i32, i32* %1, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %1, align 4
  br label %337

522:                                              ; preds = %337
  br label %523

523:                                              ; preds = %522, %335, %290
  %524 = load i32, i32* %4, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %4, align 4
  br label %257

526:                                              ; preds = %257
  br label %527

527:                                              ; preds = %526, %255
  %528 = load i32, i32* %3, align 4
  %529 = add nsw i32 %528, 1
  store i32 %529, i32* %3, align 4
  br label %237

530:                                              ; preds = %235, %237
  ret void
}

declare dso_local i32 @xml_Select(i8*, i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @VectorClear(float*) #1

declare dso_local float @floor(float) #1

declare dso_local float @ceil(float) #1

declare dso_local i8* @FindFloatPlane(float*, float, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VectorSubtract(i32, i32, float*) #1

declare dso_local float @VectorNormalize(float*, float*) #1

declare dso_local i32 @SnapNormal(float*) #1

declare dso_local i32 @CrossProduct(float*, float*, float*) #1

declare dso_local float @DotProduct(i32, float*) #1

declare dso_local i64 @PlaneEqual(%struct.TYPE_9__*, float*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
