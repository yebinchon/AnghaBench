; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_poly.c_FindPlaneSeperatingWindings.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_poly.c_FindPlaneSeperatingWindings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, float** }

@.str = private unnamed_addr constant [51 x i8] c"FindPlaneSeperatingWindings: winding1 non-convex\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"FindPlaneSeperatingWindings: winding2 non-convex\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FindPlaneSeperatingWindings(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, float* %2, float* %3, float* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [3 x i32], align 4
  %18 = alloca [3 x i32], align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %341, %5
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %344

33:                                               ; preds = %27
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = srem i32 %35, %38
  store i32 %39, i32* %13, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load float**, float*** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float*, float** %42, i64 %44
  %46 = load float*, float** %45, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load float**, float*** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float*, float** %49, i64 %51
  %53 = load float*, float** %52, align 8
  %54 = load float*, float** %25, align 8
  %55 = call i32 @VectorSubtract(float* %46, float* %53, float* %54)
  %56 = load float*, float** %25, align 8
  %57 = call double @VectorLength(float* %56)
  %58 = fcmp olt double %57, 1.000000e-01
  br i1 %58, label %59, label %60

59:                                               ; preds = %33
  br label %341

60:                                               ; preds = %33
  %61 = load float*, float** %25, align 8
  %62 = load float*, float** %9, align 8
  %63 = load float*, float** %23, align 8
  %64 = call i32 @CrossProduct(float* %61, float* %62, float* %63)
  %65 = load float*, float** %23, align 8
  %66 = call i32 @VectorNormalize(float* %65)
  %67 = load float*, float** %23, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load float**, float*** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float*, float** %70, i64 %72
  %74 = load float*, float** %73, align 8
  %75 = call float @DotProduct(float* %67, float* %74)
  store float %75, float* %19, align 4
  store i32 0, i32* %14, align 4
  br label %76

76:                                               ; preds = %337, %60
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %340

82:                                               ; preds = %76
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = srem i32 %84, %87
  store i32 %88, i32* %15, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load float**, float*** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float*, float** %91, i64 %93
  %95 = load float*, float** %94, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load float**, float*** %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float*, float** %98, i64 %100
  %102 = load float*, float** %101, align 8
  %103 = load float*, float** %26, align 8
  %104 = call i32 @VectorSubtract(float* %95, float* %102, float* %103)
  %105 = load float*, float** %26, align 8
  %106 = call double @VectorLength(float* %105)
  %107 = fcmp olt double %106, 1.000000e-01
  br i1 %107, label %108, label %109

108:                                              ; preds = %82
  br label %337

109:                                              ; preds = %82
  %110 = load float*, float** %26, align 8
  %111 = load float*, float** %9, align 8
  %112 = load float*, float** %24, align 8
  %113 = call i32 @CrossProduct(float* %110, float* %111, float* %112)
  %114 = load float*, float** %24, align 8
  %115 = call i32 @VectorNormalize(float* %114)
  %116 = load float*, float** %24, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load float**, float*** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float*, float** %119, i64 %121
  %123 = load float*, float** %122, align 8
  %124 = call float @DotProduct(float* %116, float* %123)
  store float %124, float* %20, align 4
  %125 = load float, float* %19, align 4
  %126 = load float, float* %20, align 4
  %127 = fsub float %125, %126
  store float %127, float* %22, align 4
  %128 = load float, float* %22, align 4
  %129 = fpext float %128 to double
  %130 = fcmp olt double %129, -1.000000e-01
  br i1 %130, label %135, label %131

131:                                              ; preds = %109
  %132 = load float, float* %22, align 4
  %133 = fpext float %132 to double
  %134 = fcmp ogt double %133, 1.000000e-01
  br i1 %134, label %135, label %153

135:                                              ; preds = %131, %109
  %136 = load float, float* %20, align 4
  %137 = fneg float %136
  store float %137, float* %20, align 4
  %138 = load float*, float** %24, align 8
  %139 = load float*, float** %24, align 8
  %140 = call i32 @VectorNegate(float* %138, float* %139)
  %141 = load float, float* %19, align 4
  %142 = load float, float* %20, align 4
  %143 = fsub float %141, %142
  store float %143, float* %22, align 4
  %144 = load float, float* %22, align 4
  %145 = fpext float %144 to double
  %146 = fcmp olt double %145, -1.000000e-01
  br i1 %146, label %151, label %147

147:                                              ; preds = %135
  %148 = load float, float* %22, align 4
  %149 = fpext float %148 to double
  %150 = fcmp ogt double %149, 1.000000e-01
  br i1 %150, label %151, label %152

151:                                              ; preds = %147, %135
  br label %337

152:                                              ; preds = %147
  br label %153

153:                                              ; preds = %152, %131
  store i32 0, i32* %16, align 4
  br label %154

154:                                              ; preds = %178, %153
  %155 = load i32, i32* %16, align 4
  %156 = icmp slt i32 %155, 3
  br i1 %156, label %157, label %181

157:                                              ; preds = %154
  %158 = load float*, float** %23, align 8
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float, float* %158, i64 %160
  %162 = load float, float* %161, align 4
  %163 = load float*, float** %24, align 8
  %164 = load i32, i32* %16, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %163, i64 %165
  %167 = load float, float* %166, align 4
  %168 = fsub float %162, %167
  store float %168, float* %22, align 4
  %169 = load float, float* %22, align 4
  %170 = fpext float %169 to double
  %171 = fcmp olt double %170, -1.000000e-04
  br i1 %171, label %176, label %172

172:                                              ; preds = %157
  %173 = load float, float* %22, align 4
  %174 = fpext float %173 to double
  %175 = fcmp ogt double %174, 1.000000e-04
  br i1 %175, label %176, label %177

176:                                              ; preds = %172, %157
  br label %181

177:                                              ; preds = %172
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %16, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %16, align 4
  br label %154

181:                                              ; preds = %176, %154
  %182 = load i32, i32* %16, align 4
  %183 = icmp ne i32 %182, 3
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %337

185:                                              ; preds = %181
  %186 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  store i32 0, i32* %186, align 4
  %187 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  store i32 0, i32* %187, align 4
  %188 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  store i32 0, i32* %188, align 4
  store i32 0, i32* %16, align 4
  br label %189

189:                                              ; preds = %228, %185
  %190 = load i32, i32* %16, align 4
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp slt i32 %190, %193
  br i1 %194, label %195, label %231

195:                                              ; preds = %189
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  %198 = load float**, float*** %197, align 8
  %199 = load i32, i32* %16, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float*, float** %198, i64 %200
  %202 = load float*, float** %201, align 8
  %203 = load float*, float** %23, align 8
  %204 = call float @DotProduct(float* %202, float* %203)
  %205 = load float, float* %19, align 4
  %206 = fsub float %204, %205
  store float %206, float* %21, align 4
  %207 = load float, float* %21, align 4
  %208 = fpext float %207 to double
  %209 = fcmp ogt double %208, 1.000000e-01
  br i1 %209, label %210, label %214

210:                                              ; preds = %195
  %211 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 4
  br label %227

214:                                              ; preds = %195
  %215 = load float, float* %21, align 4
  %216 = fpext float %215 to double
  %217 = fcmp olt double %216, -1.000000e-01
  br i1 %217, label %218, label %222

218:                                              ; preds = %214
  %219 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 4
  br label %226

222:                                              ; preds = %214
  %223 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 4
  br label %226

226:                                              ; preds = %222, %218
  br label %227

227:                                              ; preds = %226, %210
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %16, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %16, align 4
  br label %189

231:                                              ; preds = %189
  %232 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 2
  store i32 0, i32* %232, align 4
  %233 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  store i32 0, i32* %233, align 4
  %234 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  store i32 0, i32* %234, align 4
  store i32 0, i32* %16, align 4
  br label %235

235:                                              ; preds = %274, %231
  %236 = load i32, i32* %16, align 4
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp slt i32 %236, %239
  br i1 %240, label %241, label %277

241:                                              ; preds = %235
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 1
  %244 = load float**, float*** %243, align 8
  %245 = load i32, i32* %16, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float*, float** %244, i64 %246
  %248 = load float*, float** %247, align 8
  %249 = load float*, float** %23, align 8
  %250 = call float @DotProduct(float* %248, float* %249)
  %251 = load float, float* %19, align 4
  %252 = fsub float %250, %251
  store float %252, float* %21, align 4
  %253 = load float, float* %21, align 4
  %254 = fpext float %253 to double
  %255 = fcmp ogt double %254, 1.000000e-01
  br i1 %255, label %256, label %260

256:                                              ; preds = %241
  %257 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %257, align 4
  br label %273

260:                                              ; preds = %241
  %261 = load float, float* %21, align 4
  %262 = fpext float %261 to double
  %263 = fcmp olt double %262, -1.000000e-01
  br i1 %263, label %264, label %268

264:                                              ; preds = %260
  %265 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %265, align 4
  br label %272

268:                                              ; preds = %260
  %269 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 2
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %269, align 4
  br label %272

272:                                              ; preds = %268, %264
  br label %273

273:                                              ; preds = %272, %256
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %16, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %16, align 4
  br label %235

277:                                              ; preds = %235
  %278 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %277
  %282 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %281
  %286 = call i32 @Log_Write(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %337

287:                                              ; preds = %281, %277
  %288 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %287
  %292 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %291
  %296 = call i32 @Log_Write(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %337

297:                                              ; preds = %291, %287
  %298 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %305, label %301

301:                                              ; preds = %297
  %302 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  %303 = load i32, i32* %302, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %313

305:                                              ; preds = %301, %297
  %306 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %307 = load i32, i32* %306, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %314, label %309

309:                                              ; preds = %305
  %310 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %314, label %313

313:                                              ; preds = %309, %301
  br label %337

314:                                              ; preds = %309, %305
  %315 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %322, label %318

318:                                              ; preds = %314
  %319 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  %320 = load i32, i32* %319, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %330

322:                                              ; preds = %318, %314
  %323 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  %324 = load i32, i32* %323, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %336, label %326

326:                                              ; preds = %322
  %327 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %328 = load i32, i32* %327, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %336, label %330

330:                                              ; preds = %326, %318
  %331 = load float*, float** %23, align 8
  %332 = load float*, float** %10, align 8
  %333 = call i32 @VectorCopy(float* %331, float* %332)
  %334 = load float, float* %19, align 4
  %335 = load float*, float** %11, align 8
  store float %334, float* %335, align 4
  store i32 1, i32* %6, align 4
  br label %345

336:                                              ; preds = %326, %322
  br label %337

337:                                              ; preds = %336, %313, %295, %285, %184, %151, %108
  %338 = load i32, i32* %14, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %14, align 4
  br label %76

340:                                              ; preds = %76
  br label %341

341:                                              ; preds = %340, %59
  %342 = load i32, i32* %12, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %12, align 4
  br label %27

344:                                              ; preds = %27
  store i32 0, i32* %6, align 4
  br label %345

345:                                              ; preds = %344, %330
  %346 = load i32, i32* %6, align 4
  ret i32 %346
}

declare dso_local i32 @VectorSubtract(float*, float*, float*) #1

declare dso_local double @VectorLength(float*) #1

declare dso_local i32 @CrossProduct(float*, float*, float*) #1

declare dso_local i32 @VectorNormalize(float*) #1

declare dso_local float @DotProduct(float*, float*) #1

declare dso_local i32 @VectorNegate(float*, float*) #1

declare dso_local i32 @Log_Write(i8*) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
