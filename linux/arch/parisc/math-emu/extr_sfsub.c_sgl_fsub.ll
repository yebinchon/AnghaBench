; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_sfsub.c_sgl_fsub.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_sfsub.c_sgl_fsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@SGL_INFINITY_EXPONENT = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@unfl = common dso_local global i32 0, align 4
@UNDERFLOWEXCEPTION = common dso_local global i32 0, align 4
@SGL_THRESHOLD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@ovfl = common dso_local global i32 0, align 4
@OVERFLOWEXCEPTION = common dso_local global i32 0, align 4
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgl_fsub(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
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
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %22, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %16, align 4
  %32 = call i32 @Sgl_xortointp1(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @Sgl_exponent(i32 %33)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* @SGL_INFINITY_EXPONENT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %104

37:                                               ; preds = %4
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @Sgl_iszero_mantissa(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = call i64 @Sgl_isnotnan(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @Sgl_isinfinity(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load i32, i32* %16, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = call i64 (...) @Is_invalidtrap_enabled()
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %56, i32* %5, align 4
  br label %588

57:                                               ; preds = %52
  %58 = call i32 (...) @Set_invalidflag()
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @Sgl_makequietnan(i32 %59)
  %61 = load i32, i32* %12, align 4
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %63, i32* %5, align 4
  br label %588

64:                                               ; preds = %49, %45
  %65 = load i32, i32* %10, align 4
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %67, i32* %5, align 4
  br label %588

68:                                               ; preds = %41
  br label %103

69:                                               ; preds = %37
  %70 = load i32, i32* %10, align 4
  %71 = call i64 @Sgl_isone_signaling(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = call i64 (...) @Is_invalidtrap_enabled()
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %77, i32* %5, align 4
  br label %588

78:                                               ; preds = %73
  %79 = call i32 (...) @Set_invalidflag()
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @Sgl_set_quiet(i32 %80)
  br label %99

82:                                               ; preds = %69
  %83 = load i32, i32* %11, align 4
  %84 = call i64 @Sgl_is_signalingnan(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = call i64 (...) @Is_invalidtrap_enabled()
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %90, i32* %5, align 4
  br label %588

91:                                               ; preds = %86
  %92 = call i32 (...) @Set_invalidflag()
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @Sgl_set_quiet(i32 %93)
  %95 = load i32, i32* %11, align 4
  %96 = load i32*, i32** %8, align 8
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %97, i32* %5, align 4
  br label %588

98:                                               ; preds = %82
  br label %99

99:                                               ; preds = %98, %78
  %100 = load i32, i32* %10, align 4
  %101 = load i32*, i32** %8, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %102, i32* %5, align 4
  br label %588

103:                                              ; preds = %68
  br label %104

104:                                              ; preds = %103, %4
  %105 = load i32, i32* %11, align 4
  %106 = call i64 @Sgl_isinfinity_exponent(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %135

108:                                              ; preds = %104
  %109 = load i32, i32* %11, align 4
  %110 = call i64 @Sgl_iszero_mantissa(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @Sgl_invert_sign(i32 %113)
  %115 = load i32, i32* %11, align 4
  %116 = load i32*, i32** %8, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %117, i32* %5, align 4
  br label %588

118:                                              ; preds = %108
  %119 = load i32, i32* %11, align 4
  %120 = call i64 @Sgl_isone_signaling(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = call i64 (...) @Is_invalidtrap_enabled()
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %126, i32* %5, align 4
  br label %588

127:                                              ; preds = %122
  %128 = call i32 (...) @Set_invalidflag()
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @Sgl_set_quiet(i32 %129)
  br label %131

131:                                              ; preds = %127, %118
  %132 = load i32, i32* %11, align 4
  %133 = load i32*, i32** %8, align 8
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %134, i32* %5, align 4
  br label %588

135:                                              ; preds = %104
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @Sgl_copytoint_exponentmantissa(i32 %136, i32 %137)
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @Sgl_copytoint_exponentmantissa(i32 %139, i32 %140)
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %15, align 4
  %144 = call i64 @Sgl_ismagnitudeless(i32 %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %135
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @Sgl_xorfromintp1(i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @Sgl_xorfromintp1(i32 %151, i32 %152, i32 %153)
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @Sgl_exponent(i32 %155)
  store i32 %156, i32* %17, align 4
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @Sgl_invert_sign(i32 %157)
  br label %159

159:                                              ; preds = %146, %135
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @Sgl_exponent(i32 %160)
  store i32 %161, i32* %18, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %283

163:                                              ; preds = %159
  %164 = load i32, i32* %11, align 4
  %165 = call i64 @Sgl_iszero_mantissa(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %214

167:                                              ; preds = %163
  %168 = load i32, i32* %10, align 4
  %169 = call i64 @Sgl_iszero_exponentmantissa(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %185

171:                                              ; preds = %167
  %172 = load i32, i32* %11, align 4
  %173 = call i32 @Sgl_invert_sign(i32 %172)
  %174 = call i64 @Is_rounding_mode(i32 131)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %11, align 4
  %179 = call i32 @Sgl_or_signs(i32 %177, i32 %178)
  br label %184

180:                                              ; preds = %171
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @Sgl_and_signs(i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %176
  br label %210

185:                                              ; preds = %167
  %186 = load i32, i32* %17, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %209

188:                                              ; preds = %185
  %189 = call i64 (...) @Is_underflowtrap_enabled()
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %209

191:                                              ; preds = %188
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @Sgl_signextendedsign(i32 %192)
  store i32 %193, i32* %20, align 4
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @Sgl_leftshiftby1(i32 %194)
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* %17, align 4
  %198 = call i32 @Sgl_normalize(i32 %196, i32 %197)
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* %20, align 4
  %201 = call i32 @Sgl_set_sign(i32 %199, i32 %200)
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* %17, align 4
  %204 = load i32, i32* @unfl, align 4
  %205 = call i32 @Sgl_setwrapped_exponent(i32 %202, i32 %203, i32 %204)
  %206 = load i32, i32* %10, align 4
  %207 = load i32*, i32** %8, align 8
  store i32 %206, i32* %207, align 4
  %208 = load i32, i32* @UNDERFLOWEXCEPTION, align 4
  store i32 %208, i32* %5, align 4
  br label %588

209:                                              ; preds = %188, %185
  br label %210

210:                                              ; preds = %209, %184
  %211 = load i32, i32* %10, align 4
  %212 = load i32*, i32** %8, align 8
  store i32 %211, i32* %212, align 4
  %213 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %213, i32* %5, align 4
  br label %588

214:                                              ; preds = %163
  %215 = load i32, i32* %11, align 4
  %216 = call i32 @Sgl_clear_sign(i32 %215)
  %217 = load i32, i32* %17, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %282

219:                                              ; preds = %214
  %220 = load i32, i32* %16, align 4
  %221 = icmp sge i32 %220, 0
  br i1 %221, label %222, label %244

222:                                              ; preds = %219
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* %12, align 4
  %226 = call i32 @Sgl_subtract(i32 %223, i32 %224, i32 %225)
  %227 = load i32, i32* %12, align 4
  %228 = call i64 @Sgl_iszero_mantissa(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %243

230:                                              ; preds = %222
  %231 = call i64 @Is_rounding_mode(i32 131)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load i32, i32* %12, align 4
  %235 = call i32 @Sgl_setone_sign(i32 %234)
  br label %239

236:                                              ; preds = %230
  %237 = load i32, i32* %12, align 4
  %238 = call i32 @Sgl_setzero_sign(i32 %237)
  br label %239

239:                                              ; preds = %236, %233
  %240 = load i32, i32* %12, align 4
  %241 = load i32*, i32** %8, align 8
  store i32 %240, i32* %241, align 4
  %242 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %242, i32* %5, align 4
  br label %588

243:                                              ; preds = %222
  br label %257

244:                                              ; preds = %219
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* %11, align 4
  %247 = load i32, i32* %12, align 4
  %248 = call i32 @Sgl_addition(i32 %245, i32 %246, i32 %247)
  %249 = load i32, i32* %12, align 4
  %250 = call i64 @Sgl_isone_hidden(i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %244
  %253 = load i32, i32* %12, align 4
  %254 = load i32*, i32** %8, align 8
  store i32 %253, i32* %254, align 4
  %255 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %255, i32* %5, align 4
  br label %588

256:                                              ; preds = %244
  br label %257

257:                                              ; preds = %256, %243
  %258 = call i64 (...) @Is_underflowtrap_enabled()
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %278

260:                                              ; preds = %257
  %261 = load i32, i32* %12, align 4
  %262 = call i32 @Sgl_signextendedsign(i32 %261)
  store i32 %262, i32* %20, align 4
  %263 = load i32, i32* %12, align 4
  %264 = call i32 @Sgl_leftshiftby1(i32 %263)
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* %17, align 4
  %267 = call i32 @Sgl_normalize(i32 %265, i32 %266)
  %268 = load i32, i32* %12, align 4
  %269 = load i32, i32* %20, align 4
  %270 = call i32 @Sgl_set_sign(i32 %268, i32 %269)
  %271 = load i32, i32* %12, align 4
  %272 = load i32, i32* %17, align 4
  %273 = load i32, i32* @unfl, align 4
  %274 = call i32 @Sgl_setwrapped_exponent(i32 %271, i32 %272, i32 %273)
  %275 = load i32, i32* %12, align 4
  %276 = load i32*, i32** %8, align 8
  store i32 %275, i32* %276, align 4
  %277 = load i32, i32* @UNDERFLOWEXCEPTION, align 4
  store i32 %277, i32* %5, align 4
  br label %588

278:                                              ; preds = %257
  %279 = load i32, i32* %12, align 4
  %280 = load i32*, i32** %8, align 8
  store i32 %279, i32* %280, align 4
  %281 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %281, i32* %5, align 4
  br label %588

282:                                              ; preds = %214
  store i32 1, i32* %18, align 4
  br label %286

283:                                              ; preds = %159
  %284 = load i32, i32* %11, align 4
  %285 = call i32 @Sgl_clear_signexponent_set_hidden(i32 %284)
  br label %286

286:                                              ; preds = %283, %282
  %287 = load i32, i32* %10, align 4
  %288 = call i32 @Sgl_clear_exponent_set_hidden(i32 %287)
  %289 = load i32, i32* %17, align 4
  %290 = load i32, i32* %18, align 4
  %291 = sub nsw i32 %289, %290
  store i32 %291, i32* %19, align 4
  %292 = load i32, i32* %19, align 4
  %293 = load i32, i32* @SGL_THRESHOLD, align 4
  %294 = icmp sgt i32 %292, %293
  br i1 %294, label %295, label %297

295:                                              ; preds = %286
  %296 = load i32, i32* @SGL_THRESHOLD, align 4
  store i32 %296, i32* %19, align 4
  br label %297

297:                                              ; preds = %295, %286
  %298 = load i32, i32* %11, align 4
  %299 = load i32, i32* %19, align 4
  %300 = load i32, i32* %13, align 4
  %301 = call i32 @Sgl_right_align(i32 %298, i32 %299, i32 %300)
  %302 = load i32, i32* %16, align 4
  %303 = icmp sge i32 %302, 0
  br i1 %303, label %304, label %467

304:                                              ; preds = %297
  %305 = load i32, i32* %10, align 4
  %306 = load i32, i32* %11, align 4
  %307 = load i32, i32* %13, align 4
  %308 = load i32, i32* %12, align 4
  %309 = call i32 @Sgl_subtract_withextension(i32 %305, i32 %306, i32 %307, i32 %308)
  %310 = load i32, i32* %12, align 4
  %311 = call i64 @Sgl_iszero_hidden(i32 %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %466

313:                                              ; preds = %304
  %314 = load i32, i32* %12, align 4
  %315 = call i32 @Sgl_signextendedsign(i32 %314)
  store i32 %315, i32* %20, align 4
  %316 = load i32, i32* %12, align 4
  %317 = load i32, i32* %13, align 4
  %318 = load i32, i32* %12, align 4
  %319 = call i32 @Sgl_leftshiftby1_withextent(i32 %316, i32 %317, i32 %318)
  %320 = load i32, i32* %12, align 4
  %321 = call i64 @Sgl_iszero(i32 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %333

323:                                              ; preds = %313
  %324 = call i64 @Is_rounding_mode(i32 131)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %323
  %327 = load i32, i32* %12, align 4
  %328 = call i32 @Sgl_setone_sign(i32 %327)
  br label %329

329:                                              ; preds = %326, %323
  %330 = load i32, i32* %12, align 4
  %331 = load i32*, i32** %8, align 8
  store i32 %330, i32* %331, align 4
  %332 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %332, i32* %5, align 4
  br label %588

333:                                              ; preds = %313
  %334 = load i32, i32* %17, align 4
  %335 = add nsw i32 %334, -1
  store i32 %335, i32* %17, align 4
  %336 = load i32, i32* %12, align 4
  %337 = call i64 @Sgl_isone_hidden(i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %349

339:                                              ; preds = %333
  %340 = load i32, i32* %17, align 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %339
  br label %438

343:                                              ; preds = %339
  %344 = load i32, i32* %12, align 4
  %345 = load i32, i32* %20, align 4
  %346 = call i32 @Sgl_set_sign(i32 %344, i32 %345)
  %347 = load i32, i32* %13, align 4
  %348 = call i32 @Ext_leftshiftby1(i32 %347)
  br label %486

349:                                              ; preds = %333
  %350 = call i64 (...) @Is_underflowtrap_enabled()
  store i64 %350, i64* %23, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %356, label %352

352:                                              ; preds = %349
  %353 = load i32, i32* %17, align 4
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %352
  br label %438

356:                                              ; preds = %352, %349
  %357 = load i32, i32* %13, align 4
  %358 = call i32 @Ext_leftshiftby1(i32 %357)
  br label %359

359:                                              ; preds = %373, %356
  %360 = load i32, i32* %12, align 4
  %361 = call i64 @Sgl_iszero_hiddenhigh7mantissa(i32 %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %374

363:                                              ; preds = %359
  %364 = load i32, i32* %12, align 4
  %365 = call i32 @Sgl_leftshiftby8(i32 %364)
  %366 = load i32, i32* %17, align 4
  %367 = sub nsw i32 %366, 8
  store i32 %367, i32* %17, align 4
  %368 = icmp sle i32 %367, 0
  br i1 %368, label %369, label %373

369:                                              ; preds = %363
  %370 = load i64, i64* %23, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %373, label %372

372:                                              ; preds = %369
  br label %438

373:                                              ; preds = %369, %363
  br label %359

374:                                              ; preds = %359
  %375 = load i32, i32* %12, align 4
  %376 = call i64 @Sgl_iszero_hiddenhigh3mantissa(i32 %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %389

378:                                              ; preds = %374
  %379 = load i32, i32* %12, align 4
  %380 = call i32 @Sgl_leftshiftby4(i32 %379)
  %381 = load i32, i32* %17, align 4
  %382 = sub nsw i32 %381, 4
  store i32 %382, i32* %17, align 4
  %383 = icmp sle i32 %382, 0
  br i1 %383, label %384, label %388

384:                                              ; preds = %378
  %385 = load i64, i64* %23, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %388, label %387

387:                                              ; preds = %384
  br label %438

388:                                              ; preds = %384, %378
  br label %389

389:                                              ; preds = %388, %374
  %390 = load i32, i32* %12, align 4
  %391 = call i32 @Sgl_hiddenhigh3mantissa(i32 %390)
  store i32 %391, i32* %21, align 4
  %392 = icmp sgt i32 %391, 7
  br i1 %392, label %393, label %407

393:                                              ; preds = %389
  %394 = load i32, i32* %17, align 4
  %395 = icmp sle i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %393
  br label %438

397:                                              ; preds = %393
  %398 = load i32, i32* %12, align 4
  %399 = load i32, i32* %20, align 4
  %400 = call i32 @Sgl_set_sign(i32 %398, i32 %399)
  %401 = load i32, i32* %12, align 4
  %402 = load i32, i32* %17, align 4
  %403 = call i32 @Sgl_set_exponent(i32 %401, i32 %402)
  %404 = load i32, i32* %12, align 4
  %405 = load i32*, i32** %8, align 8
  store i32 %404, i32* %405, align 4
  %406 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %406, i32* %5, align 4
  br label %588

407:                                              ; preds = %389
  %408 = load i32, i32* %12, align 4
  %409 = load i32, i32* %20, align 4
  %410 = call i32 @Sgl_sethigh4bits(i32 %408, i32 %409)
  %411 = load i32, i32* %21, align 4
  switch i32 %411, label %427 [
    i32 1, label %412
    i32 2, label %417
    i32 3, label %417
    i32 4, label %422
    i32 5, label %422
    i32 6, label %422
    i32 7, label %422
  ]

412:                                              ; preds = %407
  %413 = load i32, i32* %12, align 4
  %414 = call i32 @Sgl_leftshiftby3(i32 %413)
  %415 = load i32, i32* %17, align 4
  %416 = sub nsw i32 %415, 3
  store i32 %416, i32* %17, align 4
  br label %427

417:                                              ; preds = %407, %407
  %418 = load i32, i32* %12, align 4
  %419 = call i32 @Sgl_leftshiftby2(i32 %418)
  %420 = load i32, i32* %17, align 4
  %421 = sub nsw i32 %420, 2
  store i32 %421, i32* %17, align 4
  br label %427

422:                                              ; preds = %407, %407, %407, %407
  %423 = load i32, i32* %12, align 4
  %424 = call i32 @Sgl_leftshiftby1(i32 %423)
  %425 = load i32, i32* %17, align 4
  %426 = sub nsw i32 %425, 1
  store i32 %426, i32* %17, align 4
  br label %427

427:                                              ; preds = %407, %422, %417, %412
  %428 = load i32, i32* %17, align 4
  %429 = icmp sgt i32 %428, 0
  br i1 %429, label %430, label %437

430:                                              ; preds = %427
  %431 = load i32, i32* %12, align 4
  %432 = load i32, i32* %17, align 4
  %433 = call i32 @Sgl_set_exponent(i32 %431, i32 %432)
  %434 = load i32, i32* %12, align 4
  %435 = load i32*, i32** %8, align 8
  store i32 %434, i32* %435, align 4
  %436 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %436, i32* %5, align 4
  br label %588

437:                                              ; preds = %427
  br label %438

438:                                              ; preds = %437, %396, %387, %372, %355, %342
  %439 = call i64 (...) @Is_underflowtrap_enabled()
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %452

441:                                              ; preds = %438
  %442 = load i32, i32* %12, align 4
  %443 = load i32, i32* %20, align 4
  %444 = call i32 @Sgl_set_sign(i32 %442, i32 %443)
  %445 = load i32, i32* %12, align 4
  %446 = load i32, i32* %17, align 4
  %447 = load i32, i32* @unfl, align 4
  %448 = call i32 @Sgl_setwrapped_exponent(i32 %445, i32 %446, i32 %447)
  %449 = load i32, i32* %12, align 4
  %450 = load i32*, i32** %8, align 8
  store i32 %449, i32* %450, align 4
  %451 = load i32, i32* @UNDERFLOWEXCEPTION, align 4
  store i32 %451, i32* %5, align 4
  br label %588

452:                                              ; preds = %438
  %453 = load i32, i32* %12, align 4
  %454 = load i32, i32* %17, align 4
  %455 = sub nsw i32 1, %454
  %456 = load i32, i32* %13, align 4
  %457 = call i32 @Sgl_right_align(i32 %453, i32 %455, i32 %456)
  %458 = load i32, i32* %12, align 4
  %459 = call i32 @Sgl_clear_signexponent(i32 %458)
  %460 = load i32, i32* %12, align 4
  %461 = load i32, i32* %20, align 4
  %462 = call i32 @Sgl_set_sign(i32 %460, i32 %461)
  %463 = load i32, i32* %12, align 4
  %464 = load i32*, i32** %8, align 8
  store i32 %463, i32* %464, align 4
  %465 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %465, i32* %5, align 4
  br label %588

466:                                              ; preds = %304
  br label %485

467:                                              ; preds = %297
  %468 = load i32, i32* %10, align 4
  %469 = load i32, i32* %11, align 4
  %470 = load i32, i32* %12, align 4
  %471 = call i32 @Sgl_addition(i32 %468, i32 %469, i32 %470)
  %472 = load i32, i32* %12, align 4
  %473 = call i64 @Sgl_isone_hiddenoverflow(i32 %472)
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %484

475:                                              ; preds = %467
  %476 = load i32, i32* %12, align 4
  %477 = load i32, i32* %13, align 4
  %478 = load i32, i32* %13, align 4
  %479 = call i32 @Sgl_rightshiftby1_withextent(i32 %476, i32 %477, i32 %478)
  %480 = load i32, i32* %12, align 4
  %481 = call i32 @Sgl_arithrightshiftby1(i32 %480)
  %482 = load i32, i32* %17, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %17, align 4
  br label %484

484:                                              ; preds = %475, %467
  br label %485

485:                                              ; preds = %484, %466
  br label %486

486:                                              ; preds = %485, %343
  %487 = load i32, i32* %13, align 4
  %488 = call i64 @Ext_isnotzero(i32 %487)
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %535

490:                                              ; preds = %486
  %491 = load i64, i64* @TRUE, align 8
  store i64 %491, i64* %22, align 8
  %492 = call i32 (...) @Rounding_mode()
  switch i32 %492, label %527 [
    i32 130, label %493
    i32 129, label %510
    i32 131, label %518
    i32 128, label %526
  ]

493:                                              ; preds = %490
  %494 = load i32, i32* %13, align 4
  %495 = call i32 @Ext_isone_sign(i32 %494)
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %509

497:                                              ; preds = %493
  %498 = load i32, i32* %13, align 4
  %499 = call i32 @Ext_isnotzero_lower(i32 %498)
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %505, label %501

501:                                              ; preds = %497
  %502 = load i32, i32* %12, align 4
  %503 = call i32 @Sgl_isone_lowmantissa(i32 %502)
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %508

505:                                              ; preds = %501, %497
  %506 = load i32, i32* %12, align 4
  %507 = call i32 @Sgl_increment(i32 %506)
  br label %508

508:                                              ; preds = %505, %501
  br label %509

509:                                              ; preds = %508, %493
  br label %527

510:                                              ; preds = %490
  %511 = load i32, i32* %12, align 4
  %512 = call i32 @Sgl_iszero_sign(i32 %511)
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %517

514:                                              ; preds = %510
  %515 = load i32, i32* %12, align 4
  %516 = call i32 @Sgl_increment(i32 %515)
  br label %517

517:                                              ; preds = %514, %510
  br label %527

518:                                              ; preds = %490
  %519 = load i32, i32* %12, align 4
  %520 = call i32 @Sgl_isone_sign(i32 %519)
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %525

522:                                              ; preds = %518
  %523 = load i32, i32* %12, align 4
  %524 = call i32 @Sgl_increment(i32 %523)
  br label %525

525:                                              ; preds = %522, %518
  br label %526

526:                                              ; preds = %490, %525
  br label %527

527:                                              ; preds = %526, %490, %517, %509
  %528 = load i32, i32* %12, align 4
  %529 = call i64 @Sgl_isone_hiddenoverflow(i32 %528)
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %531, label %534

531:                                              ; preds = %527
  %532 = load i32, i32* %17, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %17, align 4
  br label %534

534:                                              ; preds = %531, %527
  br label %535

535:                                              ; preds = %534, %486
  %536 = load i32, i32* %17, align 4
  %537 = load i32, i32* @SGL_INFINITY_EXPONENT, align 4
  %538 = icmp eq i32 %536, %537
  br i1 %538, label %539, label %569

539:                                              ; preds = %535
  %540 = call i64 (...) @Is_overflowtrap_enabled()
  %541 = icmp ne i64 %540, 0
  br i1 %541, label %542, label %563

542:                                              ; preds = %539
  %543 = load i32, i32* %12, align 4
  %544 = load i32, i32* %17, align 4
  %545 = load i32, i32* @ovfl, align 4
  %546 = call i32 @Sgl_setwrapped_exponent(i32 %543, i32 %544, i32 %545)
  %547 = load i32, i32* %12, align 4
  %548 = load i32*, i32** %8, align 8
  store i32 %547, i32* %548, align 4
  %549 = load i64, i64* %22, align 8
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %561

551:                                              ; preds = %542
  %552 = call i64 (...) @Is_inexacttrap_enabled()
  %553 = icmp ne i64 %552, 0
  br i1 %553, label %554, label %558

554:                                              ; preds = %551
  %555 = load i32, i32* @OVERFLOWEXCEPTION, align 4
  %556 = load i32, i32* @INEXACTEXCEPTION, align 4
  %557 = or i32 %555, %556
  store i32 %557, i32* %5, align 4
  br label %588

558:                                              ; preds = %551
  %559 = call i32 (...) @Set_inexactflag()
  br label %560

560:                                              ; preds = %558
  br label %561

561:                                              ; preds = %560, %542
  %562 = load i32, i32* @OVERFLOWEXCEPTION, align 4
  store i32 %562, i32* %5, align 4
  br label %588

563:                                              ; preds = %539
  %564 = call i32 (...) @Set_overflowflag()
  %565 = load i64, i64* @TRUE, align 8
  store i64 %565, i64* %22, align 8
  %566 = load i32, i32* %12, align 4
  %567 = call i32 @Sgl_setoverflow(i32 %566)
  br label %568

568:                                              ; preds = %563
  br label %573

569:                                              ; preds = %535
  %570 = load i32, i32* %12, align 4
  %571 = load i32, i32* %17, align 4
  %572 = call i32 @Sgl_set_exponent(i32 %570, i32 %571)
  br label %573

573:                                              ; preds = %569, %568
  %574 = load i32, i32* %12, align 4
  %575 = load i32*, i32** %8, align 8
  store i32 %574, i32* %575, align 4
  %576 = load i64, i64* %22, align 8
  %577 = icmp ne i64 %576, 0
  br i1 %577, label %578, label %586

578:                                              ; preds = %573
  %579 = call i64 (...) @Is_inexacttrap_enabled()
  %580 = icmp ne i64 %579, 0
  br i1 %580, label %581, label %583

581:                                              ; preds = %578
  %582 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %582, i32* %5, align 4
  br label %588

583:                                              ; preds = %578
  %584 = call i32 (...) @Set_inexactflag()
  br label %585

585:                                              ; preds = %583
  br label %586

586:                                              ; preds = %585, %573
  %587 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %587, i32* %5, align 4
  br label %588

588:                                              ; preds = %586, %581, %561, %554, %452, %441, %430, %397, %329, %278, %260, %252, %239, %210, %191, %131, %125, %112, %99, %91, %89, %76, %64, %57, %55
  %589 = load i32, i32* %5, align 4
  ret i32 %589
}

declare dso_local i32 @Sgl_xortointp1(i32, i32, i32) #1

declare dso_local i32 @Sgl_exponent(i32) #1

declare dso_local i64 @Sgl_iszero_mantissa(i32) #1

declare dso_local i64 @Sgl_isnotnan(i32) #1

declare dso_local i64 @Sgl_isinfinity(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Sgl_makequietnan(i32) #1

declare dso_local i64 @Sgl_isone_signaling(i32) #1

declare dso_local i32 @Sgl_set_quiet(i32) #1

declare dso_local i64 @Sgl_is_signalingnan(i32) #1

declare dso_local i64 @Sgl_isinfinity_exponent(i32) #1

declare dso_local i32 @Sgl_invert_sign(i32) #1

declare dso_local i32 @Sgl_copytoint_exponentmantissa(i32, i32) #1

declare dso_local i64 @Sgl_ismagnitudeless(i32, i32) #1

declare dso_local i32 @Sgl_xorfromintp1(i32, i32, i32) #1

declare dso_local i64 @Sgl_iszero_exponentmantissa(i32) #1

declare dso_local i64 @Is_rounding_mode(i32) #1

declare dso_local i32 @Sgl_or_signs(i32, i32) #1

declare dso_local i32 @Sgl_and_signs(i32, i32) #1

declare dso_local i64 @Is_underflowtrap_enabled(...) #1

declare dso_local i32 @Sgl_signextendedsign(i32) #1

declare dso_local i32 @Sgl_leftshiftby1(i32) #1

declare dso_local i32 @Sgl_normalize(i32, i32) #1

declare dso_local i32 @Sgl_set_sign(i32, i32) #1

declare dso_local i32 @Sgl_setwrapped_exponent(i32, i32, i32) #1

declare dso_local i32 @Sgl_clear_sign(i32) #1

declare dso_local i32 @Sgl_subtract(i32, i32, i32) #1

declare dso_local i32 @Sgl_setone_sign(i32) #1

declare dso_local i32 @Sgl_setzero_sign(i32) #1

declare dso_local i32 @Sgl_addition(i32, i32, i32) #1

declare dso_local i64 @Sgl_isone_hidden(i32) #1

declare dso_local i32 @Sgl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Sgl_clear_exponent_set_hidden(i32) #1

declare dso_local i32 @Sgl_right_align(i32, i32, i32) #1

declare dso_local i32 @Sgl_subtract_withextension(i32, i32, i32, i32) #1

declare dso_local i64 @Sgl_iszero_hidden(i32) #1

declare dso_local i32 @Sgl_leftshiftby1_withextent(i32, i32, i32) #1

declare dso_local i64 @Sgl_iszero(i32) #1

declare dso_local i32 @Ext_leftshiftby1(i32) #1

declare dso_local i64 @Sgl_iszero_hiddenhigh7mantissa(i32) #1

declare dso_local i32 @Sgl_leftshiftby8(i32) #1

declare dso_local i64 @Sgl_iszero_hiddenhigh3mantissa(i32) #1

declare dso_local i32 @Sgl_leftshiftby4(i32) #1

declare dso_local i32 @Sgl_hiddenhigh3mantissa(i32) #1

declare dso_local i32 @Sgl_set_exponent(i32, i32) #1

declare dso_local i32 @Sgl_sethigh4bits(i32, i32) #1

declare dso_local i32 @Sgl_leftshiftby3(i32) #1

declare dso_local i32 @Sgl_leftshiftby2(i32) #1

declare dso_local i32 @Sgl_clear_signexponent(i32) #1

declare dso_local i64 @Sgl_isone_hiddenoverflow(i32) #1

declare dso_local i32 @Sgl_rightshiftby1_withextent(i32, i32, i32) #1

declare dso_local i32 @Sgl_arithrightshiftby1(i32) #1

declare dso_local i64 @Ext_isnotzero(i32) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Ext_isone_sign(i32) #1

declare dso_local i32 @Ext_isnotzero_lower(i32) #1

declare dso_local i32 @Sgl_isone_lowmantissa(i32) #1

declare dso_local i32 @Sgl_increment(i32) #1

declare dso_local i32 @Sgl_iszero_sign(i32) #1

declare dso_local i32 @Sgl_isone_sign(i32) #1

declare dso_local i64 @Is_overflowtrap_enabled(...) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

declare dso_local i32 @Set_overflowflag(...) #1

declare dso_local i32 @Sgl_setoverflow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
