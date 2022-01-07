; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_ksw.c_ksw_u8.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_ksw.c_ksw_u8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32* }

@g_defr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@KSW_XSUBO = common dso_local global i32 0, align 4
@KSW_XSTOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ksw_u8(%struct.TYPE_6__* noalias sret %0, %struct.TYPE_7__* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32*, align 8
  %45 = alloca i32, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 %6, i32* %13, align 4
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %46 = bitcast %struct.TYPE_6__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 bitcast (%struct.TYPE_6__* @g_defr to i8*), i64 20, i1 false)
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @KSW_XSUBO, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %7
  %52 = load i32, i32* %13, align 4
  %53 = and i32 %52, 65535
  br label %55

54:                                               ; preds = %7
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i32 [ %53, %51 ], [ 65536, %54 ]
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @KSW_XSTOP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* %13, align 4
  %63 = and i32 %62, 65535
  br label %65

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi i32 [ %63, %61 ], [ 65536, %64 ]
  store i32 %66, i32* %21, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32* null, i32** %22, align 8
  %67 = call i32 @_mm_set1_epi32(i32 0)
  store i32 %67, i32* %23, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %68, %69
  %71 = call i32 @_mm_set1_epi8(i32 %70)
  store i32 %71, i32* %24, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @_mm_set1_epi8(i32 %72)
  store i32 %73, i32* %25, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @_mm_set1_epi8(i32 %76)
  store i32 %77, i32* %26, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 7
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %27, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 6
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %28, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  store i32* %86, i32** %29, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %30, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %93

93:                                               ; preds = %116, %65
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %93
  %98 = load i32*, i32** %29, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %23, align 4
  %103 = call i32 @_mm_store_si128(i32* %101, i32 %102)
  %104 = load i32*, i32** %27, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %23, align 4
  %109 = call i32 @_mm_store_si128(i32* %107, i32 %108)
  %110 = load i32*, i32** %30, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %23, align 4
  %115 = call i32 @_mm_store_si128(i32* %113, i32 %114)
  br label %116

116:                                              ; preds = %97
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %15, align 4
  br label %93

119:                                              ; preds = %93
  store i32 0, i32* %15, align 4
  br label %120

120:                                              ; preds = %406, %119
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %409

124:                                              ; preds = %120
  %125 = load i32, i32* %23, align 4
  store i32 %125, i32* %37, align 4
  %126 = load i32, i32* %23, align 4
  store i32 %126, i32* %38, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %14, align 4
  %136 = mul nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %129, i64 %137
  store i32* %138, i32** %39, align 8
  %139 = load i32*, i32** %27, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = getelementptr inbounds i32, i32* %142, i64 -1
  %144 = call i32 @_mm_load_si128(i32* %143)
  store i32 %144, i32* %36, align 4
  %145 = load i32, i32* %36, align 4
  %146 = call i32 @_mm_slli_si128(i32 %145, i32 1)
  store i32 %146, i32* %36, align 4
  store i32 0, i32* %31, align 4
  br label %147

