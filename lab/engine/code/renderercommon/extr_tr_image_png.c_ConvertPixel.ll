; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_png.c_ConvertPixel.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_png.c_ConvertPixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PNG_Chunk_IHDR = type { i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@Q3IMAGE_BYTESPERPIXEL = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.PNG_Chunk_IHDR*, i32*, i32*, i32, i32*, i32*)* @ConvertPixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConvertPixel(%struct.PNG_Chunk_IHDR* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.PNG_Chunk_IHDR*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.PNG_Chunk_IHDR* %0, %struct.PNG_Chunk_IHDR** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %8, align 8
  %17 = icmp ne %struct.PNG_Chunk_IHDR* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %6
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32*, i32** %12, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** %13, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27, %24, %21, %18, %6
  %31 = load i32, i32* @qfalse, align 4
  store i32 %31, i32* %7, align 4
  br label %420

32:                                               ; preds = %27
  %33 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %8, align 8
  %34 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %416 [
    i32 132, label %36
    i32 129, label %140
    i32 130, label %269
    i32 131, label %318
    i32 128, label %367
  ]

36:                                               ; preds = %32
  %37 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %8, align 8
  %38 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %137 [
    i32 137, label %40
    i32 135, label %40
    i32 134, label %40
    i32 133, label %78
    i32 136, label %78
  ]

40:                                               ; preds = %36, %36, %36
  %41 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %8, align 8
  %42 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 1, %43
  %45 = sub nsw i32 %44, 1
  %46 = sdiv i32 255, %45
  store i32 %46, i32* %14, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %14, align 4
  %51 = mul nsw i32 %49, %50
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  store i32 255, i32* %62, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %40
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %65
  br label %77

77:                                               ; preds = %76, %40
  br label %139

78:                                               ; preds = %36, %36
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %81, i32* %83, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 %86, i32* %88, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  store i32 %91, i32* %93, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  store i32 255, i32* %95, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %136

98:                                               ; preds = %78
  %99 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %8, align 8
  %100 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 133
  br i1 %102, label %103, label %115

103:                                              ; preds = %98
  %104 = load i32*, i32** %12, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %10, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  store i32 0, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %103
  br label %135

115:                                              ; preds = %98
  %116 = load i32*, i32** %12, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %10, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %118, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %115
  %124 = load i32*, i32** %12, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %10, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %126, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load i32*, i32** %9, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 3
  store i32 0, i32* %133, align 4
  br label %134

134:                                              ; preds = %131, %123, %115
  br label %135

135:                                              ; preds = %134, %114
  br label %136

136:                                              ; preds = %135, %78
  br label %139

137:                                              ; preds = %36
  %138 = load i32, i32* @qfalse, align 4
  store i32 %138, i32* %7, align 4
  br label %420

139:                                              ; preds = %136, %77
  br label %418

140:                                              ; preds = %32
  %141 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %8, align 8
  %142 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  switch i32 %143, label %266 [
    i32 133, label %144
    i32 136, label %193
  ]

144:                                              ; preds = %140
  %145 = load i32*, i32** %10, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %9, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  store i32 %147, i32* %149, align 4
  %150 = load i32*, i32** %10, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  store i32 %152, i32* %154, align 4
  %155 = load i32*, i32** %10, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %9, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  store i32 %157, i32* %159, align 4
  %160 = load i32*, i32** %9, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 3
  store i32 255, i32* %161, align 4
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %192

164:                                              ; preds = %144
  %165 = load i32*, i32** %12, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %10, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %167, %170
  br i1 %171, label %172, label %191

172:                                              ; preds = %164
  %173 = load i32*, i32** %12, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 3
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %10, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %175, %178
  br i1 %179, label %180, label %191

180:                                              ; preds = %172
  %181 = load i32*, i32** %12, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 5
  %183 = load i32, i32* %182, align 4
  %184 = load i32*, i32** %10, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %183, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %180
  %189 = load i32*, i32** %9, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 3
  store i32 0, i32* %190, align 4
  br label %191

191:                                              ; preds = %188, %180, %172, %164
  br label %192

192:                                              ; preds = %191, %144
  br label %268

193:                                              ; preds = %140
  %194 = load i32*, i32** %10, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %9, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  store i32 %196, i32* %198, align 4
  %199 = load i32*, i32** %10, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %9, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  store i32 %201, i32* %203, align 4
  %204 = load i32*, i32** %10, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 4
  %206 = load i32, i32* %205, align 4
  %207 = load i32*, i32** %9, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 2
  store i32 %206, i32* %208, align 4
  %209 = load i32*, i32** %9, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 3
  store i32 255, i32* %210, align 4
  %211 = load i32, i32* %11, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %265

213:                                              ; preds = %193
  %214 = load i32*, i32** %12, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %10, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %216, %219
  br i1 %220, label %221, label %264

221:                                              ; preds = %213
  %222 = load i32*, i32** %12, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32*, i32** %10, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %224, %227
  br i1 %228, label %229, label %264

229:                                              ; preds = %221
  %230 = load i32*, i32** %12, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 2
  %232 = load i32, i32* %231, align 4
  %233 = load i32*, i32** %10, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 2
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %232, %235
  br i1 %236, label %237, label %264

237:                                              ; preds = %229
  %238 = load i32*, i32** %12, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 3
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** %10, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 3
  %243 = load i32, i32* %242, align 4
  %244 = icmp eq i32 %240, %243
  br i1 %244, label %245, label %264

245:                                              ; preds = %237
  %246 = load i32*, i32** %12, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 4
  %248 = load i32, i32* %247, align 4
  %249 = load i32*, i32** %10, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 4
  %251 = load i32, i32* %250, align 4
  %252 = icmp eq i32 %248, %251
  br i1 %252, label %253, label %264

253:                                              ; preds = %245
  %254 = load i32*, i32** %12, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 5
  %256 = load i32, i32* %255, align 4
  %257 = load i32*, i32** %10, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 5
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %256, %259
  br i1 %260, label %261, label %264

261:                                              ; preds = %253
  %262 = load i32*, i32** %9, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 3
  store i32 0, i32* %263, align 4
  br label %264

264:                                              ; preds = %261, %253, %245, %237, %229, %221, %213
  br label %265

265:                                              ; preds = %264, %193
  br label %268

266:                                              ; preds = %140
  %267 = load i32, i32* @qfalse, align 4
  store i32 %267, i32* %7, align 4
  br label %420

268:                                              ; preds = %265, %192
  br label %418

269:                                              ; preds = %32
  %270 = load i32*, i32** %13, align 8
  %271 = load i32*, i32** %10, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 0
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @Q3IMAGE_BYTESPERPIXEL, align 4
  %275 = mul nsw i32 %273, %274
  %276 = add nsw i32 %275, 0
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %270, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32*, i32** %9, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  store i32 %279, i32* %281, align 4
  %282 = load i32*, i32** %13, align 8
  %283 = load i32*, i32** %10, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @Q3IMAGE_BYTESPERPIXEL, align 4
  %287 = mul nsw i32 %285, %286
  %288 = add nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %282, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32*, i32** %9, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 1
  store i32 %291, i32* %293, align 4
  %294 = load i32*, i32** %13, align 8
  %295 = load i32*, i32** %10, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @Q3IMAGE_BYTESPERPIXEL, align 4
  %299 = mul nsw i32 %297, %298
  %300 = add nsw i32 %299, 2
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %294, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = load i32*, i32** %9, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 2
  store i32 %303, i32* %305, align 4
  %306 = load i32*, i32** %13, align 8
  %307 = load i32*, i32** %10, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @Q3IMAGE_BYTESPERPIXEL, align 4
  %311 = mul nsw i32 %309, %310
  %312 = add nsw i32 %311, 3
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %306, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = load i32*, i32** %9, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 3
  store i32 %315, i32* %317, align 4
  br label %418

318:                                              ; preds = %32
  %319 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %8, align 8
  %320 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  switch i32 %321, label %364 [
    i32 133, label %322
    i32 136, label %343
  ]

322:                                              ; preds = %318
  %323 = load i32*, i32** %10, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 0
  %325 = load i32, i32* %324, align 4
  %326 = load i32*, i32** %9, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 0
  store i32 %325, i32* %327, align 4
  %328 = load i32*, i32** %10, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 0
  %330 = load i32, i32* %329, align 4
  %331 = load i32*, i32** %9, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 1
  store i32 %330, i32* %332, align 4
  %333 = load i32*, i32** %10, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 0
  %335 = load i32, i32* %334, align 4
  %336 = load i32*, i32** %9, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 2
  store i32 %335, i32* %337, align 4
  %338 = load i32*, i32** %10, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 1
  %340 = load i32, i32* %339, align 4
  %341 = load i32*, i32** %9, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 3
  store i32 %340, i32* %342, align 4
  br label %366

343:                                              ; preds = %318
  %344 = load i32*, i32** %10, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 0
  %346 = load i32, i32* %345, align 4
  %347 = load i32*, i32** %9, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 0
  store i32 %346, i32* %348, align 4
  %349 = load i32*, i32** %10, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 0
  %351 = load i32, i32* %350, align 4
  %352 = load i32*, i32** %9, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 1
  store i32 %351, i32* %353, align 4
  %354 = load i32*, i32** %10, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 0
  %356 = load i32, i32* %355, align 4
  %357 = load i32*, i32** %9, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 2
  store i32 %356, i32* %358, align 4
  %359 = load i32*, i32** %10, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 2
  %361 = load i32, i32* %360, align 4
  %362 = load i32*, i32** %9, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 3
  store i32 %361, i32* %363, align 4
  br label %366

364:                                              ; preds = %318
  %365 = load i32, i32* @qfalse, align 4
  store i32 %365, i32* %7, align 4
  br label %420

366:                                              ; preds = %343, %322
  br label %418

367:                                              ; preds = %32
  %368 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %8, align 8
  %369 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  switch i32 %370, label %413 [
    i32 133, label %371
    i32 136, label %392
  ]

371:                                              ; preds = %367
  %372 = load i32*, i32** %10, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 0
  %374 = load i32, i32* %373, align 4
  %375 = load i32*, i32** %9, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 0
  store i32 %374, i32* %376, align 4
  %377 = load i32*, i32** %10, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 1
  %379 = load i32, i32* %378, align 4
  %380 = load i32*, i32** %9, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 1
  store i32 %379, i32* %381, align 4
  %382 = load i32*, i32** %10, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 2
  %384 = load i32, i32* %383, align 4
  %385 = load i32*, i32** %9, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 2
  store i32 %384, i32* %386, align 4
  %387 = load i32*, i32** %10, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 3
  %389 = load i32, i32* %388, align 4
  %390 = load i32*, i32** %9, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 3
  store i32 %389, i32* %391, align 4
  br label %415

392:                                              ; preds = %367
  %393 = load i32*, i32** %10, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 0
  %395 = load i32, i32* %394, align 4
  %396 = load i32*, i32** %9, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 0
  store i32 %395, i32* %397, align 4
  %398 = load i32*, i32** %10, align 8
  %399 = getelementptr inbounds i32, i32* %398, i64 2
  %400 = load i32, i32* %399, align 4
  %401 = load i32*, i32** %9, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 1
  store i32 %400, i32* %402, align 4
  %403 = load i32*, i32** %10, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 4
  %405 = load i32, i32* %404, align 4
  %406 = load i32*, i32** %9, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 2
  store i32 %405, i32* %407, align 4
  %408 = load i32*, i32** %10, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 6
  %410 = load i32, i32* %409, align 4
  %411 = load i32*, i32** %9, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 3
  store i32 %410, i32* %412, align 4
  br label %415

413:                                              ; preds = %367
  %414 = load i32, i32* @qfalse, align 4
  store i32 %414, i32* %7, align 4
  br label %420

415:                                              ; preds = %392, %371
  br label %418

416:                                              ; preds = %32
  %417 = load i32, i32* @qfalse, align 4
  store i32 %417, i32* %7, align 4
  br label %420

418:                                              ; preds = %415, %366, %269, %268, %139
  %419 = load i32, i32* @qtrue, align 4
  store i32 %419, i32* %7, align 4
  br label %420

420:                                              ; preds = %418, %416, %413, %364, %266, %137, %30
  %421 = load i32, i32* %7, align 4
  ret i32 %421
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
