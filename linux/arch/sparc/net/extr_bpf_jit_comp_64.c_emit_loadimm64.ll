; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_emit_loadimm64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_emit_loadimm64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@bpf2sparc = common dso_local global i32* null, align 8
@TMP_REG_1 = common dso_local global i64 0, align 8
@OR = common dso_local global i32 0, align 4
@IMMED = common dso_local global i32 0, align 4
@G0 = common dso_local global i32 0, align 4
@SLLX = common dso_local global i32 0, align 4
@SRLX = common dso_local global i32 0, align 4
@XOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.jit_ctx*)* @emit_loadimm64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_loadimm64(i32 %0, i32 %1, %struct.jit_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.jit_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.jit_ctx* %2, %struct.jit_ctx** %6, align 8
  %20 = load i32*, i32** @bpf2sparc, align 8
  %21 = load i64, i64* @TMP_REG_1, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 32
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, -2147483648
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  call void @emit_loadimm_sext(i32 %34, i32 %35, %struct.jit_ctx* %36)
  br label %330

37:                                               ; preds = %29, %3
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  call void @emit_loadimm32(i32 %41, i32 %42, %struct.jit_ctx* %43)
  br label %330

44:                                               ; preds = %37
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @analyze_64bit_constant(i32 %45, i32 %46, i32* %9, i32* %8, i32* %7)
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 63
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50, %44
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %57, %58
  %60 = icmp slt i32 %59, 12
  br i1 %60, label %61, label %121

61:                                               ; preds = %56, %53
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %13, align 4
  store i64 -1, i64* %14, align 8
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65, %61
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i8* @create_simple_focus_bits(i32 %72, i32 %73, i32 %74, i32 0)
  %76 = ptrtoint i8* %75 to i64
  store i64 %76, i64* %14, align 8
  br label %85

77:                                               ; preds = %68
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 63, %81
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %80, %77
  br label %85

85:                                               ; preds = %84, %71
  %86 = load i32, i32* @OR, align 4
  %87 = load i32, i32* @IMMED, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @G0, align 4
  %90 = call i32 @RS1(i32 %89)
  %91 = or i32 %88, %90
  %92 = load i64, i64* %14, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @S13(i32 %93)
  %95 = or i32 %91, %94
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @RD(i32 %96)
  %98 = or i32 %95, %97
  %99 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %100 = call i32 @emit(i32 %98, %struct.jit_ctx* %99)
  %101 = load i32, i32* %13, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %85
  %104 = load i32, i32* @SLLX, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %108 = call i32 @emit_alu_K(i32 %104, i32 %105, i32 %106, %struct.jit_ctx* %107)
  br label %120

109:                                              ; preds = %85
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load i32, i32* @SRLX, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %13, align 4
  %116 = sub nsw i32 0, %115
  %117 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %118 = call i32 @emit_alu_K(i32 %113, i32 %114, i32 %116, %struct.jit_ctx* %117)
  br label %119

119:                                              ; preds = %112, %109
  br label %120

120:                                              ; preds = %119, %103
  br label %330

121:                                              ; preds = %56
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %8, align 4
  %124 = sub nsw i32 %122, %123
  %125 = icmp slt i32 %124, 21
  br i1 %125, label %126, label %158

126:                                              ; preds = %121
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i8* @create_simple_focus_bits(i32 %127, i32 %128, i32 %129, i32 10)
  %131 = ptrtoint i8* %130 to i64
  store i64 %131, i64* %15, align 8
  %132 = load i64, i64* %15, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @SETHI(i64 %132, i32 %133)
  %135 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %136 = call i32 @emit(i32 %134, %struct.jit_ctx* %135)
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %137, 10
  br i1 %138, label %139, label %146

139:                                              ; preds = %126
  %140 = load i32, i32* @SRLX, align 4
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %8, align 4
  %143 = sub nsw i32 10, %142
  %144 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %145 = call i32 @emit_alu_K(i32 %140, i32 %141, i32 %143, %struct.jit_ctx* %144)
  br label %157

146:                                              ; preds = %126
  %147 = load i32, i32* %8, align 4
  %148 = icmp sgt i32 %147, 10
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = load i32, i32* @SLLX, align 4
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* %8, align 4
  %153 = sub nsw i32 %152, 10
  %154 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %155 = call i32 @emit_alu_K(i32 %150, i32 %151, i32 %153, %struct.jit_ctx* %154)
  br label %156

156:                                              ; preds = %149, %146
  br label %157

157:                                              ; preds = %156, %139
  br label %330

158:                                              ; preds = %121
  %159 = load i32, i32* %11, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %5, align 4
  %164 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  call void @emit_loadimm32(i32 %162, i32 %163, %struct.jit_ctx* %164)
  %165 = load i32, i32* @SLLX, align 4
  %166 = load i32, i32* %5, align 4
  %167 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %168 = call i32 @emit_alu_K(i32 %165, i32 %166, i32 32, %struct.jit_ctx* %167)
  br label %330

169:                                              ; preds = %158
  %170 = load i32, i32* %12, align 4
  %171 = xor i32 %170, -1
  %172 = load i32, i32* %11, align 4
  %173 = xor i32 %172, -1
  %174 = and i32 %173, -1024
  %175 = call i64 @const64_is_2insns(i32 %171, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %275

177:                                              ; preds = %169
  %178 = load i32, i32* %11, align 4
  %179 = and i32 %178, 1023
  %180 = sext i32 %179 to i64
  store i64 %180, i64* %16, align 8
  %181 = load i32, i32* %12, align 4
  %182 = xor i32 %181, -1
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %177
  %185 = load i32, i32* %11, align 4
  %186 = xor i32 %185, -1
  %187 = and i32 %186, -2147483648
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %198, label %189

189:                                              ; preds = %184, %177
  %190 = load i32, i32* %12, align 4
  %191 = xor i32 %190, -1
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %243

193:                                              ; preds = %189
  %194 = load i32, i32* %11, align 4
  %195 = xor i32 %194, -1
  %196 = and i32 %195, -2147483648
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %243

198:                                              ; preds = %193, %184
  %199 = load i32, i32* %11, align 4
  %200 = xor i32 %199, -1
  %201 = zext i32 %200 to i64
  store i64 %201, i64* %17, align 8
  %202 = load i64, i64* %17, align 8
  %203 = call i64 @is_sethi(i64 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %198
  %206 = load i32, i32* %12, align 4
  %207 = xor i32 %206, -1
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %205
  %210 = load i64, i64* %17, align 8
  %211 = load i32, i32* %5, align 4
  %212 = call i32 @SETHI(i64 %210, i32 %211)
  %213 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %214 = call i32 @emit(i32 %212, %struct.jit_ctx* %213)
  br label %242

215:                                              ; preds = %205, %198
  %216 = load i64, i64* %17, align 8
  %217 = trunc i64 %216 to i32
  %218 = call i64 @is_simm13(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %236

220:                                              ; preds = %215
  %221 = load i32, i32* @OR, align 4
  %222 = load i32, i32* @IMMED, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @G0, align 4
  %225 = call i32 @RS1(i32 %224)
  %226 = or i32 %223, %225
  %227 = load i64, i64* %17, align 8
  %228 = trunc i64 %227 to i32
  %229 = call i32 @S13(i32 %228)
  %230 = or i32 %226, %229
  %231 = load i32, i32* %5, align 4
  %232 = call i32 @RD(i32 %231)
  %233 = or i32 %230, %232
  %234 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %235 = call i32 @emit(i32 %233, %struct.jit_ctx* %234)
  br label %241

236:                                              ; preds = %215
  %237 = load i64, i64* %17, align 8
  %238 = trunc i64 %237 to i32
  %239 = load i32, i32* %5, align 4
  %240 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  call void @emit_loadimm64(i32 %238, i32 %239, %struct.jit_ctx* %240)
  br label %241

241:                                              ; preds = %236, %220
  br label %242

242:                                              ; preds = %241, %209
  br label %257

243:                                              ; preds = %193, %189
  %244 = load i32, i32* %11, align 4
  %245 = xor i32 %244, -1
  %246 = and i32 %245, -1024
  %247 = zext i32 %246 to i64
  %248 = load i32, i32* %12, align 4
  %249 = xor i32 %248, -1
  %250 = zext i32 %249 to i64
  %251 = shl i64 %250, 32
  %252 = or i64 %247, %251
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %18, align 4
  %254 = load i32, i32* %18, align 4
  %255 = load i32, i32* %5, align 4
  %256 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  call void @emit_loadimm64(i32 %254, i32 %255, %struct.jit_ctx* %256)
  br label %257

257:                                              ; preds = %243, %242
  %258 = load i64, i64* %16, align 8
  %259 = or i64 -1024, %258
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %11, align 4
  %261 = load i32, i32* @XOR, align 4
  %262 = load i32, i32* @IMMED, align 4
  %263 = or i32 %261, %262
  %264 = load i32, i32* %5, align 4
  %265 = call i32 @RS1(i32 %264)
  %266 = or i32 %263, %265
  %267 = load i32, i32* %11, align 4
  %268 = call i32 @S13(i32 %267)
  %269 = or i32 %266, %268
  %270 = load i32, i32* %5, align 4
  %271 = call i32 @RD(i32 %270)
  %272 = or i32 %269, %271
  %273 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %274 = call i32 @emit(i32 %272, %struct.jit_ctx* %273)
  br label %330

275:                                              ; preds = %169
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* %8, align 4
  %278 = sub nsw i32 %276, %277
  %279 = icmp slt i32 %278, 32
  br i1 %279, label %280, label %292

280:                                              ; preds = %275
  %281 = load i32, i32* %12, align 4
  %282 = load i32, i32* %11, align 4
  %283 = load i32, i32* %8, align 4
  %284 = call i8* @create_simple_focus_bits(i32 %281, i32 %282, i32 %283, i32 0)
  %285 = ptrtoint i8* %284 to i64
  store i64 %285, i64* %19, align 8
  %286 = load i64, i64* %19, align 8
  %287 = trunc i64 %286 to i32
  %288 = load i32, i32* %5, align 4
  %289 = load i32, i32* %8, align 4
  %290 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %291 = call i32 @sparc_emit_set_const64_quick2(i32 %287, i32 0, i32 %288, i32 %289, %struct.jit_ctx* %290)
  br label %330

292:                                              ; preds = %275
  %293 = load i32, i32* %11, align 4
  %294 = call i64 @is_simm13(i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %305

296:                                              ; preds = %292
  %297 = load i32, i32* %11, align 4
  %298 = icmp sgt i32 %297, 0
  br i1 %298, label %299, label %305

299:                                              ; preds = %296
  %300 = load i32, i32* %12, align 4
  %301 = load i32, i32* %11, align 4
  %302 = load i32, i32* %5, align 4
  %303 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %304 = call i32 @sparc_emit_set_const64_quick2(i32 %300, i32 %301, i32 %302, i32 32, %struct.jit_ctx* %303)
  br label %330

305:                                              ; preds = %296, %292
  %306 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %307 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %306, i32 0, i32 0
  store i32 1, i32* %307, align 4
  %308 = load i32, i32* %12, align 4
  %309 = load i32, i32* %10, align 4
  %310 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  call void @emit_loadimm32(i32 %308, i32 %309, %struct.jit_ctx* %310)
  %311 = load i32, i32* %11, align 4
  %312 = load i32, i32* %5, align 4
  %313 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  call void @emit_loadimm32(i32 %311, i32 %312, %struct.jit_ctx* %313)
  %314 = load i32, i32* @SLLX, align 4
  %315 = load i32, i32* %10, align 4
  %316 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %317 = call i32 @emit_alu_K(i32 %314, i32 %315, i32 32, %struct.jit_ctx* %316)
  %318 = load i32, i32* @OR, align 4
  %319 = load i32, i32* %5, align 4
  %320 = call i32 @RS1(i32 %319)
  %321 = or i32 %318, %320
  %322 = load i32, i32* %10, align 4
  %323 = call i32 @RS2(i32 %322)
  %324 = or i32 %321, %323
  %325 = load i32, i32* %5, align 4
  %326 = call i32 @RD(i32 %325)
  %327 = or i32 %324, %326
  %328 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %329 = call i32 @emit(i32 %327, %struct.jit_ctx* %328)
  br label %330

330:                                              ; preds = %305, %299, %280, %257, %161, %157, %120, %40, %33
  ret void
}

declare dso_local void @emit_loadimm_sext(i32, i32, %struct.jit_ctx*) #1

declare dso_local void @emit_loadimm32(i32, i32, %struct.jit_ctx*) #1

declare dso_local i32 @analyze_64bit_constant(i32, i32, i32*, i32*, i32*) #1

declare dso_local i8* @create_simple_focus_bits(i32, i32, i32, i32) #1

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @RS1(i32) #1

declare dso_local i32 @S13(i32) #1

declare dso_local i32 @RD(i32) #1

declare dso_local i32 @emit_alu_K(i32, i32, i32, %struct.jit_ctx*) #1

declare dso_local i32 @SETHI(i64, i32) #1

declare dso_local i64 @const64_is_2insns(i32, i32) #1

declare dso_local i64 @is_sethi(i64) #1

declare dso_local i64 @is_simm13(i32) #1

declare dso_local i32 @sparc_emit_set_const64_quick2(i32, i32, i32, i32, %struct.jit_ctx*) #1

declare dso_local i32 @RS2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