147:                                              ; preds = %211, %124
  %148 = load i32, i32* %31, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp slt i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i64 @LIKELY(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %214

154:                                              ; preds = %147
  %155 = load i32, i32* %36, align 4
  %156 = load i32*, i32** %39, align 8
  %157 = load i32, i32* %31, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = call i32 @_mm_load_si128(i32* %159)
  %161 = call i32 @_mm_adds_epu8(i32 %155, i32 %160)
  store i32 %161, i32* %36, align 4
  %162 = load i32, i32* %36, align 4
  %163 = load i32, i32* %26, align 4
  %164 = call i32 @_mm_subs_epu8(i32 %162, i32 %163)
  store i32 %164, i32* %36, align 4
  %165 = load i32*, i32** %29, align 8
  %166 = load i32, i32* %31, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = call i32 @_mm_load_si128(i32* %168)
  store i32 %169, i32* %35, align 4
  %170 = load i32, i32* %36, align 4
  %171 = load i32, i32* %35, align 4
  %172 = call i32 @_mm_max_epu8(i32 %170, i32 %171)
  store i32 %172, i32* %36, align 4
  %173 = load i32, i32* %36, align 4
  %174 = load i32, i32* %37, align 4
  %175 = call i32 @_mm_max_epu8(i32 %173, i32 %174)
  store i32 %175, i32* %36, align 4
  %176 = load i32, i32* %38, align 4
  %177 = load i32, i32* %36, align 4
  %178 = call i32 @_mm_max_epu8(i32 %176, i32 %177)
  store i32 %178, i32* %38, align 4
  %179 = load i32*, i32** %28, align 8
  %180 = load i32, i32* %31, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %36, align 4
  %184 = call i32 @_mm_store_si128(i32* %182, i32 %183)
  %185 = load i32, i32* %36, align 4
  %186 = load i32, i32* %24, align 4
  %187 = call i32 @_mm_subs_epu8(i32 %185, i32 %186)
  store i32 %187, i32* %36, align 4
  %188 = load i32, i32* %35, align 4
  %189 = load i32, i32* %25, align 4
  %190 = call i32 @_mm_subs_epu8(i32 %188, i32 %189)
  store i32 %190, i32* %35, align 4
  %191 = load i32, i32* %35, align 4
  %192 = load i32, i32* %36, align 4
  %193 = call i32 @_mm_max_epu8(i32 %191, i32 %192)
  store i32 %193, i32* %35, align 4
  %194 = load i32*, i32** %29, align 8
  %195 = load i32, i32* %31, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %35, align 4
  %199 = call i32 @_mm_store_si128(i32* %197, i32 %198)
  %200 = load i32, i32* %37, align 4
  %201 = load i32, i32* %25, align 4
  %202 = call i32 @_mm_subs_epu8(i32 %200, i32 %201)
  store i32 %202, i32* %37, align 4
  %203 = load i32, i32* %37, align 4
  %204 = load i32, i32* %36, align 4
  %205 = call i32 @_mm_max_epu8(i32 %203, i32 %204)
  store i32 %205, i32* %37, align 4
  %206 = load i32*, i32** %27, align 8
  %207 = load i32, i32* %31, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = call i32 @_mm_load_si128(i32* %209)
  store i32 %210, i32* %36, align 4
  br label %211

211:                                              ; preds = %154
  %212 = load i32, i32* %31, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %31, align 4
  br label %147

214:                                              ; preds = %147
  store i32 0, i32* %32, align 4
  br label %215

215:                                              ; preds = %269, %214
  %216 = load i32, i32* %32, align 4
  %217 = icmp slt i32 %216, 16
  %218 = zext i1 %217 to i32
  %219 = call i64 @LIKELY(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %272

221:                                              ; preds = %215
  %222 = load i32, i32* %37, align 4
  %223 = call i32 @_mm_slli_si128(i32 %222, i32 1)
  store i32 %223, i32* %37, align 4
  store i32 0, i32* %31, align 4
  br label %224

224:                                              ; preds = %265, %221
  %225 = load i32, i32* %31, align 4
  %226 = load i32, i32* %14, align 4
  %227 = icmp slt i32 %225, %226
  %228 = zext i1 %227 to i32
  %229 = call i64 @LIKELY(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %268

231:                                              ; preds = %224
  %232 = load i32*, i32** %28, align 8
  %233 = load i32, i32* %31, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = call i32 @_mm_load_si128(i32* %235)
  store i32 %236, i32* %36, align 4
  %237 = load i32, i32* %36, align 4
  %238 = load i32, i32* %37, align 4
  %239 = call i32 @_mm_max_epu8(i32 %237, i32 %238)
  store i32 %239, i32* %36, align 4
  %240 = load i32*, i32** %28, align 8
  %241 = load i32, i32* %31, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %36, align 4
  %245 = call i32 @_mm_store_si128(i32* %243, i32 %244)
  %246 = load i32, i32* %36, align 4
  %247 = load i32, i32* %24, align 4
  %248 = call i32 @_mm_subs_epu8(i32 %246, i32 %247)
  store i32 %248, i32* %36, align 4
  %249 = load i32, i32* %37, align 4
  %250 = load i32, i32* %25, align 4
  %251 = call i32 @_mm_subs_epu8(i32 %249, i32 %250)
  store i32 %251, i32* %37, align 4
  %252 = load i32, i32* %37, align 4
  %253 = load i32, i32* %36, align 4
  %254 = call i32 @_mm_subs_epu8(i32 %252, i32 %253)
  %255 = load i32, i32* %23, align 4
  %256 = call i32 @_mm_cmpeq_epi8(i32 %254, i32 %255)
  %257 = call i32 @_mm_movemask_epi8(i32 %256)
  store i32 %257, i32* %33, align 4
  %258 = load i32, i32* %33, align 4
  %259 = icmp eq i32 %258, 65535
  %260 = zext i1 %259 to i32
  %261 = call i64 @UNLIKELY(i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %231
  br label %273

264:                                              ; preds = %231
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %31, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %31, align 4
  br label %224

268:                                              ; preds = %224
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %32, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %32, align 4
  br label %215

272:                                              ; preds = %215
  br label %273

273:                                              ; preds = %272, %263
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %38, align 4
  %276 = load i32, i32* %38, align 4
  %277 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srli_si128 to i32 (i32, i32, ...)*)(i32 %276, i32 8)
  %278 = call i32 @_mm_max_epu8(i32 %275, i32 %277)
  store i32 %278, i32* %38, align 4
  %279 = load i32, i32* %38, align 4
  %280 = load i32, i32* %38, align 4
  %281 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srli_si128 to i32 (i32, i32, ...)*)(i32 %280, i32 4)
  %282 = call i32 @_mm_max_epu8(i32 %279, i32 %281)
  store i32 %282, i32* %38, align 4
  %283 = load i32, i32* %38, align 4
  %284 = load i32, i32* %38, align 4
  %285 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srli_si128 to i32 (i32, i32, ...)*)(i32 %284, i32 2)
  %286 = call i32 @_mm_max_epu8(i32 %283, i32 %285)
  store i32 %286, i32* %38, align 4
  %287 = load i32, i32* %38, align 4
  %288 = load i32, i32* %38, align 4
  %289 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_srli_si128 to i32 (i32, i32, ...)*)(i32 %288, i32 1)
  %290 = call i32 @_mm_max_epu8(i32 %287, i32 %289)
  store i32 %290, i32* %38, align 4
  %291 = load i32, i32* %38, align 4
  %292 = call i32 (i32, i32, ...) bitcast (i32 (...)* @_mm_extract_epi16 to i32 (i32, i32, ...)*)(i32 %291, i32 0)
  %293 = and i32 %292, 255
  store i32 %293, i32* %34, align 4
  br label %294

