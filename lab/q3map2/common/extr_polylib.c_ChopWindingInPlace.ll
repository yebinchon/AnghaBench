; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_polylib.c_ChopWindingInPlace.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_polylib.c_ChopWindingInPlace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32** }

@MAX_POINTS_ON_WINDING = common dso_local global i32 0, align 4
@ChopWindingInPlace.dot = internal global i32 0, align 4
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
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %23 = add nsw i32 %22, 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %27 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %28 = add nsw i32 %27, 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %12, align 8
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %9, align 8
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 0, i32* %35, align 4
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %92, %4
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %95

42:                                               ; preds = %36
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @DotProduct(i32* %49, i32* %50)
  store i32 %51, i32* @ChopWindingInPlace.dot, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @ChopWindingInPlace.dot, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* @ChopWindingInPlace.dot, align 4
  %55 = load i32, i32* @ChopWindingInPlace.dot, align 4
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %26, i64 %57
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @ChopWindingInPlace.dot, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %42
  %63 = load i32, i32* @SIDE_FRONT, align 4
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %30, i64 %65
  store i32 %63, i32* %66, align 4
  br label %83

67:                                               ; preds = %42
  %68 = load i32, i32* @ChopWindingInPlace.dot, align 4
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32, i32* @SIDE_BACK, align 4
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %30, i64 %75
  store i32 %73, i32* %76, align 4
  br label %82

77:                                               ; preds = %67
  %78 = load i32, i32* @SIDE_ON, align 4
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %30, i64 %80
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %72
  br label %83

83:                                               ; preds = %82, %62
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %30, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %83
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %14, align 4
  br label %36

95:                                               ; preds = %36
  %96 = getelementptr inbounds i32, i32* %30, i64 0
  %97 = load i32, i32* %96, align 16
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %30, i64 %99
  store i32 %97, i32* %100, align 4
  %101 = getelementptr inbounds i32, i32* %26, i64 0
  %102 = load i32, i32* %101, align 16
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %26, i64 %104
  store i32 %102, i32* %105, align 4
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %95
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %111 = call i32 @FreeWinding(%struct.TYPE_5__* %110)
  %112 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %112, align 8
  store i32 1, i32* %21, align 4
  br label %331

113:                                              ; preds = %95
  %114 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  store i32 1, i32* %21, align 4
  br label %331

118:                                              ; preds = %113
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 4
  store i32 %122, i32* %20, align 4
  %123 = load i32, i32* %20, align 4
  %124 = call %struct.TYPE_5__* @AllocWinding(i32 %123)
  store %struct.TYPE_5__* %124, %struct.TYPE_5__** %19, align 8
  store i32 0, i32* %14, align 4
  br label %125

125:                                              ; preds = %307, %118
  %126 = load i32, i32* %14, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %310

131:                                              ; preds = %125
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i32**, i32*** %133, align 8
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  %138 = load i32*, i32** %137, align 8
  store i32* %138, i32** %16, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %30, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @SIDE_ON, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %161

145:                                              ; preds = %131
  %146 = load i32*, i32** %16, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i32**, i32*** %148, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %149, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @VectorCopy(i32* %146, i32* %155)
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  br label %307

161:                                              ; preds = %131
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %30, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @SIDE_FRONT, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %184

168:                                              ; preds = %161
  %169 = load i32*, i32** %16, align 8
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = load i32**, i32*** %171, align 8
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32*, i32** %172, i64 %176
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @VectorCopy(i32* %169, i32* %178)
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 8
  br label %184

184:                                              ; preds = %168, %161
  %185 = load i32, i32* %14, align 4
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %30, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @SIDE_ON, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %203, label %192

192:                                              ; preds = %184
  %193 = load i32, i32* %14, align 4
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %30, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %14, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %30, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %197, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %192, %184
  br label %307

