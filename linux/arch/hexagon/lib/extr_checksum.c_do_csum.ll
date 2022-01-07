; ModuleID = '/home/carl/AnghaBench/linux/arch/hexagon/lib/extr_checksum.c_do_csum.c'
source_filename = "/home/carl/AnghaBench/linux/arch/hexagon/lib/extr_checksum.c_do_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_csum(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i16*, align 8
  %20 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %21 = load i8*, i8** %4, align 8
  store i8* %21, i8** %18, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %316

25:                                               ; preds = %2
  %26 = load i8*, i8** %18, align 8
  %27 = ptrtoint i8* %26 to i32
  %28 = and i32 %27, 15
  %29 = sub nsw i32 16, %28
  %30 = and i32 15, %29
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @HEXAGON_R_cl0_R(i32 %31)
  %33 = zext i32 %32 to i64
  %34 = lshr i64 2147483647, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %17, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %14, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = and i32 %42, 15
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %15, align 4
  %45 = ashr i32 %44, 4
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = shl i32 %46, 18
  store i32 %47, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %48 = load i32, i32* %14, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %25
  %52 = load i8*, i8** %18, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = shl i32 %55, 8
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %51, %25
  %60 = load i8*, i8** %18, align 8
  %61 = load i32, i32* %14, align 4
  %62 = and i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  %65 = bitcast i8* %64 to i16*
  store i16* %65, i16** %19, align 8
  %66 = load i32, i32* %14, align 4
  %67 = and i32 %66, 2
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %59
  %70 = load i16*, i16** %19, align 8
  %71 = getelementptr inbounds i16, i16* %70, i64 0
  %72 = load i16, i16* %71, align 2
  %73 = zext i16 %72 to i32
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %69, %59
  %77 = load i8*, i8** %18, align 8
  %78 = load i32, i32* %14, align 4
  %79 = and i32 %78, 3
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = bitcast i8* %81 to i32*
  store i32* %82, i32** %20, align 8
  %83 = load i32, i32* %14, align 4
  %84 = and i32 %83, 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %76
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @VR_NEGATE(i32 0, i32 0, i32 1, i32 1)
  %89 = load i32*, i32** %20, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %88, %91
  %93 = call i64 @VR_SELECT(i32 0, i32 0, i32 1, i32 1)
  %94 = call i32 @HEXAGON_P_vrmpyhacc_PP(i32 %87, i32 %92, i64 %93)
  store i32 %94, i32* %6, align 4
  %95 = call i64 @VR_SELECT(i32 0, i32 0, i32 1, i32 0)
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %86, %76
  %101 = load i8*, i8** %18, align 8
  %102 = load i32, i32* %14, align 4
  %103 = and i32 %102, 7
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  %106 = bitcast i8* %105 to i32*
  store i32* %106, i32** %12, align 8
  %107 = load i32, i32* %14, align 4
  %108 = and i32 %107, 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %100
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @VR_NEGATE(i32 1, i32 1, i32 1, i32 1)
  %113 = load i32*, i32** %12, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = xor i32 %112, %115
  %117 = call i64 @VR_SELECT(i32 1, i32 1, i32 1, i32 1)
  %118 = call i32 @HEXAGON_P_vrmpyhacc_PP(i32 %111, i32 %116, i64 %117)
  store i32 %118, i32* %7, align 4
  %119 = call i64 @VR_CARRY(i32 0, i32 0, i32 1, i32 0)
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %110, %100
  %125 = load i8*, i8** %18, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = bitcast i8* %128 to i32*
  store i32* %129, i32** %10, align 8
  %130 = load i8*, i8** %18, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = getelementptr inbounds i8, i8* %133, i64 8
  %135 = bitcast i8* %134 to i32*
  store i32* %135, i32** %11, align 8
  %136 = load i32, i32* %15, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %193

138:                                              ; preds = %124
  %139 = load i32*, i32** %11, align 8
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %8, align 4
  %141 = load i32*, i32** %11, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  store i32* %142, i32** %11, align 8
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %9, align 4
  %145 = load i32*, i32** %10, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  store i32* %146, i32** %10, align 8
  %147 = load i32, i32* %15, align 4
  %148 = icmp sgt i32 %147, 1
  br i1 %148, label %149, label %180

149:                                              ; preds = %138
  store i32 0, i32* %13, align 4
  br label %150

