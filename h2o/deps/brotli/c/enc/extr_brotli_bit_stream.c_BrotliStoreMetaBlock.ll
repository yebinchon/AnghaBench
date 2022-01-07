; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_brotli_bit_stream.c_BrotliStoreMetaBlock.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_brotli_bit_stream.c_BrotliStoreMetaBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, i32 }
%struct.TYPE_14__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32 }

@BROTLI_NUM_DISTANCE_SHORT_CODES = common dso_local global i32 0, align 4
@HuffmanTree = common dso_local global i32 0, align 4
@tree = common dso_local global i32 0, align 4
@MAX_HUFFMAN_TREE_SIZE = common dso_local global i32 0, align 4
@BROTLI_NUM_COMMAND_SYMBOLS = common dso_local global i64 0, align 8
@BROTLI_LITERAL_CONTEXT_BITS = common dso_local global i32 0, align 4
@BROTLI_DISTANCE_CONTEXT_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BrotliStoreMetaBlock(i32* %0, i64* %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i32 %8, i32 %9, i32 %10, %struct.TYPE_15__* %11, i64 %12, %struct.TYPE_14__* %13, i64* %14, i64* %15) #0 {
  %17 = alloca i32*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_15__*, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_14__*, align 8
  %31 = alloca i64*, align 8
  %32 = alloca i64*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca %struct.TYPE_15__, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i64, align 8
  store i32* %0, i32** %17, align 8
  store i64* %1, i64** %18, align 8
  store i64 %2, i64* %19, align 8
  store i64 %3, i64* %20, align 8
  store i64 %4, i64* %21, align 8
  store i64 %5, i64* %22, align 8
  store i64 %6, i64* %23, align 8
  store i64 %7, i64* %24, align 8
  store i32 %8, i32* %25, align 4
  store i32 %9, i32* %26, align 4
  store i32 %10, i32* %27, align 4
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %28, align 8
  store i64 %12, i64* %29, align 8
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %30, align 8
  store i64* %14, i64** %31, align 8
  store i64* %15, i64** %32, align 8
  %49 = load i64, i64* %19, align 8
  store i64 %49, i64* %33, align 8
  %50 = load i32, i32* @BROTLI_NUM_DISTANCE_SHORT_CODES, align 4
  %51 = load i32, i32* %25, align 4
  %52 = add i32 %50, %51
  %53 = load i32, i32* %26, align 4
  %54 = shl i32 48, %53
  %55 = add i32 %52, %54
  %56 = zext i32 %55 to i64
  store i64 %56, i64* %35, align 8
  %57 = load i32, i32* @HuffmanTree, align 4
  %58 = load i32, i32* @tree, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i64, i64* %24, align 8
  %61 = load i64, i64* %20, align 8
  %62 = load i64*, i64** %31, align 8
  %63 = load i64*, i64** %32, align 8
  %64 = call i32 @StoreCompressedMetaBlockHeader(i64 %60, i64 %61, i64* %62, i64* %63)
  %65 = load i32*, i32** %17, align 8
  %66 = load i32, i32* @HuffmanTree, align 4
  %67 = load i32, i32* @MAX_HUFFMAN_TREE_SIZE, align 4
  %68 = call i32 @BROTLI_ALLOC(i32* %65, i32 %66, i32 %67)
  store i32 %68, i32* @tree, align 4
  %69 = load i32*, i32** %17, align 8
  %70 = call i64 @BROTLI_IS_OOM(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %16
  br label %440

73:                                               ; preds = %16
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 10
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 10
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 10
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 10
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @InitBlockEncoder(i32* %36, i64 256, i64 %77, i32 %81, i32 %85, i32 %89)
  %91 = load i64, i64* @BROTLI_NUM_COMMAND_SYMBOLS, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 12
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 12
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 12
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 12
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @InitBlockEncoder(i32* %37, i64 %91, i64 %95, i32 %99, i32 %103, i32 %107)
  %109 = load i64, i64* %35, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 11
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 11
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 11
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 11
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @InitBlockEncoder(i32* %38, i64 %109, i64 %113, i32 %117, i32 %121, i32 %125)
  %127 = load i32, i32* @tree, align 4
  %128 = load i64*, i64** %31, align 8
  %129 = load i64*, i64** %32, align 8
  %130 = call i32 @BuildAndStoreBlockSwitchEntropyCodes(i32* %36, i32 %127, i64* %128, i64* %129)
  %131 = load i32, i32* @tree, align 4
  %132 = load i64*, i64** %31, align 8
  %133 = load i64*, i64** %32, align 8
  %134 = call i32 @BuildAndStoreBlockSwitchEntropyCodes(i32* %37, i32 %131, i64* %132, i64* %133)
  %135 = load i32, i32* @tree, align 4
  %136 = load i64*, i64** %31, align 8
  %137 = load i64*, i64** %32, align 8
  %138 = call i32 @BuildAndStoreBlockSwitchEntropyCodes(i32* %38, i32 %135, i64* %136, i64* %137)
  %139 = load i32, i32* %26, align 4
  %140 = load i64*, i64** %31, align 8
  %141 = load i64*, i64** %32, align 8
  %142 = call i32 @BrotliWriteBits(i32 2, i32 %139, i64* %140, i64* %141)
  %143 = load i32, i32* %25, align 4
  %144 = load i32, i32* %26, align 4
  %145 = lshr i32 %143, %144
  %146 = load i64*, i64** %31, align 8
  %147 = load i64*, i64** %32, align 8
  %148 = call i32 @BrotliWriteBits(i32 4, i32 %145, i64* %146, i64* %147)
  store i64 0, i64* %34, align 8
  br label %149

149:                                              ; preds = %161, %73
  %150 = load i64, i64* %34, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 10
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ult i64 %150, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %149
  %157 = load i32, i32* %27, align 4
  %158 = load i64*, i64** %31, align 8
  %159 = load i64*, i64** %32, align 8
  %160 = call i32 @BrotliWriteBits(i32 2, i32 %157, i64* %158, i64* %159)
  br label %161

161:                                              ; preds = %156
  %162 = load i64, i64* %34, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %34, align 8
  br label %149

164:                                              ; preds = %149
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %164
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @BROTLI_LITERAL_CONTEXT_BITS, align 4
  %174 = load i32, i32* @tree, align 4
  %175 = load i64*, i64** %31, align 8
  %176 = load i64*, i64** %32, align 8
  %177 = call i32 @StoreTrivialContextMap(i32 %172, i32 %173, i32 %174, i64* %175, i64* %176)
  br label %198

178:                                              ; preds = %164
  %179 = load i32*, i32** %17, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 8
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @tree, align 4
  %190 = load i64*, i64** %31, align 8
  %191 = load i64*, i64** %32, align 8
  %192 = call i32 @EncodeContextMap(i32* %179, i32 %182, i64 %185, i32 %188, i32 %189, i64* %190, i64* %191)
  %193 = load i32*, i32** %17, align 8
  %194 = call i64 @BROTLI_IS_OOM(i32* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %178
  br label %440

197:                                              ; preds = %178
  br label %198

198:                                              ; preds = %197, %169
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %198
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @BROTLI_DISTANCE_CONTEXT_BITS, align 4
  %208 = load i32, i32* @tree, align 4
  %209 = load i64*, i64** %31, align 8
  %210 = load i64*, i64** %32, align 8
  %211 = call i32 @StoreTrivialContextMap(i32 %206, i32 %207, i32 %208, i64* %209, i64* %210)
  br label %232

212:                                              ; preds = %198
  %213 = load i32*, i32** %17, align 8
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @tree, align 4
  %224 = load i64*, i64** %31, align 8
  %225 = load i64*, i64** %32, align 8
  %226 = call i32 @EncodeContextMap(i32* %213, i32 %216, i64 %219, i32 %222, i32 %223, i64* %224, i64* %225)
  %227 = load i32*, i32** %17, align 8
  %228 = call i64 @BROTLI_IS_OOM(i32* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %212
  br label %440

231:                                              ; preds = %212
  br label %232

232:                                              ; preds = %231, %203
  %233 = load i32*, i32** %17, align 8
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 9
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 8
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @tree, align 4
  %241 = load i64*, i64** %31, align 8
  %242 = load i64*, i64** %32, align 8
  %243 = call i32 @BuildAndStoreEntropyCodesLiteral(i32* %233, i32* %36, i32 %236, i32 %239, i32 %240, i64* %241, i64* %242)
  %244 = load i32*, i32** %17, align 8
  %245 = call i64 @BROTLI_IS_OOM(i32* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %232
  br label %440

248:                                              ; preds = %232
  %249 = load i32*, i32** %17, align 8
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 7
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 6
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @tree, align 4
  %257 = load i64*, i64** %31, align 8
  %258 = load i64*, i64** %32, align 8
  %259 = call i32 @BuildAndStoreEntropyCodesCommand(i32* %249, i32* %37, i32 %252, i32 %255, i32 %256, i64* %257, i64* %258)
  %260 = load i32*, i32** %17, align 8
  %261 = call i64 @BROTLI_IS_OOM(i32* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %248
  br label %440

264:                                              ; preds = %248
  %265 = load i32*, i32** %17, align 8
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @tree, align 4
  %273 = load i64*, i64** %31, align 8
  %274 = load i64*, i64** %32, align 8
  %275 = call i32 @BuildAndStoreEntropyCodesDistance(i32* %265, i32* %38, i32 %268, i32 %271, i32 %272, i64* %273, i64* %274)
  %276 = load i32*, i32** %17, align 8
  %277 = call i64 @BROTLI_IS_OOM(i32* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %264
  br label %440

280:                                              ; preds = %264
  %281 = load i32*, i32** %17, align 8
  %282 = load i32, i32* @tree, align 4
  %283 = call i32 @BROTLI_FREE(i32* %281, i32 %282)
  store i64 0, i64* %34, align 8
  br label %284

284:                                              ; preds = %424, %280
  %285 = load i64, i64* %34, align 8
  %286 = load i64, i64* %29, align 8
  %287 = icmp ult i64 %285, %286
  br i1 %287, label %288, label %427

288:                                              ; preds = %284
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %290 = load i64, i64* %34, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i64 %290
  %292 = bitcast %struct.TYPE_15__* %39 to i8*
  %293 = bitcast %struct.TYPE_15__* %291 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %292, i8* align 8 %293, i64 32, i1 false)
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  store i64 %295, i64* %40, align 8
  %296 = load i64, i64* %40, align 8
  %297 = load i64*, i64** %31, align 8
  %298 = load i64*, i64** %32, align 8
  %299 = call i32 @StoreSymbol(i32* %37, i64 %296, i64* %297, i64* %298)
  %300 = load i64*, i64** %31, align 8
  %301 = load i64*, i64** %32, align 8
  %302 = call i32 @StoreCommandExtra(%struct.TYPE_15__* %39, i64* %300, i64* %301)
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %307, label %329

307:                                              ; preds = %288
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  store i64 %309, i64* %41, align 8
  br label %310

310:                                              ; preds = %325, %307
  %311 = load i64, i64* %41, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %328

313:                                              ; preds = %310
  %314 = load i64*, i64** %18, align 8
  %315 = load i64, i64* %33, align 8
  %316 = load i64, i64* %21, align 8
  %317 = and i64 %315, %316
  %318 = getelementptr inbounds i64, i64* %314, i64 %317
  %319 = load i64, i64* %318, align 8
  %320 = load i64*, i64** %31, align 8
  %321 = load i64*, i64** %32, align 8
  %322 = call i32 @StoreSymbol(i32* %36, i64 %319, i64* %320, i64* %321)
  %323 = load i64, i64* %33, align 8
  %324 = add i64 %323, 1
  store i64 %324, i64* %33, align 8
  br label %325

325:                                              ; preds = %313
  %326 = load i64, i64* %41, align 8
  %327 = add i64 %326, -1
  store i64 %327, i64* %41, align 8
  br label %310

328:                                              ; preds = %310
  br label %363

329:                                              ; preds = %288
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  store i64 %331, i64* %42, align 8
  br label %332

332:                                              ; preds = %359, %329
  %333 = load i64, i64* %42, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %362

335:                                              ; preds = %332
  %336 = load i64, i64* %22, align 8
  %337 = load i64, i64* %23, align 8
  %338 = load i32, i32* %27, align 4
  %339 = call i64 @Context(i64 %336, i64 %337, i32 %338)
  store i64 %339, i64* %43, align 8
  %340 = load i64*, i64** %18, align 8
  %341 = load i64, i64* %33, align 8
  %342 = load i64, i64* %21, align 8
  %343 = and i64 %341, %342
  %344 = getelementptr inbounds i64, i64* %340, i64 %343
  %345 = load i64, i64* %344, align 8
  store i64 %345, i64* %44, align 8
  %346 = load i64, i64* %44, align 8
  %347 = load i64, i64* %43, align 8
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 4
  %351 = load i64*, i64** %31, align 8
  %352 = load i64*, i64** %32, align 8
  %353 = load i32, i32* @BROTLI_LITERAL_CONTEXT_BITS, align 4
  %354 = call i32 @StoreSymbolWithContext(i32* %36, i64 %346, i64 %347, i32 %350, i64* %351, i64* %352, i32 %353)
  %355 = load i64, i64* %22, align 8
  store i64 %355, i64* %23, align 8
  %356 = load i64, i64* %44, align 8
  store i64 %356, i64* %22, align 8
  %357 = load i64, i64* %33, align 8
  %358 = add i64 %357, 1
  store i64 %358, i64* %33, align 8
  br label %359

359:                                              ; preds = %335
  %360 = load i64, i64* %42, align 8
  %361 = add i64 %360, -1
  store i64 %361, i64* %42, align 8
  br label %332

362:                                              ; preds = %332
  br label %363

363:                                              ; preds = %362, %328
  %364 = call i64 @CommandCopyLen(%struct.TYPE_15__* %39)
  %365 = load i64, i64* %33, align 8
  %366 = add i64 %365, %364
  store i64 %366, i64* %33, align 8
  %367 = call i64 @CommandCopyLen(%struct.TYPE_15__* %39)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %423

369:                                              ; preds = %363
  %370 = load i64*, i64** %18, align 8
  %371 = load i64, i64* %33, align 8
  %372 = sub i64 %371, 2
  %373 = load i64, i64* %21, align 8
  %374 = and i64 %372, %373
  %375 = getelementptr inbounds i64, i64* %370, i64 %374
  %376 = load i64, i64* %375, align 8
  store i64 %376, i64* %23, align 8
  %377 = load i64*, i64** %18, align 8
  %378 = load i64, i64* %33, align 8
  %379 = sub i64 %378, 1
  %380 = load i64, i64* %21, align 8
  %381 = and i64 %379, %380
  %382 = getelementptr inbounds i64, i64* %377, i64 %381
  %383 = load i64, i64* %382, align 8
  store i64 %383, i64* %22, align 8
  %384 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = icmp uge i64 %385, 128
  br i1 %386, label %387, label %422

387:                                              ; preds = %369
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  %389 = load i64, i64* %388, align 8
  store i64 %389, i64* %45, align 8
  %390 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 3
  %391 = load i32, i32* %390, align 8
  %392 = ashr i32 %391, 24
  store i32 %392, i32* %46, align 4
  %393 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 3
  %394 = load i32, i32* %393, align 8
  %395 = and i32 %394, 16777215
  store i32 %395, i32* %47, align 4
  %396 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %397 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %396, i32 0, i32 1
  %398 = load i64, i64* %397, align 8
  %399 = icmp eq i64 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %387
  %401 = load i64, i64* %45, align 8
  %402 = load i64*, i64** %31, align 8
  %403 = load i64*, i64** %32, align 8
  %404 = call i32 @StoreSymbol(i32* %38, i64 %401, i64* %402, i64* %403)
  br label %416

405:                                              ; preds = %387
  %406 = call i64 @CommandDistanceContext(%struct.TYPE_15__* %39)
  store i64 %406, i64* %48, align 8
  %407 = load i64, i64* %45, align 8
  %408 = load i64, i64* %48, align 8
  %409 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %410 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = load i64*, i64** %31, align 8
  %413 = load i64*, i64** %32, align 8
  %414 = load i32, i32* @BROTLI_DISTANCE_CONTEXT_BITS, align 4
  %415 = call i32 @StoreSymbolWithContext(i32* %38, i64 %407, i64 %408, i32 %411, i64* %412, i64* %413, i32 %414)
  br label %416

416:                                              ; preds = %405, %400
  %417 = load i32, i32* %46, align 4
  %418 = load i32, i32* %47, align 4
  %419 = load i64*, i64** %31, align 8
  %420 = load i64*, i64** %32, align 8
  %421 = call i32 @BrotliWriteBits(i32 %417, i32 %418, i64* %419, i64* %420)
  br label %422

422:                                              ; preds = %416, %369
  br label %423

423:                                              ; preds = %422, %363
  br label %424

424:                                              ; preds = %423
  %425 = load i64, i64* %34, align 8
  %426 = add i64 %425, 1
  store i64 %426, i64* %34, align 8
  br label %284

427:                                              ; preds = %284
  %428 = load i32*, i32** %17, align 8
  %429 = call i32 @CleanupBlockEncoder(i32* %428, i32* %38)
  %430 = load i32*, i32** %17, align 8
  %431 = call i32 @CleanupBlockEncoder(i32* %430, i32* %37)
  %432 = load i32*, i32** %17, align 8
  %433 = call i32 @CleanupBlockEncoder(i32* %432, i32* %36)
  %434 = load i64, i64* %24, align 8
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %440

436:                                              ; preds = %427
  %437 = load i64*, i64** %31, align 8
  %438 = load i64*, i64** %32, align 8
  %439 = call i32 @JumpToByteBoundary(i64* %437, i64* %438)
  br label %440

440:                                              ; preds = %72, %196, %230, %247, %263, %279, %436, %427
  ret void
}

declare dso_local i32 @StoreCompressedMetaBlockHeader(i64, i64, i64*, i64*) #1

declare dso_local i32 @BROTLI_ALLOC(i32*, i32, i32) #1

declare dso_local i64 @BROTLI_IS_OOM(i32*) #1

declare dso_local i32 @InitBlockEncoder(i32*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @BuildAndStoreBlockSwitchEntropyCodes(i32*, i32, i64*, i64*) #1

declare dso_local i32 @BrotliWriteBits(i32, i32, i64*, i64*) #1

declare dso_local i32 @StoreTrivialContextMap(i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @EncodeContextMap(i32*, i32, i64, i32, i32, i64*, i64*) #1

declare dso_local i32 @BuildAndStoreEntropyCodesLiteral(i32*, i32*, i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @BuildAndStoreEntropyCodesCommand(i32*, i32*, i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @BuildAndStoreEntropyCodesDistance(i32*, i32*, i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @BROTLI_FREE(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @StoreSymbol(i32*, i64, i64*, i64*) #1

declare dso_local i32 @StoreCommandExtra(%struct.TYPE_15__*, i64*, i64*) #1

declare dso_local i64 @Context(i64, i64, i32) #1

declare dso_local i32 @StoreSymbolWithContext(i32*, i64, i64, i32, i64*, i64*, i32) #1

declare dso_local i64 @CommandCopyLen(%struct.TYPE_15__*) #1

declare dso_local i64 @CommandDistanceContext(%struct.TYPE_15__*) #1

declare dso_local i32 @CleanupBlockEncoder(i32*, i32*) #1

declare dso_local i32 @JumpToByteBoundary(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
