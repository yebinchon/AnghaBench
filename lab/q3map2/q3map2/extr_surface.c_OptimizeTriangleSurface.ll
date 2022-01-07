; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_OptimizeTriangleSurface.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_OptimizeTriangleSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@VERTEX_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @OptimizeTriangleSurface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OptimizeTriangleSurface(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %15 = load i32, i32* @VERTEX_CACHE_SIZE, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @VERTEX_CACHE_SIZE, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %1
  store i32 1, i32* %14, align 4
  br label %375

33:                                               ; preds = %25
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32* @safe_malloc(i32 %39)
  store i32* %40, i32** %13, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = call i32 @memcpy(i32* %41, i32* %44, i32 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %73, %33
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @VERTEX_CACHE_SIZE, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br label %62

62:                                               ; preds = %56, %52
  %63 = phi i1 [ false, %52 ], [ %61, %56 ]
  br i1 %63, label %64, label %76

64:                                               ; preds = %62
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %19, i64 %71
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %52

76:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %369, %76
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %372

83:                                               ; preds = %77
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %162, %83
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %165

90:                                               ; preds = %84
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, -1
  br i1 %96, label %97, label %161

97:                                               ; preds = %90
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %100, %97
  store i32 0, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %146, %102
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @VERTEX_CACHE_SIZE, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %149

107:                                              ; preds = %103
  %108 = load i32*, i32** %13, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %19, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %112, %116
  br i1 %117, label %142, label %118

118:                                              ; preds = %107
  %119 = load i32*, i32** %13, align 8
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %19, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %124, %128
  br i1 %129, label %142, label %130

130:                                              ; preds = %118
  %131 = load i32*, i32** %13, align 8
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, 2
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %19, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %136, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %130, %118, %107
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %142, %130
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %5, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %5, align 4
  br label %103

149:                                              ; preds = %103
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp sgt i32 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %4, align 4
  store i32 %155, i32* %8, align 4
  br label %156

156:                                              ; preds = %153, %149
  %157 = load i32, i32* %10, align 4
  %158 = icmp eq i32 %157, 3
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  br label %165

160:                                              ; preds = %156
  br label %161

161:                                              ; preds = %160, %90
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %163, 3
  store i32 %164, i32* %4, align 4
  br label %84

165:                                              ; preds = %159, %84
  %166 = load i32, i32* %8, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = load i32, i32* %7, align 4
  store i32 %169, i32* %8, align 4
  br label %170

170:                                              ; preds = %168, %165
  %171 = load i32, i32* %8, align 4
  %172 = icmp sge i32 %171, 0
  br i1 %172, label %173, label %368

173:                                              ; preds = %170
  store i32 0, i32* %4, align 4
  br label %174

174:                                              ; preds = %231, %173
  %175 = load i32, i32* %4, align 4
  %176 = icmp slt i32 %175, 3
  br i1 %176, label %177, label %234

177:                                              ; preds = %174
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %197, %177
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @VERTEX_CACHE_SIZE, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %200

182:                                              ; preds = %178
  %183 = load i32*, i32** %13, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %4, align 4
  %186 = add nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %183, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %19, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %189, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %182
  br label %200

196:                                              ; preds = %182
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %5, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %5, align 4
  br label %178

200:                                              ; preds = %195, %178
  %201 = load i32, i32* %5, align 4
  %202 = load i32, i32* @VERTEX_CACHE_SIZE, align 4
  %203 = icmp sge i32 %201, %202
  br i1 %203, label %204, label %230

204:                                              ; preds = %200
  %205 = load i32, i32* @VERTEX_CACHE_SIZE, align 4
  store i32 %205, i32* %5, align 4
  br label %206

206:                                              ; preds = %218, %204
  %207 = load i32, i32* %5, align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %206
  %210 = load i32, i32* %5, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %19, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %19, i64 %216
  store i32 %214, i32* %217, align 4
  br label %218

218:                                              ; preds = %209
  %219 = load i32, i32* %5, align 4
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* %5, align 4
  br label %206

221:                                              ; preds = %206
  %222 = load i32*, i32** %13, align 8
  %223 = load i32, i32* %8, align 4
  %224 = load i32, i32* %4, align 4
  %225 = add nsw i32 %223, %224
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %222, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %228, i32* %229, align 16
  br label %230

230:                                              ; preds = %221, %200
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %4, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %4, align 4
  br label %174

234:                                              ; preds = %174
  %235 = load i32*, i32** %13, align 8
  %236 = load i32, i32* %8, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %3, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  store i32 %239, i32* %245, align 4
  %246 = load i32*, i32** %13, align 8
  %247 = load i32, i32* %8, align 4
  %248 = add nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %246, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %3, align 4
  %256 = add nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %254, i64 %257
  store i32 %251, i32* %258, align 4
  %259 = load i32*, i32** %13, align 8
  %260 = load i32, i32* %8, align 4
  %261 = add nsw i32 %260, 2
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %259, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %3, align 4
  %269 = add nsw i32 %268, 2
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  store i32 %264, i32* %271, align 4
  %272 = load i32*, i32** %13, align 8
  %273 = load i32, i32* %8, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  store i32 -1, i32* %275, align 4
  %276 = load i32*, i32** %13, align 8
  %277 = load i32, i32* %8, align 4
  %278 = add nsw i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %276, i64 %279
  store i32 -1, i32* %280, align 4
  %281 = load i32*, i32** %13, align 8
  %282 = load i32, i32* %8, align 4
  %283 = add nsw i32 %282, 2
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %281, i64 %284
  store i32 -1, i32* %285, align 4
  br label %286

286:                                              ; preds = %322, %234
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %3, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 1
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %3, align 4
  %298 = add nsw i32 %297, 1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %296, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = icmp sgt i32 %293, %301
  br i1 %302, label %320, label %303

303:                                              ; preds = %286
  %304 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %304, i32 0, i32 1
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %3, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 1
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %3, align 4
  %315 = add nsw i32 %314, 2
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %313, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = icmp sgt i32 %310, %318
  br label %320

320:                                              ; preds = %303, %286
  %321 = phi i1 [ true, %286 ], [ %319, %303 ]
  br i1 %321, label %322, label %367

322:                                              ; preds = %320
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 1
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %3, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %328, align 4
  store i32 %329, i32* %6, align 4
  %330 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 1
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %3, align 4
  %334 = add nsw i32 %333, 1
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %332, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 1
  %340 = load i32*, i32** %339, align 8
  %341 = load i32, i32* %3, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  store i32 %337, i32* %343, align 4
  %344 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i32 0, i32 1
  %346 = load i32*, i32** %345, align 8
  %347 = load i32, i32* %3, align 4
  %348 = add nsw i32 %347, 2
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %346, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 1
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %3, align 4
  %356 = add nsw i32 %355, 1
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %354, i64 %357
  store i32 %351, i32* %358, align 4
  %359 = load i32, i32* %6, align 4
  %360 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 1
  %362 = load i32*, i32** %361, align 8
  %363 = load i32, i32* %3, align 4
  %364 = add nsw i32 %363, 2
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %362, i64 %365
  store i32 %359, i32* %366, align 4
  br label %286

367:                                              ; preds = %320
  br label %368

368:                                              ; preds = %367, %170
  br label %369

369:                                              ; preds = %368
  %370 = load i32, i32* %3, align 4
  %371 = add nsw i32 %370, 3
  store i32 %371, i32* %3, align 4
  br label %77

372:                                              ; preds = %77
  %373 = load i32*, i32** %13, align 8
  %374 = call i32 @free(i32* %373)
  store i32 0, i32* %14, align 4
  br label %375

375:                                              ; preds = %372, %32
  %376 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %376)
  %377 = load i32, i32* %14, align 4
  switch i32 %377, label %379 [
    i32 0, label %378
    i32 1, label %378
  ]

378:                                              ; preds = %375, %375
  ret void

379:                                              ; preds = %375
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @safe_malloc(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