150:                                              ; preds = %176, %149
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %15, align 4
  %153 = sub nsw i32 %152, 1
  %154 = icmp slt i32 %151, %153
  br i1 %154, label %155, label %179

155:                                              ; preds = %150
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @VR_NEGATE(i32 1, i32 1, i32 1, i32 1)
  %159 = xor i32 %157, %158
  %160 = call i64 @VR_SELECT(i32 1, i32 1, i32 1, i32 1)
  %161 = call i32 @HEXAGON_P_vrmpyhacc_PP(i32 %156, i32 %159, i64 %160)
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @VR_NEGATE(i32 1, i32 1, i32 1, i32 1)
  %165 = xor i32 %163, %164
  %166 = call i64 @VR_SELECT(i32 1, i32 1, i32 1, i32 1)
  %167 = call i32 @HEXAGON_P_vrmpyhacc_PP(i32 %162, i32 %165, i64 %166)
  store i32 %167, i32* %7, align 4
  %168 = load i32*, i32** %11, align 8
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %8, align 4
  %170 = load i32*, i32** %11, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 2
  store i32* %171, i32** %11, align 8
  %172 = load i32*, i32** %10, align 8
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %9, align 4
  %174 = load i32*, i32** %10, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  store i32* %175, i32** %10, align 8
  br label %176

176:                                              ; preds = %155
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %13, align 4
  br label %150

179:                                              ; preds = %150
  br label %180

180:                                              ; preds = %179, %138
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @VR_NEGATE(i32 1, i32 1, i32 1, i32 1)
  %184 = xor i32 %182, %183
  %185 = call i64 @VR_SELECT(i32 1, i32 1, i32 1, i32 1)
  %186 = call i32 @HEXAGON_P_vrmpyhacc_PP(i32 %181, i32 %184, i64 %185)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @VR_NEGATE(i32 1, i32 1, i32 1, i32 1)
  %190 = xor i32 %188, %189
  %191 = call i64 @VR_SELECT(i32 1, i32 1, i32 1, i32 1)
  %192 = call i32 @HEXAGON_P_vrmpyhacc_PP(i32 %187, i32 %190, i64 %191)
  store i32 %192, i32* %7, align 4
  br label %193

193:                                              ; preds = %180, %124
  %194 = load i8*, i8** %18, align 8
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %15, align 4
  %197 = mul nsw i32 %196, 16
  %198 = add nsw i32 %195, %197
  %199 = load i32, i32* %16, align 4
  %200 = and i32 %199, 8
  %201 = add nsw i32 %198, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %194, i64 %202
  %204 = bitcast i8* %203 to i32*
  store i32* %204, i32** %20, align 8
  %205 = load i32, i32* %16, align 4
  %206 = and i32 %205, 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %193
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @VR_NEGATE(i32 0, i32 0, i32 1, i32 1)
  %211 = load i32*, i32** %20, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  %213 = load i32, i32* %212, align 4
  %214 = xor i32 %210, %213
  %215 = call i64 @VR_SELECT(i32 0, i32 0, i32 1, i32 1)
  %216 = call i32 @HEXAGON_P_vrmpyhacc_PP(i32 %209, i32 %214, i64 %215)
  store i32 %216, i32* %7, align 4
  %217 = call i64 @VR_SELECT(i32 0, i32 0, i32 1, i32 0)
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = add nsw i64 %219, %217
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %7, align 4
  br label %222

222:                                              ; preds = %208, %193
  %223 = load i8*, i8** %18, align 8
  %224 = load i32, i32* %14, align 4
  %225 = load i32, i32* %15, align 4
  %226 = mul nsw i32 %225, 16
  %227 = add nsw i32 %224, %226
  %228 = load i32, i32* %16, align 4
  %229 = and i32 %228, 12
  %230 = add nsw i32 %227, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %223, i64 %231
  %233 = bitcast i8* %232 to i16*
  store i16* %233, i16** %19, align 8
  %234 = load i32, i32* %16, align 4
  %235 = and i32 %234, 2
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %222
  %238 = load i16*, i16** %19, align 8
  %239 = getelementptr inbounds i16, i16* %238, i64 0
  %240 = load i16, i16* %239, align 2
  %241 = zext i16 %240 to i32
  %242 = load i32, i32* %6, align 4
  %243 = add nsw i32 %242, %241
  store i32 %243, i32* %6, align 4
  br label %244

244:                                              ; preds = %237, %222
  %245 = load i32, i32* %16, align 4
  %246 = and i32 %245, 1
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %263

