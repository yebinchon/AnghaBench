; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_mesh.c_MakeMeshNormals.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_mesh.c_MakeMeshNormals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__* }

@__const.MakeMeshNormals.neighbors = private unnamed_addr constant [8 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 1, i32 -1], [2 x i32] [i32 0, i32 -1], [2 x i32] [i32 -1, i32 -1], [2 x i32] [i32 -1, i32 0], [2 x i32] [i32 -1, i32 1]], align 16
@qfalse = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MakeMeshNormals(i64 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca [8 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca [8 x i64], align 16
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca float, align 4
  %22 = alloca [8 x [2 x i32]], align 16
  %23 = bitcast %struct.TYPE_4__* %3 to { i64, %struct.TYPE_5__* }*
  %24 = getelementptr inbounds { i64, %struct.TYPE_5__* }, { i64, %struct.TYPE_5__* }* %23, i32 0, i32 0
  store i64 %0, i64* %24, align 8
  %25 = getelementptr inbounds { i64, %struct.TYPE_5__* }, { i64, %struct.TYPE_5__* }* %23, i32 0, i32 1
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %25, align 8
  %26 = bitcast [8 x [2 x i32]]* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %26, i8* align 16 bitcast ([8 x [2 x i32]]* @__const.MakeMeshNormals.neighbors to i8*), i64 64, i1 false)
  %27 = load i64, i64* @qfalse, align 8
  store i64 %27, i64* %19, align 8
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %67, %2
  %29 = load i32, i32* %4, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %36, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %46, %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %49, %51
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @VectorSubtract(i32 %43, i32 %57, i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = call float @VectorLength(i32 %60)
  store float %61, float* %21, align 4
  %62 = load float, float* %21, align 4
  %63 = fpext float %62 to double
  %64 = fcmp ogt double %63, 1.000000e+00
  br i1 %64, label %65, label %66

65:                                               ; preds = %33
  br label %70

66:                                               ; preds = %33
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %28

70:                                               ; preds = %65, %28
  %71 = load i32, i32* %4, align 4
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i64, i64* @qtrue, align 8
  store i64 %76, i64* %19, align 8
  br label %77

77:                                               ; preds = %75, %70
  %78 = load i64, i64* @qfalse, align 8
  store i64 %78, i64* %20, align 8
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %115, %77
  %80 = load i32, i32* %4, align 4
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %118

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %96, 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %97, %99
  %101 = add nsw i32 %94, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @VectorSubtract(i32 %91, i32 %105, i32 %106)
  %108 = load i32, i32* %12, align 4
  %109 = call float @VectorLength(i32 %108)
  store float %109, float* %21, align 4
  %110 = load float, float* %21, align 4
  %111 = fpext float %110 to double
  %112 = fcmp ogt double %111, 1.000000e+00
  br i1 %112, label %113, label %114

113:                                              ; preds = %84
  br label %118

114:                                              ; preds = %84
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %4, align 4
  br label %79

118:                                              ; preds = %113, %79
  %119 = load i32, i32* %4, align 4
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i64, i64* @qtrue, align 8
  store i64 %124, i64* %20, align 8
  br label %125

125:                                              ; preds = %123, %118
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %356, %125
  %127 = load i32, i32* %4, align 4
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %127, %129
  br i1 %130, label %131, label %359

131:                                              ; preds = %126
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %352, %131
  %133 = load i32, i32* %5, align 4
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %133, %135
  br i1 %136, label %137, label %355

137:                                              ; preds = %132
  store i32 0, i32* %10, align 4
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %140, %142
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %146
  store %struct.TYPE_5__* %147, %struct.TYPE_5__** %15, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @VectorCopy(i32 %150, i32 %151)
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %290, %137
  %154 = load i32, i32* %6, align 4
  %155 = icmp slt i32 %154, 8
  br i1 %155, label %156, label %293

156:                                              ; preds = %153
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @VectorClear(i32 %160)
  %162 = load i64, i64* @qfalse, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [8 x i64], [8 x i64]* %18, i64 0, i64 %164
  store i64 %162, i64* %165, align 8
  store i32 1, i32* %7, align 4
  br label %166

166:                                              ; preds = %286, %156
  %167 = load i32, i32* %7, align 4
  %168 = icmp sle i32 %167, 3
  br i1 %168, label %169, label %289

169:                                              ; preds = %166
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %22, i64 0, i64 %172
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %173, i64 0, i64 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = mul nsw i32 %175, %176
  %178 = add nsw i32 %170, %177
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %22, i64 0, i64 %181
  %183 = getelementptr inbounds [2 x i32], [2 x i32]* %182, i64 0, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %7, align 4
  %186 = mul nsw i32 %184, %185
  %187 = add nsw i32 %179, %186
  store i32 %187, i32* %14, align 4
  %188 = load i64, i64* %19, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %212

190:                                              ; preds = %169
  %191 = load i32, i32* %13, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %195, 1
  %197 = load i32, i32* %13, align 4
  %198 = add nsw i32 %196, %197
  store i32 %198, i32* %13, align 4
  br label %211

199:                                              ; preds = %190
  %200 = load i32, i32* %13, align 4
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp sge i32 %200, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 1, %205
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = sub nsw i32 %206, %208
  store i32 %209, i32* %13, align 4
  br label %210

210:                                              ; preds = %204, %199
  br label %211

211:                                              ; preds = %210, %193
  br label %212

212:                                              ; preds = %211, %169
  %213 = load i64, i64* %20, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %237

215:                                              ; preds = %212
  %216 = load i32, i32* %14, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = sub nsw i32 %220, 1
  %222 = load i32, i32* %14, align 4
  %223 = add nsw i32 %221, %222
  store i32 %223, i32* %14, align 4
  br label %236

224:                                              ; preds = %215
  %225 = load i32, i32* %14, align 4
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp sge i32 %225, %227
  br i1 %228, label %229, label %235

229:                                              ; preds = %224
  %230 = load i32, i32* %14, align 4
  %231 = add nsw i32 1, %230
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = sub nsw i32 %231, %233
  store i32 %234, i32* %14, align 4
  br label %235

235:                                              ; preds = %229, %224
  br label %236

236:                                              ; preds = %235, %218
  br label %237

237:                                              ; preds = %236, %212
  %238 = load i32, i32* %13, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %253, label %240

240:                                              ; preds = %237
  %241 = load i32, i32* %13, align 4
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = icmp sge i32 %241, %243
  br i1 %244, label %253, label %245

245:                                              ; preds = %240
  %246 = load i32, i32* %14, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %253, label %248

248:                                              ; preds = %245
  %249 = load i32, i32* %14, align 4
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = icmp sge i32 %249, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %248, %245, %240, %237
  br label %289

254:                                              ; preds = %248
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %255, align 8
  %257 = load i32, i32* %14, align 4
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = mul nsw i32 %257, %259
  %261 = load i32, i32* %13, align 4
  %262 = add nsw i32 %260, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %11, align 4
  %268 = load i32, i32* %17, align 4
  %269 = call i32 @VectorSubtract(i32 %266, i32 %267, i32 %268)
  %270 = load i32, i32* %17, align 4
  %271 = load i32, i32* %17, align 4
  %272 = call i32 @VectorNormalize(i32 %270, i32 %271)
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %254
  br label %286

275:                                              ; preds = %254
  %276 = load i64, i64* @qtrue, align 8
  %277 = load i32, i32* %6, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [8 x i64], [8 x i64]* %18, i64 0, i64 %278
  store i64 %276, i64* %279, align 8
  %280 = load i32, i32* %17, align 4
  %281 = load i32, i32* %6, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @VectorCopy(i32 %280, i32 %284)
  br label %289

286:                                              ; preds = %274
  %287 = load i32, i32* %7, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %7, align 4
  br label %166

289:                                              ; preds = %275, %253, %166
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %6, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %6, align 4
  br label %153

293:                                              ; preds = %153
  %294 = load i32, i32* %9, align 4
  %295 = call i32 @VectorClear(i32 %294)
  store i32 0, i32* %6, align 4
  br label %296

296:                                              ; preds = %339, %293
  %297 = load i32, i32* %6, align 4
  %298 = icmp slt i32 %297, 8
  br i1 %298, label %299, label %342

299:                                              ; preds = %296
  %300 = load i32, i32* %6, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [8 x i64], [8 x i64]* %18, i64 0, i64 %301
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %313

305:                                              ; preds = %299
  %306 = load i32, i32* %6, align 4
  %307 = add nsw i32 %306, 1
  %308 = and i32 %307, 7
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [8 x i64], [8 x i64]* %18, i64 0, i64 %309
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %314, label %313

313:                                              ; preds = %305, %299
  br label %339

314:                                              ; preds = %305
  %315 = load i32, i32* %6, align 4
  %316 = add nsw i32 %315, 1
  %317 = and i32 %316, 7
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %6, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* %8, align 4
  %326 = call i32 @CrossProduct(i32 %320, i32 %324, i32 %325)
  %327 = load i32, i32* %8, align 4
  %328 = load i32, i32* %8, align 4
  %329 = call i32 @VectorNormalize(i32 %327, i32 %328)
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %314
  br label %339

332:                                              ; preds = %314
  %333 = load i32, i32* %8, align 4
  %334 = load i32, i32* %9, align 4
  %335 = load i32, i32* %9, align 4
  %336 = call i32 @VectorAdd(i32 %333, i32 %334, i32 %335)
  %337 = load i32, i32* %10, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %10, align 4
  br label %339

339:                                              ; preds = %332, %331, %313
  %340 = load i32, i32* %6, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %6, align 4
  br label %296

342:                                              ; preds = %296
  %343 = load i32, i32* %10, align 4
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %342
  store i32 1, i32* %10, align 4
  br label %346

346:                                              ; preds = %345, %342
  %347 = load i32, i32* %9, align 4
  %348 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @VectorNormalize(i32 %347, i32 %350)
  br label %352

352:                                              ; preds = %346
  %353 = load i32, i32* %5, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %5, align 4
  br label %132

355:                                              ; preds = %132
  br label %356

356:                                              ; preds = %355
  %357 = load i32, i32* %4, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %4, align 4
  br label %126

359:                                              ; preds = %126
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #2

declare dso_local float @VectorLength(i32) #2

declare dso_local i32 @VectorCopy(i32, i32) #2

declare dso_local i32 @VectorClear(i32) #2

declare dso_local i32 @VectorNormalize(i32, i32) #2

declare dso_local i32 @CrossProduct(i32, i32, i32) #2

declare dso_local i32 @VectorAdd(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
