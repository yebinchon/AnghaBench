; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_polylib.c_ClipWindingEpsilon.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_polylib.c_ClipWindingEpsilon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32** }

@MAX_POINTS_ON_WINDING = common dso_local global i32 0, align 4
@ClipWindingEpsilon.dot = internal global i32 0, align 4
@SIDE_FRONT = common dso_local global i32 0, align 4
@SIDE_BACK = common dso_local global i32 0, align 4
@SIDE_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ClipWinding: points exceeded estimate\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"ClipWinding: MAX_POINTS_ON_WINDING\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClipWindingEpsilon(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32 %3, %struct.TYPE_8__** %4, %struct.TYPE_8__** %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__**, align 8
  %12 = alloca %struct.TYPE_8__**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [3 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_8__*, align 8
  %23 = alloca %struct.TYPE_8__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_8__** %4, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__** %5, %struct.TYPE_8__*** %12, align 8
  %26 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %27 = add nsw i32 %26, 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %13, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %14, align 8
  %31 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %32 = add nsw i32 %31, 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %15, align 8
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 2
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  store i32 0, i32* %37, align 4
  store i32 0, i32* %17, align 4
  br label %38

38:                                               ; preds = %94, %6
  %39 = load i32, i32* %17, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %97

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @DotProduct(i32* %51, i32* %52)
  store i32 %53, i32* @ClipWindingEpsilon.dot, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @ClipWindingEpsilon.dot, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* @ClipWindingEpsilon.dot, align 4
  %57 = load i32, i32* @ClipWindingEpsilon.dot, align 4
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %30, i64 %59
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @ClipWindingEpsilon.dot, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %44
  %65 = load i32, i32* @SIDE_FRONT, align 4
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %34, i64 %67
  store i32 %65, i32* %68, align 4
  br label %85

69:                                               ; preds = %44
  %70 = load i32, i32* @ClipWindingEpsilon.dot, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32, i32* @SIDE_BACK, align 4
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %34, i64 %77
  store i32 %75, i32* %78, align 4
  br label %84

79:                                               ; preds = %69
  %80 = load i32, i32* @SIDE_ON, align 4
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %34, i64 %82
  store i32 %80, i32* %83, align 4
  br label %84

84:                                               ; preds = %79, %74
  br label %85

85:                                               ; preds = %84, %64
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %34, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %17, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %17, align 4
  br label %38

97:                                               ; preds = %38
  %98 = getelementptr inbounds i32, i32* %34, i64 0
  %99 = load i32, i32* %98, align 16
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %34, i64 %101
  store i32 %99, i32* %102, align 4
  %103 = getelementptr inbounds i32, i32* %30, i64 0
  %104 = load i32, i32* %103, align 16
  %105 = load i32, i32* %17, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %30, i64 %106
  store i32 %104, i32* %107, align 4
  %108 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %108, align 8
  %109 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %109, align 8
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %97
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %115 = call %struct.TYPE_8__* @CopyWinding(%struct.TYPE_8__* %114)
  %116 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  store %struct.TYPE_8__* %115, %struct.TYPE_8__** %116, align 8
  store i32 1, i32* %25, align 4
  br label %403

117:                                              ; preds = %97
  %118 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = call %struct.TYPE_8__* @CopyWinding(%struct.TYPE_8__* %122)
  %124 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__* %123, %struct.TYPE_8__** %124, align 8
  store i32 1, i32* %25, align 4
  br label %403

125:                                              ; preds = %117
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 4
  store i32 %129, i32* %24, align 4
  %130 = load i32, i32* %24, align 4
  %131 = call %struct.TYPE_8__* @AllocWinding(i32 %130)
  store %struct.TYPE_8__* %131, %struct.TYPE_8__** %22, align 8
  %132 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__* %131, %struct.TYPE_8__** %132, align 8
  %133 = load i32, i32* %24, align 4
  %134 = call %struct.TYPE_8__* @AllocWinding(i32 %133)
  store %struct.TYPE_8__* %134, %struct.TYPE_8__** %23, align 8
  %135 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  store %struct.TYPE_8__* %134, %struct.TYPE_8__** %135, align 8
  store i32 0, i32* %17, align 4
  br label %136

136:                                              ; preds = %371, %125
  %137 = load i32, i32* %17, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %374

142:                                              ; preds = %136
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i32**, i32*** %144, align 8
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  %149 = load i32*, i32** %148, align 8
  store i32* %149, i32** %19, align 8
  %150 = load i32, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %34, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @SIDE_ON, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %187

156:                                              ; preds = %142
  %157 = load i32*, i32** %19, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = load i32**, i32*** %159, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32*, i32** %160, i64 %164
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @VectorCopy(i32* %157, i32* %166)
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 8
  %172 = load i32*, i32** %19, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load i32**, i32*** %174, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32*, i32** %175, i64 %179
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @VectorCopy(i32* %172, i32* %181)
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 8
  br label %371

187:                                              ; preds = %142
  %188 = load i32, i32* %17, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %34, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @SIDE_FRONT, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %210

194:                                              ; preds = %187
  %195 = load i32*, i32** %19, align 8
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = load i32**, i32*** %197, align 8
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32*, i32** %198, i64 %202
  %204 = load i32*, i32** %203, align 8
  %205 = call i32 @VectorCopy(i32* %195, i32* %204)
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 8
  br label %210

210:                                              ; preds = %194, %187
  %211 = load i32, i32* %17, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %34, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @SIDE_BACK, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %233

217:                                              ; preds = %210
  %218 = load i32*, i32** %19, align 8
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  %221 = load i32**, i32*** %220, align 8
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32*, i32** %221, i64 %225
  %227 = load i32*, i32** %226, align 8
  %228 = call i32 @VectorCopy(i32* %218, i32* %227)
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %230, align 8
  br label %233

233:                                              ; preds = %217, %210
  %234 = load i32, i32* %17, align 4
  %235 = add nsw i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %34, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @SIDE_ON, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %252, label %241

241:                                              ; preds = %233
  %242 = load i32, i32* %17, align 4
  %243 = add nsw i32 %242, 1
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %34, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %17, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %34, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = icmp eq i32 %246, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %241, %233
  br label %371

253:                                              ; preds = %241
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 1
  %256 = load i32**, i32*** %255, align 8
  %257 = load i32, i32* %17, align 4
  %258 = add nsw i32 %257, 1
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = srem i32 %258, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32*, i32** %256, i64 %263
  %265 = load i32*, i32** %264, align 8
  store i32* %265, i32** %20, align 8
  %266 = load i32, i32* %17, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %30, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %17, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %30, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %17, align 4
  %275 = add nsw i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %30, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = sub nsw i32 %273, %278
  %280 = sdiv i32 %269, %279
  store i32 %280, i32* @ClipWindingEpsilon.dot, align 4
  store i32 0, i32* %18, align 4
  br label %281

281:                                              ; preds = %337, %253
  %282 = load i32, i32* %18, align 4
  %283 = icmp slt i32 %282, 3
  br i1 %283, label %284, label %340

284:                                              ; preds = %281
  %285 = load i32*, i32** %8, align 8
  %286 = load i32, i32* %18, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = icmp eq i32 %289, 1
  br i1 %290, label %291, label %297

291:                                              ; preds = %284
  %292 = load i32, i32* %9, align 4
  %293 = load i32*, i32** %21, align 8
  %294 = load i32, i32* %18, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  store i32 %292, i32* %296, align 4
  br label %336

297:                                              ; preds = %284
  %298 = load i32*, i32** %8, align 8
  %299 = load i32, i32* %18, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = icmp eq i32 %302, -1
  br i1 %303, label %304, label %311

304:                                              ; preds = %297
  %305 = load i32, i32* %9, align 4
  %306 = sub nsw i32 0, %305
  %307 = load i32*, i32** %21, align 8
  %308 = load i32, i32* %18, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  store i32 %306, i32* %310, align 4
  br label %335

311:                                              ; preds = %297
  %312 = load i32*, i32** %19, align 8
  %313 = load i32, i32* %18, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @ClipWindingEpsilon.dot, align 4
  %318 = load i32*, i32** %20, align 8
  %319 = load i32, i32* %18, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = load i32*, i32** %19, align 8
  %324 = load i32, i32* %18, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = sub nsw i32 %322, %327
  %329 = mul nsw i32 %317, %328
  %330 = add nsw i32 %316, %329
  %331 = load i32*, i32** %21, align 8
  %332 = load i32, i32* %18, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  store i32 %330, i32* %334, align 4
  br label %335

335:                                              ; preds = %311, %304
  br label %336

336:                                              ; preds = %335, %291
  br label %337

337:                                              ; preds = %336
  %338 = load i32, i32* %18, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %18, align 4
  br label %281

340:                                              ; preds = %281
  %341 = load i32*, i32** %21, align 8
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 1
  %344 = load i32**, i32*** %343, align 8
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32*, i32** %344, i64 %348
  %350 = load i32*, i32** %349, align 8
  %351 = call i32 @VectorCopy(i32* %341, i32* %350)
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %353, align 8
  %356 = load i32*, i32** %21, align 8
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 1
  %359 = load i32**, i32*** %358, align 8
  %360 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32*, i32** %359, i64 %363
  %365 = load i32*, i32** %364, align 8
  %366 = call i32 @VectorCopy(i32* %356, i32* %365)
  %367 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %368, align 8
  br label %371

371:                                              ; preds = %340, %252, %156
  %372 = load i32, i32* %17, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %17, align 4
  br label %136

374:                                              ; preds = %136
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* %24, align 4
  %379 = icmp sgt i32 %377, %378
  br i1 %379, label %386, label %380

380:                                              ; preds = %374
  %381 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* %24, align 4
  %385 = icmp sgt i32 %383, %384
  br i1 %385, label %386, label %388

386:                                              ; preds = %380, %374
  %387 = call i32 @Error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %388

388:                                              ; preds = %386, %380
  %389 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %390 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %393 = icmp sgt i32 %391, %392
  br i1 %393, label %400, label %394

394:                                              ; preds = %388
  %395 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %399 = icmp sgt i32 %397, %398
  br i1 %399, label %400, label %402

400:                                              ; preds = %394, %388
  %401 = call i32 @Error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %402

402:                                              ; preds = %400, %394
  store i32 0, i32* %25, align 4
  br label %403

403:                                              ; preds = %402, %121, %113
  %404 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %404)
  %405 = load i32, i32* %25, align 4
  switch i32 %405, label %407 [
    i32 0, label %406
    i32 1, label %406
  ]

406:                                              ; preds = %403, %403
  ret void

407:                                              ; preds = %403
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DotProduct(i32*, i32*) #2

declare dso_local %struct.TYPE_8__* @CopyWinding(%struct.TYPE_8__*) #2

declare dso_local %struct.TYPE_8__* @AllocWinding(i32) #2

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