248:                                              ; preds = %244
  %249 = load i8*, i8** %18, align 8
  %250 = load i32, i32* %14, align 4
  %251 = load i32, i32* %15, align 4
  %252 = mul nsw i32 %251, 16
  %253 = add nsw i32 %250, %252
  %254 = load i32, i32* %16, align 4
  %255 = and i32 %254, 14
  %256 = add nsw i32 %253, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %249, i64 %257
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = load i32, i32* %7, align 4
  %262 = add nsw i32 %261, %260
  store i32 %262, i32* %7, align 4
  br label %263

263:                                              ; preds = %248, %244
  %264 = load i8*, i8** %18, align 8
  %265 = load i32, i32* %14, align 4
  %266 = load i32, i32* %15, align 4
  %267 = mul nsw i32 %266, 16
  %268 = add nsw i32 %265, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %264, i64 %269
  %271 = bitcast i8* %270 to i32*
  store i32* %271, i32** %12, align 8
  %272 = load i32, i32* %16, align 4
  %273 = and i32 %272, 8
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %289

275:                                              ; preds = %263
  %276 = load i32, i32* %6, align 4
  %277 = call i32 @VR_NEGATE(i32 1, i32 1, i32 1, i32 1)
  %278 = load i32*, i32** %12, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 0
  %280 = load i32, i32* %279, align 4
  %281 = xor i32 %277, %280
  %282 = call i64 @VR_SELECT(i32 1, i32 1, i32 1, i32 1)
  %283 = call i32 @HEXAGON_P_vrmpyhacc_PP(i32 %276, i32 %281, i64 %282)
  store i32 %283, i32* %6, align 4
  %284 = call i64 @VR_CARRY(i32 0, i32 0, i32 1, i32 0)
  %285 = load i32, i32* %6, align 4
  %286 = sext i32 %285 to i64
  %287 = add nsw i64 %286, %284
  %288 = trunc i64 %287 to i32
  store i32 %288, i32* %6, align 4
  br label %289

289:                                              ; preds = %275, %263
  %290 = load i32, i32* %6, align 4
  %291 = load i32, i32* %7, align 4
  %292 = add nsw i32 %290, %291
  %293 = call i32 @VR_NEGATE(i32 0, i32 0, i32 0, i32 1)
  %294 = xor i32 %292, %293
  %295 = call i64 @VR_SELECT(i32 0, i32 0, i32 1, i32 1)
  %296 = call i32 @HEXAGON_P_vrmpyh_PP(i32 %294, i64 %295)
  store i32 %296, i32* %6, align 4
  %297 = call i32 @VR_NEGATE(i32 0, i32 0, i32 0, i32 1)
  %298 = load i32, i32* %6, align 4
  %299 = add nsw i32 %298, %297
  store i32 %299, i32* %6, align 4
  %300 = load i32, i32* %6, align 4
  %301 = call i64 @VR_SELECT(i32 0, i32 0, i32 1, i32 1)
  %302 = call i32 @HEXAGON_P_vrmpyh_PP(i32 %300, i64 %301)
  store i32 %302, i32* %6, align 4
  %303 = load i32, i32* %14, align 4
  %304 = and i32 %303, 1
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %313

306:                                              ; preds = %289
  %307 = load i32, i32* %6, align 4
  %308 = shl i32 %307, 8
  %309 = load i32, i32* %6, align 4
  %310 = ashr i32 %309, 8
  %311 = and i32 255, %310
  %312 = or i32 %308, %311
  store i32 %312, i32* %6, align 4
  br label %313

313:                                              ; preds = %306, %289
  %314 = load i32, i32* %6, align 4
  %315 = and i32 65535, %314
  store i32 %315, i32* %3, align 4
  br label %316

316:                                              ; preds = %313, %24
  %317 = load i32, i32* %3, align 4
  ret i32 %317
}

declare dso_local i32 @HEXAGON_R_cl0_R(i32) #1

declare dso_local i32 @HEXAGON_P_vrmpyhacc_PP(i32, i32, i64) #1

declare dso_local i32 @VR_NEGATE(i32, i32, i32, i32) #1

declare dso_local i64 @VR_SELECT(i32, i32, i32, i32) #1

declare dso_local i64 @VR_CARRY(i32, i32, i32, i32) #1

declare dso_local i32 @HEXAGON_P_vrmpyh_PP(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
