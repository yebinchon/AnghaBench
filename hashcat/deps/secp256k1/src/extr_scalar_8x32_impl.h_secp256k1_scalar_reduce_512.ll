; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_scalar_8x32_impl.h_secp256k1_scalar_reduce_512.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_scalar_8x32_impl.h_secp256k1_scalar_reduce_512.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@SECP256K1_N_C_0 = common dso_local global i64 0, align 8
@SECP256K1_N_C_1 = common dso_local global i64 0, align 8
@SECP256K1_N_C_2 = common dso_local global i64 0, align 8
@SECP256K1_N_C_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*)* @secp256k1_scalar_reduce_512 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secp256k1_scalar_reduce_512(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 8
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 9
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 10
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 11
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 12
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 13
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %11, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 14
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %12, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 15
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %13, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %36, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i64, i64* @SECP256K1_N_C_0, align 8
  %68 = call i32 @muladd_fast(i32 %66, i64 %67)
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @extract_fast(i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @sumadd_fast(i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = load i64, i64* @SECP256K1_N_C_0, align 8
  %77 = call i32 @muladd(i32 %75, i64 %76)
  %78 = load i32, i32* %6, align 4
  %79 = load i64, i64* @SECP256K1_N_C_1, align 8
  %80 = call i32 @muladd(i32 %78, i64 %79)
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @extract(i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @sumadd(i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = load i64, i64* @SECP256K1_N_C_0, align 8
  %89 = call i32 @muladd(i32 %87, i64 %88)
  %90 = load i32, i32* %7, align 4
  %91 = load i64, i64* @SECP256K1_N_C_1, align 8
  %92 = call i32 @muladd(i32 %90, i64 %91)
  %93 = load i32, i32* %6, align 4
  %94 = load i64, i64* @SECP256K1_N_C_2, align 8
  %95 = call i32 @muladd(i32 %93, i64 %94)
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @extract(i32 %96)
  %98 = load i32*, i32** %4, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @sumadd(i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = load i64, i64* @SECP256K1_N_C_0, align 8
  %104 = call i32 @muladd(i32 %102, i64 %103)
  %105 = load i32, i32* %8, align 4
  %106 = load i64, i64* @SECP256K1_N_C_1, align 8
  %107 = call i32 @muladd(i32 %105, i64 %106)
  %108 = load i32, i32* %7, align 4
  %109 = load i64, i64* @SECP256K1_N_C_2, align 8
  %110 = call i32 @muladd(i32 %108, i64 %109)
  %111 = load i32, i32* %6, align 4
  %112 = load i64, i64* @SECP256K1_N_C_3, align 8
  %113 = call i32 @muladd(i32 %111, i64 %112)
  %114 = load i32, i32* %17, align 4
  %115 = call i32 @extract(i32 %114)
  %116 = load i32*, i32** %4, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @sumadd(i32 %118)
  %120 = load i32, i32* %10, align 4
  %121 = load i64, i64* @SECP256K1_N_C_0, align 8
  %122 = call i32 @muladd(i32 %120, i64 %121)
  %123 = load i32, i32* %9, align 4
  %124 = load i64, i64* @SECP256K1_N_C_1, align 8
  %125 = call i32 @muladd(i32 %123, i64 %124)
  %126 = load i32, i32* %8, align 4
  %127 = load i64, i64* @SECP256K1_N_C_2, align 8
  %128 = call i32 @muladd(i32 %126, i64 %127)
  %129 = load i32, i32* %7, align 4
  %130 = load i64, i64* @SECP256K1_N_C_3, align 8
  %131 = call i32 @muladd(i32 %129, i64 %130)
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @sumadd(i32 %132)
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @extract(i32 %134)
  %136 = load i32*, i32** %4, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 5
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @sumadd(i32 %138)
  %140 = load i32, i32* %11, align 4
  %141 = load i64, i64* @SECP256K1_N_C_0, align 8
  %142 = call i32 @muladd(i32 %140, i64 %141)
  %143 = load i32, i32* %10, align 4
  %144 = load i64, i64* @SECP256K1_N_C_1, align 8
  %145 = call i32 @muladd(i32 %143, i64 %144)
  %146 = load i32, i32* %9, align 4
  %147 = load i64, i64* @SECP256K1_N_C_2, align 8
  %148 = call i32 @muladd(i32 %146, i64 %147)
  %149 = load i32, i32* %8, align 4
  %150 = load i64, i64* @SECP256K1_N_C_3, align 8
  %151 = call i32 @muladd(i32 %149, i64 %150)
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @sumadd(i32 %152)
  %154 = load i32, i32* %19, align 4
  %155 = call i32 @extract(i32 %154)
  %156 = load i32*, i32** %4, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 6
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @sumadd(i32 %158)
  %160 = load i32, i32* %12, align 4
  %161 = load i64, i64* @SECP256K1_N_C_0, align 8
  %162 = call i32 @muladd(i32 %160, i64 %161)
  %163 = load i32, i32* %11, align 4
  %164 = load i64, i64* @SECP256K1_N_C_1, align 8
  %165 = call i32 @muladd(i32 %163, i64 %164)
  %166 = load i32, i32* %10, align 4
  %167 = load i64, i64* @SECP256K1_N_C_2, align 8
  %168 = call i32 @muladd(i32 %166, i64 %167)
  %169 = load i32, i32* %9, align 4
  %170 = load i64, i64* @SECP256K1_N_C_3, align 8
  %171 = call i32 @muladd(i32 %169, i64 %170)
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @sumadd(i32 %172)
  %174 = load i32, i32* %20, align 4
  %175 = call i32 @extract(i32 %174)
  %176 = load i32*, i32** %4, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 7
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @sumadd(i32 %178)
  %180 = load i32, i32* %13, align 4
  %181 = load i64, i64* @SECP256K1_N_C_0, align 8
  %182 = call i32 @muladd(i32 %180, i64 %181)
  %183 = load i32, i32* %12, align 4
  %184 = load i64, i64* @SECP256K1_N_C_1, align 8
  %185 = call i32 @muladd(i32 %183, i64 %184)
  %186 = load i32, i32* %11, align 4
  %187 = load i64, i64* @SECP256K1_N_C_2, align 8
  %188 = call i32 @muladd(i32 %186, i64 %187)
  %189 = load i32, i32* %10, align 4
  %190 = load i64, i64* @SECP256K1_N_C_3, align 8
  %191 = call i32 @muladd(i32 %189, i64 %190)
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @sumadd(i32 %192)
  %194 = load i32, i32* %21, align 4
  %195 = call i32 @extract(i32 %194)
  %196 = load i32, i32* %13, align 4
  %197 = load i64, i64* @SECP256K1_N_C_1, align 8
  %198 = call i32 @muladd(i32 %196, i64 %197)
  %199 = load i32, i32* %12, align 4
  %200 = load i64, i64* @SECP256K1_N_C_2, align 8
  %201 = call i32 @muladd(i32 %199, i64 %200)
  %202 = load i32, i32* %11, align 4
  %203 = load i64, i64* @SECP256K1_N_C_3, align 8
  %204 = call i32 @muladd(i32 %202, i64 %203)
  %205 = load i32, i32* %10, align 4
  %206 = call i32 @sumadd(i32 %205)
  %207 = load i32, i32* %22, align 4
  %208 = call i32 @extract(i32 %207)
  %209 = load i32, i32* %13, align 4
  %210 = load i64, i64* @SECP256K1_N_C_2, align 8
  %211 = call i32 @muladd(i32 %209, i64 %210)
  %212 = load i32, i32* %12, align 4
  %213 = load i64, i64* @SECP256K1_N_C_3, align 8
  %214 = call i32 @muladd(i32 %212, i64 %213)
  %215 = load i32, i32* %11, align 4
  %216 = call i32 @sumadd(i32 %215)
  %217 = load i32, i32* %23, align 4
  %218 = call i32 @extract(i32 %217)
  %219 = load i32, i32* %13, align 4
  %220 = load i64, i64* @SECP256K1_N_C_3, align 8
  %221 = call i32 @muladd(i32 %219, i64 %220)
  %222 = load i32, i32* %12, align 4
  %223 = call i32 @sumadd(i32 %222)
  %224 = load i32, i32* %24, align 4
  %225 = call i32 @extract(i32 %224)
  %226 = load i32, i32* %13, align 4
  %227 = call i32 @sumadd_fast(i32 %226)
  %228 = load i32, i32* %25, align 4
  %229 = call i32 @extract_fast(i32 %228)
  %230 = load i32, i32* %36, align 4
  %231 = icmp sle i32 %230, 1
  %232 = zext i1 %231 to i32
  %233 = call i32 @VERIFY_CHECK(i32 %232)
  %234 = load i32, i32* %36, align 4
  store i32 %234, i32* %26, align 4
  %235 = load i32, i32* %14, align 4
  store i32 %235, i32* %36, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  %236 = load i32, i32* %22, align 4
  %237 = load i64, i64* @SECP256K1_N_C_0, align 8
  %238 = call i32 @muladd_fast(i32 %236, i64 %237)
  %239 = load i32, i32* %27, align 4
  %240 = call i32 @extract_fast(i32 %239)
  %241 = load i32, i32* %15, align 4
  %242 = call i32 @sumadd_fast(i32 %241)
  %243 = load i32, i32* %23, align 4
  %244 = load i64, i64* @SECP256K1_N_C_0, align 8
  %245 = call i32 @muladd(i32 %243, i64 %244)
  %246 = load i32, i32* %22, align 4
  %247 = load i64, i64* @SECP256K1_N_C_1, align 8
  %248 = call i32 @muladd(i32 %246, i64 %247)
  %249 = load i32, i32* %28, align 4
  %250 = call i32 @extract(i32 %249)
  %251 = load i32, i32* %16, align 4
  %252 = call i32 @sumadd(i32 %251)
  %253 = load i32, i32* %24, align 4
  %254 = load i64, i64* @SECP256K1_N_C_0, align 8
  %255 = call i32 @muladd(i32 %253, i64 %254)
  %256 = load i32, i32* %23, align 4
  %257 = load i64, i64* @SECP256K1_N_C_1, align 8
  %258 = call i32 @muladd(i32 %256, i64 %257)
  %259 = load i32, i32* %22, align 4
  %260 = load i64, i64* @SECP256K1_N_C_2, align 8
  %261 = call i32 @muladd(i32 %259, i64 %260)
  %262 = load i32, i32* %29, align 4
  %263 = call i32 @extract(i32 %262)
  %264 = load i32, i32* %17, align 4
  %265 = call i32 @sumadd(i32 %264)
  %266 = load i32, i32* %25, align 4
  %267 = load i64, i64* @SECP256K1_N_C_0, align 8
  %268 = call i32 @muladd(i32 %266, i64 %267)
  %269 = load i32, i32* %24, align 4
  %270 = load i64, i64* @SECP256K1_N_C_1, align 8
  %271 = call i32 @muladd(i32 %269, i64 %270)
  %272 = load i32, i32* %23, align 4
  %273 = load i64, i64* @SECP256K1_N_C_2, align 8
  %274 = call i32 @muladd(i32 %272, i64 %273)
  %275 = load i32, i32* %22, align 4
  %276 = load i64, i64* @SECP256K1_N_C_3, align 8
  %277 = call i32 @muladd(i32 %275, i64 %276)
  %278 = load i32, i32* %30, align 4
  %279 = call i32 @extract(i32 %278)
  %280 = load i32, i32* %18, align 4
  %281 = call i32 @sumadd(i32 %280)
  %282 = load i32, i32* %26, align 4
  %283 = load i64, i64* @SECP256K1_N_C_0, align 8
  %284 = call i32 @muladd(i32 %282, i64 %283)
  %285 = load i32, i32* %25, align 4
  %286 = load i64, i64* @SECP256K1_N_C_1, align 8
  %287 = call i32 @muladd(i32 %285, i64 %286)
  %288 = load i32, i32* %24, align 4
  %289 = load i64, i64* @SECP256K1_N_C_2, align 8
  %290 = call i32 @muladd(i32 %288, i64 %289)
  %291 = load i32, i32* %23, align 4
  %292 = load i64, i64* @SECP256K1_N_C_3, align 8
  %293 = call i32 @muladd(i32 %291, i64 %292)
  %294 = load i32, i32* %22, align 4
  %295 = call i32 @sumadd(i32 %294)
  %296 = load i32, i32* %31, align 4
  %297 = call i32 @extract(i32 %296)
  %298 = load i32, i32* %19, align 4
  %299 = call i32 @sumadd(i32 %298)
  %300 = load i32, i32* %26, align 4
  %301 = load i64, i64* @SECP256K1_N_C_1, align 8
  %302 = call i32 @muladd(i32 %300, i64 %301)
  %303 = load i32, i32* %25, align 4
  %304 = load i64, i64* @SECP256K1_N_C_2, align 8
  %305 = call i32 @muladd(i32 %303, i64 %304)
  %306 = load i32, i32* %24, align 4
  %307 = load i64, i64* @SECP256K1_N_C_3, align 8
  %308 = call i32 @muladd(i32 %306, i64 %307)
  %309 = load i32, i32* %23, align 4
  %310 = call i32 @sumadd(i32 %309)
  %311 = load i32, i32* %32, align 4
  %312 = call i32 @extract(i32 %311)
  %313 = load i32, i32* %20, align 4
  %314 = call i32 @sumadd(i32 %313)
  %315 = load i32, i32* %26, align 4
  %316 = load i64, i64* @SECP256K1_N_C_2, align 8
  %317 = call i32 @muladd(i32 %315, i64 %316)
  %318 = load i32, i32* %25, align 4
  %319 = load i64, i64* @SECP256K1_N_C_3, align 8
  %320 = call i32 @muladd(i32 %318, i64 %319)
  %321 = load i32, i32* %24, align 4
  %322 = call i32 @sumadd(i32 %321)
  %323 = load i32, i32* %33, align 4
  %324 = call i32 @extract(i32 %323)
  %325 = load i32, i32* %21, align 4
  %326 = call i32 @sumadd_fast(i32 %325)
  %327 = load i32, i32* %26, align 4
  %328 = load i64, i64* @SECP256K1_N_C_3, align 8
  %329 = call i32 @muladd_fast(i32 %327, i64 %328)
  %330 = load i32, i32* %25, align 4
  %331 = call i32 @sumadd_fast(i32 %330)
  %332 = load i32, i32* %34, align 4
  %333 = call i32 @extract_fast(i32 %332)
  %334 = load i32, i32* %36, align 4
  %335 = load i32, i32* %26, align 4
  %336 = add nsw i32 %334, %335
  store i32 %336, i32* %35, align 4
  %337 = load i32, i32* %35, align 4
  %338 = icmp sle i32 %337, 2
  %339 = zext i1 %338 to i32
  %340 = call i32 @VERIFY_CHECK(i32 %339)
  %341 = load i32, i32* %27, align 4
  %342 = load i64, i64* @SECP256K1_N_C_0, align 8
  %343 = trunc i64 %342 to i32
  %344 = load i32, i32* %35, align 4
  %345 = mul nsw i32 %343, %344
  %346 = add nsw i32 %341, %345
  store i32 %346, i32* %5, align 4
  %347 = load i32, i32* %5, align 4
  %348 = sext i32 %347 to i64
  %349 = and i64 %348, 4294967295
  %350 = trunc i64 %349 to i32
  %351 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i32 0, i32 0
  %353 = load i32*, i32** %352, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 0
  store i32 %350, i32* %354, align 4
  %355 = load i32, i32* %5, align 4
  %356 = ashr i32 %355, 32
  store i32 %356, i32* %5, align 4
  %357 = load i32, i32* %28, align 4
  %358 = load i64, i64* @SECP256K1_N_C_1, align 8
  %359 = trunc i64 %358 to i32
  %360 = load i32, i32* %35, align 4
  %361 = mul nsw i32 %359, %360
  %362 = add nsw i32 %357, %361
  %363 = load i32, i32* %5, align 4
  %364 = add nsw i32 %363, %362
  store i32 %364, i32* %5, align 4
  %365 = load i32, i32* %5, align 4
  %366 = sext i32 %365 to i64
  %367 = and i64 %366, 4294967295
  %368 = trunc i64 %367 to i32
  %369 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %369, i32 0, i32 0
  %371 = load i32*, i32** %370, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 1
  store i32 %368, i32* %372, align 4
  %373 = load i32, i32* %5, align 4
  %374 = ashr i32 %373, 32
  store i32 %374, i32* %5, align 4
  %375 = load i32, i32* %29, align 4
  %376 = load i64, i64* @SECP256K1_N_C_2, align 8
  %377 = trunc i64 %376 to i32
  %378 = load i32, i32* %35, align 4
  %379 = mul nsw i32 %377, %378
  %380 = add nsw i32 %375, %379
  %381 = load i32, i32* %5, align 4
  %382 = add nsw i32 %381, %380
  store i32 %382, i32* %5, align 4
  %383 = load i32, i32* %5, align 4
  %384 = sext i32 %383 to i64
  %385 = and i64 %384, 4294967295
  %386 = trunc i64 %385 to i32
  %387 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 0
  %389 = load i32*, i32** %388, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 2
  store i32 %386, i32* %390, align 4
  %391 = load i32, i32* %5, align 4
  %392 = ashr i32 %391, 32
  store i32 %392, i32* %5, align 4
  %393 = load i32, i32* %30, align 4
  %394 = load i64, i64* @SECP256K1_N_C_3, align 8
  %395 = trunc i64 %394 to i32
  %396 = load i32, i32* %35, align 4
  %397 = mul nsw i32 %395, %396
  %398 = add nsw i32 %393, %397
  %399 = load i32, i32* %5, align 4
  %400 = add nsw i32 %399, %398
  store i32 %400, i32* %5, align 4
  %401 = load i32, i32* %5, align 4
  %402 = sext i32 %401 to i64
  %403 = and i64 %402, 4294967295
  %404 = trunc i64 %403 to i32
  %405 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %405, i32 0, i32 0
  %407 = load i32*, i32** %406, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 3
  store i32 %404, i32* %408, align 4
  %409 = load i32, i32* %5, align 4
  %410 = ashr i32 %409, 32
  store i32 %410, i32* %5, align 4
  %411 = load i32, i32* %31, align 4
  %412 = load i32, i32* %35, align 4
  %413 = add nsw i32 %411, %412
  %414 = load i32, i32* %5, align 4
  %415 = add nsw i32 %414, %413
  store i32 %415, i32* %5, align 4
  %416 = load i32, i32* %5, align 4
  %417 = sext i32 %416 to i64
  %418 = and i64 %417, 4294967295
  %419 = trunc i64 %418 to i32
  %420 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %421 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %420, i32 0, i32 0
  %422 = load i32*, i32** %421, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 4
  store i32 %419, i32* %423, align 4
  %424 = load i32, i32* %5, align 4
  %425 = ashr i32 %424, 32
  store i32 %425, i32* %5, align 4
  %426 = load i32, i32* %32, align 4
  %427 = load i32, i32* %5, align 4
  %428 = add nsw i32 %427, %426
  store i32 %428, i32* %5, align 4
  %429 = load i32, i32* %5, align 4
  %430 = sext i32 %429 to i64
  %431 = and i64 %430, 4294967295
  %432 = trunc i64 %431 to i32
  %433 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %434 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %433, i32 0, i32 0
  %435 = load i32*, i32** %434, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 5
  store i32 %432, i32* %436, align 4
  %437 = load i32, i32* %5, align 4
  %438 = ashr i32 %437, 32
  store i32 %438, i32* %5, align 4
  %439 = load i32, i32* %33, align 4
  %440 = load i32, i32* %5, align 4
  %441 = add nsw i32 %440, %439
  store i32 %441, i32* %5, align 4
  %442 = load i32, i32* %5, align 4
  %443 = sext i32 %442 to i64
  %444 = and i64 %443, 4294967295
  %445 = trunc i64 %444 to i32
  %446 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %447 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %446, i32 0, i32 0
  %448 = load i32*, i32** %447, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 6
  store i32 %445, i32* %449, align 4
  %450 = load i32, i32* %5, align 4
  %451 = ashr i32 %450, 32
  store i32 %451, i32* %5, align 4
  %452 = load i32, i32* %34, align 4
  %453 = load i32, i32* %5, align 4
  %454 = add nsw i32 %453, %452
  store i32 %454, i32* %5, align 4
  %455 = load i32, i32* %5, align 4
  %456 = sext i32 %455 to i64
  %457 = and i64 %456, 4294967295
  %458 = trunc i64 %457 to i32
  %459 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %460 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %459, i32 0, i32 0
  %461 = load i32*, i32** %460, align 8
  %462 = getelementptr inbounds i32, i32* %461, i64 7
  store i32 %458, i32* %462, align 4
  %463 = load i32, i32* %5, align 4
  %464 = ashr i32 %463, 32
  store i32 %464, i32* %5, align 4
  %465 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %466 = load i32, i32* %5, align 4
  %467 = sext i32 %466 to i64
  %468 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %469 = call i64 @secp256k1_scalar_check_overflow(%struct.TYPE_5__* %468)
  %470 = add nsw i64 %467, %469
  %471 = call i32 @secp256k1_scalar_reduce(%struct.TYPE_5__* %465, i64 %470)
  ret void
}

declare dso_local i32 @muladd_fast(i32, i64) #1

declare dso_local i32 @extract_fast(i32) #1

declare dso_local i32 @sumadd_fast(i32) #1

declare dso_local i32 @muladd(i32, i64) #1

declare dso_local i32 @extract(i32) #1

declare dso_local i32 @sumadd(i32) #1

declare dso_local i32 @VERIFY_CHECK(i32) #1

declare dso_local i32 @secp256k1_scalar_reduce(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @secp256k1_scalar_check_overflow(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
