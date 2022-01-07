; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_mesh.c_SubdivideMeshQuads.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_mesh.c_SubdivideMeshQuads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@MAX_EXPANDED_AXIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"SubdivideMeshQuads: maxsize > MAX_EXPANDED_AXIS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @SubdivideMeshQuads(%struct.TYPE_12__* %0, float %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca %struct.TYPE_12__, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store float %1, float* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %26 = load i32, i32* @MAX_EXPANDED_AXIS, align 4
  %27 = zext i32 %26 to i64
  %28 = load i32, i32* @MAX_EXPANDED_AXIS, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %23, align 8
  %31 = mul nuw i64 %27, %29
  %32 = alloca %struct.TYPE_13__, i64 %31, align 16
  store i64 %27, i64* %24, align 8
  store i64 %29, i64* %25, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %80, %5
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %83

47:                                               ; preds = %41
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %76, %47
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %48
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = mul nsw i64 %56, %29
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %57
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i64 %60
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %65, %68
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i64 %72
  %74 = bitcast %struct.TYPE_13__* %61 to i8*
  %75 = bitcast %struct.TYPE_13__* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 4, i1 false)
  br label %76

76:                                               ; preds = %54
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %48

79:                                               ; preds = %48
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %41

83:                                               ; preds = %41
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @MAX_EXPANDED_AXIS, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 @Error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %83
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %90, %93
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, 1
  %99 = sdiv i32 %94, %98
  store i32 %99, i32* %16, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %100

100:                                              ; preds = %256, %89
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %104, 1
  %106 = icmp slt i32 %101, %105
  br i1 %106, label %107, label %263

107:                                              ; preds = %100
  store float 0.000000e+00, float* %20, align 4
  store i32 0, i32* %11, align 4
  br label %108

108:                                              ; preds = %143, %107
  %109 = load i32, i32* %11, align 4
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %113, label %146

113:                                              ; preds = %108
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = mul nsw i64 %115, %29
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %116
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = mul nsw i64 %125, %29
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %126
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %18, align 4
  %134 = call i32 @VectorSubtract(i32 %123, i32 %132, i32 %133)
  %135 = load i32, i32* %18, align 4
  %136 = call float @VectorLength(i32 %135)
  store float %136, float* %19, align 4
  %137 = load float, float* %19, align 4
  %138 = load float, float* %20, align 4
  %139 = fcmp ogt float %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %113
  %141 = load float, float* %19, align 4
  store float %141, float* %20, align 4
  br label %142

142:                                              ; preds = %140, %113
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %108

146:                                              ; preds = %108
  %147 = load float, float* %20, align 4
  %148 = load float, float* %7, align 4
  %149 = fdiv float %147, %148
  %150 = fptosi float %149 to i32
  store i32 %150, i32* %17, align 4
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %16, align 4
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %146
  %155 = load i32, i32* %16, align 4
  store i32 %155, i32* %17, align 4
  br label %156

156:                                              ; preds = %154, %146
  %157 = load i32, i32* %17, align 4
  %158 = add nsw i32 %157, 1
  %159 = load i32*, i32** %9, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 %158, i32* %162, align 4
  %163 = load i32, i32* %17, align 4
  %164 = icmp sle i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  br label %256

166:                                              ; preds = %156
  %167 = load i32, i32* %17, align 4
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, %167
  store i32 %170, i32* %168, align 8
  store i32 0, i32* %11, align 4
  br label %171

171:                                              ; preds = %252, %166
  %172 = load i32, i32* %11, align 4
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp slt i32 %172, %174
  br i1 %175, label %176, label %255

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sub nsw i32 %178, 1
  store i32 %179, i32* %13, align 4
  br label %180

180:                                              ; preds = %205, %176
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* %17, align 4
  %184 = add nsw i32 %182, %183
  %185 = icmp sgt i32 %181, %184
  br i1 %185, label %186, label %208

