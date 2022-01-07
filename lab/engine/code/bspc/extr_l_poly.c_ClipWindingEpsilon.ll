; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_poly.c_ClipWindingEpsilon.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_poly.c_ClipWindingEpsilon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32** }

@MAX_POINTS_ON_WINDING = common dso_local global i32 0, align 4
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
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_8__*, align 8
  %24 = alloca %struct.TYPE_8__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_8__** %4, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__** %5, %struct.TYPE_8__*** %12, align 8
  %27 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %28 = add nsw i32 %27, 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %13, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %14, align 8
  %32 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %33 = add nsw i32 %32, 4
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %15, align 8
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 2
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  store i32 0, i32* %38, align 4
  store i32 0, i32* %18, align 4
  br label %39

39:                                               ; preds = %95, %6
  %40 = load i32, i32* %18, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %98

45:                                               ; preds = %39
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %18, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @DotProduct(i32* %52, i32* %53)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %17, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %18, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %31, i64 %60
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %45
  %66 = load i32, i32* @SIDE_FRONT, align 4
  %67 = load i32, i32* %18, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %35, i64 %68
  store i32 %66, i32* %69, align 4
  br label %86

70:                                               ; preds = %45
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32, i32* @SIDE_BACK, align 4
  %77 = load i32, i32* %18, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %35, i64 %78
  store i32 %76, i32* %79, align 4
  br label %85

80:                                               ; preds = %70
  %81 = load i32, i32* @SIDE_ON, align 4
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %35, i64 %83
  store i32 %81, i32* %84, align 4
  br label %85

85:                                               ; preds = %80, %75
  br label %86

86:                                               ; preds = %85, %65
  %87 = load i32, i32* %18, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %35, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %86
  %96 = load i32, i32* %18, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %18, align 4
  br label %39

98:                                               ; preds = %39
  %99 = getelementptr inbounds i32, i32* %35, i64 0
  %100 = load i32, i32* %99, align 16
  %101 = load i32, i32* %18, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %35, i64 %102
  store i32 %100, i32* %103, align 4
  %104 = getelementptr inbounds i32, i32* %31, i64 0
  %105 = load i32, i32* %104, align 16
  %106 = load i32, i32* %18, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %31, i64 %107
  store i32 %105, i32* %108, align 4
  %109 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %109, align 8
  %110 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %110, align 8
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %98
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %116 = call %struct.TYPE_8__* @CopyWinding(%struct.TYPE_8__* %115)
  %117 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  store %struct.TYPE_8__* %116, %struct.TYPE_8__** %117, align 8
  store i32 1, i32* %26, align 4
  br label %404

118:                                              ; preds = %98
  %119 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %124 = call %struct.TYPE_8__* @CopyWinding(%struct.TYPE_8__* %123)
  %125 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__* %124, %struct.TYPE_8__** %125, align 8
  store i32 1, i32* %26, align 4
  br label %404

126:                                              ; preds = %118
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 4
  store i32 %130, i32* %25, align 4
  %131 = load i32, i32* %25, align 4
  %132 = call %struct.TYPE_8__* @AllocWinding(i32 %131)
  store %struct.TYPE_8__* %132, %struct.TYPE_8__** %23, align 8
  %133 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__* %132, %struct.TYPE_8__** %133, align 8
  %134 = load i32, i32* %25, align 4
  %135 = call %struct.TYPE_8__* @AllocWinding(i32 %134)
  store %struct.TYPE_8__* %135, %struct.TYPE_8__** %24, align 8
  %136 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %12, align 8
  store %struct.TYPE_8__* %135, %struct.TYPE_8__** %136, align 8
  store i32 0, i32* %18, align 4
  br label %137

137:                                              ; preds = %372, %126
  %138 = load i32, i32* %18, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %375

143:                                              ; preds = %137
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32**, i32*** %145, align 8
  %147 = load i32, i32* %18, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  store i32* %150, i32** %20, align 8
  %151 = load i32, i32* %18, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %35, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @SIDE_ON, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %188

157:                                              ; preds = %143
  %158 = load i32*, i32** %20, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load i32**, i32*** %160, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %161, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @VectorCopy(i32* %158, i32* %167)
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 8
  %173 = load i32*, i32** %20, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i32**, i32*** %175, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32*, i32** %176, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = call i32 @VectorCopy(i32* %173, i32* %182)
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 8
  br label %372

188:                                              ; preds = %143
  %189 = load i32, i32* %18, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %35, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @SIDE_FRONT, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %211

195:                                              ; preds = %188
  %196 = load i32*, i32** %20, align 8
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = load i32**, i32*** %198, align 8
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %199, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @VectorCopy(i32* %196, i32* %205)
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %195, %188
  %212 = load i32, i32* %18, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %35, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @SIDE_BACK, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %234

