; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fmpyfadd.c_dbl_fmpyfadd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fmpyfadd.c_dbl_fmpyfadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@DBL_BIAS = common dso_local global i32 0, align 4
@OPC_2E_INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@unfl = common dso_local global i32 0, align 4
@OPC_2E_UNDERFLOWEXCEPTION = common dso_local global i32 0, align 4
@DBL_P = common dso_local global i32 0, align 4
@DBLEXT_THRESHOLD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@DBL_INFINITY_EXPONENT = common dso_local global i32 0, align 4
@ovfl = common dso_local global i32 0, align 4
@OPC_2E_OVERFLOWEXCEPTION = common dso_local global i32 0, align 4
@OPC_2E_INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbl_fmpyfadd(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
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
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %42 = load i64, i64* @FALSE, align 8
  store i64 %42, i64* %33, align 8
  %43 = load i64, i64* @FALSE, align 8
  store i64 %43, i64* %34, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @Dbl_copyfromptr(i32* %44, i32 %45, i32 %46)
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @Dbl_copyfromptr(i32* %48, i32 %49, i32 %50)
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @Dbl_copyfromptr(i32* %52, i32 %53, i32 %54)
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @Dbl_sign(i32 %56)
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @Dbl_sign(i32 %58)
  %60 = xor i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %5
  %63 = load i32, i32* %26, align 4
  %64 = call i32 @Dbl_setnegativezerop1(i32 %63)
  br label %68

65:                                               ; preds = %5
  %66 = load i32, i32* %26, align 4
  %67 = call i32 @Dbl_setzerop1(i32 %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @Dbl_exponent(i32 %69)
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @Dbl_exponent(i32 %71)
  %73 = add nsw i32 %70, %72
  %74 = load i32, i32* @DBL_BIAS, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %30, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i64 @Dbl_isinfinity_exponent(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %209

79:                                               ; preds = %68
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i64 @Dbl_iszero_mantissa(i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %151

84:                                               ; preds = %79
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i64 @Dbl_isnotnan(i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %150

89:                                               ; preds = %84
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %17, align 4
  %92 = call i64 @Dbl_isnotnan(i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %150

94:                                               ; preds = %89
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %15, align 4
  %97 = call i64 @Dbl_iszero_exponentmantissa(i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %94
  %100 = call i64 (...) @Is_invalidtrap_enabled()
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* @OPC_2E_INVALIDEXCEPTION, align 4
  store i32 %103, i32* %6, align 4
  br label %1032

104:                                              ; preds = %99
  %105 = call i32 (...) @Set_invalidflag()
  %106 = load i32, i32* %26, align 4
  %107 = load i32, i32* %27, align 4
  %108 = call i32 @Dbl_makequietnan(i32 %106, i32 %107)
  %109 = load i32, i32* %26, align 4
  %110 = load i32, i32* %27, align 4
  %111 = load i32*, i32** %11, align 8
  %112 = call i32 @Dbl_copytoptr(i32 %109, i32 %110, i32* %111)
  %113 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %113, i32* %6, align 4
  br label %1032

114:                                              ; preds = %94
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %17, align 4
  %117 = call i64 @Dbl_isinfinity(i32 %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %114
  %120 = load i32, i32* %26, align 4
  %121 = call i32 @Dbl_sign(i32 %120)
  %122 = load i32, i32* %16, align 4
  %123 = call i32 @Dbl_sign(i32 %122)
  %124 = xor i32 %121, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %119
  %127 = call i64 (...) @Is_invalidtrap_enabled()
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i32, i32* @OPC_2E_INVALIDEXCEPTION, align 4
  store i32 %130, i32* %6, align 4
  br label %1032

131:                                              ; preds = %126
  %132 = call i32 (...) @Set_invalidflag()
  %133 = load i32, i32* %26, align 4
  %134 = load i32, i32* %27, align 4
  %135 = call i32 @Dbl_makequietnan(i32 %133, i32 %134)
  %136 = load i32, i32* %26, align 4
  %137 = load i32, i32* %27, align 4
  %138 = load i32*, i32** %11, align 8
  %139 = call i32 @Dbl_copytoptr(i32 %136, i32 %137, i32* %138)
  %140 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %140, i32* %6, align 4
  br label %1032

141:                                              ; preds = %119, %114
  %142 = load i32, i32* %26, align 4
  %143 = load i32, i32* %27, align 4
  %144 = call i32 @Dbl_setinfinity_exponentmantissa(i32 %142, i32 %143)
  %145 = load i32, i32* %26, align 4
  %146 = load i32, i32* %27, align 4
  %147 = load i32*, i32** %11, align 8
  %148 = call i32 @Dbl_copytoptr(i32 %145, i32 %146, i32* %147)
  %149 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %149, i32* %6, align 4
  br label %1032

150:                                              ; preds = %89, %84
  br label %208

151:                                              ; preds = %79
  %152 = load i32, i32* %12, align 4
  %153 = call i64 @Dbl_isone_signaling(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %151
  %156 = call i64 (...) @Is_invalidtrap_enabled()
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i32, i32* @OPC_2E_INVALIDEXCEPTION, align 4
  store i32 %159, i32* %6, align 4
  br label %1032

160:                                              ; preds = %155
  %161 = call i32 (...) @Set_invalidflag()
  %162 = load i32, i32* %12, align 4
  %163 = call i32 @Dbl_set_quiet(i32 %162)
  br label %202

164:                                              ; preds = %151
  %165 = load i32, i32* %14, align 4
  %166 = call i64 @Dbl_is_signalingnan(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %182

168:                                              ; preds = %164
  %169 = call i64 (...) @Is_invalidtrap_enabled()
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = load i32, i32* @OPC_2E_INVALIDEXCEPTION, align 4
  store i32 %172, i32* %6, align 4
  br label %1032

173:                                              ; preds = %168
  %174 = call i32 (...) @Set_invalidflag()
  %175 = load i32, i32* %14, align 4
  %176 = call i32 @Dbl_set_quiet(i32 %175)
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %15, align 4
  %179 = load i32*, i32** %11, align 8
  %180 = call i32 @Dbl_copytoptr(i32 %177, i32 %178, i32* %179)
  %181 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %181, i32* %6, align 4
  br label %1032

182:                                              ; preds = %164
  %183 = load i32, i32* %16, align 4
  %184 = call i64 @Dbl_is_signalingnan(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %182
  %187 = call i64 (...) @Is_invalidtrap_enabled()
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = load i32, i32* @OPC_2E_INVALIDEXCEPTION, align 4
  store i32 %190, i32* %6, align 4
  br label %1032

191:                                              ; preds = %186
  %192 = call i32 (...) @Set_invalidflag()
  %193 = load i32, i32* %16, align 4
  %194 = call i32 @Dbl_set_quiet(i32 %193)
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %17, align 4
  %197 = load i32*, i32** %11, align 8
  %198 = call i32 @Dbl_copytoptr(i32 %195, i32 %196, i32* %197)
  %199 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %199, i32* %6, align 4
  br label %1032

200:                                              ; preds = %182
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201, %160
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* %13, align 4
  %205 = load i32*, i32** %11, align 8
  %206 = call i32 @Dbl_copytoptr(i32 %203, i32 %204, i32* %205)
  %207 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %207, i32* %6, align 4
  br label %1032

208:                                              ; preds = %150
  br label %209

209:                                              ; preds = %208, %68
  %210 = load i32, i32* %14, align 4
  %211 = call i64 @Dbl_isinfinity_exponent(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %319

213:                                              ; preds = %209
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* %15, align 4
  %216 = call i64 @Dbl_iszero_mantissa(i32 %214, i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %280

218:                                              ; preds = %213
  %219 = load i32, i32* %16, align 4
  %220 = load i32, i32* %17, align 4
  %221 = call i64 @Dbl_isnotnan(i32 %219, i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %279

223:                                              ; preds = %218
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* %13, align 4
  %226 = call i64 @Dbl_iszero_exponentmantissa(i32 %224, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %243

228:                                              ; preds = %223
  %229 = call i64 (...) @Is_invalidtrap_enabled()
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  %232 = load i32, i32* @OPC_2E_INVALIDEXCEPTION, align 4
  store i32 %232, i32* %6, align 4
  br label %1032

233:                                              ; preds = %228
  %234 = call i32 (...) @Set_invalidflag()
  %235 = load i32, i32* %14, align 4
  %236 = load i32, i32* %15, align 4
  %237 = call i32 @Dbl_makequietnan(i32 %235, i32 %236)
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* %15, align 4
  %240 = load i32*, i32** %11, align 8
  %241 = call i32 @Dbl_copytoptr(i32 %238, i32 %239, i32* %240)
  %242 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %242, i32* %6, align 4
  br label %1032

243:                                              ; preds = %223
  %244 = load i32, i32* %16, align 4
  %245 = load i32, i32* %17, align 4
  %246 = call i64 @Dbl_isinfinity(i32 %244, i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %270

248:                                              ; preds = %243
  %249 = load i32, i32* %26, align 4
  %250 = call i32 @Dbl_sign(i32 %249)
  %251 = load i32, i32* %16, align 4
  %252 = call i32 @Dbl_sign(i32 %251)
  %253 = xor i32 %250, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %270

255:                                              ; preds = %248
  %256 = call i64 (...) @Is_invalidtrap_enabled()
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %255
  %259 = load i32, i32* @OPC_2E_INVALIDEXCEPTION, align 4
  store i32 %259, i32* %6, align 4
  br label %1032

260:                                              ; preds = %255
  %261 = call i32 (...) @Set_invalidflag()
  %262 = load i32, i32* %26, align 4
  %263 = load i32, i32* %27, align 4
  %264 = call i32 @Dbl_makequietnan(i32 %262, i32 %263)
  %265 = load i32, i32* %26, align 4
  %266 = load i32, i32* %27, align 4
  %267 = load i32*, i32** %11, align 8
  %268 = call i32 @Dbl_copytoptr(i32 %265, i32 %266, i32* %267)
  %269 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %269, i32* %6, align 4
  br label %1032

270:                                              ; preds = %248, %243
  %271 = load i32, i32* %26, align 4
  %272 = load i32, i32* %27, align 4
  %273 = call i32 @Dbl_setinfinity_exponentmantissa(i32 %271, i32 %272)
  %274 = load i32, i32* %26, align 4
  %275 = load i32, i32* %27, align 4
  %276 = load i32*, i32** %11, align 8
  %277 = call i32 @Dbl_copytoptr(i32 %274, i32 %275, i32* %276)
  %278 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %278, i32* %6, align 4
  br label %1032

279:                                              ; preds = %218
  br label %318

280:                                              ; preds = %213
  %281 = load i32, i32* %14, align 4
  %282 = call i64 @Dbl_isone_signaling(i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %293

284:                                              ; preds = %280
  %285 = call i64 (...) @Is_invalidtrap_enabled()
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %284
  %288 = load i32, i32* @OPC_2E_INVALIDEXCEPTION, align 4
  store i32 %288, i32* %6, align 4
  br label %1032

289:                                              ; preds = %284
  %290 = call i32 (...) @Set_invalidflag()
  %291 = load i32, i32* %14, align 4
  %292 = call i32 @Dbl_set_quiet(i32 %291)
  br label %312

293:                                              ; preds = %280
  %294 = load i32, i32* %16, align 4
  %295 = call i64 @Dbl_is_signalingnan(i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %311

297:                                              ; preds = %293
  %298 = call i64 (...) @Is_invalidtrap_enabled()
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %297
  %301 = load i32, i32* @OPC_2E_INVALIDEXCEPTION, align 4
  store i32 %301, i32* %6, align 4
  br label %1032

302:                                              ; preds = %297
  %303 = call i32 (...) @Set_invalidflag()
  %304 = load i32, i32* %16, align 4
  %305 = call i32 @Dbl_set_quiet(i32 %304)
  %306 = load i32, i32* %16, align 4
  %307 = load i32, i32* %17, align 4
  %308 = load i32*, i32** %11, align 8
  %309 = call i32 @Dbl_copytoptr(i32 %306, i32 %307, i32* %308)
  %310 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %310, i32* %6, align 4
  br label %1032

311:                                              ; preds = %293
  br label %312

312:                                              ; preds = %311, %289
  %313 = load i32, i32* %14, align 4
  %314 = load i32, i32* %15, align 4
  %315 = load i32*, i32** %11, align 8
  %316 = call i32 @Dbl_copytoptr(i32 %313, i32 %314, i32* %315)
  %317 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %317, i32* %6, align 4
  br label %1032

318:                                              ; preds = %279
  br label %319

319:                                              ; preds = %318, %209
  %320 = load i32, i32* %16, align 4
  %321 = call i64 @Dbl_isinfinity_exponent(i32 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %353

323:                                              ; preds = %319
  %324 = load i32, i32* %16, align 4
  %325 = load i32, i32* %17, align 4
  %326 = call i64 @Dbl_iszero_mantissa(i32 %324, i32 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %323
  %329 = load i32, i32* %16, align 4
  %330 = load i32, i32* %17, align 4
  %331 = load i32*, i32** %11, align 8
  %332 = call i32 @Dbl_copytoptr(i32 %329, i32 %330, i32* %331)
  %333 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %333, i32* %6, align 4
  br label %1032

334:                                              ; preds = %323
  %335 = load i32, i32* %16, align 4
  %336 = call i64 @Dbl_isone_signaling(i32 %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %347

338:                                              ; preds = %334
  %339 = call i64 (...) @Is_invalidtrap_enabled()
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %338
  %342 = load i32, i32* @OPC_2E_INVALIDEXCEPTION, align 4
  store i32 %342, i32* %6, align 4
  br label %1032

343:                                              ; preds = %338
  %344 = call i32 (...) @Set_invalidflag()
  %345 = load i32, i32* %16, align 4
  %346 = call i32 @Dbl_set_quiet(i32 %345)
  br label %347

347:                                              ; preds = %343, %334
  %348 = load i32, i32* %16, align 4
  %349 = load i32, i32* %17, align 4
  %350 = load i32*, i32** %11, align 8
  %351 = call i32 @Dbl_copytoptr(i32 %348, i32 %349, i32* %350)
  %352 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %352, i32* %6, align 4
  br label %1032

353:                                              ; preds = %319
  %354 = load i32, i32* %12, align 4
  %355 = call i64 @Dbl_isnotzero_exponent(i32 %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %353
  %358 = load i32, i32* %12, align 4
  %359 = call i32 @Dbl_clear_signexponent_set_hidden(i32 %358)
  br label %428

360:                                              ; preds = %353
  %361 = load i32, i32* %12, align 4
  %362 = load i32, i32* %13, align 4
  %363 = call i64 @Dbl_iszero_mantissa(i32 %361, i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %418

365:                                              ; preds = %360
  %366 = load i32, i32* %16, align 4
  %367 = load i32, i32* %17, align 4
  %368 = call i64 @Dbl_iszero_exponentmantissa(i32 %366, i32 %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %382

370:                                              ; preds = %365
  %371 = call i64 @Is_rounding_mode(i32 131)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %370
  %374 = load i32, i32* %16, align 4
  %375 = load i32, i32* %26, align 4
  %376 = call i32 @Dbl_or_signs(i32 %374, i32 %375)
  br label %381

377:                                              ; preds = %370
  %378 = load i32, i32* %16, align 4
  %379 = load i32, i32* %26, align 4
  %380 = call i32 @Dbl_and_signs(i32 %378, i32 %379)
  br label %381

381:                                              ; preds = %377, %373
  br label %412

382:                                              ; preds = %365
  %383 = load i32, i32* %16, align 4
  %384 = call i64 @Dbl_iszero_exponent(i32 %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %411

386:                                              ; preds = %382
  %387 = call i64 (...) @Is_underflowtrap_enabled()
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %411

389:                                              ; preds = %386
  %390 = load i32, i32* %16, align 4
  %391 = call i32 @Dbl_signextendedsign(i32 %390)
  store i32 %391, i32* %40, align 4
  store i32 0, i32* %38, align 4
  %392 = load i32, i32* %16, align 4
  %393 = load i32, i32* %17, align 4
  %394 = call i32 @Dbl_leftshiftby1(i32 %392, i32 %393)
  %395 = load i32, i32* %16, align 4
  %396 = load i32, i32* %17, align 4
  %397 = load i32, i32* %38, align 4
  %398 = call i32 @Dbl_normalize(i32 %395, i32 %396, i32 %397)
  %399 = load i32, i32* %16, align 4
  %400 = load i32, i32* %40, align 4
  %401 = call i32 @Dbl_set_sign(i32 %399, i32 %400)
  %402 = load i32, i32* %16, align 4
  %403 = load i32, i32* %38, align 4
  %404 = load i32, i32* @unfl, align 4
  %405 = call i32 @Dbl_setwrapped_exponent(i32 %402, i32 %403, i32 %404)
  %406 = load i32, i32* %16, align 4
  %407 = load i32, i32* %17, align 4
  %408 = load i32*, i32** %11, align 8
  %409 = call i32 @Dbl_copytoptr(i32 %406, i32 %407, i32* %408)
  %410 = load i32, i32* @OPC_2E_UNDERFLOWEXCEPTION, align 4
  store i32 %410, i32* %6, align 4
  br label %1032

411:                                              ; preds = %386, %382
  br label %412

412:                                              ; preds = %411, %381
  %413 = load i32, i32* %16, align 4
  %414 = load i32, i32* %17, align 4
  %415 = load i32*, i32** %11, align 8
  %416 = call i32 @Dbl_copytoptr(i32 %413, i32 %414, i32* %415)
  %417 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %417, i32* %6, align 4
  br label %1032

418:                                              ; preds = %360
  %419 = load i32, i32* %12, align 4
  %420 = call i32 @Dbl_clear_signexponent(i32 %419)
  %421 = load i32, i32* %12, align 4
  %422 = load i32, i32* %13, align 4
  %423 = call i32 @Dbl_leftshiftby1(i32 %421, i32 %422)
  %424 = load i32, i32* %12, align 4
  %425 = load i32, i32* %13, align 4
  %426 = load i32, i32* %30, align 4
  %427 = call i32 @Dbl_normalize(i32 %424, i32 %425, i32 %426)
  br label %428

428:                                              ; preds = %418, %357
  %429 = load i32, i32* %14, align 4
  %430 = call i64 @Dbl_isnotzero_exponent(i32 %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %435

432:                                              ; preds = %428
  %433 = load i32, i32* %14, align 4
  %434 = call i32 @Dbl_clear_signexponent_set_hidden(i32 %433)
  br label %503

435:                                              ; preds = %428
  %436 = load i32, i32* %14, align 4
  %437 = load i32, i32* %15, align 4
  %438 = call i64 @Dbl_iszero_mantissa(i32 %436, i32 %437)
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %493

440:                                              ; preds = %435
  %441 = load i32, i32* %16, align 4
  %442 = load i32, i32* %17, align 4
  %443 = call i64 @Dbl_iszero_exponentmantissa(i32 %441, i32 %442)
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %457

445:                                              ; preds = %440
  %446 = call i64 @Is_rounding_mode(i32 131)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %452

448:                                              ; preds = %445
  %449 = load i32, i32* %16, align 4
  %450 = load i32, i32* %26, align 4
  %451 = call i32 @Dbl_or_signs(i32 %449, i32 %450)
  br label %456

452:                                              ; preds = %445
  %453 = load i32, i32* %16, align 4
  %454 = load i32, i32* %26, align 4
  %455 = call i32 @Dbl_and_signs(i32 %453, i32 %454)
  br label %456

456:                                              ; preds = %452, %448
  br label %487

457:                                              ; preds = %440
  %458 = load i32, i32* %16, align 4
  %459 = call i64 @Dbl_iszero_exponent(i32 %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %486

461:                                              ; preds = %457
  %462 = call i64 (...) @Is_underflowtrap_enabled()
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %486

464:                                              ; preds = %461
  %465 = load i32, i32* %16, align 4
  %466 = call i32 @Dbl_signextendedsign(i32 %465)
  store i32 %466, i32* %40, align 4
  store i32 0, i32* %38, align 4
  %467 = load i32, i32* %16, align 4
  %468 = load i32, i32* %17, align 4
  %469 = call i32 @Dbl_leftshiftby1(i32 %467, i32 %468)
  %470 = load i32, i32* %16, align 4
  %471 = load i32, i32* %17, align 4
  %472 = load i32, i32* %38, align 4
  %473 = call i32 @Dbl_normalize(i32 %470, i32 %471, i32 %472)
  %474 = load i32, i32* %16, align 4
  %475 = load i32, i32* %40, align 4
  %476 = call i32 @Dbl_set_sign(i32 %474, i32 %475)
  %477 = load i32, i32* %16, align 4
  %478 = load i32, i32* %38, align 4
  %479 = load i32, i32* @unfl, align 4
  %480 = call i32 @Dbl_setwrapped_exponent(i32 %477, i32 %478, i32 %479)
  %481 = load i32, i32* %16, align 4
  %482 = load i32, i32* %17, align 4
  %483 = load i32*, i32** %11, align 8
  %484 = call i32 @Dbl_copytoptr(i32 %481, i32 %482, i32* %483)
  %485 = load i32, i32* @OPC_2E_UNDERFLOWEXCEPTION, align 4
  store i32 %485, i32* %6, align 4
  br label %1032

486:                                              ; preds = %461, %457
  br label %487

487:                                              ; preds = %486, %456
  %488 = load i32, i32* %16, align 4
  %489 = load i32, i32* %17, align 4
  %490 = load i32*, i32** %11, align 8
  %491 = call i32 @Dbl_copytoptr(i32 %488, i32 %489, i32* %490)
  %492 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %492, i32* %6, align 4
  br label %1032

493:                                              ; preds = %435
  %494 = load i32, i32* %14, align 4
  %495 = call i32 @Dbl_clear_signexponent(i32 %494)
  %496 = load i32, i32* %14, align 4
  %497 = load i32, i32* %15, align 4
  %498 = call i32 @Dbl_leftshiftby1(i32 %496, i32 %497)
  %499 = load i32, i32* %14, align 4
  %500 = load i32, i32* %15, align 4
  %501 = load i32, i32* %30, align 4
  %502 = call i32 @Dbl_normalize(i32 %499, i32 %500, i32 %501)
  br label %503

503:                                              ; preds = %493, %432
  %504 = load i32, i32* %18, align 4
  %505 = load i32, i32* %19, align 4
  %506 = load i32, i32* %20, align 4
  %507 = load i32, i32* %21, align 4
  %508 = call i32 @Dblext_setzero(i32 %504, i32 %505, i32 %506, i32 %507)
  %509 = load i32, i32* @DBL_P, align 4
  %510 = sub nsw i32 %509, 1
  store i32 %510, i32* %32, align 4
  br label %511

511:                                              ; preds = %586, %503
  %512 = load i32, i32* %32, align 4
  %513 = icmp sge i32 %512, 0
  br i1 %513, label %514, label %589

514:                                              ; preds = %511
  %515 = load i32, i32* %18, align 4
  %516 = load i32, i32* %19, align 4
  %517 = load i32, i32* %20, align 4
  %518 = load i32, i32* %21, align 4
  %519 = call i32 @Dblext_rightshiftby4(i32 %515, i32 %516, i32 %517, i32 %518)
  %520 = load i32, i32* %13, align 4
  %521 = call i64 @Dbit28p2(i32 %520)
  %522 = icmp ne i64 %521, 0
  br i1 %522, label %523, label %536

523:                                              ; preds = %514
  %524 = load i32, i32* %18, align 4
  %525 = load i32, i32* %19, align 4
  %526 = load i32, i32* %20, align 4
  %527 = load i32, i32* %21, align 4
  %528 = load i32, i32* %14, align 4
  %529 = shl i32 %528, 3
  %530 = load i32, i32* %15, align 4
  %531 = lshr i32 %530, 29
  %532 = or i32 %529, %531
  %533 = load i32, i32* %15, align 4
  %534 = shl i32 %533, 3
  %535 = call i32 @Fourword_add(i32 %524, i32 %525, i32 %526, i32 %527, i32 %532, i32 %534, i32 0, i32 0)
  br label %536

536:                                              ; preds = %523, %514
  %537 = load i32, i32* %13, align 4
  %538 = call i64 @Dbit29p2(i32 %537)
  %539 = icmp ne i64 %538, 0
  br i1 %539, label %540, label %553

540:                                              ; preds = %536
  %541 = load i32, i32* %18, align 4
  %542 = load i32, i32* %19, align 4
  %543 = load i32, i32* %20, align 4
  %544 = load i32, i32* %21, align 4
  %545 = load i32, i32* %14, align 4
  %546 = shl i32 %545, 2
  %547 = load i32, i32* %15, align 4
  %548 = lshr i32 %547, 30
  %549 = or i32 %546, %548
  %550 = load i32, i32* %15, align 4
  %551 = shl i32 %550, 2
  %552 = call i32 @Fourword_add(i32 %541, i32 %542, i32 %543, i32 %544, i32 %549, i32 %551, i32 0, i32 0)
  br label %553

553:                                              ; preds = %540, %536
  %554 = load i32, i32* %13, align 4
  %555 = call i64 @Dbit30p2(i32 %554)
  %556 = icmp ne i64 %555, 0
  br i1 %556, label %557, label %570

557:                                              ; preds = %553
  %558 = load i32, i32* %18, align 4
  %559 = load i32, i32* %19, align 4
  %560 = load i32, i32* %20, align 4
  %561 = load i32, i32* %21, align 4
  %562 = load i32, i32* %14, align 4
  %563 = shl i32 %562, 1
  %564 = load i32, i32* %15, align 4
  %565 = lshr i32 %564, 31
  %566 = or i32 %563, %565
  %567 = load i32, i32* %15, align 4
  %568 = shl i32 %567, 1
  %569 = call i32 @Fourword_add(i32 %558, i32 %559, i32 %560, i32 %561, i32 %566, i32 %568, i32 0, i32 0)
  br label %570

570:                                              ; preds = %557, %553
  %571 = load i32, i32* %13, align 4
  %572 = call i64 @Dbit31p2(i32 %571)
  %573 = icmp ne i64 %572, 0
  br i1 %573, label %574, label %582

574:                                              ; preds = %570
  %575 = load i32, i32* %18, align 4
  %576 = load i32, i32* %19, align 4
  %577 = load i32, i32* %20, align 4
  %578 = load i32, i32* %21, align 4
  %579 = load i32, i32* %14, align 4
  %580 = load i32, i32* %15, align 4
  %581 = call i32 @Fourword_add(i32 %575, i32 %576, i32 %577, i32 %578, i32 %579, i32 %580, i32 0, i32 0)
  br label %582

582:                                              ; preds = %574, %570
  %583 = load i32, i32* %12, align 4
  %584 = load i32, i32* %13, align 4
  %585 = call i32 @Dbl_rightshiftby4(i32 %583, i32 %584)
  br label %586

586:                                              ; preds = %582
  %587 = load i32, i32* %32, align 4
  %588 = sub nsw i32 %587, 4
  store i32 %588, i32* %32, align 4
  br label %511

589:                                              ; preds = %511
  %590 = load i32, i32* %18, align 4
  %591 = call i64 @Is_dexthiddenoverflow(i32 %590)
  %592 = icmp ne i64 %591, 0
  br i1 %592, label %593, label %601

593:                                              ; preds = %589
  %594 = load i32, i32* %30, align 4
  %595 = add nsw i32 %594, 1
  store i32 %595, i32* %30, align 4
  %596 = load i32, i32* %18, align 4
  %597 = load i32, i32* %19, align 4
  %598 = load i32, i32* %20, align 4
  %599 = load i32, i32* %21, align 4
  %600 = call i32 @Dblext_rightshiftby1(i32 %596, i32 %597, i32 %598, i32 %599)
  br label %601

601:                                              ; preds = %593, %589
  %602 = load i32, i32* %18, align 4
  %603 = load i32, i32* %26, align 4
  %604 = call i32 @Dbl_sign(i32 %603)
  %605 = call i32 @Dblext_set_sign(i32 %602, i32 %604)
  %606 = load i32, i32* %16, align 4
  %607 = call i32 @Dbl_exponent(i32 %606)
  store i32 %607, i32* %31, align 4
  %608 = load i32, i32* %31, align 4
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %610, label %643

610:                                              ; preds = %601
  %611 = load i32, i32* %16, align 4
  %612 = load i32, i32* %17, align 4
  %613 = call i64 @Dbl_iszero_mantissa(i32 %611, i32 %612)
  %614 = icmp ne i64 %613, 0
  br i1 %614, label %615, label %628

615:                                              ; preds = %610
  %616 = load i32, i32* %30, align 4
  store i32 %616, i32* %38, align 4
  %617 = load i32, i32* %18, align 4
  %618 = load i32, i32* %19, align 4
  %619 = load i32, i32* %20, align 4
  %620 = load i32, i32* %21, align 4
  %621 = load i32, i32* %26, align 4
  %622 = load i32, i32* %27, align 4
  %623 = load i32, i32* %28, align 4
  %624 = load i32, i32* %29, align 4
  %625 = call i32 @Dblext_copy(i32 %617, i32 %618, i32 %619, i32 %620, i32 %621, i32 %622, i32 %623, i32 %624)
  %626 = load i32, i32* %26, align 4
  %627 = call i32 @Dbl_signextendedsign(i32 %626)
  store i32 %627, i32* %40, align 4
  br label %858

628:                                              ; preds = %610
  %629 = load i32, i32* %16, align 4
  %630 = call i32 @Dbl_signextendedsign(i32 %629)
  store i32 %630, i32* %40, align 4
  %631 = load i32, i32* %16, align 4
  %632 = call i32 @Dbl_clear_signexponent(i32 %631)
  %633 = load i32, i32* %16, align 4
  %634 = load i32, i32* %17, align 4
  %635 = call i32 @Dbl_leftshiftby1(i32 %633, i32 %634)
  %636 = load i32, i32* %16, align 4
  %637 = load i32, i32* %17, align 4
  %638 = load i32, i32* %31, align 4
  %639 = call i32 @Dbl_normalize(i32 %636, i32 %637, i32 %638)
  %640 = load i32, i32* %16, align 4
  %641 = load i32, i32* %40, align 4
  %642 = call i32 @Dbl_set_sign(i32 %640, i32 %641)
  br label %646

643:                                              ; preds = %601
  %644 = load i32, i32* %16, align 4
  %645 = call i32 @Dbl_clear_exponent_set_hidden(i32 %644)
  br label %646

646:                                              ; preds = %643, %628
  %647 = load i32, i32* %16, align 4
  %648 = load i32, i32* %17, align 4
  %649 = load i32, i32* %22, align 4
  %650 = load i32, i32* %23, align 4
  %651 = load i32, i32* %24, align 4
  %652 = load i32, i32* %25, align 4
  %653 = call i32 @Dbl_copyto_dblext(i32 %647, i32 %648, i32 %649, i32 %650, i32 %651, i32 %652)
  %654 = load i32, i32* %18, align 4
  %655 = load i32, i32* %22, align 4
  %656 = load i32, i32* %37, align 4
  %657 = call i32 @Dblext_xortointp1(i32 %654, i32 %655, i32 %656)
  %658 = load i32, i32* %18, align 4
  %659 = load i32, i32* %35, align 4
  %660 = call i32 @Dblext_copytoint_exponentmantissap1(i32 %658, i32 %659)
  %661 = load i32, i32* %22, align 4
  %662 = load i32, i32* %36, align 4
  %663 = call i32 @Dblext_copytoint_exponentmantissap1(i32 %661, i32 %662)
  %664 = load i32, i32* %30, align 4
  %665 = load i32, i32* %31, align 4
  %666 = icmp slt i32 %664, %665
  br i1 %666, label %678, label %667

667:                                              ; preds = %646
  %668 = load i32, i32* %30, align 4
  %669 = load i32, i32* %31, align 4
  %670 = icmp eq i32 %668, %669
  br i1 %670, label %671, label %698

671:                                              ; preds = %667
  %672 = load i32, i32* %19, align 4
  %673 = load i32, i32* %23, align 4
  %674 = load i32, i32* %35, align 4
  %675 = load i32, i32* %36, align 4
  %676 = call i64 @Dblext_ismagnitudeless(i32 %672, i32 %673, i32 %674, i32 %675)
  %677 = icmp ne i64 %676, 0
  br i1 %677, label %678, label %698

678:                                              ; preds = %671, %646
  %679 = load i32, i32* %37, align 4
  %680 = load i32, i32* %22, align 4
  %681 = load i32, i32* %22, align 4
  %682 = call i32 @Dblext_xorfromintp1(i32 %679, i32 %680, i32 %681)
  %683 = load i32, i32* %37, align 4
  %684 = load i32, i32* %18, align 4
  %685 = load i32, i32* %18, align 4
  %686 = call i32 @Dblext_xorfromintp1(i32 %683, i32 %684, i32 %685)
  %687 = load i32, i32* %19, align 4
  %688 = load i32, i32* %20, align 4
  %689 = load i32, i32* %21, align 4
  %690 = load i32, i32* %23, align 4
  %691 = load i32, i32* %24, align 4
  %692 = load i32, i32* %25, align 4
  %693 = call i32 @Dblext_swap_lower(i32 %687, i32 %688, i32 %689, i32 %690, i32 %691, i32 %692)
  %694 = load i32, i32* %31, align 4
  %695 = load i32, i32* %30, align 4
  %696 = sub nsw i32 %694, %695
  store i32 %696, i32* %39, align 4
  %697 = load i32, i32* %31, align 4
  store i32 %697, i32* %38, align 4
  br label %703

698:                                              ; preds = %671, %667
  %699 = load i32, i32* %30, align 4
  %700 = load i32, i32* %31, align 4
  %701 = sub nsw i32 %699, %700
  store i32 %701, i32* %39, align 4
  %702 = load i32, i32* %30, align 4
  store i32 %702, i32* %38, align 4
  br label %703

703:                                              ; preds = %698, %678
  %704 = load i32, i32* %39, align 4
  %705 = load i32, i32* @DBLEXT_THRESHOLD, align 4
  %706 = icmp sgt i32 %704, %705
  br i1 %706, label %707, label %709

707:                                              ; preds = %703
  %708 = load i32, i32* @DBLEXT_THRESHOLD, align 4
  store i32 %708, i32* %39, align 4
  br label %709

709:                                              ; preds = %707, %703
  %710 = load i32, i32* %22, align 4
  %711 = call i32 @Dblext_clear_sign(i32 %710)
  %712 = load i32, i32* %22, align 4
  %713 = load i32, i32* %23, align 4
  %714 = load i32, i32* %24, align 4
  %715 = load i32, i32* %25, align 4
  %716 = load i32, i32* %39, align 4
  %717 = call i32 @Dblext_right_align(i32 %712, i32 %713, i32 %714, i32 %715, i32 %716)
  %718 = load i32, i32* %37, align 4
  %719 = icmp slt i32 %718, 0
  br i1 %719, label %720, label %829

720:                                              ; preds = %709
  %721 = load i32, i32* %18, align 4
  %722 = load i32, i32* %19, align 4
  %723 = load i32, i32* %20, align 4
  %724 = load i32, i32* %21, align 4
  %725 = load i32, i32* %22, align 4
  %726 = load i32, i32* %23, align 4
  %727 = load i32, i32* %24, align 4
  %728 = load i32, i32* %25, align 4
  %729 = load i32, i32* %26, align 4
  %730 = load i32, i32* %27, align 4
  %731 = load i32, i32* %28, align 4
  %732 = load i32, i32* %29, align 4
  %733 = call i32 @Dblext_subtract(i32 %721, i32 %722, i32 %723, i32 %724, i32 %725, i32 %726, i32 %727, i32 %728, i32 %729, i32 %730, i32 %731, i32 %732)
  %734 = load i32, i32* %26, align 4
  %735 = call i32 @Dbl_signextendedsign(i32 %734)
  store i32 %735, i32* %40, align 4
  %736 = load i32, i32* %26, align 4
  %737 = call i64 @Dbl_iszero_hidden(i32 %736)
  %738 = icmp ne i64 %737, 0
  br i1 %738, label %739, label %828

739:                                              ; preds = %720
  %740 = load i32, i32* %26, align 4
  %741 = load i32, i32* %27, align 4
  %742 = load i32, i32* %28, align 4
  %743 = load i32, i32* %29, align 4
  %744 = call i32 @Dblext_leftshiftby1(i32 %740, i32 %741, i32 %742, i32 %743)
  %745 = load i32, i32* %26, align 4
  %746 = load i32, i32* %27, align 4
  %747 = load i32, i32* %28, align 4
  %748 = load i32, i32* %29, align 4
  %749 = call i64 @Dblext_iszero(i32 %745, i32 %746, i32 %747, i32 %748)
  %750 = icmp ne i64 %749, 0
  br i1 %750, label %751, label %763

751:                                              ; preds = %739
  %752 = call i64 @Is_rounding_mode(i32 131)
  %753 = icmp ne i64 %752, 0
  br i1 %753, label %754, label %757

754:                                              ; preds = %751
  %755 = load i32, i32* %26, align 4
  %756 = call i32 @Dbl_setone_sign(i32 %755)
  br label %757

757:                                              ; preds = %754, %751
  %758 = load i32, i32* %26, align 4
  %759 = load i32, i32* %27, align 4
  %760 = load i32*, i32** %11, align 8
  %761 = call i32 @Dbl_copytoptr(i32 %758, i32 %759, i32* %760)
  %762 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %762, i32* %6, align 4
  br label %1032

763:                                              ; preds = %739
  %764 = load i32, i32* %38, align 4
  %765 = add nsw i32 %764, -1
  store i32 %765, i32* %38, align 4
  %766 = load i32, i32* %26, align 4
  %767 = call i64 @Dbl_isone_hidden(i32 %766)
  %768 = icmp ne i64 %767, 0
  br i1 %768, label %769, label %770

769:                                              ; preds = %763
  br label %858

770:                                              ; preds = %763
  br label %771

771:                                              ; preds = %775, %770
  %772 = load i32, i32* %26, align 4
  %773 = call i64 @Dbl_iszero_hiddenhigh7mantissa(i32 %772)
  %774 = icmp ne i64 %773, 0
  br i1 %774, label %775, label %783

775:                                              ; preds = %771
  %776 = load i32, i32* %26, align 4
  %777 = load i32, i32* %27, align 4
  %778 = load i32, i32* %28, align 4
  %779 = load i32, i32* %29, align 4
  %780 = call i32 @Dblext_leftshiftby8(i32 %776, i32 %777, i32 %778, i32 %779)
  %781 = load i32, i32* %38, align 4
  %782 = sub nsw i32 %781, 8
  store i32 %782, i32* %38, align 4
  br label %771

783:                                              ; preds = %771
  %784 = load i32, i32* %26, align 4
  %785 = call i64 @Dbl_iszero_hiddenhigh3mantissa(i32 %784)
  %786 = icmp ne i64 %785, 0
  br i1 %786, label %787, label %795

787:                                              ; preds = %783
  %788 = load i32, i32* %26, align 4
  %789 = load i32, i32* %27, align 4
  %790 = load i32, i32* %28, align 4
  %791 = load i32, i32* %29, align 4
  %792 = call i32 @Dblext_leftshiftby4(i32 %788, i32 %789, i32 %790, i32 %791)
  %793 = load i32, i32* %38, align 4
  %794 = sub nsw i32 %793, 4
  store i32 %794, i32* %38, align 4
  br label %795

795:                                              ; preds = %787, %783
  %796 = load i32, i32* %26, align 4
  %797 = call i32 @Dbl_hiddenhigh3mantissa(i32 %796)
  store i32 %797, i32* %41, align 4
  %798 = load i32, i32* %41, align 4
  %799 = icmp sle i32 %798, 7
  br i1 %799, label %800, label %827

800:                                              ; preds = %795
  %801 = load i32, i32* %41, align 4
  switch i32 %801, label %826 [
    i32 1, label %802
    i32 2, label %810
    i32 3, label %810
    i32 4, label %818
    i32 5, label %818
    i32 6, label %818
    i32 7, label %818
  ]

802:                                              ; preds = %800
  %803 = load i32, i32* %26, align 4
  %804 = load i32, i32* %27, align 4
  %805 = load i32, i32* %28, align 4
  %806 = load i32, i32* %29, align 4
  %807 = call i32 @Dblext_leftshiftby3(i32 %803, i32 %804, i32 %805, i32 %806)
  %808 = load i32, i32* %38, align 4
  %809 = sub nsw i32 %808, 3
  store i32 %809, i32* %38, align 4
  br label %826

810:                                              ; preds = %800, %800
  %811 = load i32, i32* %26, align 4
  %812 = load i32, i32* %27, align 4
  %813 = load i32, i32* %28, align 4
  %814 = load i32, i32* %29, align 4
  %815 = call i32 @Dblext_leftshiftby2(i32 %811, i32 %812, i32 %813, i32 %814)
  %816 = load i32, i32* %38, align 4
  %817 = sub nsw i32 %816, 2
  store i32 %817, i32* %38, align 4
  br label %826

818:                                              ; preds = %800, %800, %800, %800
  %819 = load i32, i32* %26, align 4
  %820 = load i32, i32* %27, align 4
  %821 = load i32, i32* %28, align 4
  %822 = load i32, i32* %29, align 4
  %823 = call i32 @Dblext_leftshiftby1(i32 %819, i32 %820, i32 %821, i32 %822)
  %824 = load i32, i32* %38, align 4
  %825 = sub nsw i32 %824, 1
  store i32 %825, i32* %38, align 4
  br label %826

826:                                              ; preds = %800, %818, %810, %802
  br label %827

827:                                              ; preds = %826, %795
  br label %828

828:                                              ; preds = %827, %720
  br label %857

829:                                              ; preds = %709
  %830 = load i32, i32* %18, align 4
  %831 = load i32, i32* %19, align 4
  %832 = load i32, i32* %20, align 4
  %833 = load i32, i32* %21, align 4
  %834 = load i32, i32* %22, align 4
  %835 = load i32, i32* %23, align 4
  %836 = load i32, i32* %24, align 4
  %837 = load i32, i32* %25, align 4
  %838 = load i32, i32* %26, align 4
  %839 = load i32, i32* %27, align 4
  %840 = load i32, i32* %28, align 4
  %841 = load i32, i32* %29, align 4
  %842 = call i32 @Dblext_addition(i32 %830, i32 %831, i32 %832, i32 %833, i32 %834, i32 %835, i32 %836, i32 %837, i32 %838, i32 %839, i32 %840, i32 %841)
  %843 = load i32, i32* %26, align 4
  %844 = call i32 @Dbl_signextendedsign(i32 %843)
  store i32 %844, i32* %40, align 4
  %845 = load i32, i32* %26, align 4
  %846 = call i64 @Dbl_isone_hiddenoverflow(i32 %845)
  %847 = icmp ne i64 %846, 0
  br i1 %847, label %848, label %856

848:                                              ; preds = %829
  %849 = load i32, i32* %26, align 4
  %850 = load i32, i32* %27, align 4
  %851 = load i32, i32* %28, align 4
  %852 = load i32, i32* %29, align 4
  %853 = call i32 @Dblext_arithrightshiftby1(i32 %849, i32 %850, i32 %851, i32 %852)
  %854 = load i32, i32* %38, align 4
  %855 = add nsw i32 %854, 1
  store i32 %855, i32* %38, align 4
  br label %856

856:                                              ; preds = %848, %829
  br label %857

857:                                              ; preds = %856, %828
  br label %858

858:                                              ; preds = %857, %769, %615
  %859 = load i32, i32* %38, align 4
  %860 = icmp sle i32 %859, 0
  br i1 %860, label %861, label %872

861:                                              ; preds = %858
  %862 = call i64 (...) @Is_underflowtrap_enabled()
  %863 = icmp ne i64 %862, 0
  br i1 %863, label %872, label %864

864:                                              ; preds = %861
  %865 = load i32, i32* %26, align 4
  %866 = load i32, i32* %27, align 4
  %867 = load i32, i32* %28, align 4
  %868 = load i32, i32* %29, align 4
  %869 = load i32, i32* %38, align 4
  %870 = load i64, i64* %34, align 8
  %871 = call i32 @Dblext_denormalize(i32 %865, i32 %866, i32 %867, i32 %868, i32 %869, i64 %870)
  br label %872

872:                                              ; preds = %864, %861, %858
  %873 = load i32, i32* %26, align 4
  %874 = load i32, i32* %40, align 4
  %875 = call i32 @Dbl_set_sign(i32 %873, i32 %874)
  %876 = load i32, i32* %28, align 4
  %877 = call i64 @Dblext_isnotzero_mantissap3(i32 %876)
  %878 = icmp ne i64 %877, 0
  br i1 %878, label %883, label %879

879:                                              ; preds = %872
  %880 = load i32, i32* %29, align 4
  %881 = call i64 @Dblext_isnotzero_mantissap4(i32 %880)
  %882 = icmp ne i64 %881, 0
  br i1 %882, label %883, label %935

883:                                              ; preds = %879, %872
  %884 = load i64, i64* @TRUE, align 8
  store i64 %884, i64* %33, align 8
  %885 = call i32 (...) @Rounding_mode()
  switch i32 %885, label %927 [
    i32 130, label %886
    i32 129, label %908
    i32 131, label %917
    i32 128, label %926
  ]

886:                                              ; preds = %883
  %887 = load i32, i32* %28, align 4
  %888 = call i32 @Dblext_isone_highp3(i32 %887)
  %889 = icmp ne i32 %888, 0
  br i1 %889, label %890, label %907

890:                                              ; preds = %886
  %891 = load i32, i32* %28, align 4
  %892 = call i32 @Dblext_isnotzero_low31p3(i32 %891)
  %893 = icmp ne i32 %892, 0
  br i1 %893, label %902, label %894

894:                                              ; preds = %890
  %895 = load i32, i32* %29, align 4
  %896 = call i64 @Dblext_isnotzero_mantissap4(i32 %895)
  %897 = icmp ne i64 %896, 0
  br i1 %897, label %902, label %898

898:                                              ; preds = %894
  %899 = load i32, i32* %27, align 4
  %900 = call i32 @Dblext_isone_lowp2(i32 %899)
  %901 = icmp ne i32 %900, 0
  br i1 %901, label %902, label %906

902:                                              ; preds = %898, %894, %890
  %903 = load i32, i32* %26, align 4
  %904 = load i32, i32* %27, align 4
  %905 = call i32 @Dbl_increment(i32 %903, i32 %904)
  br label %906

906:                                              ; preds = %902, %898
  br label %907

907:                                              ; preds = %906, %886
  br label %927

908:                                              ; preds = %883
  %909 = load i32, i32* %26, align 4
  %910 = call i32 @Dbl_iszero_sign(i32 %909)
  %911 = icmp ne i32 %910, 0
  br i1 %911, label %912, label %916

912:                                              ; preds = %908
  %913 = load i32, i32* %26, align 4
  %914 = load i32, i32* %27, align 4
  %915 = call i32 @Dbl_increment(i32 %913, i32 %914)
  br label %916

916:                                              ; preds = %912, %908
  br label %927

917:                                              ; preds = %883
  %918 = load i32, i32* %26, align 4
  %919 = call i32 @Dbl_isone_sign(i32 %918)
  %920 = icmp ne i32 %919, 0
  br i1 %920, label %921, label %925

921:                                              ; preds = %917
  %922 = load i32, i32* %26, align 4
  %923 = load i32, i32* %27, align 4
  %924 = call i32 @Dbl_increment(i32 %922, i32 %923)
  br label %925

925:                                              ; preds = %921, %917
  br label %926

926:                                              ; preds = %883, %925
  br label %927

927:                                              ; preds = %926, %883, %916, %907
  %928 = load i32, i32* %26, align 4
  %929 = call i64 @Dbl_isone_hiddenoverflow(i32 %928)
  %930 = icmp ne i64 %929, 0
  br i1 %930, label %931, label %934

931:                                              ; preds = %927
  %932 = load i32, i32* %38, align 4
  %933 = add nsw i32 %932, 1
  store i32 %933, i32* %38, align 4
  br label %934

934:                                              ; preds = %931, %927
  br label %935

935:                                              ; preds = %934, %879
  %936 = load i32, i32* %38, align 4
  %937 = load i32, i32* @DBL_INFINITY_EXPONENT, align 4
  %938 = icmp sge i32 %936, %937
  br i1 %938, label %939, label %971

939:                                              ; preds = %935
  %940 = call i64 (...) @Is_overflowtrap_enabled()
  %941 = icmp ne i64 %940, 0
  br i1 %941, label %942, label %965

942:                                              ; preds = %939
  %943 = load i32, i32* %26, align 4
  %944 = load i32, i32* %38, align 4
  %945 = load i32, i32* @ovfl, align 4
  %946 = call i32 @Dbl_setwrapped_exponent(i32 %943, i32 %944, i32 %945)
  %947 = load i32, i32* %26, align 4
  %948 = load i32, i32* %27, align 4
  %949 = load i32*, i32** %11, align 8
  %950 = call i32 @Dbl_copytoptr(i32 %947, i32 %948, i32* %949)
  %951 = load i64, i64* %33, align 8
  %952 = icmp ne i64 %951, 0
  br i1 %952, label %953, label %963

953:                                              ; preds = %942
  %954 = call i64 (...) @Is_inexacttrap_enabled()
  %955 = icmp ne i64 %954, 0
  br i1 %955, label %956, label %960

956:                                              ; preds = %953
  %957 = load i32, i32* @OPC_2E_OVERFLOWEXCEPTION, align 4
  %958 = load i32, i32* @OPC_2E_INEXACTEXCEPTION, align 4
  %959 = or i32 %957, %958
  store i32 %959, i32* %6, align 4
  br label %1032

960:                                              ; preds = %953
  %961 = call i32 (...) @Set_inexactflag()
  br label %962

962:                                              ; preds = %960
  br label %963

963:                                              ; preds = %962, %942
  %964 = load i32, i32* @OPC_2E_OVERFLOWEXCEPTION, align 4
  store i32 %964, i32* %6, align 4
  br label %1032

965:                                              ; preds = %939
  %966 = load i64, i64* @TRUE, align 8
  store i64 %966, i64* %33, align 8
  %967 = call i32 (...) @Set_overflowflag()
  %968 = load i32, i32* %26, align 4
  %969 = load i32, i32* %27, align 4
  %970 = call i32 @Dbl_setoverflow(i32 %968, i32 %969)
  br label %1015

971:                                              ; preds = %935
  %972 = load i32, i32* %38, align 4
  %973 = icmp sle i32 %972, 0
  br i1 %973, label %974, label %1010

974:                                              ; preds = %971
  %975 = call i64 (...) @Is_underflowtrap_enabled()
  %976 = icmp ne i64 %975, 0
  br i1 %976, label %977, label %1000

977:                                              ; preds = %974
  %978 = load i32, i32* %26, align 4
  %979 = load i32, i32* %38, align 4
  %980 = load i32, i32* @unfl, align 4
  %981 = call i32 @Dbl_setwrapped_exponent(i32 %978, i32 %979, i32 %980)
  %982 = load i32, i32* %26, align 4
  %983 = load i32, i32* %27, align 4
  %984 = load i32*, i32** %11, align 8
  %985 = call i32 @Dbl_copytoptr(i32 %982, i32 %983, i32* %984)
  %986 = load i64, i64* %33, align 8
  %987 = icmp ne i64 %986, 0
  br i1 %987, label %988, label %998

988:                                              ; preds = %977
  %989 = call i64 (...) @Is_inexacttrap_enabled()
  %990 = icmp ne i64 %989, 0
  br i1 %990, label %991, label %995

991:                                              ; preds = %988
  %992 = load i32, i32* @OPC_2E_UNDERFLOWEXCEPTION, align 4
  %993 = load i32, i32* @OPC_2E_INEXACTEXCEPTION, align 4
  %994 = or i32 %992, %993
  store i32 %994, i32* %6, align 4
  br label %1032

995:                                              ; preds = %988
  %996 = call i32 (...) @Set_inexactflag()
  br label %997

997:                                              ; preds = %995
  br label %998

998:                                              ; preds = %997, %977
  %999 = load i32, i32* @OPC_2E_UNDERFLOWEXCEPTION, align 4
  store i32 %999, i32* %6, align 4
  br label %1032

1000:                                             ; preds = %974
  %1001 = load i64, i64* %33, align 8
  %1002 = icmp ne i64 %1001, 0
  br i1 %1002, label %1003, label %1008

1003:                                             ; preds = %1000
  %1004 = load i64, i64* %34, align 8
  %1005 = icmp ne i64 %1004, 0
  br i1 %1005, label %1006, label %1008

1006:                                             ; preds = %1003
  %1007 = call i32 (...) @Set_underflowflag()
  br label %1008

1008:                                             ; preds = %1006, %1003, %1000
  br label %1009

1009:                                             ; preds = %1008
  br label %1014

1010:                                             ; preds = %971
  %1011 = load i32, i32* %26, align 4
  %1012 = load i32, i32* %38, align 4
  %1013 = call i32 @Dbl_set_exponent(i32 %1011, i32 %1012)
  br label %1014

1014:                                             ; preds = %1010, %1009
  br label %1015

1015:                                             ; preds = %1014, %965
  %1016 = load i32, i32* %26, align 4
  %1017 = load i32, i32* %27, align 4
  %1018 = load i32*, i32** %11, align 8
  %1019 = call i32 @Dbl_copytoptr(i32 %1016, i32 %1017, i32* %1018)
  %1020 = load i64, i64* %33, align 8
  %1021 = icmp ne i64 %1020, 0
  br i1 %1021, label %1022, label %1030

1022:                                             ; preds = %1015
  %1023 = call i64 (...) @Is_inexacttrap_enabled()
  %1024 = icmp ne i64 %1023, 0
  br i1 %1024, label %1025, label %1027

1025:                                             ; preds = %1022
  %1026 = load i32, i32* @OPC_2E_INEXACTEXCEPTION, align 4
  store i32 %1026, i32* %6, align 4
  br label %1032

1027:                                             ; preds = %1022
  %1028 = call i32 (...) @Set_inexactflag()
  br label %1029

1029:                                             ; preds = %1027
  br label %1030

1030:                                             ; preds = %1029, %1015
  %1031 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %1031, i32* %6, align 4
  br label %1032

1032:                                             ; preds = %1030, %1025, %998, %991, %963, %956, %757, %487, %464, %412, %389, %347, %341, %328, %312, %302, %300, %287, %270, %260, %258, %233, %231, %202, %191, %189, %173, %171, %158, %141, %131, %129, %104, %102
  %1033 = load i32, i32* %6, align 4
  ret i32 %1033
}

declare dso_local i32 @Dbl_copyfromptr(i32*, i32, i32) #1

declare dso_local i32 @Dbl_sign(i32) #1

declare dso_local i32 @Dbl_setnegativezerop1(i32) #1

declare dso_local i32 @Dbl_setzerop1(i32) #1

declare dso_local i32 @Dbl_exponent(i32) #1

declare dso_local i64 @Dbl_isinfinity_exponent(i32) #1

declare dso_local i64 @Dbl_iszero_mantissa(i32, i32) #1

declare dso_local i64 @Dbl_isnotnan(i32, i32) #1

declare dso_local i64 @Dbl_iszero_exponentmantissa(i32, i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Dbl_makequietnan(i32, i32) #1

declare dso_local i32 @Dbl_copytoptr(i32, i32, i32*) #1

declare dso_local i64 @Dbl_isinfinity(i32, i32) #1

declare dso_local i32 @Dbl_setinfinity_exponentmantissa(i32, i32) #1

declare dso_local i64 @Dbl_isone_signaling(i32) #1

declare dso_local i32 @Dbl_set_quiet(i32) #1

declare dso_local i64 @Dbl_is_signalingnan(i32) #1

declare dso_local i64 @Dbl_isnotzero_exponent(i32) #1

declare dso_local i32 @Dbl_clear_signexponent_set_hidden(i32) #1

declare dso_local i64 @Is_rounding_mode(i32) #1

declare dso_local i32 @Dbl_or_signs(i32, i32) #1

declare dso_local i32 @Dbl_and_signs(i32, i32) #1

declare dso_local i64 @Dbl_iszero_exponent(i32) #1

declare dso_local i64 @Is_underflowtrap_enabled(...) #1

declare dso_local i32 @Dbl_signextendedsign(i32) #1

declare dso_local i32 @Dbl_leftshiftby1(i32, i32) #1

declare dso_local i32 @Dbl_normalize(i32, i32, i32) #1

declare dso_local i32 @Dbl_set_sign(i32, i32) #1

declare dso_local i32 @Dbl_setwrapped_exponent(i32, i32, i32) #1

declare dso_local i32 @Dbl_clear_signexponent(i32) #1

declare dso_local i32 @Dblext_setzero(i32, i32, i32, i32) #1

declare dso_local i32 @Dblext_rightshiftby4(i32, i32, i32, i32) #1

declare dso_local i64 @Dbit28p2(i32) #1

declare dso_local i32 @Fourword_add(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @Dbit29p2(i32) #1

declare dso_local i64 @Dbit30p2(i32) #1

declare dso_local i64 @Dbit31p2(i32) #1

declare dso_local i32 @Dbl_rightshiftby4(i32, i32) #1

declare dso_local i64 @Is_dexthiddenoverflow(i32) #1

declare dso_local i32 @Dblext_rightshiftby1(i32, i32, i32, i32) #1

declare dso_local i32 @Dblext_set_sign(i32, i32) #1

declare dso_local i32 @Dblext_copy(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Dbl_clear_exponent_set_hidden(i32) #1

declare dso_local i32 @Dbl_copyto_dblext(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Dblext_xortointp1(i32, i32, i32) #1

declare dso_local i32 @Dblext_copytoint_exponentmantissap1(i32, i32) #1

declare dso_local i64 @Dblext_ismagnitudeless(i32, i32, i32, i32) #1

declare dso_local i32 @Dblext_xorfromintp1(i32, i32, i32) #1

declare dso_local i32 @Dblext_swap_lower(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Dblext_clear_sign(i32) #1

declare dso_local i32 @Dblext_right_align(i32, i32, i32, i32, i32) #1

declare dso_local i32 @Dblext_subtract(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @Dbl_iszero_hidden(i32) #1

declare dso_local i32 @Dblext_leftshiftby1(i32, i32, i32, i32) #1

declare dso_local i64 @Dblext_iszero(i32, i32, i32, i32) #1

declare dso_local i32 @Dbl_setone_sign(i32) #1

declare dso_local i64 @Dbl_isone_hidden(i32) #1

declare dso_local i64 @Dbl_iszero_hiddenhigh7mantissa(i32) #1

declare dso_local i32 @Dblext_leftshiftby8(i32, i32, i32, i32) #1

declare dso_local i64 @Dbl_iszero_hiddenhigh3mantissa(i32) #1

declare dso_local i32 @Dblext_leftshiftby4(i32, i32, i32, i32) #1

declare dso_local i32 @Dbl_hiddenhigh3mantissa(i32) #1

declare dso_local i32 @Dblext_leftshiftby3(i32, i32, i32, i32) #1

declare dso_local i32 @Dblext_leftshiftby2(i32, i32, i32, i32) #1

declare dso_local i32 @Dblext_addition(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @Dbl_isone_hiddenoverflow(i32) #1

declare dso_local i32 @Dblext_arithrightshiftby1(i32, i32, i32, i32) #1

declare dso_local i32 @Dblext_denormalize(i32, i32, i32, i32, i32, i64) #1

declare dso_local i64 @Dblext_isnotzero_mantissap3(i32) #1

declare dso_local i64 @Dblext_isnotzero_mantissap4(i32) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Dblext_isone_highp3(i32) #1

declare dso_local i32 @Dblext_isnotzero_low31p3(i32) #1

declare dso_local i32 @Dblext_isone_lowp2(i32) #1

declare dso_local i32 @Dbl_increment(i32, i32) #1

declare dso_local i32 @Dbl_iszero_sign(i32) #1

declare dso_local i32 @Dbl_isone_sign(i32) #1

declare dso_local i64 @Is_overflowtrap_enabled(...) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

declare dso_local i32 @Set_overflowflag(...) #1

declare dso_local i32 @Dbl_setoverflow(i32, i32) #1

declare dso_local i32 @Set_underflowflag(...) #1

declare dso_local i32 @Dbl_set_exponent(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
