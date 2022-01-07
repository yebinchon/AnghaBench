; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_encode.c_WriteMetaBlockInternal.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_encode.c_WriteMetaBlockInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32 }

@MIN_QUALITY_FOR_RECOMPUTE_DISTANCE_PREFIXES = common dso_local global i32 0, align 4
@BROTLI_MODE_FONT = common dso_local global i64 0, align 8
@MAX_QUALITY_FOR_STATIC_ENTROPY_CODES = common dso_local global i32 0, align 4
@MIN_QUALITY_FOR_BLOCK_SPLIT = common dso_local global i32 0, align 4
@CONTEXT_UTF8 = common dso_local global i32 0, align 4
@MIN_QUALITY_FOR_HQ_BLOCK_SPLITTING = common dso_local global i32 0, align 4
@kMinUTF8Ratio = common dso_local global i32 0, align 4
@CONTEXT_SIGNED = common dso_local global i32 0, align 4
@MIN_QUALITY_FOR_OPTIMIZE_HISTOGRAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i64, i32, i64, i32, %struct.TYPE_4__*, i64, i64, i64, i64, i32*, i32*, i32*, i64*, i64*)* @WriteMetaBlockInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WriteMetaBlockInternal(i32* %0, i64* %1, i64 %2, i32 %3, i64 %4, i32 %5, %struct.TYPE_4__* %6, i64 %7, i64 %8, i64 %9, i64 %10, i32* %11, i32* %12, i32* %13, i64* %14, i64* %15) #0 {
  %17 = alloca i32*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_4__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i64*, align 8
  %32 = alloca i64*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i64, align 8
  %41 = alloca i32*, align 8
  store i32* %0, i32** %17, align 8
  store i64* %1, i64** %18, align 8
  store i64 %2, i64* %19, align 8
  store i32 %3, i32* %20, align 4
  store i64 %4, i64* %21, align 8
  store i32 %5, i32* %22, align 4
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %23, align 8
  store i64 %7, i64* %24, align 8
  store i64 %8, i64* %25, align 8
  store i64 %9, i64* %26, align 8
  store i64 %10, i64* %27, align 8
  store i32* %11, i32** %28, align 8
  store i32* %12, i32** %29, align 8
  store i32* %13, i32** %30, align 8
  store i64* %14, i64** %31, align 8
  store i64* %15, i64** %32, align 8
  %42 = load i32, i32* %20, align 4
  %43 = call i32 @WrapPosition(i32 %42)
  store i32 %43, i32* %33, align 4
  store i32 0, i32* %36, align 4
  store i32 0, i32* %37, align 4
  %44 = load i64, i64* %21, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %16
  %47 = load i64*, i64** %31, align 8
  %48 = load i64*, i64** %32, align 8
  %49 = call i32 @BrotliWriteBits(i32 2, i32 3, i64* %47, i64* %48)
  %50 = load i64*, i64** %31, align 8
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 7
  %53 = and i64 %52, 4294967288
  %54 = load i64*, i64** %31, align 8
  store i64 %53, i64* %54, align 8
  br label %275