294:                                              ; preds = %274
  %295 = load i32, i32* %34, align 4
  %296 = load i32, i32* %20, align 4
  %297 = icmp sge i32 %295, %296
  br i1 %297, label %298, label %361

298:                                              ; preds = %294
  %299 = load i32, i32* %17, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %311, label %301

301:                                              ; preds = %298
  %302 = load i32*, i32** %22, align 8
  %303 = load i32, i32* %17, align 4
  %304 = sub nsw i32 %303, 1
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %302, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = add nsw i32 %307, 1
  %309 = load i32, i32* %15, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %311, label %339

311:                                              ; preds = %301, %298
  %312 = load i32, i32* %17, align 4
  %313 = load i32, i32* %16, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %329

315:                                              ; preds = %311
  %316 = load i32, i32* %16, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %315
  %319 = load i32, i32* %16, align 4
  %320 = shl i32 %319, 1
  br label %322

321:                                              ; preds = %315
  br label %322

322:                                              ; preds = %321, %318
  %323 = phi i32 [ %320, %318 ], [ 8, %321 ]
  store i32 %323, i32* %16, align 4
  %324 = load i32*, i32** %22, align 8
  %325 = load i32, i32* %16, align 4
  %326 = mul nsw i32 8, %325
  %327 = call i64 @realloc(i32* %324, i32 %326)
  %328 = inttoptr i64 %327 to i32*
  store i32* %328, i32** %22, align 8
  br label %329

329:                                              ; preds = %322, %311
  %330 = load i32, i32* %34, align 4
  %331 = shl i32 %330, 32
  %332 = load i32, i32* %15, align 4
  %333 = or i32 %331, %332
  %334 = load i32*, i32** %22, align 8
  %335 = load i32, i32* %17, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %17, align 4
  %337 = sext i32 %335 to i64
  %338 = getelementptr inbounds i32, i32* %334, i64 %337
  store i32 %333, i32* %338, align 4
  br label %360

339:                                              ; preds = %301
  %340 = load i32*, i32** %22, align 8
  %341 = load i32, i32* %17, align 4
  %342 = sub nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %340, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = ashr i32 %345, 32
  %347 = load i32, i32* %34, align 4
  %348 = icmp slt i32 %346, %347
  br i1 %348, label %349, label %359

349:                                              ; preds = %339
  %350 = load i32, i32* %34, align 4
  %351 = shl i32 %350, 32
  %352 = load i32, i32* %15, align 4
  %353 = or i32 %351, %352
  %354 = load i32*, i32** %22, align 8
  %355 = load i32, i32* %17, align 4
  %356 = sub nsw i32 %355, 1
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %354, i64 %357
  store i32 %353, i32* %358, align 4
  br label %359

