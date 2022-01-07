; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_bounce.c_RadClipWindingEpsilon.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_bounce.c_RadClipWindingEpsilon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, i32**, i32*, i32*, i32**, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32*, i32* }

@SIDE_FRONT = common dso_local global i32 0, align 4
@SIDE_BACK = common dso_local global i32 0, align 4
@SIDE_ON = common dso_local global i32 0, align 4
@MAX_LIGHTMAPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"RadClipWindingEpsilon: points exceeded estimate\00", align 1
@MAX_POINTS_ON_WINDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"RadClipWindingEpsilon: MAX_POINTS_ON_WINDING\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_11__*)* @RadClipWindingEpsilon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RadClipWindingEpsilon(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_10__* %4, %struct.TYPE_10__* %5, %struct.TYPE_11__* %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [3 x i32], align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_10__*, align 8
  %23 = alloca %struct.TYPE_10__*, align 8
  %24 = alloca %struct.TYPE_10__, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %14, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %15, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %16, align 8
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  store i32 0, i32* %34, align 4
  store i32 0, i32* %19, align 4
  br label %35

35:                                               ; preds = %97, %7
  %36 = load i32, i32* %19, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %100

41:                                               ; preds = %35
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 6
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = load i32, i32* %19, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @DotProduct(i32* %49, i32 %50)
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %18, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i32*, i32** %15, align 8
  %57 = load i32, i32* %19, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %41
  %64 = load i32, i32* @SIDE_FRONT, align 4
  %65 = load i32*, i32** %16, align 8
  %66 = load i32, i32* %19, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  br label %87

69:                                               ; preds = %41
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* @SIDE_BACK, align 4
  %76 = load i32*, i32** %16, align 8
  %77 = load i32, i32* %19, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %75, i32* %79, align 4
  br label %86

80:                                               ; preds = %69
  %81 = load i32, i32* @SIDE_ON, align 4
  %82 = load i32*, i32** %16, align 8
  %83 = load i32, i32* %19, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %80, %74
  br label %87

87:                                               ; preds = %86, %63
  %88 = load i32*, i32** %16, align 8
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %87
  %98 = load i32, i32* %19, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %19, align 4
  br label %35

100:                                              ; preds = %35
  %101 = load i32*, i32** %16, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %16, align 8
  %105 = load i32, i32* %19, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  %108 = load i32*, i32** %15, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %15, align 8
  %112 = load i32, i32* %19, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %110, i32* %114, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %100
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %125 = call i32 @memcpy(%struct.TYPE_10__* %123, %struct.TYPE_10__* %124, i32 56)
  br label %539

126:                                              ; preds = %100
  %127 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %133 = call i32 @memcpy(%struct.TYPE_10__* %131, %struct.TYPE_10__* %132, i32 56)
  br label %539

134:                                              ; preds = %126
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 4
  store i32 %138, i32* %25, align 4
  store i32 0, i32* %19, align 4
  br label %139

139:                                              ; preds = %520, %134
  %140 = load i32, i32* %19, align 4
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %523

145:                                              ; preds = %139
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 6
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = load i32, i32* %19, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i64 %150
  store %struct.TYPE_10__* %151, %struct.TYPE_10__** %22, align 8
  %152 = load i32*, i32** %16, align 8
  %153 = load i32, i32* %19, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @SIDE_ON, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %182

159:                                              ; preds = %145
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 6
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i64 %167
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %170 = call i32 @memcpy(%struct.TYPE_10__* %168, %struct.TYPE_10__* %169, i32 56)
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 6
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i64 %178
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %181 = call i32 @memcpy(%struct.TYPE_10__* %179, %struct.TYPE_10__* %180, i32 56)
  br label %520

182:                                              ; preds = %145
  %183 = load i32*, i32** %16, align 8
  %184 = load i32, i32* %19, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @SIDE_FRONT, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %202

190:                                              ; preds = %182
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 6
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 8
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i64 %198
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %201 = call i32 @memcpy(%struct.TYPE_10__* %199, %struct.TYPE_10__* %200, i32 56)
  br label %202

202:                                              ; preds = %190, %182
  %203 = load i32*, i32** %16, align 8
  %204 = load i32, i32* %19, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @SIDE_BACK, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %222

210:                                              ; preds = %202
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 6
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %212, align 8
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i64 %218
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %221 = call i32 @memcpy(%struct.TYPE_10__* %219, %struct.TYPE_10__* %220, i32 56)
  br label %222