204:                                              ; preds = %192
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 1
  %207 = load i32**, i32*** %206, align 8
  %208 = load i32, i32* %14, align 4
  %209 = add nsw i32 %208, 1
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = srem i32 %209, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32*, i32** %207, i64 %214
  %216 = load i32*, i32** %215, align 8
  store i32* %216, i32** %17, align 8
  %217 = load i32, i32* %14, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %26, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %14, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %26, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %14, align 4
  %226 = add nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %26, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = sub nsw i32 %224, %229
  %231 = sdiv i32 %220, %230
  store i32 %231, i32* @ChopWindingInPlace.dot, align 4
  store i32 0, i32* %15, align 4
  br label %232

232:                                              ; preds = %288, %204
  %233 = load i32, i32* %15, align 4
  %234 = icmp slt i32 %233, 3
  br i1 %234, label %235, label %291

235:                                              ; preds = %232
  %236 = load i32*, i32** %6, align 8
  %237 = load i32, i32* %15, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 1
  br i1 %241, label %242, label %248

242:                                              ; preds = %235
  %243 = load i32, i32* %7, align 4
  %244 = load i32*, i32** %18, align 8
  %245 = load i32, i32* %15, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  store i32 %243, i32* %247, align 4
  br label %287

248:                                              ; preds = %235
  %249 = load i32*, i32** %6, align 8
  %250 = load i32, i32* %15, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, -1
  br i1 %254, label %255, label %262

255:                                              ; preds = %248
  %256 = load i32, i32* %7, align 4
  %257 = sub nsw i32 0, %256
  %258 = load i32*, i32** %18, align 8
  %259 = load i32, i32* %15, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  store i32 %257, i32* %261, align 4
  br label %286

262:                                              ; preds = %248
  %263 = load i32*, i32** %16, align 8
  %264 = load i32, i32* %15, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @ChopWindingInPlace.dot, align 4
  %269 = load i32*, i32** %17, align 8
  %270 = load i32, i32* %15, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load i32*, i32** %16, align 8
  %275 = load i32, i32* %15, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = sub nsw i32 %273, %278
  %280 = mul nsw i32 %268, %279
  %281 = add nsw i32 %267, %280
  %282 = load i32*, i32** %18, align 8
  %283 = load i32, i32* %15, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  store i32 %281, i32* %285, align 4
  br label %286

286:                                              ; preds = %262, %255
  br label %287

287:                                              ; preds = %286, %242
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %15, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %15, align 4
  br label %232

291:                                              ; preds = %232
  %292 = load i32*, i32** %18, align 8
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 1
  %295 = load i32**, i32*** %294, align 8
  %296 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32*, i32** %295, i64 %299
  %301 = load i32*, i32** %300, align 8
  %302 = call i32 @VectorCopy(i32* %292, i32* %301)
  %303 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %304, align 8
  br label %307

307:                                              ; preds = %291, %203, %145
  %308 = load i32, i32* %14, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %14, align 4
  br label %125

310:                                              ; preds = %125
  %311 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* %20, align 4
  %315 = icmp sgt i32 %313, %314
  br i1 %315, label %316, label %318

316:                                              ; preds = %310
  %317 = call i32 @Error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %318

318:                                              ; preds = %316, %310
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %323 = icmp sgt i32 %321, %322
  br i1 %323, label %324, label %326

324:                                              ; preds = %318
  %325 = call i32 @Error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %326

326:                                              ; preds = %324, %318
  %327 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %328 = call i32 @FreeWinding(%struct.TYPE_5__* %327)
  %329 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %330 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %329, %struct.TYPE_5__** %330, align 8
  store i32 0, i32* %21, align 4
  br label %331

331:                                              ; preds = %326, %117, %109
  %332 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %332)
  %333 = load i32, i32* %21, align 4
  switch i32 %333, label %335 [
    i32 0, label %334
    i32 1, label %334
  ]

334:                                              ; preds = %331, %331
  ret void

335:                                              ; preds = %331
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