359:                                              ; preds = %349, %339
  br label %360

360:                                              ; preds = %359, %329
  br label %361

361:                                              ; preds = %360, %294
  %362 = load i32, i32* %34, align 4
  %363 = load i32, i32* %19, align 4
  %364 = icmp sgt i32 %362, %363
  br i1 %364, label %365, label %402

365:                                              ; preds = %361
  %366 = load i32, i32* %34, align 4
  store i32 %366, i32* %19, align 4
  %367 = load i32, i32* %15, align 4
  store i32 %367, i32* %18, align 4
  store i32 0, i32* %31, align 4
  br label %368

368:                                              ; preds = %386, %365
  %369 = load i32, i32* %31, align 4
  %370 = load i32, i32* %14, align 4
  %371 = icmp slt i32 %369, %370
  %372 = zext i1 %371 to i32
  %373 = call i64 @LIKELY(i32 %372)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %389

375:                                              ; preds = %368
  %376 = load i32*, i32** %30, align 8
  %377 = load i32, i32* %31, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  %380 = load i32*, i32** %28, align 8
  %381 = load i32, i32* %31, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %380, i64 %382
  %384 = call i32 @_mm_load_si128(i32* %383)
  %385 = call i32 @_mm_store_si128(i32* %379, i32 %384)
  br label %386

386:                                              ; preds = %375
  %387 = load i32, i32* %31, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %31, align 4
  br label %368

389:                                              ; preds = %368
  %390 = load i32, i32* %19, align 4
  %391 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %392 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = add nsw i32 %390, %393
  %395 = icmp sge i32 %394, 255
  br i1 %395, label %400, label %396

396:                                              ; preds = %389
  %397 = load i32, i32* %19, align 4
  %398 = load i32, i32* %21, align 4
  %399 = icmp sge i32 %397, %398
  br i1 %399, label %400, label %401

400:                                              ; preds = %396, %389
  br label %409

401:                                              ; preds = %396
  br label %402

402:                                              ; preds = %401, %361
  %403 = load i32*, i32** %28, align 8
  store i32* %403, i32** %39, align 8
  %404 = load i32*, i32** %27, align 8
  store i32* %404, i32** %28, align 8
  %405 = load i32*, i32** %39, align 8
  store i32* %405, i32** %27, align 8
  br label %406

406:                                              ; preds = %402
  %407 = load i32, i32* %15, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %15, align 4
  br label %120

409:                                              ; preds = %400, %120
  %410 = load i32, i32* %19, align 4
  %411 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = add nsw i32 %410, %413
  %415 = icmp slt i32 %414, 255
  br i1 %415, label %416, label %418

416:                                              ; preds = %409
  %417 = load i32, i32* %19, align 4
  br label %419

418:                                              ; preds = %409
  br label %419

419:                                              ; preds = %418, %416
  %420 = phi i32 [ %417, %416 ], [ 255, %418 ]
  %421 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  store i32 %420, i32* %421, align 4
  %422 = load i32, i32* %18, align 4
  %423 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  store i32 %422, i32* %423, align 4
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = icmp ne i32 %425, 255
  br i1 %426, label %427, label %521

427:                                              ; preds = %419
  store i32 -1, i32* %40, align 4
  %428 = load i32, i32* %14, align 4
  %429 = mul nsw i32 %428, 16
  store i32 %429, i32* %43, align 4
  %430 = load i32*, i32** %30, align 8
  store i32* %430, i32** %44, align 8
  store i32 0, i32* %15, align 4
  br label %431

431:                                              ; preds = %452, %427
  %432 = load i32, i32* %15, align 4
  %433 = load i32, i32* %43, align 4
  %434 = icmp slt i32 %432, %433
  br i1 %434, label %435, label %457

435:                                              ; preds = %431
  %436 = load i32*, i32** %44, align 8
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* %40, align 4
  %439 = icmp sgt i32 %437, %438
  br i1 %439, label %440, label %451

440:                                              ; preds = %435
  %441 = load i32*, i32** %44, align 8
  %442 = load i32, i32* %441, align 4
  store i32 %442, i32* %40, align 4
  %443 = load i32, i32* %15, align 4
  %444 = sdiv i32 %443, 16
  %445 = load i32, i32* %15, align 4
  %446 = srem i32 %445, 16
  %447 = load i32, i32* %14, align 4
  %448 = mul nsw i32 %446, %447
  %449 = add nsw i32 %444, %448
  %450 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  store i32 %449, i32* %450, align 4
  br label %451

451:                                              ; preds = %440, %435
  br label %452