186:                                              ; preds = %180
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = mul nsw i64 %188, %29
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %189
  %191 = load i32, i32* %13, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i64 %192
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = mul nsw i64 %195, %29
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %196
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %17, align 4
  %200 = sub nsw i32 %198, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i64 %201
  %203 = bitcast %struct.TYPE_13__* %193 to i8*
  %204 = bitcast %struct.TYPE_13__* %202 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %203, i8* align 4 %204, i64 4, i1 false)
  br label %205

205:                                              ; preds = %186
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %13, align 4
  br label %180

208:                                              ; preds = %180
  store i32 1, i32* %13, align 4
  br label %209

209:                                              ; preds = %248, %208
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* %17, align 4
  %212 = icmp sle i32 %210, %211
  br i1 %212, label %213, label %251

213:                                              ; preds = %209
  %214 = load i32, i32* %13, align 4
  %215 = sitofp i32 %214 to float
  %216 = load i32, i32* %17, align 4
  %217 = add nsw i32 %216, 1
  %218 = sitofp i32 %217 to float
  %219 = fdiv float %215, %218
  store float %219, float* %21, align 4
  %220 = load i32, i32* %11, align 4
  %221 = sext i32 %220 to i64
  %222 = mul nsw i64 %221, %29
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %222
  %224 = load i32, i32* %12, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i64 %225
  %227 = load i32, i32* %11, align 4
  %228 = sext i32 %227 to i64
  %229 = mul nsw i64 %228, %29
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %229
  %231 = load i32, i32* %12, align 4
  %232 = load i32, i32* %17, align 4
  %233 = add nsw i32 %231, %232
  %234 = add nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i64 %235
  %237 = load float, float* %21, align 4
  %238 = load i32, i32* %11, align 4
  %239 = sext i32 %238 to i64
  %240 = mul nsw i64 %239, %29
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %240
  %242 = load i32, i32* %12, align 4
  %243 = load i32, i32* %13, align 4
  %244 = add nsw i32 %242, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i64 %245
  %247 = call i32 @LerpDrawVertAmount(%struct.TYPE_13__* %226, %struct.TYPE_13__* %236, float %237, %struct.TYPE_13__* %246)
  br label %248

248:                                              ; preds = %213
  %249 = load i32, i32* %13, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %13, align 4
  br label %209

251:                                              ; preds = %209
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %11, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %11, align 4
  br label %171

255:                                              ; preds = %171
  br label %256

256:                                              ; preds = %255, %165
  %257 = load i32, i32* %14, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %14, align 4
  %259 = load i32, i32* %17, align 4
  %260 = add nsw i32 %259, 1
  %261 = load i32, i32* %12, align 4
  %262 = add nsw i32 %261, %260
  store i32 %262, i32* %12, align 4
  br label %100

263:                                              ; preds = %100
  %264 = load i32, i32* %8, align 4
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = sub nsw i32 %264, %267
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = sub nsw i32 %271, 1
  %273 = sdiv i32 %268, %272
  store i32 %273, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %274

274:                                              ; preds = %430, %263
  %275 = load i32, i32* %15, align 4
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = sub nsw i32 %278, 1
  %280 = icmp slt i32 %275, %279
  br i1 %280, label %281, label %437

281:                                              ; preds = %274
  store float 0.000000e+00, float* %20, align 4
  store i32 0, i32* %11, align 4
  br label %282

282:                                              ; preds = %317, %281
  %283 = load i32, i32* %11, align 4
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = icmp slt i32 %283, %285
  br i1 %286, label %287, label %320

