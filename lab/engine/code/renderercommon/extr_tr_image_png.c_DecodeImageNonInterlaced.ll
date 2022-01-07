; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_png.c_DecodeImageNonInterlaced.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_png.c_DecodeImageNonInterlaced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PNG_Chunk_IHDR = type { i32, i32, i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@PNG_NumColourComponents_Grey = common dso_local global i32 0, align 4
@PNG_NumColourComponents_True = common dso_local global i32 0, align 4
@PNG_NumColourComponents_Indexed = common dso_local global i32 0, align 4
@PNG_NumColourComponents_GreyAlpha = common dso_local global i32 0, align 4
@PNG_NumColourComponents_TrueAlpha = common dso_local global i32 0, align 4
@Q3IMAGE_BYTESPERPIXEL = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.PNG_Chunk_IHDR*, i32*, i32*, i32, i32, i32*, i32*)* @DecodeImageNonInterlaced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeImageNonInterlaced(%struct.PNG_Chunk_IHDR* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.PNG_Chunk_IHDR*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.PNG_Chunk_IHDR* %0, %struct.PNG_Chunk_IHDR** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %30 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %9, align 8
  %31 = icmp ne %struct.PNG_Chunk_IHDR* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %7
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i32*, i32** %11, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32*, i32** %14, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32*, i32** %15, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %44, %41, %38, %35, %32, %7
  %48 = load i32, i32* @qfalse, align 4
  store i32 %48, i32* %8, align 4
  br label %266

49:                                               ; preds = %44
  %50 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %9, align 8
  %51 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @BigLong(i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %9, align 8
  %55 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @BigLong(i32 %56)
  store i32 %57, i32* %17, align 4
  %58 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %9, align 8
  %59 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %136 [
    i32 132, label %61
    i32 129, label %80
    i32 130, label %94
    i32 131, label %108
    i32 128, label %122
  ]

61:                                               ; preds = %49
  %62 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %9, align 8
  %63 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %77 [
    i32 137, label %65
    i32 135, label %65
    i32 134, label %65
    i32 133, label %70
    i32 136, label %70
  ]

65:                                               ; preds = %61, %61, %61
  store i32 1, i32* %19, align 4
  %66 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %9, align 8
  %67 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sdiv i32 8, %68
  store i32 %69, i32* %20, align 4
  br label %79

70:                                               ; preds = %61, %61
  %71 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %9, align 8
  %72 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sdiv i32 %73, 8
  %75 = load i32, i32* @PNG_NumColourComponents_Grey, align 4
  %76 = mul nsw i32 %74, %75
  store i32 %76, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %79

77:                                               ; preds = %61
  %78 = load i32, i32* @qfalse, align 4
  store i32 %78, i32* %8, align 4
  br label %266

79:                                               ; preds = %70, %65
  br label %138

80:                                               ; preds = %49
  %81 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %9, align 8
  %82 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %91 [
    i32 133, label %84
    i32 136, label %84
  ]

84:                                               ; preds = %80, %80
  %85 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %9, align 8
  %86 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sdiv i32 %87, 8
  %89 = load i32, i32* @PNG_NumColourComponents_True, align 4
  %90 = mul nsw i32 %88, %89
  store i32 %90, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %93

91:                                               ; preds = %80
  %92 = load i32, i32* @qfalse, align 4
  store i32 %92, i32* %8, align 4
  br label %266

93:                                               ; preds = %84
  br label %138

94:                                               ; preds = %49
  %95 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %9, align 8
  %96 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %105 [
    i32 137, label %98
    i32 135, label %98
    i32 134, label %98
    i32 133, label %103
  ]

98:                                               ; preds = %94, %94, %94
  store i32 1, i32* %19, align 4
  %99 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %9, align 8
  %100 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 8, %101
  store i32 %102, i32* %20, align 4
  br label %107

103:                                              ; preds = %94
  %104 = load i32, i32* @PNG_NumColourComponents_Indexed, align 4
  store i32 %104, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %107

105:                                              ; preds = %94
  %106 = load i32, i32* @qfalse, align 4
  store i32 %106, i32* %8, align 4
  br label %266

107:                                              ; preds = %103, %98
  br label %138

108:                                              ; preds = %49
  %109 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %9, align 8
  %110 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %119 [
    i32 133, label %112
    i32 136, label %112
  ]

112:                                              ; preds = %108, %108
  %113 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %9, align 8
  %114 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sdiv i32 %115, 8
  %117 = load i32, i32* @PNG_NumColourComponents_GreyAlpha, align 4
  %118 = mul nsw i32 %116, %117
  store i32 %118, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %121

119:                                              ; preds = %108
  %120 = load i32, i32* @qfalse, align 4
  store i32 %120, i32* %8, align 4
  br label %266

121:                                              ; preds = %112
  br label %138

122:                                              ; preds = %49
  %123 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %9, align 8
  %124 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  switch i32 %125, label %133 [
    i32 133, label %126
    i32 136, label %126
  ]

126:                                              ; preds = %122, %122
  %127 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %9, align 8
  %128 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sdiv i32 %129, 8
  %131 = load i32, i32* @PNG_NumColourComponents_TrueAlpha, align 4
  %132 = mul nsw i32 %130, %131
  store i32 %132, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %135

133:                                              ; preds = %122
  %134 = load i32, i32* @qfalse, align 4
  store i32 %134, i32* %8, align 4
  br label %266

135:                                              ; preds = %126
  br label %138

136:                                              ; preds = %49
  %137 = load i32, i32* @qfalse, align 4
  store i32 %137, i32* %8, align 4
  br label %266

138:                                              ; preds = %135, %121, %107, %93, %79
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %19, align 4
  %141 = mul nsw i32 %139, %140
  %142 = load i32, i32* %20, align 4
  %143 = sub nsw i32 %142, 1
  %144 = add nsw i32 %141, %143
  %145 = load i32, i32* %20, align 4
  %146 = sdiv i32 %144, %145
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %18, align 4
  %149 = add nsw i32 %148, 1
  %150 = load i32, i32* %17, align 4
  %151 = mul nsw i32 %149, %150
  %152 = icmp eq i32 %147, %151
  br i1 %152, label %155, label %153

153:                                              ; preds = %138
  %154 = load i32, i32* @qfalse, align 4
  store i32 %154, i32* %8, align 4
  br label %266

155:                                              ; preds = %138
  %156 = load i32*, i32** %11, align 8
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %19, align 4
  %160 = call i32 @UnfilterImage(i32* %156, i32 %157, i32 %158, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %155
  %163 = load i32, i32* @qfalse, align 4
  store i32 %163, i32* %8, align 4
  br label %266

164:                                              ; preds = %155
  %165 = load i32*, i32** %10, align 8
  store i32* %165, i32** %24, align 8
  %166 = load i32*, i32** %11, align 8
  store i32* %166, i32** %25, align 8
  store i32 0, i32* %22, align 4
  br label %167

167:                                              ; preds = %261, %164
  %168 = load i32, i32* %22, align 4
  %169 = load i32, i32* %17, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %264

171:                                              ; preds = %167
  %172 = load i32*, i32** %25, align 8
  %173 = getelementptr inbounds i32, i32* %172, i32 1
  store i32* %173, i32** %25, align 8
  store i32 0, i32* %26, align 4
  store i32 0, i32* %21, align 4
  br label %174

174:                                              ; preds = %257, %171
  %175 = load i32, i32* %21, align 4
  %176 = load i32, i32* %18, align 4
  %177 = load i32, i32* %19, align 4
  %178 = sdiv i32 %176, %177
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %260

180:                                              ; preds = %174
  %181 = load i32, i32* %20, align 4
  %182 = icmp sgt i32 %181, 1
  br i1 %182, label %183, label %236

183:                                              ; preds = %180
  store i32 0, i32* %23, align 4
  br label %184

184:                                              ; preds = %232, %183
  %185 = load i32, i32* %23, align 4
  %186 = load i32, i32* %20, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %235

188:                                              ; preds = %184
  %189 = load i32, i32* %26, align 4
  %190 = load i32, i32* %16, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %231

192:                                              ; preds = %188
  %193 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %9, align 8
  %194 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = shl i32 1, %195
  %197 = sub nsw i32 %196, 1
  store i32 %197, i32* %27, align 4
  %198 = load i32, i32* %20, align 4
  %199 = sub nsw i32 %198, 1
  %200 = load i32, i32* %23, align 4
  %201 = sub nsw i32 %199, %200
  %202 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %9, align 8
  %203 = getelementptr inbounds %struct.PNG_Chunk_IHDR, %struct.PNG_Chunk_IHDR* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %201, %204
  store i32 %205, i32* %28, align 4
  %206 = load i32*, i32** %25, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %27, align 4
  %210 = load i32, i32* %28, align 4
  %211 = shl i32 %209, %210
  %212 = and i32 %208, %211
  %213 = load i32, i32* %28, align 4
  %214 = ashr i32 %212, %213
  store i32 %214, i32* %29, align 4
  %215 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %9, align 8
  %216 = load i32*, i32** %24, align 8
  %217 = load i32, i32* %13, align 4
  %218 = load i32*, i32** %14, align 8
  %219 = load i32*, i32** %15, align 8
  %220 = call i32 @ConvertPixel(%struct.PNG_Chunk_IHDR* %215, i32* %216, i32* %29, i32 %217, i32* %218, i32* %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %192
  %223 = load i32, i32* @qfalse, align 4
  store i32 %223, i32* %8, align 4
  br label %266

224:                                              ; preds = %192
  %225 = load i32, i32* @Q3IMAGE_BYTESPERPIXEL, align 4
  %226 = load i32*, i32** %24, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  store i32* %228, i32** %24, align 8
  %229 = load i32, i32* %26, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %26, align 4
  br label %231

231:                                              ; preds = %224, %188
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %23, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %23, align 4
  br label %184

235:                                              ; preds = %184
  br label %252

236:                                              ; preds = %180
  %237 = load %struct.PNG_Chunk_IHDR*, %struct.PNG_Chunk_IHDR** %9, align 8
  %238 = load i32*, i32** %24, align 8
  %239 = load i32*, i32** %25, align 8
  %240 = load i32, i32* %13, align 4
  %241 = load i32*, i32** %14, align 8
  %242 = load i32*, i32** %15, align 8
  %243 = call i32 @ConvertPixel(%struct.PNG_Chunk_IHDR* %237, i32* %238, i32* %239, i32 %240, i32* %241, i32* %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %236
  %246 = load i32, i32* @qfalse, align 4
  store i32 %246, i32* %8, align 4
  br label %266

247:                                              ; preds = %236
  %248 = load i32, i32* @Q3IMAGE_BYTESPERPIXEL, align 4
  %249 = load i32*, i32** %24, align 8
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  store i32* %251, i32** %24, align 8
  br label %252

252:                                              ; preds = %247, %235
  %253 = load i32, i32* %19, align 4
  %254 = load i32*, i32** %25, align 8
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  store i32* %256, i32** %25, align 8
  br label %257

257:                                              ; preds = %252
  %258 = load i32, i32* %21, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %21, align 4
  br label %174

260:                                              ; preds = %174
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %22, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %22, align 4
  br label %167

264:                                              ; preds = %167
  %265 = load i32, i32* @qtrue, align 4
  store i32 %265, i32* %8, align 4
  br label %266

266:                                              ; preds = %264, %245, %222, %162, %153, %136, %133, %119, %105, %91, %77, %47
  %267 = load i32, i32* %8, align 4
  ret i32 %267
}

declare dso_local i32 @BigLong(i32) #1

declare dso_local i32 @UnfilterImage(i32*, i32, i32, i32) #1

declare dso_local i32 @ConvertPixel(%struct.PNG_Chunk_IHDR*, i32*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
