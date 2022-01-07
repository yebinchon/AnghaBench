; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_FillDistancesPrices.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_FillDistancesPrices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32**, i32**, i32**, i64, i32* }

@kNumFullDistances = common dso_local global i32 0, align 4
@kStartPosModelIndex = common dso_local global i32 0, align 4
@kNumLenToPosStates = common dso_local global i32 0, align 4
@kNumPosSlotBits = common dso_local global i32 0, align 4
@kEndPosModelIndex = common dso_local global i32 0, align 4
@kNumAlignBits = common dso_local global i32 0, align 4
@kNumBitPriceShiftBits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @FillDistancesPrices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FillDistancesPrices(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %29 = load i32, i32* @kNumFullDistances, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %3, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %4, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %7, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @kStartPosModelIndex, align 4
  %39 = sdiv i32 %38, 2
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %118, %1
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @kNumFullDistances, align 4
  %43 = sdiv i32 %42, 2
  %44 = icmp ult i32 %41, %43
  br i1 %44, label %45, label %121

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @GetPosSlot1(i32 %46)
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = lshr i32 %49, 1
  %51 = sub i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, 1
  %54 = or i32 2, %53
  %55 = load i32, i32* %9, align 4
  %56 = shl i32 %54, %55
  store i32 %56, i32* %10, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = mul i64 %61, 2
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32* %63, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %9, align 4
  %66 = shl i32 1, %65
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %10, align 4
  %69 = add i32 %68, %67
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %45
  br label %73

73:                                               ; preds = %91, %72
  %74 = load i32, i32* %14, align 4
  %75 = and i32 %74, 1
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %14, align 4
  %77 = lshr i32 %76, 1
  store i32 %77, i32* %14, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %13, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @GET_PRICEa(i32 %82, i32 %83)
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = shl i32 %87, 1
  %89 = load i32, i32* %16, align 4
  %90 = add i32 %88, %89
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %73
  %92 = load i32, i32* %9, align 4
  %93 = add i32 %92, -1
  store i32 %93, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %73, label %95

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %95, %45
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %13, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %17, align 4
  %104 = call i32 @GET_PRICEa_0(i32 %103)
  %105 = add nsw i32 %102, %104
  %106 = load i32, i32* %10, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %32, i64 %107
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %17, align 4
  %111 = call i32 @GET_PRICEa_1(i32 %110)
  %112 = add nsw i32 %109, %111
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %15, align 4
  %115 = add i32 %113, %114
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %32, i64 %116
  store i32 %112, i32* %117, align 4
  br label %118

118:                                              ; preds = %96
  %119 = load i32, i32* %5, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %40

121:                                              ; preds = %40
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %354, %121
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @kNumLenToPosStates, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %126, label %357

126:                                              ; preds = %122
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  %131 = ashr i32 %130, 1
  store i32 %131, i32* %19, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = load i32**, i32*** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  %138 = load i32*, i32** %137, align 8
  store i32* %138, i32** %20, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 3
  %141 = load i32**, i32*** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %141, i64 %143
  %145 = load i32*, i32** %144, align 8
  store i32* %145, i32** %21, align 8
  store i32 0, i32* %18, align 4
  br label %146

146:                                              ; preds = %248, %126
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %19, align 4
  %149 = icmp ult i32 %147, %148
  br i1 %149, label %150, label %251

150:                                              ; preds = %146
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* @kNumPosSlotBits, align 4
  %153 = sub nsw i32 %152, 1
  %154 = shl i32 1, %153
  %155 = add i32 %151, %154
  store i32 %155, i32* %24, align 4
  %156 = load i32, i32* %24, align 4
  %157 = and i32 %156, 1
  store i32 %157, i32* %23, align 4
  %158 = load i32, i32* %24, align 4
  %159 = lshr i32 %158, 1
  store i32 %159, i32* %24, align 4
  %160 = load i32*, i32** %21, align 8
  %161 = load i32, i32* %24, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %23, align 4
  %166 = call i32 @GET_PRICEa(i32 %164, i32 %165)
  store i32 %166, i32* %22, align 4
  %167 = load i32, i32* %24, align 4
  %168 = and i32 %167, 1
  store i32 %168, i32* %23, align 4
  %169 = load i32, i32* %24, align 4
  %170 = lshr i32 %169, 1
  store i32 %170, i32* %24, align 4
  %171 = load i32*, i32** %21, align 8
  %172 = load i32, i32* %24, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %23, align 4
  %177 = call i32 @GET_PRICEa(i32 %175, i32 %176)
  %178 = load i32, i32* %22, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %22, align 4
  %180 = load i32, i32* %24, align 4
  %181 = and i32 %180, 1
  store i32 %181, i32* %23, align 4
  %182 = load i32, i32* %24, align 4
  %183 = lshr i32 %182, 1
  store i32 %183, i32* %24, align 4
  %184 = load i32*, i32** %21, align 8
  %185 = load i32, i32* %24, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %23, align 4
  %190 = call i32 @GET_PRICEa(i32 %188, i32 %189)
  %191 = load i32, i32* %22, align 4
  %192 = add nsw i32 %191, %190
  store i32 %192, i32* %22, align 4
  %193 = load i32, i32* %24, align 4
  %194 = and i32 %193, 1
  store i32 %194, i32* %23, align 4
  %195 = load i32, i32* %24, align 4
  %196 = lshr i32 %195, 1
  store i32 %196, i32* %24, align 4
  %197 = load i32*, i32** %21, align 8
  %198 = load i32, i32* %24, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %23, align 4
  %203 = call i32 @GET_PRICEa(i32 %201, i32 %202)
  %204 = load i32, i32* %22, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %22, align 4
  %206 = load i32, i32* %24, align 4
  %207 = and i32 %206, 1
  store i32 %207, i32* %23, align 4
  %208 = load i32, i32* %24, align 4
  %209 = lshr i32 %208, 1
  store i32 %209, i32* %24, align 4
  %210 = load i32*, i32** %21, align 8
  %211 = load i32, i32* %24, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %23, align 4
  %216 = call i32 @GET_PRICEa(i32 %214, i32 %215)
  %217 = load i32, i32* %22, align 4
  %218 = add nsw i32 %217, %216
  store i32 %218, i32* %22, align 4
  %219 = load i32*, i32** %21, align 8
  %220 = load i32, i32* %18, align 4
  %221 = zext i32 %220 to i64
  %222 = load i32, i32* @kNumPosSlotBits, align 4
  %223 = sub nsw i32 %222, 1
  %224 = shl i32 1, %223
  %225 = sext i32 %224 to i64
  %226 = add i64 %221, %225
  %227 = getelementptr inbounds i32, i32* %219, i64 %226
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %25, align 4
  %229 = load i32, i32* %22, align 4
  %230 = load i32, i32* %25, align 4
  %231 = call i32 @GET_PRICEa_0(i32 %230)
  %232 = add nsw i32 %229, %231
  %233 = load i32*, i32** %20, align 8
  %234 = load i32, i32* %18, align 4
  %235 = zext i32 %234 to i64
  %236 = mul i64 %235, 2
  %237 = getelementptr inbounds i32, i32* %233, i64 %236
  store i32 %232, i32* %237, align 4
  %238 = load i32, i32* %22, align 4
  %239 = load i32, i32* %25, align 4
  %240 = call i32 @GET_PRICEa_1(i32 %239)
  %241 = add nsw i32 %238, %240
  %242 = load i32*, i32** %20, align 8
  %243 = load i32, i32* %18, align 4
  %244 = zext i32 %243 to i64
  %245 = mul i64 %244, 2
  %246 = add i64 %245, 1
  %247 = getelementptr inbounds i32, i32* %242, i64 %246
  store i32 %241, i32* %247, align 4
  br label %248

248:                                              ; preds = %150
  %249 = load i32, i32* %18, align 4
  %250 = add i32 %249, 1
  store i32 %250, i32* %18, align 4
  br label %146

251:                                              ; preds = %146
  %252 = load i32, i32* @kEndPosModelIndex, align 4
  %253 = sdiv i32 %252, 2
  %254 = sub nsw i32 %253, 1
  %255 = load i32, i32* @kNumAlignBits, align 4
  %256 = sub nsw i32 %254, %255
  %257 = load i32, i32* @kNumBitPriceShiftBits, align 4
  %258 = shl i32 %256, %257
  store i32 %258, i32* %26, align 4
  %259 = load i32, i32* @kEndPosModelIndex, align 4
  %260 = sdiv i32 %259, 2
  store i32 %260, i32* %18, align 4
  br label %261

261:                                              ; preds = %287, %251
  %262 = load i32, i32* %18, align 4
  %263 = load i32, i32* %19, align 4
  %264 = icmp ult i32 %262, %263
  br i1 %264, label %265, label %290

265:                                              ; preds = %261
  %266 = load i32, i32* %26, align 4
  %267 = load i32*, i32** %20, align 8
  %268 = load i32, i32* %18, align 4
  %269 = zext i32 %268 to i64
  %270 = mul i64 %269, 2
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %272, %266
  store i32 %273, i32* %271, align 4
  %274 = load i32, i32* %26, align 4
  %275 = load i32*, i32** %20, align 8
  %276 = load i32, i32* %18, align 4
  %277 = zext i32 %276 to i64
  %278 = mul i64 %277, 2
  %279 = add i64 %278, 1
  %280 = getelementptr inbounds i32, i32* %275, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = add nsw i32 %281, %274
  store i32 %282, i32* %280, align 4
  %283 = load i32, i32* @kNumBitPriceShiftBits, align 4
  %284 = shl i32 1, %283
  %285 = load i32, i32* %26, align 4
  %286 = add nsw i32 %285, %284
  store i32 %286, i32* %26, align 4
  br label %287

287:                                              ; preds = %265
  %288 = load i32, i32* %18, align 4
  %289 = add i32 %288, 1
  store i32 %289, i32* %18, align 4
  br label %261

290:                                              ; preds = %261
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 4
  %293 = load i32**, i32*** %292, align 8
  %294 = load i32, i32* %6, align 4
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds i32*, i32** %293, i64 %295
  %297 = load i32*, i32** %296, align 8
  store i32* %297, i32** %27, align 8
  %298 = load i32*, i32** %20, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 0
  %300 = load i32, i32* %299, align 4
  %301 = load i32*, i32** %27, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 0
  store i32 %300, i32* %302, align 4
  %303 = load i32*, i32** %20, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 1
  %305 = load i32, i32* %304, align 4
  %306 = load i32*, i32** %27, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 1
  store i32 %305, i32* %307, align 4
  %308 = load i32*, i32** %20, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 2
  %310 = load i32, i32* %309, align 4
  %311 = load i32*, i32** %27, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 2
  store i32 %310, i32* %312, align 4
  %313 = load i32*, i32** %20, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 3
  %315 = load i32, i32* %314, align 4
  %316 = load i32*, i32** %27, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 3
  store i32 %315, i32* %317, align 4
  store i32 4, i32* %5, align 4
  br label %318

318:                                              ; preds = %350, %290
  %319 = load i32, i32* %5, align 4
  %320 = load i32, i32* @kNumFullDistances, align 4
  %321 = icmp ult i32 %319, %320
  br i1 %321, label %322, label %353

322:                                              ; preds = %318
  %323 = load i32*, i32** %20, align 8
  %324 = load i32, i32* %5, align 4
  %325 = call i64 @GetPosSlot1(i32 %324)
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  store i32 %327, i32* %28, align 4
  %328 = load i32, i32* %28, align 4
  %329 = load i32, i32* %5, align 4
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %32, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = add nsw i32 %328, %332
  %334 = load i32*, i32** %27, align 8
  %335 = load i32, i32* %5, align 4
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  store i32 %333, i32* %337, align 4
  %338 = load i32, i32* %28, align 4
  %339 = load i32, i32* %5, align 4
  %340 = add i32 %339, 1
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %32, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = add nsw i32 %338, %343
  %345 = load i32*, i32** %27, align 8
  %346 = load i32, i32* %5, align 4
  %347 = add i32 %346, 1
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %345, i64 %348
  store i32 %344, i32* %349, align 4
  br label %350

350:                                              ; preds = %322
  %351 = load i32, i32* %5, align 4
  %352 = add i32 %351, 2
  store i32 %352, i32* %5, align 4
  br label %318

353:                                              ; preds = %318
  br label %354

354:                                              ; preds = %353
  %355 = load i32, i32* %6, align 4
  %356 = add i32 %355, 1
  store i32 %356, i32* %6, align 4
  br label %122

357:                                              ; preds = %122
  %358 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %358)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetPosSlot1(i32) #2

declare dso_local i32 @GET_PRICEa(i32, i32) #2

declare dso_local i32 @GET_PRICEa_0(i32) #2

declare dso_local i32 @GET_PRICEa_1(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
