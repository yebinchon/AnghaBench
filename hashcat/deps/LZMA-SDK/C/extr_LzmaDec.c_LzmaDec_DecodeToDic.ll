; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaDec.c_LzmaDec_DecodeToDic.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaDec.c_LzmaDec_DecodeToDic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64*, i32, i32, i32*, i32*, i64, i64*, i64, i32 }

@LZMA_STATUS_NOT_SPECIFIED = common dso_local global i32 0, align 4
@kMatchSpecLenStart = common dso_local global i64 0, align 8
@RC_INIT_SIZE = common dso_local global i64 0, align 8
@SZ_ERROR_DATA = common dso_local global i32 0, align 4
@LZMA_STATUS_NEEDS_MORE_INPUT = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@kBitModelTotal = common dso_local global i32 0, align 4
@LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK = common dso_local global i32 0, align 4
@LZMA_FINISH_ANY = common dso_local global i64 0, align 8
@LZMA_STATUS_NOT_FINISHED = common dso_local global i32 0, align 4
@LZMA_REQUIRED_INPUT_MAX = common dso_local global i64 0, align 8
@DUMMY_ERROR = common dso_local global i32 0, align 4
@DUMMY_MATCH = common dso_local global i32 0, align 4
@SZ_ERROR_FAIL = common dso_local global i32 0, align 4
@LZMA_STATUS_FINISHED_WITH_MARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LzmaDec_DecodeToDic(%struct.TYPE_6__* %0, i64 %1, i64* %2, i64* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %26 = load i64*, i64** %11, align 8
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %14, align 8
  %28 = load i64*, i64** %11, align 8
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @LZMA_STATUS_NOT_SPECIFIED, align 4
  %30 = load i32*, i32** %13, align 8
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @kMatchSpecLenStart, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %175

36:                                               ; preds = %6
  br label %37

37:                                               ; preds = %60, %36
  %38 = load i64, i64* %14, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RC_INIT_SIZE, align 8
  %45 = icmp slt i64 %43, %44
  br label %46

46:                                               ; preds = %40, %37
  %47 = phi i1 [ false, %37 ], [ %45, %40 ]
  br i1 %47, label %48, label %66

48:                                               ; preds = %46
  %49 = load i64*, i64** %10, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %10, align 8
  %51 = load i64, i64* %49, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = getelementptr inbounds i64, i64* %54, i64 %57
  store i64 %51, i64* %59, align 8
  br label %60

60:                                               ; preds = %48
  %61 = load i64*, i64** %11, align 8
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load i64, i64* %14, align 8
  %65 = add nsw i64 %64, -1
  store i64 %65, i64* %14, align 8
  br label %37

66:                                               ; preds = %46
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %79, i32* %7, align 4
  br label %459

80:                                               ; preds = %71, %66
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @RC_INIT_SIZE, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* @LZMA_STATUS_NEEDS_MORE_INPUT, align 4
  %88 = load i32*, i32** %13, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @SZ_OK, align 4
  store i32 %89, i32* %7, align 4
  br label %459

90:                                               ; preds = %80
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = shl i32 %96, 24
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 2
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = shl i32 %103, 16
  %105 = or i32 %97, %104
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 3
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = shl i32 %111, 8
  %113 = or i32 %105, %112
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 4
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = or i32 %113, %119
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 4
  store i32 -1, i32* %124, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @kMatchSpecLenStart, align 8
  %131 = add nsw i64 %130, 1
  %132 = icmp sgt i64 %129, %131
  br i1 %132, label %133, label %172

133:                                              ; preds = %90
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 10
  %136 = call i64 @LzmaProps_GetNumProbs(i32* %135)
  store i64 %136, i64* %15, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 5
  %139 = load i32*, i32** %138, align 8
  store i32* %139, i32** %17, align 8
  store i64 0, i64* %16, align 8
  br label %140

140:                                              ; preds = %150, %133
  %141 = load i64, i64* %16, align 8
  %142 = load i64, i64* %15, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %140
  %145 = load i32, i32* @kBitModelTotal, align 4
  %146 = ashr i32 %145, 1
  %147 = load i32*, i32** %17, align 8
  %148 = load i64, i64* %16, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32 %146, i32* %149, align 4
  br label %150

150:                                              ; preds = %144
  %151 = load i64, i64* %16, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %16, align 8
  br label %140

153:                                              ; preds = %140
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 6
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 3
  store i32 1, i32* %157, align 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 6
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  store i32 1, i32* %161, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 6
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  store i32 1, i32* %165, align 4
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 6
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  store i32 1, i32* %169, align 4
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 9
  store i64 0, i64* %171, align 8
  br label %172

172:                                              ; preds = %153, %90
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  store i64 0, i64* %174, align 8
  br label %175

175:                                              ; preds = %172, %6
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %177 = load i64, i64* %9, align 8
  %178 = call i32 @LzmaDec_WriteRem(%struct.TYPE_6__* %176, i64 %177)
  br label %179

179:                                              ; preds = %447, %175
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @kMatchSpecLenStart, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %448

185:                                              ; preds = %179
  store i32 0, i32* %18, align 4
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 7
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %9, align 8
  %190 = icmp sge i64 %188, %189
  br i1 %190, label %191, label %223

191:                                              ; preds = %185
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %191
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %196
  %202 = load i32, i32* @LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK, align 4
  %203 = load i32*, i32** %13, align 8
  store i32 %202, i32* %203, align 4
  %204 = load i32, i32* @SZ_OK, align 4
  store i32 %204, i32* %7, align 4
  br label %459

205:                                              ; preds = %196, %191
  %206 = load i64, i64* %12, align 8
  %207 = load i64, i64* @LZMA_FINISH_ANY, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %205
  %210 = load i32, i32* @LZMA_STATUS_NOT_FINISHED, align 4
  %211 = load i32*, i32** %13, align 8
  store i32 %210, i32* %211, align 4
  %212 = load i32, i32* @SZ_OK, align 4
  store i32 %212, i32* %7, align 4
  br label %459

213:                                              ; preds = %205
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %213
  %219 = load i32, i32* @LZMA_STATUS_NOT_FINISHED, align 4
  %220 = load i32*, i32** %13, align 8
  store i32 %219, i32* %220, align 4
  %221 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %221, i32* %7, align 4
  br label %459

222:                                              ; preds = %213
  store i32 1, i32* %18, align 4
  br label %223

223:                                              ; preds = %222, %185
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %312

228:                                              ; preds = %223
  %229 = load i64, i64* %14, align 8
  %230 = load i64, i64* @LZMA_REQUIRED_INPUT_MAX, align 8
  %231 = icmp slt i64 %229, %230
  br i1 %231, label %235, label %232

232:                                              ; preds = %228
  %233 = load i32, i32* %18, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %275

235:                                              ; preds = %232, %228
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %237 = load i64*, i64** %10, align 8
  %238 = load i64, i64* %14, align 8
  %239 = call i32 @LzmaDec_TryDummy(%struct.TYPE_6__* %236, i64* %237, i64 %238)
  store i32 %239, i32* %21, align 4
  %240 = load i32, i32* %21, align 4
  %241 = load i32, i32* @DUMMY_ERROR, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %262

243:                                              ; preds = %235
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 2
  %246 = load i64*, i64** %245, align 8
  %247 = load i64*, i64** %10, align 8
  %248 = load i64, i64* %14, align 8
  %249 = call i32 @memcpy(i64* %246, i64* %247, i64 %248)
  %250 = load i64, i64* %14, align 8
  %251 = trunc i64 %250 to i32
  %252 = zext i32 %251 to i64
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 1
  store i64 %252, i64* %254, align 8
  %255 = load i64, i64* %14, align 8
  %256 = load i64*, i64** %11, align 8
  %257 = load i64, i64* %256, align 8
  %258 = add nsw i64 %257, %255
  store i64 %258, i64* %256, align 8
  %259 = load i32, i32* @LZMA_STATUS_NEEDS_MORE_INPUT, align 4
  %260 = load i32*, i32** %13, align 8
  store i32 %259, i32* %260, align 4
  %261 = load i32, i32* @SZ_OK, align 4
  store i32 %261, i32* %7, align 4
  br label %459

262:                                              ; preds = %235
  %263 = load i32, i32* %18, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %262
  %266 = load i32, i32* %21, align 4
  %267 = load i32, i32* @DUMMY_MATCH, align 4
  %268 = icmp ne i32 %266, %267
  br i1 %268, label %269, label %273

269:                                              ; preds = %265
  %270 = load i32, i32* @LZMA_STATUS_NOT_FINISHED, align 4
  %271 = load i32*, i32** %13, align 8
  store i32 %270, i32* %271, align 4
  %272 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %272, i32* %7, align 4
  br label %459

273:                                              ; preds = %265, %262
  %274 = load i64*, i64** %10, align 8
  store i64* %274, i64** %20, align 8
  br label %282

275:                                              ; preds = %232
  %276 = load i64*, i64** %10, align 8
  %277 = load i64, i64* %14, align 8
  %278 = getelementptr inbounds i64, i64* %276, i64 %277
  %279 = load i64, i64* @LZMA_REQUIRED_INPUT_MAX, align 8
  %280 = sub i64 0, %279
  %281 = getelementptr inbounds i64, i64* %278, i64 %280
  store i64* %281, i64** %20, align 8
  br label %282

282:                                              ; preds = %275, %273
  %283 = load i64*, i64** %10, align 8
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 8
  store i64* %283, i64** %285, align 8
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %287 = load i64, i64* %9, align 8
  %288 = load i64*, i64** %20, align 8
  %289 = call i64 @LzmaDec_DecodeReal2(%struct.TYPE_6__* %286, i64 %287, i64* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %282
  %292 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %292, i32* %7, align 4
  br label %459

293:                                              ; preds = %282
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 8
  %296 = load i64*, i64** %295, align 8
  %297 = load i64*, i64** %10, align 8
  %298 = ptrtoint i64* %296 to i64
  %299 = ptrtoint i64* %297 to i64
  %300 = sub i64 %298, %299
  %301 = sdiv exact i64 %300, 8
  store i64 %301, i64* %19, align 8
  %302 = load i64, i64* %19, align 8
  %303 = load i64*, i64** %11, align 8
  %304 = load i64, i64* %303, align 8
  %305 = add nsw i64 %304, %302
  store i64 %305, i64* %303, align 8
  %306 = load i64, i64* %19, align 8
  %307 = load i64*, i64** %10, align 8
  %308 = getelementptr inbounds i64, i64* %307, i64 %306
  store i64* %308, i64** %10, align 8
  %309 = load i64, i64* %19, align 8
  %310 = load i64, i64* %14, align 8
  %311 = sub nsw i64 %310, %309
  store i64 %311, i64* %14, align 8
  br label %447

312:                                              ; preds = %223
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = trunc i64 %315 to i32
  store i32 %316, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %317

317:                                              ; preds = %329, %312
  %318 = load i32, i32* %22, align 4
  %319 = zext i32 %318 to i64
  %320 = load i64, i64* @LZMA_REQUIRED_INPUT_MAX, align 8
  %321 = icmp slt i64 %319, %320
  br i1 %321, label %322, label %327

322:                                              ; preds = %317
  %323 = load i32, i32* %23, align 4
  %324 = zext i32 %323 to i64
  %325 = load i64, i64* %14, align 8
  %326 = icmp slt i64 %324, %325
  br label %327

327:                                              ; preds = %322, %317
  %328 = phi i1 [ false, %317 ], [ %326, %322 ]
  br i1 %328, label %329, label %343

329:                                              ; preds = %327
  %330 = load i64*, i64** %10, align 8
  %331 = load i32, i32* %23, align 4
  %332 = add i32 %331, 1
  store i32 %332, i32* %23, align 4
  %333 = zext i32 %331 to i64
  %334 = getelementptr inbounds i64, i64* %330, i64 %333
  %335 = load i64, i64* %334, align 8
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 2
  %338 = load i64*, i64** %337, align 8
  %339 = load i32, i32* %22, align 4
  %340 = add i32 %339, 1
  store i32 %340, i32* %22, align 4
  %341 = zext i32 %339 to i64
  %342 = getelementptr inbounds i64, i64* %338, i64 %341
  store i64 %335, i64* %342, align 8
  br label %317

343:                                              ; preds = %327
  %344 = load i32, i32* %22, align 4
  %345 = zext i32 %344 to i64
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 1
  store i64 %345, i64* %347, align 8
  %348 = load i32, i32* %22, align 4
  %349 = zext i32 %348 to i64
  %350 = load i64, i64* @LZMA_REQUIRED_INPUT_MAX, align 8
  %351 = icmp slt i64 %349, %350
  br i1 %351, label %355, label %352

352:                                              ; preds = %343
  %353 = load i32, i32* %18, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %387

355:                                              ; preds = %352, %343
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %357 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 2
  %359 = load i64*, i64** %358, align 8
  %360 = load i32, i32* %22, align 4
  %361 = zext i32 %360 to i64
  %362 = call i32 @LzmaDec_TryDummy(%struct.TYPE_6__* %356, i64* %359, i64 %361)
  store i32 %362, i32* %24, align 4
  %363 = load i32, i32* %24, align 4
  %364 = load i32, i32* @DUMMY_ERROR, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %375

366:                                              ; preds = %355
  %367 = load i32, i32* %23, align 4
  %368 = zext i32 %367 to i64
  %369 = load i64*, i64** %11, align 8
  %370 = load i64, i64* %369, align 8
  %371 = add nsw i64 %370, %368
  store i64 %371, i64* %369, align 8
  %372 = load i32, i32* @LZMA_STATUS_NEEDS_MORE_INPUT, align 4
  %373 = load i32*, i32** %13, align 8
  store i32 %372, i32* %373, align 4
  %374 = load i32, i32* @SZ_OK, align 4
  store i32 %374, i32* %7, align 4
  br label %459

375:                                              ; preds = %355
  %376 = load i32, i32* %18, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %386

378:                                              ; preds = %375
  %379 = load i32, i32* %24, align 4
  %380 = load i32, i32* @DUMMY_MATCH, align 4
  %381 = icmp ne i32 %379, %380
  br i1 %381, label %382, label %386

382:                                              ; preds = %378
  %383 = load i32, i32* @LZMA_STATUS_NOT_FINISHED, align 4
  %384 = load i32*, i32** %13, align 8
  store i32 %383, i32* %384, align 4
  %385 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %385, i32* %7, align 4
  br label %459

386:                                              ; preds = %378, %375
  br label %387

387:                                              ; preds = %386, %352
  %388 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 2
  %390 = load i64*, i64** %389, align 8
  %391 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 8
  store i64* %390, i64** %392, align 8
  %393 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %394 = load i64, i64* %9, align 8
  %395 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 8
  %397 = load i64*, i64** %396, align 8
  %398 = call i64 @LzmaDec_DecodeReal2(%struct.TYPE_6__* %393, i64 %394, i64* %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %402

400:                                              ; preds = %387
  %401 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %401, i32* %7, align 4
  br label %459

402:                                              ; preds = %387
  %403 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 8
  %405 = load i64*, i64** %404, align 8
  %406 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i32 0, i32 2
  %408 = load i64*, i64** %407, align 8
  %409 = ptrtoint i64* %405 to i64
  %410 = ptrtoint i64* %408 to i64
  %411 = sub i64 %409, %410
  %412 = sdiv exact i64 %411, 8
  %413 = trunc i64 %412 to i32
  store i32 %413, i32* %25, align 4
  %414 = load i32, i32* %22, align 4
  %415 = load i32, i32* %25, align 4
  %416 = icmp ult i32 %414, %415
  br i1 %416, label %417, label %419

417:                                              ; preds = %402
  %418 = load i32, i32* @SZ_ERROR_FAIL, align 4
  store i32 %418, i32* %7, align 4
  br label %459

419:                                              ; preds = %402
  %420 = load i32, i32* %25, align 4
  %421 = load i32, i32* %22, align 4
  %422 = sub i32 %421, %420
  store i32 %422, i32* %22, align 4
  %423 = load i32, i32* %23, align 4
  %424 = load i32, i32* %22, align 4
  %425 = icmp ult i32 %423, %424
  br i1 %425, label %426, label %428

426:                                              ; preds = %419
  %427 = load i32, i32* @SZ_ERROR_FAIL, align 4
  store i32 %427, i32* %7, align 4
  br label %459

428:                                              ; preds = %419
  %429 = load i32, i32* %22, align 4
  %430 = load i32, i32* %23, align 4
  %431 = sub i32 %430, %429
  store i32 %431, i32* %23, align 4
  %432 = load i32, i32* %23, align 4
  %433 = zext i32 %432 to i64
  %434 = load i64*, i64** %11, align 8
  %435 = load i64, i64* %434, align 8
  %436 = add nsw i64 %435, %433
  store i64 %436, i64* %434, align 8
  %437 = load i32, i32* %23, align 4
  %438 = load i64*, i64** %10, align 8
  %439 = zext i32 %437 to i64
  %440 = getelementptr inbounds i64, i64* %438, i64 %439
  store i64* %440, i64** %10, align 8
  %441 = load i32, i32* %23, align 4
  %442 = zext i32 %441 to i64
  %443 = load i64, i64* %14, align 8
  %444 = sub nsw i64 %443, %442
  store i64 %444, i64* %14, align 8
  %445 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %446 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %445, i32 0, i32 1
  store i64 0, i64* %446, align 8
  br label %447

447:                                              ; preds = %428, %293
  br label %179

448:                                              ; preds = %179
  %449 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %450 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %449, i32 0, i32 3
  %451 = load i32, i32* %450, align 8
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %455

453:                                              ; preds = %448
  %454 = load i32, i32* @SZ_ERROR_DATA, align 4
  store i32 %454, i32* %7, align 4
  br label %459

455:                                              ; preds = %448
  %456 = load i32, i32* @LZMA_STATUS_FINISHED_WITH_MARK, align 4
  %457 = load i32*, i32** %13, align 8
  store i32 %456, i32* %457, align 4
  %458 = load i32, i32* @SZ_OK, align 4
  store i32 %458, i32* %7, align 4
  br label %459

459:                                              ; preds = %455, %453, %426, %417, %400, %382, %366, %291, %269, %243, %218, %209, %201, %86, %78
  %460 = load i32, i32* %7, align 4
  ret i32 %460
}

declare dso_local i64 @LzmaProps_GetNumProbs(i32*) #1

declare dso_local i32 @LzmaDec_WriteRem(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @LzmaDec_TryDummy(%struct.TYPE_6__*, i64*, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i64 @LzmaDec_DecodeReal2(%struct.TYPE_6__*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