287:                                              ; preds = %282
  %288 = load i32, i32* %12, align 4
  %289 = add nsw i32 %288, 1
  %290 = sext i32 %289 to i64
  %291 = mul nsw i64 %290, %29
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %291
  %293 = load i32, i32* %11, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %12, align 4
  %299 = sext i32 %298 to i64
  %300 = mul nsw i64 %299, %29
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %300
  %302 = load i32, i32* %11, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %18, align 4
  %308 = call i32 @VectorSubtract(i32 %297, i32 %306, i32 %307)
  %309 = load i32, i32* %18, align 4
  %310 = call float @VectorLength(i32 %309)
  store float %310, float* %19, align 4
  %311 = load float, float* %19, align 4
  %312 = load float, float* %20, align 4
  %313 = fcmp ogt float %311, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %287
  %315 = load float, float* %19, align 4
  store float %315, float* %20, align 4
  br label %316

316:                                              ; preds = %314, %287
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %11, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %11, align 4
  br label %282

320:                                              ; preds = %282
  %321 = load float, float* %20, align 4
  %322 = load float, float* %7, align 4
  %323 = fdiv float %321, %322
  %324 = fptosi float %323 to i32
  store i32 %324, i32* %17, align 4
  %325 = load i32, i32* %17, align 4
  %326 = load i32, i32* %16, align 4
  %327 = icmp sgt i32 %325, %326
  br i1 %327, label %328, label %330

328:                                              ; preds = %320
  %329 = load i32, i32* %16, align 4
  store i32 %329, i32* %17, align 4
  br label %330

330:                                              ; preds = %328, %320
  %331 = load i32, i32* %17, align 4
  %332 = add nsw i32 %331, 1
  %333 = load i32*, i32** %10, align 8
  %334 = load i32, i32* %15, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  store i32 %332, i32* %336, align 4
  %337 = load i32, i32* %17, align 4
  %338 = icmp sle i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %330
  br label %430

340:                                              ; preds = %330
  %341 = load i32, i32* %17, align 4
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = add nsw i32 %343, %341
  store i32 %344, i32* %342, align 4
  store i32 0, i32* %11, align 4
  br label %345

345:                                              ; preds = %426, %340
  %346 = load i32, i32* %11, align 4
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = icmp slt i32 %346, %348
  br i1 %349, label %350, label %429

350:                                              ; preds = %345
  %351 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = sub nsw i32 %352, 1
  store i32 %353, i32* %13, align 4
  br label %354

354:                                              ; preds = %379, %350
  %355 = load i32, i32* %13, align 4
  %356 = load i32, i32* %12, align 4
  %357 = load i32, i32* %17, align 4
  %358 = add nsw i32 %356, %357
  %359 = icmp sgt i32 %355, %358
  br i1 %359, label %360, label %382

360:                                              ; preds = %354
  %361 = load i32, i32* %13, align 4
  %362 = sext i32 %361 to i64
  %363 = mul nsw i64 %362, %29
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %363
  %365 = load i32, i32* %11, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %364, i64 %366
  %368 = load i32, i32* %13, align 4
  %369 = load i32, i32* %17, align 4
  %370 = sub nsw i32 %368, %369
  %371 = sext i32 %370 to i64
  %372 = mul nsw i64 %371, %29
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %372
  %374 = load i32, i32* %11, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %373, i64 %375
  %377 = bitcast %struct.TYPE_13__* %367 to i8*
  %378 = bitcast %struct.TYPE_13__* %376 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %377, i8* align 4 %378, i64 4, i1 false)
  br label %379

379:                                              ; preds = %360
  %380 = load i32, i32* %13, align 4
  %381 = add nsw i32 %380, -1
  store i32 %381, i32* %13, align 4
  br label %354

382:                                              ; preds = %354
  store i32 1, i32* %13, align 4
  br label %383

383:                                              ; preds = %422, %382
  %384 = load i32, i32* %13, align 4
  %385 = load i32, i32* %17, align 4
  %386 = icmp sle i32 %384, %385
  br i1 %386, label %387, label %425