222:                                              ; preds = %210, %202
  %223 = load i32*, i32** %16, align 8
  %224 = load i32, i32* %19, align 4
  %225 = add nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @SIDE_ON, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %244, label %231

231:                                              ; preds = %222
  %232 = load i32*, i32** %16, align 8
  %233 = load i32, i32* %19, align 4
  %234 = add nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load i32*, i32** %16, align 8
  %239 = load i32, i32* %19, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %237, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %231, %222
  br label %520

245:                                              ; preds = %231
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 6
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %247, align 8
  %249 = load i32, i32* %19, align 4
  %250 = add nsw i32 %249, 1
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = srem i32 %250, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i64 %255
  store %struct.TYPE_10__* %256, %struct.TYPE_10__** %23, align 8
  %257 = load i32*, i32** %15, align 8
  %258 = load i32, i32* %19, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i32*, i32** %15, align 8
  %263 = load i32, i32* %19, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = load i32*, i32** %15, align 8
  %268 = load i32, i32* %19, align 4
  %269 = add nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = sub nsw i32 %266, %272
  %274 = sdiv i32 %261, %273
  store i32 %274, i32* %18, align 4
  store i32 0, i32* %20, align 4
  br label %275

275:                                              ; preds = %491, %245
  %276 = load i32, i32* %20, align 4
  %277 = icmp slt i32 %276, 4
  br i1 %277, label %278, label %494

278:                                              ; preds = %275
  %279 = load i32, i32* %20, align 4
  %280 = icmp slt i32 %279, 4
  br i1 %280, label %281, label %337

281:                                              ; preds = %278
  store i32 0, i32* %21, align 4
  br label %282

282:                                              ; preds = %333, %281
  %283 = load i32, i32* %21, align 4
  %284 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %336

286:                                              ; preds = %282
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 2
  %289 = load i32**, i32*** %288, align 8
  %290 = load i32, i32* %21, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32*, i32** %289, i64 %291
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %20, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %18, align 4
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 2
  %301 = load i32**, i32*** %300, align 8
  %302 = load i32, i32* %21, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32*, i32** %301, i64 %303
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %20, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 2
  %312 = load i32**, i32*** %311, align 8
  %313 = load i32, i32* %21, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32*, i32** %312, i64 %314
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %20, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = sub nsw i32 %309, %320
  %322 = mul nsw i32 %298, %321
  %323 = add nsw i32 %297, %322
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %325 = load i32**, i32*** %324, align 8
  %326 = load i32, i32* %21, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32*, i32** %325, i64 %327
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %20, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  store i32 %323, i32* %332, align 4
  br label %333

333:                                              ; preds = %286
  %334 = load i32, i32* %21, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %21, align 4
  br label %282

336:                                              ; preds = %282
  br label %337

337:                                              ; preds = %336, %278
  %338 = load i32, i32* %20, align 4
  %339 = icmp slt i32 %338, 3
  br i1 %339, label %340, label %401

340:                                              ; preds = %337
  %341 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 1
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %20, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* %18, align 4
  %349 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 1
  %351 = load i32*, i32** %350, align 8
  %352 = load i32, i32* %20, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %356, i32 0, i32 1
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* %20, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = sub nsw i32 %355, %362
  %364 = mul nsw i32 %348, %363
  %365 = add nsw i32 %347, %364
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %367 = load i32*, i32** %366, align 8
  %368 = load i32, i32* %20, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %367, i64 %369
  store i32 %365, i32* %370, align 4
  %371 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 3
  %373 = load i32*, i32** %372, align 8
  %374 = load i32, i32* %20, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* %18, align 4
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 3
  %381 = load i32*, i32** %380, align 8
  %382 = load i32, i32* %20, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 3
  %388 = load i32*, i32** %387, align 8
  %389 = load i32, i32* %20, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %388, i64 %390
  %392 = load i32, i32* %391, align 4
  %393 = sub nsw i32 %385, %392
  %394 = mul nsw i32 %378, %393
  %395 = add nsw i32 %377, %394
  %396 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* %20, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  store i32 %395, i32* %400, align 4
  br label %401

401:                                              ; preds = %340, %337
  %402 = load i32, i32* %20, align 4
  %403 = icmp slt i32 %402, 2
  br i1 %403, label %404, label %490