55:                                               ; preds = %16
  %56 = load i64*, i64** %18, align 8
  %57 = load i64, i64* %19, align 8
  %58 = load i32, i32* %20, align 4
  %59 = load i64, i64* %21, align 8
  %60 = load i64, i64* %26, align 8
  %61 = load i64, i64* %27, align 8
  %62 = call i32 @ShouldCompress(i64* %56, i64 %57, i32 %58, i64 %59, i64 %60, i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %55
  %65 = load i32*, i32** %30, align 8
  %66 = load i32*, i32** %29, align 8
  %67 = call i32 @memcpy(i32* %65, i32* %66, i32 16)
  %68 = load i32, i32* %22, align 4
  %69 = load i64*, i64** %18, align 8
  %70 = load i32, i32* %33, align 4
  %71 = load i64, i64* %19, align 8
  %72 = load i64, i64* %21, align 8
  %73 = load i64*, i64** %31, align 8
  %74 = load i64*, i64** %32, align 8
  %75 = call i32 @BrotliStoreUncompressedMetaBlock(i32 %68, i64* %69, i32 %70, i64 %71, i64 %72, i64* %73, i64* %74)
  br label %275

76:                                               ; preds = %55
  %77 = load i64*, i64** %32, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %34, align 8
  %80 = load i64*, i64** %31, align 8
  %81 = load i64, i64* %80, align 8
  %82 = and i64 %81, 255
  store i64 %82, i64* %35, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @MIN_QUALITY_FOR_RECOMPUTE_DISTANCE_PREFIXES, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %76
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @BROTLI_MODE_FONT, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  store i32 12, i32* %36, align 4
  store i32 1, i32* %37, align 4
  %95 = load i32*, i32** %28, align 8
  %96 = load i64, i64* %27, align 8
  %97 = load i32, i32* %36, align 4
  %98 = load i32, i32* %37, align 4
  %99 = call i32 @RecomputeDistancePrefixes(i32* %95, i64 %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %94, %88, %76
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @MAX_QUALITY_FOR_STATIC_ENTROPY_CODES, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %100
  %107 = load i32*, i32** %17, align 8
  %108 = load i64*, i64** %18, align 8
  %109 = load i32, i32* %33, align 4
  %110 = load i64, i64* %21, align 8
  %111 = load i64, i64* %19, align 8
  %112 = load i32, i32* %22, align 4
  %113 = load i32*, i32** %28, align 8
  %114 = load i64, i64* %27, align 8
  %115 = load i64*, i64** %31, align 8
  %116 = load i64*, i64** %32, align 8
  %117 = call i32 @BrotliStoreMetaBlockFast(i32* %107, i64* %108, i32 %109, i64 %110, i64 %111, i32 %112, i32* %113, i64 %114, i64* %115, i64* %116)
  %118 = load i32*, i32** %17, align 8
  %119 = call i64 @BROTLI_IS_OOM(i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %106
  br label %275

122:                                              ; preds = %106
  br label %251

123:                                              ; preds = %100
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @MIN_QUALITY_FOR_BLOCK_SPLIT, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %146

129:                                              ; preds = %123
  %130 = load i32*, i32** %17, align 8
  %131 = load i64*, i64** %18, align 8
  %132 = load i32, i32* %33, align 4
  %133 = load i64, i64* %21, align 8
  %134 = load i64, i64* %19, align 8
  %135 = load i32, i32* %22, align 4
  %136 = load i32*, i32** %28, align 8
  %137 = load i64, i64* %27, align 8
  %138 = load i64*, i64** %31, align 8
  %139 = load i64*, i64** %32, align 8
  %140 = call i32 @BrotliStoreMetaBlockTrivial(i32* %130, i64* %131, i32 %132, i64 %133, i64 %134, i32 %135, i32* %136, i64 %137, i64* %138, i64* %139)
  %141 = load i32*, i32** %17, align 8
  %142 = call i64 @BROTLI_IS_OOM(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %129
  br label %275

145:                                              ; preds = %129
  br label %250

146:                                              ; preds = %123
  %147 = load i32, i32* @CONTEXT_UTF8, align 4
  store i32 %147, i32* %38, align 4
  %148 = call i32 @InitMetaBlockSplit(i32* %39)
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @MIN_QUALITY_FOR_HQ_BLOCK_SPLITTING, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %189

154:                                              ; preds = %146
  store i64 1, i64* %40, align 8
  store i32* null, i32** %41, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %171, label %159

159:                                              ; preds = %154
  %160 = load i64*, i64** %18, align 8
  %161 = load i32, i32* %33, align 4
  %162 = load i64, i64* %21, align 8
  %163 = load i64, i64* %19, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @DecideOverLiteralContextModeling(i64* %160, i32 %161, i64 %162, i64 %163, i32 %166, i32 %169, i64* %40, i32** %41)
  br label %171

171:                                              ; preds = %159, %154
  %172 = load i32*, i32** %17, align 8
  %173 = load i64*, i64** %18, align 8
  %174 = load i32, i32* %33, align 4
  %175 = load i64, i64* %19, align 8
  %176 = load i64, i64* %24, align 8
  %177 = load i64, i64* %25, align 8
  %178 = load i32, i32* %38, align 4
  %179 = load i64, i64* %40, align 8
  %180 = load i32*, i32** %41, align 8
  %181 = load i32*, i32** %28, align 8
  %182 = load i64, i64* %27, align 8
  %183 = call i32 @BrotliBuildMetaBlockGreedy(i32* %172, i64* %173, i32 %174, i64 %175, i64 %176, i64 %177, i32 %178, i64 %179, i32* %180, i32* %181, i64 %182, i32* %39)
  %184 = load i32*, i32** %17, align 8
  %185 = call i64 @BROTLI_IS_OOM(i32* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %171
  br label %275

188:                                              ; preds = %171
  br label %216

189:                                              ; preds = %146
  %190 = load i64*, i64** %18, align 8
  %191 = load i32, i32* %33, align 4
  %192 = load i64, i64* %19, align 8
  %193 = load i64, i64* %21, align 8
  %194 = load i32, i32* @kMinUTF8Ratio, align 4
  %195 = call i32 @BrotliIsMostlyUTF8(i64* %190, i32 %191, i64 %192, i64 %193, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %189
  %198 = load i32, i32* @CONTEXT_SIGNED, align 4
  store i32 %198, i32* %38, align 4
  br label %199

199:                                              ; preds = %197, %189
  %200 = load i32*, i32** %17, align 8
  %201 = load i64*, i64** %18, align 8
  %202 = load i32, i32* %33, align 4
  %203 = load i64, i64* %19, align 8
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %205 = load i64, i64* %24, align 8
  %206 = load i64, i64* %25, align 8
  %207 = load i32*, i32** %28, align 8
  %208 = load i64, i64* %27, align 8
  %209 = load i32, i32* %38, align 4
  %210 = call i32 @BrotliBuildMetaBlock(i32* %200, i64* %201, i32 %202, i64 %203, %struct.TYPE_4__* %204, i64 %205, i64 %206, i32* %207, i64 %208, i32 %209, i32* %39)
  %211 = load i32*, i32** %17, align 8
  %212 = call i64 @BROTLI_IS_OOM(i32* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %199
  br label %275

215:                                              ; preds = %199
  br label %216

216:                                              ; preds = %215, %188
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @MIN_QUALITY_FOR_OPTIMIZE_HISTOGRAMS, align 4
  %221 = icmp sge i32 %219, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = load i32, i32* %36, align 4
  %224 = load i32, i32* %37, align 4
  %225 = call i32 @BrotliOptimizeHistograms(i32 %223, i32 %224, i32* %39)
  br label %226

226:                                              ; preds = %222, %216
  %227 = load i32*, i32** %17, align 8
  %228 = load i64*, i64** %18, align 8
  %229 = load i32, i32* %33, align 4
  %230 = load i64, i64* %21, align 8
  %231 = load i64, i64* %19, align 8
  %232 = load i64, i64* %24, align 8
  %233 = load i64, i64* %25, align 8
  %234 = load i32, i32* %22, align 4
  %235 = load i32, i32* %36, align 4
  %236 = load i32, i32* %37, align 4
  %237 = load i32, i32* %38, align 4
  %238 = load i32*, i32** %28, align 8
  %239 = load i64, i64* %27, align 8
  %240 = load i64*, i64** %31, align 8
  %241 = load i64*, i64** %32, align 8
  %242 = call i32 @BrotliStoreMetaBlock(i32* %227, i64* %228, i32 %229, i64 %230, i64 %231, i64 %232, i64 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32* %238, i64 %239, i32* %39, i64* %240, i64* %241)
  %243 = load i32*, i32** %17, align 8
  %244 = call i64 @BROTLI_IS_OOM(i32* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %226
  br label %275

247:                                              ; preds = %226
  %248 = load i32*, i32** %17, align 8
  %249 = call i32 @DestroyMetaBlockSplit(i32* %248, i32* %39)
  br label %250

250:                                              ; preds = %247, %145
  br label %251

251:                                              ; preds = %250, %122
  %252 = load i64, i64* %21, align 8
  %253 = add i64 %252, 4
  %254 = load i64*, i64** %31, align 8
  %255 = load i64, i64* %254, align 8
  %256 = lshr i64 %255, 3
  %257 = icmp ult i64 %253, %256
  br i1 %257, label %258, label %275

258:                                              ; preds = %251
  %259 = load i32*, i32** %30, align 8
  %260 = load i32*, i32** %29, align 8
  %261 = call i32 @memcpy(i32* %259, i32* %260, i32 16)
  %262 = load i64, i64* %34, align 8
  %263 = load i64*, i64** %32, align 8
  %264 = getelementptr inbounds i64, i64* %263, i64 0
  store i64 %262, i64* %264, align 8
  %265 = load i64, i64* %35, align 8
  %266 = load i64*, i64** %31, align 8
  store i64 %265, i64* %266, align 8
  %267 = load i32, i32* %22, align 4
  %268 = load i64*, i64** %18, align 8
  %269 = load i32, i32* %33, align 4
  %270 = load i64, i64* %19, align 8
  %271 = load i64, i64* %21, align 8
  %272 = load i64*, i64** %31, align 8
  %273 = load i64*, i64** %32, align 8
  %274 = call i32 @BrotliStoreUncompressedMetaBlock(i32 %267, i64* %268, i32 %269, i64 %270, i64 %271, i64* %272, i64* %273)
  br label %275

275:                                              ; preds = %46, %64, %121, %144, %187, %214, %246, %258, %251
  ret void
}

declare dso_local i32 @WrapPosition(i32) #1

declare dso_local i32 @BrotliWriteBits(i32, i32, i64*, i64*) #1

declare dso_local i32 @ShouldCompress(i64*, i64, i32, i64, i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @BrotliStoreUncompressedMetaBlock(i32, i64*, i32, i64, i64, i64*, i64*) #1

declare dso_local i32 @RecomputeDistancePrefixes(i32*, i64, i32, i32) #1

declare dso_local i32 @BrotliStoreMetaBlockFast(i32*, i64*, i32, i64, i64, i32, i32*, i64, i64*, i64*) #1

declare dso_local i64 @BROTLI_IS_OOM(i32*) #1

declare dso_local i32 @BrotliStoreMetaBlockTrivial(i32*, i64*, i32, i64, i64, i32, i32*, i64, i64*, i64*) #1

declare dso_local i32 @InitMetaBlockSplit(i32*) #1

declare dso_local i32 @DecideOverLiteralContextModeling(i64*, i32, i64, i64, i32, i32, i64*, i32**) #1

declare dso_local i32 @BrotliBuildMetaBlockGreedy(i32*, i64*, i32, i64, i64, i64, i32, i64, i32*, i32*, i64, i32*) #1

declare dso_local i32 @BrotliIsMostlyUTF8(i64*, i32, i64, i64, i32) #1

declare dso_local i32 @BrotliBuildMetaBlock(i32*, i64*, i32, i64, %struct.TYPE_4__*, i64, i64, i32*, i64, i32, i32*) #1

declare dso_local i32 @BrotliOptimizeHistograms(i32, i32, i32*) #1

declare dso_local i32 @BrotliStoreMetaBlock(i32*, i64*, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32*, i64, i32*, i64*, i64*) #1

declare dso_local i32 @DestroyMetaBlockSplit(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