218:                                              ; preds = %211
  %219 = load i32*, i32** %20, align 8
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  %222 = load i32**, i32*** %221, align 8
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32*, i32** %222, i64 %226
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @VectorCopy(i32* %219, i32* %228)
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 8
  br label %234

234:                                              ; preds = %218, %211
  %235 = load i32, i32* %18, align 4
  %236 = add nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %35, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @SIDE_ON, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %253, label %242

242:                                              ; preds = %234
  %243 = load i32, i32* %18, align 4
  %244 = add nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %35, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %18, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %35, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = icmp eq i32 %247, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %242, %234
  br label %372

254:                                              ; preds = %242
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 1
  %257 = load i32**, i32*** %256, align 8
  %258 = load i32, i32* %18, align 4
  %259 = add nsw i32 %258, 1
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = srem i32 %259, %262
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32*, i32** %257, i64 %264
  %266 = load i32*, i32** %265, align 8
  store i32* %266, i32** %21, align 8
  %267 = load i32, i32* %18, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %31, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %18, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %31, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %18, align 4
  %276 = add nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %31, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = sub nsw i32 %274, %279
  %281 = sdiv i32 %270, %280
  store i32 %281, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %282

282:                                              ; preds = %338, %254
  %283 = load i32, i32* %19, align 4
  %284 = icmp slt i32 %283, 3
  br i1 %284, label %285, label %341

285:                                              ; preds = %282
  %286 = load i32*, i32** %8, align 8
  %287 = load i32, i32* %19, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = icmp eq i32 %290, 1
  br i1 %291, label %292, label %298

292:                                              ; preds = %285
  %293 = load i32, i32* %9, align 4
  %294 = load i32*, i32** %22, align 8
  %295 = load i32, i32* %19, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  store i32 %293, i32* %297, align 4
  br label %337

298:                                              ; preds = %285
  %299 = load i32*, i32** %8, align 8
  %300 = load i32, i32* %19, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = icmp eq i32 %303, -1
  br i1 %304, label %305, label %312

305:                                              ; preds = %298
  %306 = load i32, i32* %9, align 4
  %307 = sub nsw i32 0, %306
  %308 = load i32*, i32** %22, align 8
  %309 = load i32, i32* %19, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  store i32 %307, i32* %311, align 4
  br label %336

312:                                              ; preds = %298
  %313 = load i32*, i32** %20, align 8
  %314 = load i32, i32* %19, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %17, align 4
  %319 = load i32*, i32** %21, align 8
  %320 = load i32, i32* %19, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = load i32*, i32** %20, align 8
  %325 = load i32, i32* %19, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = sub nsw i32 %323, %328
  %330 = mul nsw i32 %318, %329
  %331 = add nsw i32 %317, %330
  %332 = load i32*, i32** %22, align 8
  %333 = load i32, i32* %19, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  store i32 %331, i32* %335, align 4
  br label %336

336:                                              ; preds = %312, %305
  br label %337

337:                                              ; preds = %336, %292
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %19, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %19, align 4
  br label %282

341:                                              ; preds = %282
  %342 = load i32*, i32** %22, align 8
  %343 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 1
  %345 = load i32**, i32*** %344, align 8
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32*, i32** %345, i64 %349
  %351 = load i32*, i32** %350, align 8
  %352 = call i32 @VectorCopy(i32* %342, i32* %351)
  %353 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %354, align 8
  %357 = load i32*, i32** %22, align 8
  %358 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %359 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %358, i32 0, i32 1
  %360 = load i32**, i32*** %359, align 8
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32*, i32** %360, i64 %364
  %366 = load i32*, i32** %365, align 8
  %367 = call i32 @VectorCopy(i32* %357, i32* %366)
  %368 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %369, align 8
  br label %372

372:                                              ; preds = %341, %253, %157
  %373 = load i32, i32* %18, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %18, align 4
  br label %137

375:                                              ; preds = %137
  %376 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* %25, align 4
  %380 = icmp sgt i32 %378, %379
  br i1 %380, label %387, label %381

381:                                              ; preds = %375
  %382 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* %25, align 4
  %386 = icmp sgt i32 %384, %385
  br i1 %386, label %387, label %389

387:                                              ; preds = %381, %375
  %388 = call i32 @Error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %389

389:                                              ; preds = %387, %381
  %390 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %394 = icmp sgt i32 %392, %393
  br i1 %394, label %401, label %395

395:                                              ; preds = %389
  %396 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %400 = icmp sgt i32 %398, %399
  br i1 %400, label %401, label %403

401:                                              ; preds = %395, %389
  %402 = call i32 @Error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %403

403:                                              ; preds = %401, %395
  store i32 0, i32* %26, align 4
  br label %404

404:                                              ; preds = %403, %122, %114
  %405 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %405)
  %406 = load i32, i32* %26, align 4
  switch i32 %406, label %408 [
    i32 0, label %407
    i32 1, label %407
  ]

407:                                              ; preds = %404, %404
  ret void

408:                                              ; preds = %404
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