404:                                              ; preds = %401
  %405 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 4
  %407 = load i32*, i32** %406, align 8
  %408 = load i32, i32* %20, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = load i32, i32* %18, align 4
  %413 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %414 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %413, i32 0, i32 4
  %415 = load i32*, i32** %414, align 8
  %416 = load i32, i32* %20, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %415, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %421 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %420, i32 0, i32 4
  %422 = load i32*, i32** %421, align 8
  %423 = load i32, i32* %20, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %422, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = sub nsw i32 %419, %426
  %428 = mul nsw i32 %412, %427
  %429 = add nsw i32 %411, %428
  %430 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 4
  %431 = load i32*, i32** %430, align 8
  %432 = load i32, i32* %20, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %431, i64 %433
  store i32 %429, i32* %434, align 4
  store i32 0, i32* %21, align 4
  br label %435

435:                                              ; preds = %486, %404
  %436 = load i32, i32* %21, align 4
  %437 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %438 = icmp slt i32 %436, %437
  br i1 %438, label %439, label %489

439:                                              ; preds = %435
  %440 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %441 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %440, i32 0, i32 5
  %442 = load i32**, i32*** %441, align 8
  %443 = load i32, i32* %21, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32*, i32** %442, i64 %444
  %446 = load i32*, i32** %445, align 8
  %447 = load i32, i32* %20, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i32, i32* %446, i64 %448
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* %18, align 4
  %452 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %453 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %452, i32 0, i32 5
  %454 = load i32**, i32*** %453, align 8
  %455 = load i32, i32* %21, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32*, i32** %454, i64 %456
  %458 = load i32*, i32** %457, align 8
  %459 = load i32, i32* %20, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %464 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %463, i32 0, i32 5
  %465 = load i32**, i32*** %464, align 8
  %466 = load i32, i32* %21, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32*, i32** %465, i64 %467
  %469 = load i32*, i32** %468, align 8
  %470 = load i32, i32* %20, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %469, i64 %471
  %473 = load i32, i32* %472, align 4
  %474 = sub nsw i32 %462, %473
  %475 = mul nsw i32 %451, %474
  %476 = add nsw i32 %450, %475
  %477 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 5
  %478 = load i32**, i32*** %477, align 8
  %479 = load i32, i32* %21, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32*, i32** %478, i64 %480
  %482 = load i32*, i32** %481, align 8
  %483 = load i32, i32* %20, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %482, i64 %484
  store i32 %476, i32* %485, align 4
  br label %486

486:                                              ; preds = %439
  %487 = load i32, i32* %21, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %21, align 4
  br label %435

489:                                              ; preds = %435
  br label %490

490:                                              ; preds = %489, %401
  br label %491

491:                                              ; preds = %490
  %492 = load i32, i32* %20, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %20, align 4
  br label %275

494:                                              ; preds = %275
  %495 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  %496 = load i32*, i32** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  %498 = load i32*, i32** %497, align 8
  %499 = call i32 @VectorNormalize(i32* %496, i32* %498)
  %500 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %501 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %500, i32 0, i32 6
  %502 = load %struct.TYPE_10__*, %struct.TYPE_10__** %501, align 8
  %503 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %504 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 8
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %504, align 8
  %507 = sext i32 %505 to i64
  %508 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %502, i64 %507
  %509 = call i32 @memcpy(%struct.TYPE_10__* %508, %struct.TYPE_10__* %24, i32 56)
  %510 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %511 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %510, i32 0, i32 6
  %512 = load %struct.TYPE_10__*, %struct.TYPE_10__** %511, align 8
  %513 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %514 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 8
  %516 = add nsw i32 %515, 1
  store i32 %516, i32* %514, align 8
  %517 = sext i32 %515 to i64
  %518 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %512, i64 %517
  %519 = call i32 @memcpy(%struct.TYPE_10__* %518, %struct.TYPE_10__* %24, i32 56)
  br label %520

520:                                              ; preds = %494, %244, %159
  %521 = load i32, i32* %19, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %19, align 4
  br label %139

523:                                              ; preds = %139
  %524 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %525 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = load i32, i32* %25, align 4
  %528 = icmp sgt i32 %526, %527
  br i1 %528, label %529, label %531

529:                                              ; preds = %523
  %530 = call i32 @Error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %531

531:                                              ; preds = %529, %523
  %532 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %533 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 8
  %535 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %536 = icmp sgt i32 %534, %535
  br i1 %536, label %537, label %539

537:                                              ; preds = %531
  %538 = call i32 @Error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %539

539:                                              ; preds = %122, %130, %537, %531
  ret void
}

declare dso_local i32 @DotProduct(i32*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @VectorNormalize(i32*, i32*) #1

declare dso_local i32 @Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
