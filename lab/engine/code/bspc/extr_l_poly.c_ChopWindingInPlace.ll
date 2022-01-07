; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_poly.c_ChopWindingInPlace.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_poly.c_ChopWindingInPlace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32** }

@MAX_POINTS_ON_WINDING = common dso_local global i32 0, align 4
@SIDE_FRONT = common dso_local global i32 0, align 4
@SIDE_BACK = common dso_local global i32 0, align 4
@SIDE_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ClipWinding: points exceeded estimate\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"ClipWinding: MAX_POINTS_ON_WINDING\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ChopWindingInPlace(%struct.TYPE_5__** %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_5__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %23 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %24 = add nsw i32 %23, 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %29 = add nsw i32 %28, 4
  %30 = zext i32 %29 to i64
  %31 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %12, align 8
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %9, align 8
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 0, i32* %36, align 4
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %93, %4
  %38 = load i32, i32* %15, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %96

43:                                               ; preds = %37
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @DotProduct(i32* %50, i32* %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %14, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %27, i64 %58
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %43
  %64 = load i32, i32* @SIDE_FRONT, align 4
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %31, i64 %66
  store i32 %64, i32* %67, align 4
  br label %84

68:                                               ; preds = %43
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* @SIDE_BACK, align 4
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %31, i64 %76
  store i32 %74, i32* %77, align 4
  br label %83

78:                                               ; preds = %68
  %79 = load i32, i32* @SIDE_ON, align 4
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %31, i64 %81
  store i32 %79, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %73
  br label %84

84:                                               ; preds = %83, %63
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %31, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %84
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %15, align 4
  br label %37

96:                                               ; preds = %37
  %97 = getelementptr inbounds i32, i32* %31, i64 0
  %98 = load i32, i32* %97, align 16
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %31, i64 %100
  store i32 %98, i32* %101, align 4
  %102 = getelementptr inbounds i32, i32* %27, i64 0
  %103 = load i32, i32* %102, align 16
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %27, i64 %105
  store i32 %103, i32* %106, align 4
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %96
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %112 = call i32 @FreeWinding(%struct.TYPE_5__* %111)
  %113 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %113, align 8
  store i32 1, i32* %22, align 4
  br label %332

114:                                              ; preds = %96
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  store i32 1, i32* %22, align 4
  br label %332

119:                                              ; preds = %114
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 4
  store i32 %123, i32* %21, align 4
  %124 = load i32, i32* %21, align 4
  %125 = call %struct.TYPE_5__* @AllocWinding(i32 %124)
  store %struct.TYPE_5__* %125, %struct.TYPE_5__** %20, align 8
  store i32 0, i32* %15, align 4
  br label %126

126:                                              ; preds = %308, %119
  %127 = load i32, i32* %15, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %311

132:                                              ; preds = %126
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i32**, i32*** %134, align 8
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %135, i64 %137
  %139 = load i32*, i32** %138, align 8
  store i32* %139, i32** %17, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %31, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @SIDE_ON, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %162

146:                                              ; preds = %132
  %147 = load i32*, i32** %17, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i32**, i32*** %149, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %150, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @VectorCopy(i32* %147, i32* %156)
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 8
  br label %308

162:                                              ; preds = %132
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %31, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @SIDE_FRONT, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %185

169:                                              ; preds = %162
  %170 = load i32*, i32** %17, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i32**, i32*** %172, align 8
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32*, i32** %173, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @VectorCopy(i32* %170, i32* %179)
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %169, %162
  %186 = load i32, i32* %15, align 4
  %187 = add nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %31, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @SIDE_ON, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %204, label %193

193:                                              ; preds = %185
  %194 = load i32, i32* %15, align 4
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %31, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %15, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %31, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %198, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %193, %185
  br label %308

205:                                              ; preds = %193
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  %208 = load i32**, i32*** %207, align 8
  %209 = load i32, i32* %15, align 4
  %210 = add nsw i32 %209, 1
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = srem i32 %210, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32*, i32** %208, i64 %215
  %217 = load i32*, i32** %216, align 8
  store i32* %217, i32** %18, align 8
  %218 = load i32, i32* %15, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %27, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %15, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %27, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %15, align 4
  %227 = add nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %27, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = sub nsw i32 %225, %230
  %232 = sdiv i32 %221, %231
  store i32 %232, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %233

233:                                              ; preds = %289, %205
  %234 = load i32, i32* %16, align 4
  %235 = icmp slt i32 %234, 3
  br i1 %235, label %236, label %292

236:                                              ; preds = %233
  %237 = load i32*, i32** %6, align 8
  %238 = load i32, i32* %16, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %249

243:                                              ; preds = %236
  %244 = load i32, i32* %7, align 4
  %245 = load i32*, i32** %19, align 8
  %246 = load i32, i32* %16, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  store i32 %244, i32* %248, align 4
  br label %288

249:                                              ; preds = %236
  %250 = load i32*, i32** %6, align 8
  %251 = load i32, i32* %16, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %254, -1
  br i1 %255, label %256, label %263

256:                                              ; preds = %249
  %257 = load i32, i32* %7, align 4
  %258 = sub nsw i32 0, %257
  %259 = load i32*, i32** %19, align 8
  %260 = load i32, i32* %16, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  store i32 %258, i32* %262, align 4
  br label %287

263:                                              ; preds = %249
  %264 = load i32*, i32** %17, align 8
  %265 = load i32, i32* %16, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %14, align 4
  %270 = load i32*, i32** %18, align 8
  %271 = load i32, i32* %16, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load i32*, i32** %17, align 8
  %276 = load i32, i32* %16, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = sub nsw i32 %274, %279
  %281 = mul nsw i32 %269, %280
  %282 = add nsw i32 %268, %281
  %283 = load i32*, i32** %19, align 8
  %284 = load i32, i32* %16, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  store i32 %282, i32* %286, align 4
  br label %287

287:                                              ; preds = %263, %256
  br label %288

288:                                              ; preds = %287, %243
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %16, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %16, align 4
  br label %233

292:                                              ; preds = %233
  %293 = load i32*, i32** %19, align 8
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 1
  %296 = load i32**, i32*** %295, align 8
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32*, i32** %296, i64 %300
  %302 = load i32*, i32** %301, align 8
  %303 = call i32 @VectorCopy(i32* %293, i32* %302)
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %305, align 8
  br label %308

308:                                              ; preds = %292, %204, %146
  %309 = load i32, i32* %15, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %15, align 4
  br label %126

311:                                              ; preds = %126
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* %21, align 4
  %316 = icmp sgt i32 %314, %315
  br i1 %316, label %317, label %319

317:                                              ; preds = %311
  %318 = call i32 @Error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %319

319:                                              ; preds = %317, %311
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %324 = icmp sgt i32 %322, %323
  br i1 %324, label %325, label %327

325:                                              ; preds = %319
  %326 = call i32 @Error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %327

327:                                              ; preds = %325, %319
  %328 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %329 = call i32 @FreeWinding(%struct.TYPE_5__* %328)
  %330 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %331 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %330, %struct.TYPE_5__** %331, align 8
  store i32 0, i32* %22, align 4
  br label %332

332:                                              ; preds = %327, %118, %110
  %333 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %333)
  %334 = load i32, i32* %22, align 4
  switch i32 %334, label %336 [
    i32 0, label %335
    i32 1, label %335
  ]

335:                                              ; preds = %332, %332
  ret void

336:                                              ; preds = %332
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DotProduct(i32*, i32*) #2

declare dso_local i32 @FreeWinding(%struct.TYPE_5__*) #2

declare dso_local %struct.TYPE_5__* @AllocWinding(i32) #2

declare dso_local i32 @VectorCopy(i32*, i32*) #2

declare dso_local i32 @Error(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