387:                                              ; preds = %383
  %388 = load i32, i32* %13, align 4
  %389 = sitofp i32 %388 to float
  %390 = load i32, i32* %17, align 4
  %391 = add nsw i32 %390, 1
  %392 = sitofp i32 %391 to float
  %393 = fdiv float %389, %392
  store float %393, float* %21, align 4
  %394 = load i32, i32* %12, align 4
  %395 = sext i32 %394 to i64
  %396 = mul nsw i64 %395, %29
  %397 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %396
  %398 = load i32, i32* %11, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %397, i64 %399
  %401 = load i32, i32* %12, align 4
  %402 = load i32, i32* %17, align 4
  %403 = add nsw i32 %401, %402
  %404 = add nsw i32 %403, 1
  %405 = sext i32 %404 to i64
  %406 = mul nsw i64 %405, %29
  %407 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %406
  %408 = load i32, i32* %11, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %407, i64 %409
  %411 = load float, float* %21, align 4
  %412 = load i32, i32* %12, align 4
  %413 = load i32, i32* %13, align 4
  %414 = add nsw i32 %412, %413
  %415 = sext i32 %414 to i64
  %416 = mul nsw i64 %415, %29
  %417 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %416
  %418 = load i32, i32* %11, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %417, i64 %419
  %421 = call i32 @LerpDrawVertAmount(%struct.TYPE_13__* %400, %struct.TYPE_13__* %410, float %411, %struct.TYPE_13__* %420)
  br label %422

422:                                              ; preds = %387
  %423 = load i32, i32* %13, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %13, align 4
  br label %383

425:                                              ; preds = %383
  br label %426

426:                                              ; preds = %425
  %427 = load i32, i32* %11, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %11, align 4
  br label %345

429:                                              ; preds = %345
  br label %430

430:                                              ; preds = %429, %339
  %431 = load i32, i32* %15, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %15, align 4
  %433 = load i32, i32* %17, align 4
  %434 = add nsw i32 %433, 1
  %435 = load i32, i32* %12, align 4
  %436 = add nsw i32 %435, %434
  store i32 %436, i32* %12, align 4
  br label %274

437:                                              ; preds = %274
  %438 = mul nsw i64 0, %29
  %439 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %438
  %440 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %439, i64 0
  %441 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  store %struct.TYPE_13__* %440, %struct.TYPE_13__** %441, align 8
  store i32 1, i32* %11, align 4
  br label %442

442:                                              ; preds = %466, %437
  %443 = load i32, i32* %11, align 4
  %444 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %445 = load i32, i32* %444, align 4
  %446 = icmp slt i32 %443, %445
  br i1 %446, label %447, label %469

447:                                              ; preds = %442
  %448 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %449 = load %struct.TYPE_13__*, %struct.TYPE_13__** %448, align 8
  %450 = load i32, i32* %11, align 4
  %451 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = mul nsw i32 %450, %452
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %449, i64 %454
  %456 = load i32, i32* %11, align 4
  %457 = sext i32 %456 to i64
  %458 = mul nsw i64 %457, %29
  %459 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = sext i32 %461 to i64
  %463 = mul i64 %462, 4
  %464 = trunc i64 %463 to i32
  %465 = call i32 @memmove(%struct.TYPE_13__* %455, %struct.TYPE_13__* %459, i32 %464)
  br label %466

466:                                              ; preds = %447
  %467 = load i32, i32* %11, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %11, align 4
  br label %442

469:                                              ; preds = %442
  %470 = call %struct.TYPE_12__* @CopyMesh(%struct.TYPE_12__* %22)
  %471 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %471)
  ret %struct.TYPE_12__* %470
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @Error(i8*) #3

declare dso_local i32 @VectorSubtract(i32, i32, i32) #3

declare dso_local float @VectorLength(i32) #3

declare dso_local i32 @LerpDrawVertAmount(%struct.TYPE_13__*, %struct.TYPE_13__*, float, %struct.TYPE_13__*) #3

declare dso_local i32 @memmove(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #3

declare dso_local %struct.TYPE_12__* @CopyMesh(%struct.TYPE_12__*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
