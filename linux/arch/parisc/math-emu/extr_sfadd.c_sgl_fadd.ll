; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_sfadd.c_sgl_fadd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_sfadd.c_sgl_fadd.c"
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
define dso_local i32 @sgl_fadd(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = call i64 (...) @Is_invalidtrap_enabled()
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %56, i32* %5, align 4
  br label %582

57:                                               ; preds = %52
  %58 = call i32 (...) @Set_invalidflag()
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @Sgl_makequietnan(i32 %59)
  %61 = load i32, i32* %12, align 4
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %63, i32* %5, align 4
  br label %582

64:                                               ; preds = %49, %45
  %65 = load i32, i32* %10, align 4
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %67, i32* %5, align 4
  br label %582

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
  br label %582

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
  br label %582

91:                                               ; preds = %86
  %92 = call i32 (...) @Set_invalidflag()
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @Sgl_set_quiet(i32 %93)
  %95 = load i32, i32* %11, align 4
  %96 = load i32*, i32** %8, align 8
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %97, i32* %5, align 4
  br label %582

98:                                               ; preds = %82
  br label %99

99:                                               ; preds = %98, %78
  %100 = load i32, i32* %10, align 4
  %101 = load i32*, i32** %8, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %102, i32* %5, align 4
  br label %582

103:                                              ; preds = %68
  br label %104

104:                                              ; preds = %103, %4
  %105 = load i32, i32* %11, align 4
  %106 = call i64 @Sgl_isinfinity_exponent(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %133

108:                                              ; preds = %104
  %109 = load i32, i32* %11, align 4
  %110 = call i64 @Sgl_iszero_mantissa(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = load i32*, i32** %8, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %115, i32* %5, align 4
  br label %582

116:                                              ; preds = %108
  %117 = load i32, i32* %11, align 4
  %118 = call i64 @Sgl_isone_signaling(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %116
  %121 = call i64 (...) @Is_invalidtrap_enabled()
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %124, i32* %5, align 4
  br label %582

125:                                              ; preds = %120
  %126 = call i32 (...) @Set_invalidflag()
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @Sgl_set_quiet(i32 %127)
  br label %129

129:                                              ; preds = %125, %116
  %130 = load i32, i32* %11, align 4
  %131 = load i32*, i32** %8, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %132, i32* %5, align 4
  br label %582

133:                                              ; preds = %104
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @Sgl_copytoint_exponentmantissa(i32 %134, i32 %135)
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @Sgl_copytoint_exponentmantissa(i32 %137, i32 %138)
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %15, align 4
  %142 = call i64 @Sgl_ismagnitudeless(i32 %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %133
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @Sgl_xorfromintp1(i32 %145, i32 %146, i32 %147)
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @Sgl_xorfromintp1(i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @Sgl_exponent(i32 %153)
  store i32 %154, i32* %17, align 4
  br label %155

155:                                              ; preds = %144, %133
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @Sgl_exponent(i32 %156)
  store i32 %157, i32* %18, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %277

159:                                              ; preds = %155
  %160 = load i32, i32* %11, align 4
  %161 = call i64 @Sgl_iszero_mantissa(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %208

163:                                              ; preds = %159
  %164 = load i32, i32* %10, align 4
  %165 = call i64 @Sgl_iszero_exponentmantissa(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %163
  %168 = call i64 @Is_rounding_mode(i32 131)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %11, align 4
  %173 = call i32 @Sgl_or_signs(i32 %171, i32 %172)
  br label %178

174:                                              ; preds = %167
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @Sgl_and_signs(i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %170
  br label %204

179:                                              ; preds = %163
  %180 = load i32, i32* %17, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %203

182:                                              ; preds = %179
  %183 = call i64 (...) @Is_underflowtrap_enabled()
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %203

185:                                              ; preds = %182
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @Sgl_signextendedsign(i32 %186)
  store i32 %187, i32* %20, align 4
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @Sgl_leftshiftby1(i32 %188)
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %17, align 4
  %192 = call i32 @Sgl_normalize(i32 %190, i32 %191)
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %20, align 4
  %195 = call i32 @Sgl_set_sign(i32 %193, i32 %194)
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* %17, align 4
  %198 = load i32, i32* @unfl, align 4
  %199 = call i32 @Sgl_setwrapped_exponent(i32 %196, i32 %197, i32 %198)
  %200 = load i32, i32* %10, align 4
  %201 = load i32*, i32** %8, align 8
  store i32 %200, i32* %201, align 4
  %202 = load i32, i32* @UNDERFLOWEXCEPTION, align 4
  store i32 %202, i32* %5, align 4
  br label %582

203:                                              ; preds = %182, %179
  br label %204

204:                                              ; preds = %203, %178
  %205 = load i32, i32* %10, align 4
  %206 = load i32*, i32** %8, align 8
  store i32 %205, i32* %206, align 4
  %207 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %207, i32* %5, align 4
  br label %582

208:                                              ; preds = %159
  %209 = load i32, i32* %11, align 4
  %210 = call i32 @Sgl_clear_sign(i32 %209)
  %211 = load i32, i32* %17, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %276

213:                                              ; preds = %208
  %214 = load i32, i32* %16, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %238

216:                                              ; preds = %213
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @Sgl_subtract(i32 %217, i32 %218, i32 %219)
  %221 = load i32, i32* %12, align 4
  %222 = call i64 @Sgl_iszero_mantissa(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %237

224:                                              ; preds = %216
  %225 = call i64 @Is_rounding_mode(i32 131)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i32, i32* %12, align 4
  %229 = call i32 @Sgl_setone_sign(i32 %228)
  br label %233

230:                                              ; preds = %224
  %231 = load i32, i32* %12, align 4
  %232 = call i32 @Sgl_setzero_sign(i32 %231)
  br label %233

233:                                              ; preds = %230, %227
  %234 = load i32, i32* %12, align 4
  %235 = load i32*, i32** %8, align 8
  store i32 %234, i32* %235, align 4
  %236 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %236, i32* %5, align 4
  br label %582

237:                                              ; preds = %216
  br label %251

238:                                              ; preds = %213
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* %11, align 4
  %241 = load i32, i32* %12, align 4
  %242 = call i32 @Sgl_addition(i32 %239, i32 %240, i32 %241)
  %243 = load i32, i32* %12, align 4
  %244 = call i64 @Sgl_isone_hidden(i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %238
  %247 = load i32, i32* %12, align 4
  %248 = load i32*, i32** %8, align 8
  store i32 %247, i32* %248, align 4
  %249 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %249, i32* %5, align 4
  br label %582

250:                                              ; preds = %238
  br label %251

251:                                              ; preds = %250, %237
  %252 = call i64 (...) @Is_underflowtrap_enabled()
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %272

254:                                              ; preds = %251
  %255 = load i32, i32* %12, align 4
  %256 = call i32 @Sgl_signextendedsign(i32 %255)
  store i32 %256, i32* %20, align 4
  %257 = load i32, i32* %12, align 4
  %258 = call i32 @Sgl_leftshiftby1(i32 %257)
  %259 = load i32, i32* %12, align 4
  %260 = load i32, i32* %17, align 4
  %261 = call i32 @Sgl_normalize(i32 %259, i32 %260)
  %262 = load i32, i32* %12, align 4
  %263 = load i32, i32* %20, align 4
  %264 = call i32 @Sgl_set_sign(i32 %262, i32 %263)
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* %17, align 4
  %267 = load i32, i32* @unfl, align 4
  %268 = call i32 @Sgl_setwrapped_exponent(i32 %265, i32 %266, i32 %267)
  %269 = load i32, i32* %12, align 4
  %270 = load i32*, i32** %8, align 8
  store i32 %269, i32* %270, align 4
  %271 = load i32, i32* @UNDERFLOWEXCEPTION, align 4
  store i32 %271, i32* %5, align 4
  br label %582

272:                                              ; preds = %251
  %273 = load i32, i32* %12, align 4
  %274 = load i32*, i32** %8, align 8
  store i32 %273, i32* %274, align 4
  %275 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %275, i32* %5, align 4
  br label %582

276:                                              ; preds = %208
  store i32 1, i32* %18, align 4
  br label %280

277:                                              ; preds = %155
  %278 = load i32, i32* %11, align 4
  %279 = call i32 @Sgl_clear_signexponent_set_hidden(i32 %278)
  br label %280

280:                                              ; preds = %277, %276
  %281 = load i32, i32* %10, align 4
  %282 = call i32 @Sgl_clear_exponent_set_hidden(i32 %281)
  %283 = load i32, i32* %17, align 4
  %284 = load i32, i32* %18, align 4
  %285 = sub nsw i32 %283, %284
  store i32 %285, i32* %19, align 4
  %286 = load i32, i32* %19, align 4
  %287 = load i32, i32* @SGL_THRESHOLD, align 4
  %288 = icmp sgt i32 %286, %287
  br i1 %288, label %289, label %291

289:                                              ; preds = %280
  %290 = load i32, i32* @SGL_THRESHOLD, align 4
  store i32 %290, i32* %19, align 4
  br label %291

291:                                              ; preds = %289, %280
  %292 = load i32, i32* %11, align 4
  %293 = load i32, i32* %19, align 4
  %294 = load i32, i32* %13, align 4
  %295 = call i32 @Sgl_right_align(i32 %292, i32 %293, i32 %294)
  %296 = load i32, i32* %16, align 4
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %298, label %461

298:                                              ; preds = %291
  %299 = load i32, i32* %10, align 4
  %300 = load i32, i32* %11, align 4
  %301 = load i32, i32* %13, align 4
  %302 = load i32, i32* %12, align 4
  %303 = call i32 @Sgl_subtract_withextension(i32 %299, i32 %300, i32 %301, i32 %302)
  %304 = load i32, i32* %12, align 4
  %305 = call i64 @Sgl_iszero_hidden(i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %460

307:                                              ; preds = %298
  %308 = load i32, i32* %12, align 4
  %309 = call i32 @Sgl_signextendedsign(i32 %308)
  store i32 %309, i32* %20, align 4
  %310 = load i32, i32* %12, align 4
  %311 = load i32, i32* %13, align 4
  %312 = load i32, i32* %12, align 4
  %313 = call i32 @Sgl_leftshiftby1_withextent(i32 %310, i32 %311, i32 %312)
  %314 = load i32, i32* %12, align 4
  %315 = call i64 @Sgl_iszero(i32 %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %327

317:                                              ; preds = %307
  %318 = call i64 @Is_rounding_mode(i32 131)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %317
  %321 = load i32, i32* %12, align 4
  %322 = call i32 @Sgl_setone_sign(i32 %321)
  br label %323

323:                                              ; preds = %320, %317
  %324 = load i32, i32* %12, align 4
  %325 = load i32*, i32** %8, align 8
  store i32 %324, i32* %325, align 4
  %326 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %326, i32* %5, align 4
  br label %582

327:                                              ; preds = %307
  %328 = load i32, i32* %17, align 4
  %329 = add nsw i32 %328, -1
  store i32 %329, i32* %17, align 4
  %330 = load i32, i32* %12, align 4
  %331 = call i64 @Sgl_isone_hidden(i32 %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %343

333:                                              ; preds = %327
  %334 = load i32, i32* %17, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %333
  br label %432

337:                                              ; preds = %333
  %338 = load i32, i32* %12, align 4
  %339 = load i32, i32* %20, align 4
  %340 = call i32 @Sgl_set_sign(i32 %338, i32 %339)
  %341 = load i32, i32* %13, align 4
  %342 = call i32 @Ext_leftshiftby1(i32 %341)
  br label %480

343:                                              ; preds = %327
  %344 = call i64 (...) @Is_underflowtrap_enabled()
  store i64 %344, i64* %23, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %350, label %346

346:                                              ; preds = %343
  %347 = load i32, i32* %17, align 4
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %346
  br label %432

350:                                              ; preds = %346, %343
  %351 = load i32, i32* %13, align 4
  %352 = call i32 @Ext_leftshiftby1(i32 %351)
  br label %353

353:                                              ; preds = %367, %350
  %354 = load i32, i32* %12, align 4
  %355 = call i64 @Sgl_iszero_hiddenhigh7mantissa(i32 %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %368

357:                                              ; preds = %353
  %358 = load i32, i32* %12, align 4
  %359 = call i32 @Sgl_leftshiftby8(i32 %358)
  %360 = load i32, i32* %17, align 4
  %361 = sub nsw i32 %360, 8
  store i32 %361, i32* %17, align 4
  %362 = icmp sle i32 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %357
  %364 = load i64, i64* %23, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %367, label %366

366:                                              ; preds = %363
  br label %432

367:                                              ; preds = %363, %357
  br label %353

368:                                              ; preds = %353
  %369 = load i32, i32* %12, align 4
  %370 = call i64 @Sgl_iszero_hiddenhigh3mantissa(i32 %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %383

372:                                              ; preds = %368
  %373 = load i32, i32* %12, align 4
  %374 = call i32 @Sgl_leftshiftby4(i32 %373)
  %375 = load i32, i32* %17, align 4
  %376 = sub nsw i32 %375, 4
  store i32 %376, i32* %17, align 4
  %377 = icmp sle i32 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %372
  %379 = load i64, i64* %23, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %382, label %381

381:                                              ; preds = %378
  br label %432

382:                                              ; preds = %378, %372
  br label %383

383:                                              ; preds = %382, %368
  %384 = load i32, i32* %12, align 4
  %385 = call i32 @Sgl_hiddenhigh3mantissa(i32 %384)
  store i32 %385, i32* %21, align 4
  %386 = icmp sgt i32 %385, 7
  br i1 %386, label %387, label %401

387:                                              ; preds = %383
  %388 = load i32, i32* %17, align 4
  %389 = icmp sle i32 %388, 0
  br i1 %389, label %390, label %391

390:                                              ; preds = %387
  br label %432

391:                                              ; preds = %387
  %392 = load i32, i32* %12, align 4
  %393 = load i32, i32* %20, align 4
  %394 = call i32 @Sgl_set_sign(i32 %392, i32 %393)
  %395 = load i32, i32* %12, align 4
  %396 = load i32, i32* %17, align 4
  %397 = call i32 @Sgl_set_exponent(i32 %395, i32 %396)
  %398 = load i32, i32* %12, align 4
  %399 = load i32*, i32** %8, align 8
  store i32 %398, i32* %399, align 4
  %400 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %400, i32* %5, align 4
  br label %582

401:                                              ; preds = %383
  %402 = load i32, i32* %12, align 4
  %403 = load i32, i32* %20, align 4
  %404 = call i32 @Sgl_sethigh4bits(i32 %402, i32 %403)
  %405 = load i32, i32* %21, align 4
  switch i32 %405, label %421 [
    i32 1, label %406
    i32 2, label %411
    i32 3, label %411
    i32 4, label %416
    i32 5, label %416
    i32 6, label %416
    i32 7, label %416
  ]

406:                                              ; preds = %401
  %407 = load i32, i32* %12, align 4
  %408 = call i32 @Sgl_leftshiftby3(i32 %407)
  %409 = load i32, i32* %17, align 4
  %410 = sub nsw i32 %409, 3
  store i32 %410, i32* %17, align 4
  br label %421

411:                                              ; preds = %401, %401
  %412 = load i32, i32* %12, align 4
  %413 = call i32 @Sgl_leftshiftby2(i32 %412)
  %414 = load i32, i32* %17, align 4
  %415 = sub nsw i32 %414, 2
  store i32 %415, i32* %17, align 4
  br label %421

416:                                              ; preds = %401, %401, %401, %401
  %417 = load i32, i32* %12, align 4
  %418 = call i32 @Sgl_leftshiftby1(i32 %417)
  %419 = load i32, i32* %17, align 4
  %420 = sub nsw i32 %419, 1
  store i32 %420, i32* %17, align 4
  br label %421

421:                                              ; preds = %401, %416, %411, %406
  %422 = load i32, i32* %17, align 4
  %423 = icmp sgt i32 %422, 0
  br i1 %423, label %424, label %431

424:                                              ; preds = %421
  %425 = load i32, i32* %12, align 4
  %426 = load i32, i32* %17, align 4
  %427 = call i32 @Sgl_set_exponent(i32 %425, i32 %426)
  %428 = load i32, i32* %12, align 4
  %429 = load i32*, i32** %8, align 8
  store i32 %428, i32* %429, align 4
  %430 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %430, i32* %5, align 4
  br label %582

431:                                              ; preds = %421
  br label %432

432:                                              ; preds = %431, %390, %381, %366, %349, %336
  %433 = call i64 (...) @Is_underflowtrap_enabled()
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %446

435:                                              ; preds = %432
  %436 = load i32, i32* %12, align 4
  %437 = load i32, i32* %20, align 4
  %438 = call i32 @Sgl_set_sign(i32 %436, i32 %437)
  %439 = load i32, i32* %12, align 4
  %440 = load i32, i32* %17, align 4
  %441 = load i32, i32* @unfl, align 4
  %442 = call i32 @Sgl_setwrapped_exponent(i32 %439, i32 %440, i32 %441)
  %443 = load i32, i32* %12, align 4
  %444 = load i32*, i32** %8, align 8
  store i32 %443, i32* %444, align 4
  %445 = load i32, i32* @UNDERFLOWEXCEPTION, align 4
  store i32 %445, i32* %5, align 4
  br label %582

446:                                              ; preds = %432
  %447 = load i32, i32* %12, align 4
  %448 = load i32, i32* %17, align 4
  %449 = sub nsw i32 1, %448
  %450 = load i32, i32* %13, align 4
  %451 = call i32 @Sgl_right_align(i32 %447, i32 %449, i32 %450)
  %452 = load i32, i32* %12, align 4
  %453 = call i32 @Sgl_clear_signexponent(i32 %452)
  %454 = load i32, i32* %12, align 4
  %455 = load i32, i32* %20, align 4
  %456 = call i32 @Sgl_set_sign(i32 %454, i32 %455)
  %457 = load i32, i32* %12, align 4
  %458 = load i32*, i32** %8, align 8
  store i32 %457, i32* %458, align 4
  %459 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %459, i32* %5, align 4
  br label %582

460:                                              ; preds = %298
  br label %479

461:                                              ; preds = %291
  %462 = load i32, i32* %10, align 4
  %463 = load i32, i32* %11, align 4
  %464 = load i32, i32* %12, align 4
  %465 = call i32 @Sgl_addition(i32 %462, i32 %463, i32 %464)
  %466 = load i32, i32* %12, align 4
  %467 = call i64 @Sgl_isone_hiddenoverflow(i32 %466)
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %478

469:                                              ; preds = %461
  %470 = load i32, i32* %12, align 4
  %471 = load i32, i32* %13, align 4
  %472 = load i32, i32* %13, align 4
  %473 = call i32 @Sgl_rightshiftby1_withextent(i32 %470, i32 %471, i32 %472)
  %474 = load i32, i32* %12, align 4
  %475 = call i32 @Sgl_arithrightshiftby1(i32 %474)
  %476 = load i32, i32* %17, align 4
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %17, align 4
  br label %478

478:                                              ; preds = %469, %461
  br label %479

479:                                              ; preds = %478, %460
  br label %480

480:                                              ; preds = %479, %337
  %481 = load i32, i32* %13, align 4
  %482 = call i64 @Ext_isnotzero(i32 %481)
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %529

484:                                              ; preds = %480
  %485 = load i64, i64* @TRUE, align 8
  store i64 %485, i64* %22, align 8
  %486 = call i32 (...) @Rounding_mode()
  switch i32 %486, label %521 [
    i32 130, label %487
    i32 129, label %504
    i32 131, label %512
    i32 128, label %520
  ]

487:                                              ; preds = %484
  %488 = load i32, i32* %13, align 4
  %489 = call i32 @Ext_isone_sign(i32 %488)
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %503

491:                                              ; preds = %487
  %492 = load i32, i32* %13, align 4
  %493 = call i32 @Ext_isnotzero_lower(i32 %492)
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %499, label %495

495:                                              ; preds = %491
  %496 = load i32, i32* %12, align 4
  %497 = call i32 @Sgl_isone_lowmantissa(i32 %496)
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %502

499:                                              ; preds = %495, %491
  %500 = load i32, i32* %12, align 4
  %501 = call i32 @Sgl_increment(i32 %500)
  br label %502

502:                                              ; preds = %499, %495
  br label %503

503:                                              ; preds = %502, %487
  br label %521

504:                                              ; preds = %484
  %505 = load i32, i32* %12, align 4
  %506 = call i32 @Sgl_iszero_sign(i32 %505)
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %511

508:                                              ; preds = %504
  %509 = load i32, i32* %12, align 4
  %510 = call i32 @Sgl_increment(i32 %509)
  br label %511

511:                                              ; preds = %508, %504
  br label %521

512:                                              ; preds = %484
  %513 = load i32, i32* %12, align 4
  %514 = call i32 @Sgl_isone_sign(i32 %513)
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %519

516:                                              ; preds = %512
  %517 = load i32, i32* %12, align 4
  %518 = call i32 @Sgl_increment(i32 %517)
  br label %519

519:                                              ; preds = %516, %512
  br label %520

520:                                              ; preds = %484, %519
  br label %521

521:                                              ; preds = %520, %484, %511, %503
  %522 = load i32, i32* %12, align 4
  %523 = call i64 @Sgl_isone_hiddenoverflow(i32 %522)
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %528

525:                                              ; preds = %521
  %526 = load i32, i32* %17, align 4
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* %17, align 4
  br label %528

528:                                              ; preds = %525, %521
  br label %529

529:                                              ; preds = %528, %480
  %530 = load i32, i32* %17, align 4
  %531 = load i32, i32* @SGL_INFINITY_EXPONENT, align 4
  %532 = icmp eq i32 %530, %531
  br i1 %532, label %533, label %563

533:                                              ; preds = %529
  %534 = call i64 (...) @Is_overflowtrap_enabled()
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %557

536:                                              ; preds = %533
  %537 = load i32, i32* %12, align 4
  %538 = load i32, i32* %17, align 4
  %539 = load i32, i32* @ovfl, align 4
  %540 = call i32 @Sgl_setwrapped_exponent(i32 %537, i32 %538, i32 %539)
  %541 = load i32, i32* %12, align 4
  %542 = load i32*, i32** %8, align 8
  store i32 %541, i32* %542, align 4
  %543 = load i64, i64* %22, align 8
  %544 = icmp ne i64 %543, 0
  br i1 %544, label %545, label %555

545:                                              ; preds = %536
  %546 = call i64 (...) @Is_inexacttrap_enabled()
  %547 = icmp ne i64 %546, 0
  br i1 %547, label %548, label %552

548:                                              ; preds = %545
  %549 = load i32, i32* @OVERFLOWEXCEPTION, align 4
  %550 = load i32, i32* @INEXACTEXCEPTION, align 4
  %551 = or i32 %549, %550
  store i32 %551, i32* %5, align 4
  br label %582

552:                                              ; preds = %545
  %553 = call i32 (...) @Set_inexactflag()
  br label %554

554:                                              ; preds = %552
  br label %555

555:                                              ; preds = %554, %536
  %556 = load i32, i32* @OVERFLOWEXCEPTION, align 4
  store i32 %556, i32* %5, align 4
  br label %582

557:                                              ; preds = %533
  %558 = call i32 (...) @Set_overflowflag()
  %559 = load i64, i64* @TRUE, align 8
  store i64 %559, i64* %22, align 8
  %560 = load i32, i32* %12, align 4
  %561 = call i32 @Sgl_setoverflow(i32 %560)
  br label %562

562:                                              ; preds = %557
  br label %567

563:                                              ; preds = %529
  %564 = load i32, i32* %12, align 4
  %565 = load i32, i32* %17, align 4
  %566 = call i32 @Sgl_set_exponent(i32 %564, i32 %565)
  br label %567

567:                                              ; preds = %563, %562
  %568 = load i32, i32* %12, align 4
  %569 = load i32*, i32** %8, align 8
  store i32 %568, i32* %569, align 4
  %570 = load i64, i64* %22, align 8
  %571 = icmp ne i64 %570, 0
  br i1 %571, label %572, label %580

572:                                              ; preds = %567
  %573 = call i64 (...) @Is_inexacttrap_enabled()
  %574 = icmp ne i64 %573, 0
  br i1 %574, label %575, label %577

575:                                              ; preds = %572
  %576 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %576, i32* %5, align 4
  br label %582

577:                                              ; preds = %572
  %578 = call i32 (...) @Set_inexactflag()
  br label %579

579:                                              ; preds = %577
  br label %580

580:                                              ; preds = %579, %567
  %581 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %581, i32* %5, align 4
  br label %582

582:                                              ; preds = %580, %575, %555, %548, %446, %435, %424, %391, %323, %272, %254, %246, %233, %204, %185, %129, %123, %112, %99, %91, %89, %76, %64, %57, %55
  %583 = load i32, i32* %5, align 4
  ret i32 %583
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