452:                                              ; preds = %451
  %453 = load i32, i32* %15, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %15, align 4
  %455 = load i32*, i32** %44, align 8
  %456 = getelementptr inbounds i32, i32* %455, i32 1
  store i32* %456, i32** %44, align 8
  br label %431

457:                                              ; preds = %431
  %458 = load i32*, i32** %22, align 8
  %459 = icmp ne i32* %458, null
  br i1 %459, label %460, label %520

460:                                              ; preds = %457
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %462 = load i32, i32* %461, align 4
  %463 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %464 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 8
  %466 = add nsw i32 %462, %465
  %467 = sub nsw i32 %466, 1
  %468 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %469 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %468, i32 0, i32 2
  %470 = load i32, i32* %469, align 8
  %471 = sdiv i32 %467, %470
  store i32 %471, i32* %15, align 4
  %472 = load i32, i32* %18, align 4
  %473 = load i32, i32* %15, align 4
  %474 = sub nsw i32 %472, %473
  store i32 %474, i32* %41, align 4
  %475 = load i32, i32* %18, align 4
  %476 = load i32, i32* %15, align 4
  %477 = add nsw i32 %475, %476
  store i32 %477, i32* %42, align 4
  store i32 0, i32* %15, align 4
  br label %478

478:                                              ; preds = %516, %460
  %479 = load i32, i32* %15, align 4
  %480 = load i32, i32* %17, align 4
  %481 = icmp slt i32 %479, %480
  br i1 %481, label %482, label %519

482:                                              ; preds = %478
  %483 = load i32*, i32** %22, align 8
  %484 = load i32, i32* %15, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i32, i32* %483, i64 %485
  %487 = load i32, i32* %486, align 4
  store i32 %487, i32* %45, align 4
  %488 = load i32, i32* %45, align 4
  %489 = load i32, i32* %41, align 4
  %490 = icmp slt i32 %488, %489
  br i1 %490, label %495, label %491

491:                                              ; preds = %482
  %492 = load i32, i32* %45, align 4
  %493 = load i32, i32* %42, align 4
  %494 = icmp sgt i32 %492, %493
  br i1 %494, label %495, label %515

495:                                              ; preds = %491, %482
  %496 = load i32*, i32** %22, align 8
  %497 = load i32, i32* %15, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i32, i32* %496, i64 %498
  %500 = load i32, i32* %499, align 4
  %501 = ashr i32 %500, 32
  %502 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %503 = load i32, i32* %502, align 4
  %504 = icmp sgt i32 %501, %503
  br i1 %504, label %505, label %515

505:                                              ; preds = %495
  %506 = load i32*, i32** %22, align 8
  %507 = load i32, i32* %15, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i32, i32* %506, i64 %508
  %510 = load i32, i32* %509, align 4
  %511 = ashr i32 %510, 32
  %512 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  store i32 %511, i32* %512, align 4
  %513 = load i32, i32* %45, align 4
  %514 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  store i32 %513, i32* %514, align 4
  br label %515

515:                                              ; preds = %505, %495, %491
  br label %516

516:                                              ; preds = %515
  %517 = load i32, i32* %15, align 4
  %518 = add nsw i32 %517, 1
  store i32 %518, i32* %15, align 4
  br label %478

519:                                              ; preds = %478
  br label %520

520:                                              ; preds = %519, %457
  br label %521

521:                                              ; preds = %520, %419
  %522 = load i32*, i32** %22, align 8
  %523 = call i32 @free(i32* %522)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_mm_set1_epi32(i32) #2

declare dso_local i32 @_mm_set1_epi8(i32) #2

declare dso_local i32 @_mm_store_si128(i32*, i32) #2

declare dso_local i32 @_mm_load_si128(i32*) #2

declare dso_local i32 @_mm_slli_si128(i32, i32) #2

declare dso_local i64 @LIKELY(i32) #2

declare dso_local i32 @_mm_adds_epu8(i32, i32) #2

declare dso_local i32 @_mm_subs_epu8(i32, i32) #2

declare dso_local i32 @_mm_max_epu8(i32, i32) #2

declare dso_local i32 @_mm_movemask_epi8(i32) #2

declare dso_local i32 @_mm_cmpeq_epi8(i32, i32) #2

declare dso_local i64 @UNLIKELY(i32) #2

declare dso_local i32 @_mm_srli_si128(...) #2

declare dso_local i32 @_mm_extract_epi16(...) #2

declare dso_local i64 @realloc(i32*, i32) #2

declare dso_local i32 @free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
