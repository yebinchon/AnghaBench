; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_dfadd.c_dbl_fadd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_dfadd.c_dbl_fadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@DBL_INFINITY_EXPONENT = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@unfl = common dso_local global i32 0, align 4
@UNDERFLOWEXCEPTION = common dso_local global i32 0, align 4
@DBL_THRESHOLD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@ovfl = common dso_local global i32 0, align 4
@OVERFLOWEXCEPTION = common dso_local global i32 0, align 4
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbl_fadd(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %25, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @Dbl_copyfromptr(i32* %28, i32 %29, i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @Dbl_copyfromptr(i32* %32, i32 %33, i32 %34)
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @Dbl_xortointp1(i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @Dbl_exponent(i32 %40)
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* @DBL_INFINITY_EXPONENT, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %123

44:                                               ; preds = %4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i64 @Dbl_iszero_mantissa(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %84

49:                                               ; preds = %44
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = call i64 @Dbl_isnotnan(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %49
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i64 @Dbl_isinfinity(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = call i64 (...) @Is_invalidtrap_enabled()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %66, i32* %5, align 4
  br label %671

67:                                               ; preds = %62
  %68 = call i32 (...) @Set_invalidflag()
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %19, align 4
  %71 = call i32 @Dbl_makequietnan(i32 %69, i32 %70)
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %19, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @Dbl_copytoptr(i32 %72, i32 %73, i32* %74)
  %76 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %76, i32* %5, align 4
  br label %671

77:                                               ; preds = %59, %54
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @Dbl_copytoptr(i32 %78, i32 %79, i32* %80)
  %82 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %82, i32* %5, align 4
  br label %671

83:                                               ; preds = %49
  br label %122

84:                                               ; preds = %44
  %85 = load i32, i32* %13, align 4
  %86 = call i64 @Dbl_isone_signaling(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = call i64 (...) @Is_invalidtrap_enabled()
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %92, i32* %5, align 4
  br label %671

93:                                               ; preds = %88
  %94 = call i32 (...) @Set_invalidflag()
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @Dbl_set_quiet(i32 %95)
  br label %116

97:                                               ; preds = %84
  %98 = load i32, i32* %15, align 4
  %99 = call i64 @Dbl_is_signalingnan(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %97
  %102 = call i64 (...) @Is_invalidtrap_enabled()
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %105, i32* %5, align 4
  br label %671

106:                                              ; preds = %101
  %107 = call i32 (...) @Set_invalidflag()
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @Dbl_set_quiet(i32 %108)
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @Dbl_copytoptr(i32 %110, i32 %111, i32* %112)
  %114 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %114, i32* %5, align 4
  br label %671

115:                                              ; preds = %97
  br label %116

116:                                              ; preds = %115, %93
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @Dbl_copytoptr(i32 %117, i32 %118, i32* %119)
  %121 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %121, i32* %5, align 4
  br label %671

122:                                              ; preds = %83
  br label %123

123:                                              ; preds = %122, %4
  %124 = load i32, i32* %15, align 4
  %125 = call i64 @Dbl_isinfinity_exponent(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %157

127:                                              ; preds = %123
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %16, align 4
  %130 = call i64 @Dbl_iszero_mantissa(i32 %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %16, align 4
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @Dbl_copytoptr(i32 %133, i32 %134, i32* %135)
  %137 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %137, i32* %5, align 4
  br label %671

138:                                              ; preds = %127
  %139 = load i32, i32* %15, align 4
  %140 = call i64 @Dbl_isone_signaling(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = call i64 (...) @Is_invalidtrap_enabled()
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %146, i32* %5, align 4
  br label %671

147:                                              ; preds = %142
  %148 = call i32 (...) @Set_invalidflag()
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @Dbl_set_quiet(i32 %149)
  br label %151

151:                                              ; preds = %147, %138
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %16, align 4
  %154 = load i32*, i32** %8, align 8
  %155 = call i32 @Dbl_copytoptr(i32 %152, i32 %153, i32* %154)
  %156 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %156, i32* %5, align 4
  br label %671

157:                                              ; preds = %123
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @Dbl_copytoint_exponentmantissap1(i32 %158, i32 %159)
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @Dbl_copytoint_exponentmantissap1(i32 %161, i32 %162)
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %11, align 4
  %168 = call i64 @Dbl_ismagnitudeless(i32 %164, i32 %165, i32 %166, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %157
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %15, align 4
  %174 = call i32 @Dbl_xorfromintp1(i32 %171, i32 %172, i32 %173)
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* %13, align 4
  %178 = call i32 @Dbl_xorfromintp1(i32 %175, i32 %176, i32 %177)
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* %16, align 4
  %181 = call i32 @Dbl_swap_lower(i32 %179, i32 %180)
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @Dbl_exponent(i32 %182)
  store i32 %183, i32* %20, align 4
  br label %184

184:                                              ; preds = %170, %157
  %185 = load i32, i32* %15, align 4
  %186 = call i32 @Dbl_exponent(i32 %185)
  store i32 %186, i32* %21, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %331

188:                                              ; preds = %184
  %189 = load i32, i32* %15, align 4
  %190 = load i32, i32* %16, align 4
  %191 = call i64 @Dbl_iszero_mantissa(i32 %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %245

193:                                              ; preds = %188
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %14, align 4
  %196 = call i64 @Dbl_iszero_exponentmantissa(i32 %194, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %210

198:                                              ; preds = %193
  %199 = call i64 @Is_rounding_mode(i32 131)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = load i32, i32* %13, align 4
  %203 = load i32, i32* %15, align 4
  %204 = call i32 @Dbl_or_signs(i32 %202, i32 %203)
  br label %209

205:                                              ; preds = %198
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* %15, align 4
  %208 = call i32 @Dbl_and_signs(i32 %206, i32 %207)
  br label %209

209:                                              ; preds = %205, %201
  br label %239

210:                                              ; preds = %193
  %211 = load i32, i32* %20, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %238

213:                                              ; preds = %210
  %214 = call i64 (...) @Is_underflowtrap_enabled()
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %238

216:                                              ; preds = %213
  %217 = load i32, i32* %13, align 4
  %218 = call i32 @Dbl_signextendedsign(i32 %217)
  store i32 %218, i32* %23, align 4
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %14, align 4
  %221 = call i32 @Dbl_leftshiftby1(i32 %219, i32 %220)
  %222 = load i32, i32* %13, align 4
  %223 = load i32, i32* %14, align 4
  %224 = load i32, i32* %20, align 4
  %225 = call i32 @Dbl_normalize(i32 %222, i32 %223, i32 %224)
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* %23, align 4
  %228 = call i32 @Dbl_set_sign(i32 %226, i32 %227)
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %20, align 4
  %231 = load i32, i32* @unfl, align 4
  %232 = call i32 @Dbl_setwrapped_exponent(i32 %229, i32 %230, i32 %231)
  %233 = load i32, i32* %13, align 4
  %234 = load i32, i32* %14, align 4
  %235 = load i32*, i32** %8, align 8
  %236 = call i32 @Dbl_copytoptr(i32 %233, i32 %234, i32* %235)
  %237 = load i32, i32* @UNDERFLOWEXCEPTION, align 4
  store i32 %237, i32* %5, align 4
  br label %671

238:                                              ; preds = %213, %210
  br label %239

239:                                              ; preds = %238, %209
  %240 = load i32, i32* %13, align 4
  %241 = load i32, i32* %14, align 4
  %242 = load i32*, i32** %8, align 8
  %243 = call i32 @Dbl_copytoptr(i32 %240, i32 %241, i32* %242)
  %244 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %244, i32* %5, align 4
  br label %671

245:                                              ; preds = %188
  %246 = load i32, i32* %15, align 4
  %247 = call i32 @Dbl_clear_sign(i32 %246)
  %248 = load i32, i32* %20, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %330

250:                                              ; preds = %245
  %251 = load i32, i32* %12, align 4
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %281

253:                                              ; preds = %250
  %254 = load i32, i32* %13, align 4
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* %15, align 4
  %257 = load i32, i32* %16, align 4
  %258 = load i32, i32* %18, align 4
  %259 = load i32, i32* %19, align 4
  %260 = call i32 @Dbl_subtract(i32 %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 %259)
  %261 = load i32, i32* %18, align 4
  %262 = load i32, i32* %19, align 4
  %263 = call i64 @Dbl_iszero_mantissa(i32 %261, i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %280

265:                                              ; preds = %253
  %266 = call i64 @Is_rounding_mode(i32 131)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %265
  %269 = load i32, i32* %18, align 4
  %270 = call i32 @Dbl_setone_sign(i32 %269)
  br label %274

271:                                              ; preds = %265
  %272 = load i32, i32* %18, align 4
  %273 = call i32 @Dbl_setzero_sign(i32 %272)
  br label %274

274:                                              ; preds = %271, %268
  %275 = load i32, i32* %18, align 4
  %276 = load i32, i32* %19, align 4
  %277 = load i32*, i32** %8, align 8
  %278 = call i32 @Dbl_copytoptr(i32 %275, i32 %276, i32* %277)
  %279 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %279, i32* %5, align 4
  br label %671

280:                                              ; preds = %253
  br label %299

281:                                              ; preds = %250
  %282 = load i32, i32* %13, align 4
  %283 = load i32, i32* %14, align 4
  %284 = load i32, i32* %15, align 4
  %285 = load i32, i32* %16, align 4
  %286 = load i32, i32* %18, align 4
  %287 = load i32, i32* %19, align 4
  %288 = call i32 @Dbl_addition(i32 %282, i32 %283, i32 %284, i32 %285, i32 %286, i32 %287)
  %289 = load i32, i32* %18, align 4
  %290 = call i64 @Dbl_isone_hidden(i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %281
  %293 = load i32, i32* %18, align 4
  %294 = load i32, i32* %19, align 4
  %295 = load i32*, i32** %8, align 8
  %296 = call i32 @Dbl_copytoptr(i32 %293, i32 %294, i32* %295)
  %297 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %297, i32* %5, align 4
  br label %671

298:                                              ; preds = %281
  br label %299

299:                                              ; preds = %298, %280
  %300 = call i64 (...) @Is_underflowtrap_enabled()
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %324

302:                                              ; preds = %299
  %303 = load i32, i32* %18, align 4
  %304 = call i32 @Dbl_signextendedsign(i32 %303)
  store i32 %304, i32* %23, align 4
  %305 = load i32, i32* %18, align 4
  %306 = load i32, i32* %19, align 4
  %307 = call i32 @Dbl_leftshiftby1(i32 %305, i32 %306)
  %308 = load i32, i32* %18, align 4
  %309 = load i32, i32* %19, align 4
  %310 = load i32, i32* %20, align 4
  %311 = call i32 @Dbl_normalize(i32 %308, i32 %309, i32 %310)
  %312 = load i32, i32* %18, align 4
  %313 = load i32, i32* %23, align 4
  %314 = call i32 @Dbl_set_sign(i32 %312, i32 %313)
  %315 = load i32, i32* %18, align 4
  %316 = load i32, i32* %20, align 4
  %317 = load i32, i32* @unfl, align 4
  %318 = call i32 @Dbl_setwrapped_exponent(i32 %315, i32 %316, i32 %317)
  %319 = load i32, i32* %18, align 4
  %320 = load i32, i32* %19, align 4
  %321 = load i32*, i32** %8, align 8
  %322 = call i32 @Dbl_copytoptr(i32 %319, i32 %320, i32* %321)
  %323 = load i32, i32* @UNDERFLOWEXCEPTION, align 4
  store i32 %323, i32* %5, align 4
  br label %671

324:                                              ; preds = %299
  %325 = load i32, i32* %18, align 4
  %326 = load i32, i32* %19, align 4
  %327 = load i32*, i32** %8, align 8
  %328 = call i32 @Dbl_copytoptr(i32 %325, i32 %326, i32* %327)
  %329 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %329, i32* %5, align 4
  br label %671

330:                                              ; preds = %245
  store i32 1, i32* %21, align 4
  br label %334

331:                                              ; preds = %184
  %332 = load i32, i32* %15, align 4
  %333 = call i32 @Dbl_clear_signexponent_set_hidden(i32 %332)
  br label %334

334:                                              ; preds = %331, %330
  %335 = load i32, i32* %13, align 4
  %336 = call i32 @Dbl_clear_exponent_set_hidden(i32 %335)
  %337 = load i32, i32* %20, align 4
  %338 = load i32, i32* %21, align 4
  %339 = sub nsw i32 %337, %338
  store i32 %339, i32* %22, align 4
  %340 = load i32, i32* %22, align 4
  %341 = load i32, i32* @DBL_THRESHOLD, align 4
  %342 = icmp sgt i32 %340, %341
  br i1 %342, label %343, label %345

343:                                              ; preds = %334
  %344 = load i32, i32* @DBL_THRESHOLD, align 4
  store i32 %344, i32* %22, align 4
  br label %345

345:                                              ; preds = %343, %334
  %346 = load i32, i32* %15, align 4
  %347 = load i32, i32* %16, align 4
  %348 = load i32, i32* %22, align 4
  %349 = load i32, i32* %17, align 4
  %350 = call i32 @Dbl_right_align(i32 %346, i32 %347, i32 %348, i32 %349)
  %351 = load i32, i32* %12, align 4
  %352 = icmp slt i32 %351, 0
  br i1 %352, label %353, label %538

353:                                              ; preds = %345
  %354 = load i32, i32* %13, align 4
  %355 = load i32, i32* %14, align 4
  %356 = load i32, i32* %15, align 4
  %357 = load i32, i32* %16, align 4
  %358 = load i32, i32* %17, align 4
  %359 = load i32, i32* %18, align 4
  %360 = load i32, i32* %19, align 4
  %361 = call i32 @Dbl_subtract_withextension(i32 %354, i32 %355, i32 %356, i32 %357, i32 %358, i32 %359, i32 %360)
  %362 = load i32, i32* %18, align 4
  %363 = call i64 @Dbl_iszero_hidden(i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %537

365:                                              ; preds = %353
  %366 = load i32, i32* %18, align 4
  %367 = call i32 @Dbl_signextendedsign(i32 %366)
  store i32 %367, i32* %23, align 4
  %368 = load i32, i32* %18, align 4
  %369 = load i32, i32* %19, align 4
  %370 = load i32, i32* %17, align 4
  %371 = load i32, i32* %18, align 4
  %372 = load i32, i32* %19, align 4
  %373 = call i32 @Dbl_leftshiftby1_withextent(i32 %368, i32 %369, i32 %370, i32 %371, i32 %372)
  %374 = load i32, i32* %18, align 4
  %375 = load i32, i32* %19, align 4
  %376 = call i64 @Dbl_iszero(i32 %374, i32 %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %390

378:                                              ; preds = %365
  %379 = call i64 @Is_rounding_mode(i32 131)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %384

381:                                              ; preds = %378
  %382 = load i32, i32* %18, align 4
  %383 = call i32 @Dbl_setone_sign(i32 %382)
  br label %384

384:                                              ; preds = %381, %378
  %385 = load i32, i32* %18, align 4
  %386 = load i32, i32* %19, align 4
  %387 = load i32*, i32** %8, align 8
  %388 = call i32 @Dbl_copytoptr(i32 %385, i32 %386, i32* %387)
  %389 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %389, i32* %5, align 4
  br label %671

390:                                              ; preds = %365
  %391 = load i32, i32* %20, align 4
  %392 = add nsw i32 %391, -1
  store i32 %392, i32* %20, align 4
  %393 = load i32, i32* %18, align 4
  %394 = call i64 @Dbl_isone_hidden(i32 %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %406

396:                                              ; preds = %390
  %397 = load i32, i32* %20, align 4
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %400

399:                                              ; preds = %396
  br label %504

400:                                              ; preds = %396
  %401 = load i32, i32* %18, align 4
  %402 = load i32, i32* %23, align 4
  %403 = call i32 @Dbl_set_sign(i32 %401, i32 %402)
  %404 = load i32, i32* %17, align 4
  %405 = call i32 @Ext_leftshiftby1(i32 %404)
  br label %561

406:                                              ; preds = %390
  %407 = call i64 (...) @Is_underflowtrap_enabled()
  store i64 %407, i64* %26, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %413, label %409

409:                                              ; preds = %406
  %410 = load i32, i32* %20, align 4
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %413

412:                                              ; preds = %409
  br label %504

413:                                              ; preds = %409, %406
  %414 = load i32, i32* %17, align 4
  %415 = call i32 @Ext_leftshiftby1(i32 %414)
  br label %416

416:                                              ; preds = %431, %413
  %417 = load i32, i32* %18, align 4
  %418 = call i64 @Dbl_iszero_hiddenhigh7mantissa(i32 %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %432

420:                                              ; preds = %416
  %421 = load i32, i32* %18, align 4
  %422 = load i32, i32* %19, align 4
  %423 = call i32 @Dbl_leftshiftby8(i32 %421, i32 %422)
  %424 = load i32, i32* %20, align 4
  %425 = sub nsw i32 %424, 8
  store i32 %425, i32* %20, align 4
  %426 = icmp sle i32 %425, 0
  br i1 %426, label %427, label %431

427:                                              ; preds = %420
  %428 = load i64, i64* %26, align 8
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %431, label %430

430:                                              ; preds = %427
  br label %504

431:                                              ; preds = %427, %420
  br label %416

432:                                              ; preds = %416
  %433 = load i32, i32* %18, align 4
  %434 = call i64 @Dbl_iszero_hiddenhigh3mantissa(i32 %433)
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %448

436:                                              ; preds = %432
  %437 = load i32, i32* %18, align 4
  %438 = load i32, i32* %19, align 4
  %439 = call i32 @Dbl_leftshiftby4(i32 %437, i32 %438)
  %440 = load i32, i32* %20, align 4
  %441 = sub nsw i32 %440, 4
  store i32 %441, i32* %20, align 4
  %442 = icmp sle i32 %441, 0
  br i1 %442, label %443, label %447

443:                                              ; preds = %436
  %444 = load i64, i64* %26, align 8
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %447, label %446

446:                                              ; preds = %443
  br label %504

447:                                              ; preds = %443, %436
  br label %448

448:                                              ; preds = %447, %432
  %449 = load i32, i32* %18, align 4
  %450 = call i32 @Dbl_hiddenhigh3mantissa(i32 %449)
  store i32 %450, i32* %24, align 4
  %451 = icmp sgt i32 %450, 7
  br i1 %451, label %452, label %468

452:                                              ; preds = %448
  %453 = load i32, i32* %20, align 4
  %454 = icmp sle i32 %453, 0
  br i1 %454, label %455, label %456

455:                                              ; preds = %452
  br label %504

456:                                              ; preds = %452
  %457 = load i32, i32* %18, align 4
  %458 = load i32, i32* %23, align 4
  %459 = call i32 @Dbl_set_sign(i32 %457, i32 %458)
  %460 = load i32, i32* %18, align 4
  %461 = load i32, i32* %20, align 4
  %462 = call i32 @Dbl_set_exponent(i32 %460, i32 %461)
  %463 = load i32, i32* %18, align 4
  %464 = load i32, i32* %19, align 4
  %465 = load i32*, i32** %8, align 8
  %466 = call i32 @Dbl_copytoptr(i32 %463, i32 %464, i32* %465)
  %467 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %467, i32* %5, align 4
  br label %671

468:                                              ; preds = %448
  %469 = load i32, i32* %18, align 4
  %470 = load i32, i32* %23, align 4
  %471 = call i32 @Dbl_sethigh4bits(i32 %469, i32 %470)
  %472 = load i32, i32* %24, align 4
  switch i32 %472, label %491 [
    i32 1, label %473
    i32 2, label %479
    i32 3, label %479
    i32 4, label %485
    i32 5, label %485
    i32 6, label %485
    i32 7, label %485
  ]

473:                                              ; preds = %468
  %474 = load i32, i32* %18, align 4
  %475 = load i32, i32* %19, align 4
  %476 = call i32 @Dbl_leftshiftby3(i32 %474, i32 %475)
  %477 = load i32, i32* %20, align 4
  %478 = sub nsw i32 %477, 3
  store i32 %478, i32* %20, align 4
  br label %491

479:                                              ; preds = %468, %468
  %480 = load i32, i32* %18, align 4
  %481 = load i32, i32* %19, align 4
  %482 = call i32 @Dbl_leftshiftby2(i32 %480, i32 %481)
  %483 = load i32, i32* %20, align 4
  %484 = sub nsw i32 %483, 2
  store i32 %484, i32* %20, align 4
  br label %491

485:                                              ; preds = %468, %468, %468, %468
  %486 = load i32, i32* %18, align 4
  %487 = load i32, i32* %19, align 4
  %488 = call i32 @Dbl_leftshiftby1(i32 %486, i32 %487)
  %489 = load i32, i32* %20, align 4
  %490 = sub nsw i32 %489, 1
  store i32 %490, i32* %20, align 4
  br label %491

491:                                              ; preds = %468, %485, %479, %473
  %492 = load i32, i32* %20, align 4
  %493 = icmp sgt i32 %492, 0
  br i1 %493, label %494, label %503

494:                                              ; preds = %491
  %495 = load i32, i32* %18, align 4
  %496 = load i32, i32* %20, align 4
  %497 = call i32 @Dbl_set_exponent(i32 %495, i32 %496)
  %498 = load i32, i32* %18, align 4
  %499 = load i32, i32* %19, align 4
  %500 = load i32*, i32** %8, align 8
  %501 = call i32 @Dbl_copytoptr(i32 %498, i32 %499, i32* %500)
  %502 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %502, i32* %5, align 4
  br label %671

503:                                              ; preds = %491
  br label %504

504:                                              ; preds = %503, %455, %446, %430, %412, %399
  %505 = call i64 (...) @Is_underflowtrap_enabled()
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %507, label %520

507:                                              ; preds = %504
  %508 = load i32, i32* %18, align 4
  %509 = load i32, i32* %23, align 4
  %510 = call i32 @Dbl_set_sign(i32 %508, i32 %509)
  %511 = load i32, i32* %18, align 4
  %512 = load i32, i32* %20, align 4
  %513 = load i32, i32* @unfl, align 4
  %514 = call i32 @Dbl_setwrapped_exponent(i32 %511, i32 %512, i32 %513)
  %515 = load i32, i32* %18, align 4
  %516 = load i32, i32* %19, align 4
  %517 = load i32*, i32** %8, align 8
  %518 = call i32 @Dbl_copytoptr(i32 %515, i32 %516, i32* %517)
  %519 = load i32, i32* @UNDERFLOWEXCEPTION, align 4
  store i32 %519, i32* %5, align 4
  br label %671

520:                                              ; preds = %504
  %521 = load i32, i32* %18, align 4
  %522 = load i32, i32* %19, align 4
  %523 = load i32, i32* %20, align 4
  %524 = sub nsw i32 1, %523
  %525 = load i32, i32* %17, align 4
  %526 = call i32 @Dbl_fix_overshift(i32 %521, i32 %522, i32 %524, i32 %525)
  %527 = load i32, i32* %18, align 4
  %528 = call i32 @Dbl_clear_signexponent(i32 %527)
  %529 = load i32, i32* %18, align 4
  %530 = load i32, i32* %23, align 4
  %531 = call i32 @Dbl_set_sign(i32 %529, i32 %530)
  %532 = load i32, i32* %18, align 4
  %533 = load i32, i32* %19, align 4
  %534 = load i32*, i32** %8, align 8
  %535 = call i32 @Dbl_copytoptr(i32 %532, i32 %533, i32* %534)
  %536 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %536, i32* %5, align 4
  br label %671

537:                                              ; preds = %353
  br label %560

538:                                              ; preds = %345
  %539 = load i32, i32* %13, align 4
  %540 = load i32, i32* %14, align 4
  %541 = load i32, i32* %15, align 4
  %542 = load i32, i32* %16, align 4
  %543 = load i32, i32* %18, align 4
  %544 = load i32, i32* %19, align 4
  %545 = call i32 @Dbl_addition(i32 %539, i32 %540, i32 %541, i32 %542, i32 %543, i32 %544)
  %546 = load i32, i32* %18, align 4
  %547 = call i64 @Dbl_isone_hiddenoverflow(i32 %546)
  %548 = icmp ne i64 %547, 0
  br i1 %548, label %549, label %559

549:                                              ; preds = %538
  %550 = load i32, i32* %19, align 4
  %551 = load i32, i32* %17, align 4
  %552 = load i32, i32* %17, align 4
  %553 = call i32 @Dbl_rightshiftby1_withextent(i32 %550, i32 %551, i32 %552)
  %554 = load i32, i32* %18, align 4
  %555 = load i32, i32* %19, align 4
  %556 = call i32 @Dbl_arithrightshiftby1(i32 %554, i32 %555)
  %557 = load i32, i32* %20, align 4
  %558 = add nsw i32 %557, 1
  store i32 %558, i32* %20, align 4
  br label %559

559:                                              ; preds = %549, %538
  br label %560

560:                                              ; preds = %559, %537
  br label %561

561:                                              ; preds = %560, %400
  %562 = load i32, i32* %17, align 4
  %563 = call i64 @Ext_isnotzero(i32 %562)
  %564 = icmp ne i64 %563, 0
  br i1 %564, label %565, label %613

565:                                              ; preds = %561
  %566 = load i64, i64* @TRUE, align 8
  store i64 %566, i64* %25, align 8
  %567 = call i32 (...) @Rounding_mode()
  switch i32 %567, label %605 [
    i32 130, label %568
    i32 129, label %586
    i32 131, label %595
    i32 128, label %604
  ]

568:                                              ; preds = %565
  %569 = load i32, i32* %17, align 4
  %570 = call i32 @Ext_isone_sign(i32 %569)
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %585

572:                                              ; preds = %568
  %573 = load i32, i32* %17, align 4
  %574 = call i32 @Ext_isnotzero_lower(i32 %573)
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %580, label %576

576:                                              ; preds = %572
  %577 = load i32, i32* %19, align 4
  %578 = call i32 @Dbl_isone_lowmantissap2(i32 %577)
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %580, label %584

580:                                              ; preds = %576, %572
  %581 = load i32, i32* %18, align 4
  %582 = load i32, i32* %19, align 4
  %583 = call i32 @Dbl_increment(i32 %581, i32 %582)
  br label %584

584:                                              ; preds = %580, %576
  br label %585

585:                                              ; preds = %584, %568
  br label %605

586:                                              ; preds = %565
  %587 = load i32, i32* %18, align 4
  %588 = call i32 @Dbl_iszero_sign(i32 %587)
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %594

590:                                              ; preds = %586
  %591 = load i32, i32* %18, align 4
  %592 = load i32, i32* %19, align 4
  %593 = call i32 @Dbl_increment(i32 %591, i32 %592)
  br label %594

594:                                              ; preds = %590, %586
  br label %605

595:                                              ; preds = %565
  %596 = load i32, i32* %18, align 4
  %597 = call i32 @Dbl_isone_sign(i32 %596)
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %603

599:                                              ; preds = %595
  %600 = load i32, i32* %18, align 4
  %601 = load i32, i32* %19, align 4
  %602 = call i32 @Dbl_increment(i32 %600, i32 %601)
  br label %603

603:                                              ; preds = %599, %595
  br label %604

604:                                              ; preds = %565, %603
  br label %605

605:                                              ; preds = %604, %565, %594, %585
  %606 = load i32, i32* %18, align 4
  %607 = call i64 @Dbl_isone_hiddenoverflow(i32 %606)
  %608 = icmp ne i64 %607, 0
  br i1 %608, label %609, label %612

609:                                              ; preds = %605
  %610 = load i32, i32* %20, align 4
  %611 = add nsw i32 %610, 1
  store i32 %611, i32* %20, align 4
  br label %612

612:                                              ; preds = %609, %605
  br label %613

613:                                              ; preds = %612, %561
  %614 = load i32, i32* %20, align 4
  %615 = load i32, i32* @DBL_INFINITY_EXPONENT, align 4
  %616 = icmp eq i32 %614, %615
  br i1 %616, label %617, label %650

617:                                              ; preds = %613
  %618 = call i64 (...) @Is_overflowtrap_enabled()
  %619 = icmp ne i64 %618, 0
  br i1 %619, label %620, label %643

620:                                              ; preds = %617
  %621 = load i32, i32* %18, align 4
  %622 = load i32, i32* %20, align 4
  %623 = load i32, i32* @ovfl, align 4
  %624 = call i32 @Dbl_setwrapped_exponent(i32 %621, i32 %622, i32 %623)
  %625 = load i32, i32* %18, align 4
  %626 = load i32, i32* %19, align 4
  %627 = load i32*, i32** %8, align 8
  %628 = call i32 @Dbl_copytoptr(i32 %625, i32 %626, i32* %627)
  %629 = load i64, i64* %25, align 8
  %630 = icmp ne i64 %629, 0
  br i1 %630, label %631, label %641

631:                                              ; preds = %620
  %632 = call i64 (...) @Is_inexacttrap_enabled()
  %633 = icmp ne i64 %632, 0
  br i1 %633, label %634, label %638

634:                                              ; preds = %631
  %635 = load i32, i32* @OVERFLOWEXCEPTION, align 4
  %636 = load i32, i32* @INEXACTEXCEPTION, align 4
  %637 = or i32 %635, %636
  store i32 %637, i32* %5, align 4
  br label %671

638:                                              ; preds = %631
  %639 = call i32 (...) @Set_inexactflag()
  br label %640

640:                                              ; preds = %638
  br label %641

641:                                              ; preds = %640, %620
  %642 = load i32, i32* @OVERFLOWEXCEPTION, align 4
  store i32 %642, i32* %5, align 4
  br label %671

643:                                              ; preds = %617
  %644 = load i64, i64* @TRUE, align 8
  store i64 %644, i64* %25, align 8
  %645 = call i32 (...) @Set_overflowflag()
  %646 = load i32, i32* %18, align 4
  %647 = load i32, i32* %19, align 4
  %648 = call i32 @Dbl_setoverflow(i32 %646, i32 %647)
  br label %649

649:                                              ; preds = %643
  br label %654

650:                                              ; preds = %613
  %651 = load i32, i32* %18, align 4
  %652 = load i32, i32* %20, align 4
  %653 = call i32 @Dbl_set_exponent(i32 %651, i32 %652)
  br label %654

654:                                              ; preds = %650, %649
  %655 = load i32, i32* %18, align 4
  %656 = load i32, i32* %19, align 4
  %657 = load i32*, i32** %8, align 8
  %658 = call i32 @Dbl_copytoptr(i32 %655, i32 %656, i32* %657)
  %659 = load i64, i64* %25, align 8
  %660 = icmp ne i64 %659, 0
  br i1 %660, label %661, label %669

661:                                              ; preds = %654
  %662 = call i64 (...) @Is_inexacttrap_enabled()
  %663 = icmp ne i64 %662, 0
  br i1 %663, label %664, label %666

664:                                              ; preds = %661
  %665 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %665, i32* %5, align 4
  br label %671

666:                                              ; preds = %661
  %667 = call i32 (...) @Set_inexactflag()
  br label %668

668:                                              ; preds = %666
  br label %669

669:                                              ; preds = %668, %654
  %670 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %670, i32* %5, align 4
  br label %671

671:                                              ; preds = %669, %664, %641, %634, %520, %507, %494, %456, %384, %324, %302, %292, %274, %239, %216, %151, %145, %132, %116, %106, %104, %91, %77, %67, %65
  %672 = load i32, i32* %5, align 4
  ret i32 %672
}

declare dso_local i32 @Dbl_copyfromptr(i32*, i32, i32) #1

declare dso_local i32 @Dbl_xortointp1(i32, i32, i32) #1

declare dso_local i32 @Dbl_exponent(i32) #1

declare dso_local i64 @Dbl_iszero_mantissa(i32, i32) #1

declare dso_local i64 @Dbl_isnotnan(i32, i32) #1

declare dso_local i64 @Dbl_isinfinity(i32, i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Dbl_makequietnan(i32, i32) #1

declare dso_local i32 @Dbl_copytoptr(i32, i32, i32*) #1

declare dso_local i64 @Dbl_isone_signaling(i32) #1

declare dso_local i32 @Dbl_set_quiet(i32) #1

declare dso_local i64 @Dbl_is_signalingnan(i32) #1

declare dso_local i64 @Dbl_isinfinity_exponent(i32) #1

declare dso_local i32 @Dbl_copytoint_exponentmantissap1(i32, i32) #1

declare dso_local i64 @Dbl_ismagnitudeless(i32, i32, i32, i32) #1

declare dso_local i32 @Dbl_xorfromintp1(i32, i32, i32) #1

declare dso_local i32 @Dbl_swap_lower(i32, i32) #1

declare dso_local i64 @Dbl_iszero_exponentmantissa(i32, i32) #1

declare dso_local i64 @Is_rounding_mode(i32) #1

declare dso_local i32 @Dbl_or_signs(i32, i32) #1

declare dso_local i32 @Dbl_and_signs(i32, i32) #1

declare dso_local i64 @Is_underflowtrap_enabled(...) #1

declare dso_local i32 @Dbl_signextendedsign(i32) #1

declare dso_local i32 @Dbl_leftshiftby1(i32, i32) #1

declare dso_local i32 @Dbl_normalize(i32, i32, i32) #1

declare dso_local i32 @Dbl_set_sign(i32, i32) #1

declare dso_local i32 @Dbl_setwrapped_exponent(i32, i32, i32) #1

declare dso_local i32 @Dbl_clear_sign(i32) #1

declare dso_local i32 @Dbl_subtract(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Dbl_setone_sign(i32) #1

declare dso_local i32 @Dbl_setzero_sign(i32) #1

declare dso_local i32 @Dbl_addition(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @Dbl_isone_hidden(i32) #1

declare dso_local i32 @Dbl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Dbl_clear_exponent_set_hidden(i32) #1

declare dso_local i32 @Dbl_right_align(i32, i32, i32, i32) #1

declare dso_local i32 @Dbl_subtract_withextension(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @Dbl_iszero_hidden(i32) #1

declare dso_local i32 @Dbl_leftshiftby1_withextent(i32, i32, i32, i32, i32) #1

declare dso_local i64 @Dbl_iszero(i32, i32) #1

declare dso_local i32 @Ext_leftshiftby1(i32) #1

declare dso_local i64 @Dbl_iszero_hiddenhigh7mantissa(i32) #1

declare dso_local i32 @Dbl_leftshiftby8(i32, i32) #1

declare dso_local i64 @Dbl_iszero_hiddenhigh3mantissa(i32) #1

declare dso_local i32 @Dbl_leftshiftby4(i32, i32) #1

declare dso_local i32 @Dbl_hiddenhigh3mantissa(i32) #1

declare dso_local i32 @Dbl_set_exponent(i32, i32) #1

declare dso_local i32 @Dbl_sethigh4bits(i32, i32) #1

declare dso_local i32 @Dbl_leftshiftby3(i32, i32) #1

declare dso_local i32 @Dbl_leftshiftby2(i32, i32) #1

declare dso_local i32 @Dbl_fix_overshift(i32, i32, i32, i32) #1

declare dso_local i32 @Dbl_clear_signexponent(i32) #1

declare dso_local i64 @Dbl_isone_hiddenoverflow(i32) #1

declare dso_local i32 @Dbl_rightshiftby1_withextent(i32, i32, i32) #1

declare dso_local i32 @Dbl_arithrightshiftby1(i32, i32) #1

declare dso_local i64 @Ext_isnotzero(i32) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Ext_isone_sign(i32) #1

declare dso_local i32 @Ext_isnotzero_lower(i32) #1

declare dso_local i32 @Dbl_isone_lowmantissap2(i32) #1

declare dso_local i32 @Dbl_increment(i32, i32) #1

declare dso_local i32 @Dbl_iszero_sign(i32) #1

declare dso_local i32 @Dbl_isone_sign(i32) #1

declare dso_local i64 @Is_overflowtrap_enabled(...) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

declare dso_local i32 @Set_overflowflag(...) #1

declare dso_local i32 @Dbl_setoverflow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
