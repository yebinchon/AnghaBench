; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_chacha20.c_cf_chacha20_core.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_chacha20.c_cf_chacha20_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cf_chacha20_core(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = call i64 @read32_le(i32* %45)
  store i64 %46, i64* %11, align 8
  store i64 %46, i64* %27, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  %49 = call i64 @read32_le(i32* %48)
  store i64 %49, i64* %12, align 8
  store i64 %49, i64* %28, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 8
  %52 = call i64 @read32_le(i32* %51)
  store i64 %52, i64* %13, align 8
  store i64 %52, i64* %29, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 12
  %55 = call i64 @read32_le(i32* %54)
  store i64 %55, i64* %14, align 8
  store i64 %55, i64* %30, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = call i64 @read32_le(i32* %57)
  store i64 %58, i64* %15, align 8
  store i64 %58, i64* %31, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = call i64 @read32_le(i32* %60)
  store i64 %61, i64* %16, align 8
  store i64 %61, i64* %32, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 8
  %64 = call i64 @read32_le(i32* %63)
  store i64 %64, i64* %17, align 8
  store i64 %64, i64* %33, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 12
  %67 = call i64 @read32_le(i32* %66)
  store i64 %67, i64* %18, align 8
  store i64 %67, i64* %34, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = call i64 @read32_le(i32* %69)
  store i64 %70, i64* %19, align 8
  store i64 %70, i64* %35, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = call i64 @read32_le(i32* %72)
  store i64 %73, i64* %20, align 8
  store i64 %73, i64* %36, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 8
  %76 = call i64 @read32_le(i32* %75)
  store i64 %76, i64* %21, align 8
  store i64 %76, i64* %37, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 12
  %79 = call i64 @read32_le(i32* %78)
  store i64 %79, i64* %22, align 8
  store i64 %79, i64* %38, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = call i64 @read32_le(i32* %81)
  store i64 %82, i64* %23, align 8
  store i64 %82, i64* %39, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  %85 = call i64 @read32_le(i32* %84)
  store i64 %85, i64* %24, align 8
  store i64 %85, i64* %40, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 8
  %88 = call i64 @read32_le(i32* %87)
  store i64 %88, i64* %25, align 8
  store i64 %88, i64* %41, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 12
  %91 = call i64 @read32_le(i32* %90)
  store i64 %91, i64* %26, align 8
  store i64 %91, i64* %42, align 8
  store i32 0, i32* %43, align 4
  br label %92

92:                                               ; preds = %352, %5
  %93 = load i32, i32* %43, align 4
  %94 = icmp slt i32 %93, 10
  br i1 %94, label %95, label %355

95:                                               ; preds = %92
  %96 = load i64, i64* %15, align 8
  %97 = load i64, i64* %11, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %11, align 8
  %99 = load i64, i64* %23, align 8
  %100 = load i64, i64* %11, align 8
  %101 = xor i64 %99, %100
  %102 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %101, i32 16)
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %23, align 8
  %104 = load i64, i64* %23, align 8
  %105 = load i64, i64* %19, align 8
  %106 = add nsw i64 %105, %104
  store i64 %106, i64* %19, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* %19, align 8
  %109 = xor i64 %107, %108
  %110 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %109, i32 12)
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %15, align 8
  %112 = load i64, i64* %15, align 8
  %113 = load i64, i64* %11, align 8
  %114 = add nsw i64 %113, %112
  store i64 %114, i64* %11, align 8
  %115 = load i64, i64* %23, align 8
  %116 = load i64, i64* %11, align 8
  %117 = xor i64 %115, %116
  %118 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %117, i32 8)
  %119 = sext i32 %118 to i64
  store i64 %119, i64* %23, align 8
  %120 = load i64, i64* %23, align 8
  %121 = load i64, i64* %19, align 8
  %122 = add nsw i64 %121, %120
  store i64 %122, i64* %19, align 8
  %123 = load i64, i64* %15, align 8
  %124 = load i64, i64* %19, align 8
  %125 = xor i64 %123, %124
  %126 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %125, i32 7)
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %15, align 8
  %128 = load i64, i64* %16, align 8
  %129 = load i64, i64* %12, align 8
  %130 = add nsw i64 %129, %128
  store i64 %130, i64* %12, align 8
  %131 = load i64, i64* %24, align 8
  %132 = load i64, i64* %12, align 8
  %133 = xor i64 %131, %132
  %134 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %133, i32 16)
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %24, align 8
  %136 = load i64, i64* %24, align 8
  %137 = load i64, i64* %20, align 8
  %138 = add nsw i64 %137, %136
  store i64 %138, i64* %20, align 8
  %139 = load i64, i64* %16, align 8
  %140 = load i64, i64* %20, align 8
  %141 = xor i64 %139, %140
  %142 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %141, i32 12)
  %143 = sext i32 %142 to i64
  store i64 %143, i64* %16, align 8
  %144 = load i64, i64* %16, align 8
  %145 = load i64, i64* %12, align 8
  %146 = add nsw i64 %145, %144
  store i64 %146, i64* %12, align 8
  %147 = load i64, i64* %24, align 8
  %148 = load i64, i64* %12, align 8
  %149 = xor i64 %147, %148
  %150 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %149, i32 8)
  %151 = sext i32 %150 to i64
  store i64 %151, i64* %24, align 8
  %152 = load i64, i64* %24, align 8
  %153 = load i64, i64* %20, align 8
  %154 = add nsw i64 %153, %152
  store i64 %154, i64* %20, align 8
  %155 = load i64, i64* %16, align 8
  %156 = load i64, i64* %20, align 8
  %157 = xor i64 %155, %156
  %158 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %157, i32 7)
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %16, align 8
  %160 = load i64, i64* %17, align 8
  %161 = load i64, i64* %13, align 8
  %162 = add nsw i64 %161, %160
  store i64 %162, i64* %13, align 8
  %163 = load i64, i64* %25, align 8
  %164 = load i64, i64* %13, align 8
  %165 = xor i64 %163, %164
  %166 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %165, i32 16)
  %167 = sext i32 %166 to i64
  store i64 %167, i64* %25, align 8
  %168 = load i64, i64* %25, align 8
  %169 = load i64, i64* %21, align 8
  %170 = add nsw i64 %169, %168
  store i64 %170, i64* %21, align 8
  %171 = load i64, i64* %17, align 8
  %172 = load i64, i64* %21, align 8
  %173 = xor i64 %171, %172
  %174 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %173, i32 12)
  %175 = sext i32 %174 to i64
  store i64 %175, i64* %17, align 8
  %176 = load i64, i64* %17, align 8
  %177 = load i64, i64* %13, align 8
  %178 = add nsw i64 %177, %176
  store i64 %178, i64* %13, align 8
  %179 = load i64, i64* %25, align 8
  %180 = load i64, i64* %13, align 8
  %181 = xor i64 %179, %180
  %182 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %181, i32 8)
  %183 = sext i32 %182 to i64
  store i64 %183, i64* %25, align 8
  %184 = load i64, i64* %25, align 8
  %185 = load i64, i64* %21, align 8
  %186 = add nsw i64 %185, %184
  store i64 %186, i64* %21, align 8
  %187 = load i64, i64* %17, align 8
  %188 = load i64, i64* %21, align 8
  %189 = xor i64 %187, %188
  %190 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %189, i32 7)
  %191 = sext i32 %190 to i64
  store i64 %191, i64* %17, align 8
  %192 = load i64, i64* %18, align 8
  %193 = load i64, i64* %14, align 8
  %194 = add nsw i64 %193, %192
  store i64 %194, i64* %14, align 8
  %195 = load i64, i64* %26, align 8
  %196 = load i64, i64* %14, align 8
  %197 = xor i64 %195, %196
  %198 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %197, i32 16)
  %199 = sext i32 %198 to i64
  store i64 %199, i64* %26, align 8
  %200 = load i64, i64* %26, align 8
  %201 = load i64, i64* %22, align 8
  %202 = add nsw i64 %201, %200
  store i64 %202, i64* %22, align 8
  %203 = load i64, i64* %18, align 8
  %204 = load i64, i64* %22, align 8
  %205 = xor i64 %203, %204
  %206 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %205, i32 12)
  %207 = sext i32 %206 to i64
  store i64 %207, i64* %18, align 8
  %208 = load i64, i64* %18, align 8
  %209 = load i64, i64* %14, align 8
  %210 = add nsw i64 %209, %208
  store i64 %210, i64* %14, align 8
  %211 = load i64, i64* %26, align 8
  %212 = load i64, i64* %14, align 8
  %213 = xor i64 %211, %212
  %214 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %213, i32 8)
  %215 = sext i32 %214 to i64
  store i64 %215, i64* %26, align 8
  %216 = load i64, i64* %26, align 8
  %217 = load i64, i64* %22, align 8
  %218 = add nsw i64 %217, %216
  store i64 %218, i64* %22, align 8
  %219 = load i64, i64* %18, align 8
  %220 = load i64, i64* %22, align 8
  %221 = xor i64 %219, %220
  %222 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %221, i32 7)
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %18, align 8
  %224 = load i64, i64* %16, align 8
  %225 = load i64, i64* %11, align 8
  %226 = add nsw i64 %225, %224
  store i64 %226, i64* %11, align 8
  %227 = load i64, i64* %26, align 8
  %228 = load i64, i64* %11, align 8
  %229 = xor i64 %227, %228
  %230 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %229, i32 16)
  %231 = sext i32 %230 to i64
  store i64 %231, i64* %26, align 8
  %232 = load i64, i64* %26, align 8
  %233 = load i64, i64* %21, align 8
  %234 = add nsw i64 %233, %232
  store i64 %234, i64* %21, align 8
  %235 = load i64, i64* %16, align 8
  %236 = load i64, i64* %21, align 8
  %237 = xor i64 %235, %236
  %238 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %237, i32 12)
  %239 = sext i32 %238 to i64
  store i64 %239, i64* %16, align 8
  %240 = load i64, i64* %16, align 8
  %241 = load i64, i64* %11, align 8
  %242 = add nsw i64 %241, %240
  store i64 %242, i64* %11, align 8
  %243 = load i64, i64* %26, align 8
  %244 = load i64, i64* %11, align 8
  %245 = xor i64 %243, %244
  %246 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %245, i32 8)
  %247 = sext i32 %246 to i64
  store i64 %247, i64* %26, align 8
  %248 = load i64, i64* %26, align 8
  %249 = load i64, i64* %21, align 8
  %250 = add nsw i64 %249, %248
  store i64 %250, i64* %21, align 8
  %251 = load i64, i64* %16, align 8
  %252 = load i64, i64* %21, align 8
  %253 = xor i64 %251, %252
  %254 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %253, i32 7)
  %255 = sext i32 %254 to i64
  store i64 %255, i64* %16, align 8
  %256 = load i64, i64* %17, align 8
  %257 = load i64, i64* %12, align 8
  %258 = add nsw i64 %257, %256
  store i64 %258, i64* %12, align 8
  %259 = load i64, i64* %23, align 8
  %260 = load i64, i64* %12, align 8
  %261 = xor i64 %259, %260
  %262 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %261, i32 16)
  %263 = sext i32 %262 to i64
  store i64 %263, i64* %23, align 8
  %264 = load i64, i64* %23, align 8
  %265 = load i64, i64* %22, align 8
  %266 = add nsw i64 %265, %264
  store i64 %266, i64* %22, align 8
  %267 = load i64, i64* %17, align 8
  %268 = load i64, i64* %22, align 8
  %269 = xor i64 %267, %268
  %270 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %269, i32 12)
  %271 = sext i32 %270 to i64
  store i64 %271, i64* %17, align 8
  %272 = load i64, i64* %17, align 8
  %273 = load i64, i64* %12, align 8
  %274 = add nsw i64 %273, %272
  store i64 %274, i64* %12, align 8
  %275 = load i64, i64* %23, align 8
  %276 = load i64, i64* %12, align 8
  %277 = xor i64 %275, %276
  %278 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %277, i32 8)
  %279 = sext i32 %278 to i64
  store i64 %279, i64* %23, align 8
  %280 = load i64, i64* %23, align 8
  %281 = load i64, i64* %22, align 8
  %282 = add nsw i64 %281, %280
  store i64 %282, i64* %22, align 8
  %283 = load i64, i64* %17, align 8
  %284 = load i64, i64* %22, align 8
  %285 = xor i64 %283, %284
  %286 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %285, i32 7)
  %287 = sext i32 %286 to i64
  store i64 %287, i64* %17, align 8
  %288 = load i64, i64* %18, align 8
  %289 = load i64, i64* %13, align 8
  %290 = add nsw i64 %289, %288
  store i64 %290, i64* %13, align 8
  %291 = load i64, i64* %24, align 8
  %292 = load i64, i64* %13, align 8
  %293 = xor i64 %291, %292
  %294 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %293, i32 16)
  %295 = sext i32 %294 to i64
  store i64 %295, i64* %24, align 8
  %296 = load i64, i64* %24, align 8
  %297 = load i64, i64* %19, align 8
  %298 = add nsw i64 %297, %296
  store i64 %298, i64* %19, align 8
  %299 = load i64, i64* %18, align 8
  %300 = load i64, i64* %19, align 8
  %301 = xor i64 %299, %300
  %302 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %301, i32 12)
  %303 = sext i32 %302 to i64
  store i64 %303, i64* %18, align 8
  %304 = load i64, i64* %18, align 8
  %305 = load i64, i64* %13, align 8
  %306 = add nsw i64 %305, %304
  store i64 %306, i64* %13, align 8
  %307 = load i64, i64* %24, align 8
  %308 = load i64, i64* %13, align 8
  %309 = xor i64 %307, %308
  %310 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %309, i32 8)
  %311 = sext i32 %310 to i64
  store i64 %311, i64* %24, align 8
  %312 = load i64, i64* %24, align 8
  %313 = load i64, i64* %19, align 8
  %314 = add nsw i64 %313, %312
  store i64 %314, i64* %19, align 8
  %315 = load i64, i64* %18, align 8
  %316 = load i64, i64* %19, align 8
  %317 = xor i64 %315, %316
  %318 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %317, i32 7)
  %319 = sext i32 %318 to i64
  store i64 %319, i64* %18, align 8
  %320 = load i64, i64* %15, align 8
  %321 = load i64, i64* %14, align 8
  %322 = add nsw i64 %321, %320
  store i64 %322, i64* %14, align 8
  %323 = load i64, i64* %25, align 8
  %324 = load i64, i64* %14, align 8
  %325 = xor i64 %323, %324
  %326 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %325, i32 16)
  %327 = sext i32 %326 to i64
  store i64 %327, i64* %25, align 8
  %328 = load i64, i64* %25, align 8
  %329 = load i64, i64* %20, align 8
  %330 = add nsw i64 %329, %328
  store i64 %330, i64* %20, align 8
  %331 = load i64, i64* %15, align 8
  %332 = load i64, i64* %20, align 8
  %333 = xor i64 %331, %332
  %334 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %333, i32 12)
  %335 = sext i32 %334 to i64
  store i64 %335, i64* %15, align 8
  %336 = load i64, i64* %15, align 8
  %337 = load i64, i64* %14, align 8
  %338 = add nsw i64 %337, %336
  store i64 %338, i64* %14, align 8
  %339 = load i64, i64* %25, align 8
  %340 = load i64, i64* %14, align 8
  %341 = xor i64 %339, %340
  %342 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %341, i32 8)
  %343 = sext i32 %342 to i64
  store i64 %343, i64* %25, align 8
  %344 = load i64, i64* %25, align 8
  %345 = load i64, i64* %20, align 8
  %346 = add nsw i64 %345, %344
  store i64 %346, i64* %20, align 8
  %347 = load i64, i64* %15, align 8
  %348 = load i64, i64* %20, align 8
  %349 = xor i64 %347, %348
  %350 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %349, i32 7)
  %351 = sext i32 %350 to i64
  store i64 %351, i64* %15, align 8
  br label %352

352:                                              ; preds = %95
  %353 = load i32, i32* %43, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %43, align 4
  br label %92

355:                                              ; preds = %92
  %356 = load i64, i64* %11, align 8
  %357 = load i64, i64* %27, align 8
  %358 = add nsw i64 %357, %356
  store i64 %358, i64* %27, align 8
  %359 = load i64, i64* %12, align 8
  %360 = load i64, i64* %28, align 8
  %361 = add nsw i64 %360, %359
  store i64 %361, i64* %28, align 8
  %362 = load i64, i64* %13, align 8
  %363 = load i64, i64* %29, align 8
  %364 = add nsw i64 %363, %362
  store i64 %364, i64* %29, align 8
  %365 = load i64, i64* %14, align 8
  %366 = load i64, i64* %30, align 8
  %367 = add nsw i64 %366, %365
  store i64 %367, i64* %30, align 8
  %368 = load i64, i64* %15, align 8
  %369 = load i64, i64* %31, align 8
  %370 = add nsw i64 %369, %368
  store i64 %370, i64* %31, align 8
  %371 = load i64, i64* %16, align 8
  %372 = load i64, i64* %32, align 8
  %373 = add nsw i64 %372, %371
  store i64 %373, i64* %32, align 8
  %374 = load i64, i64* %17, align 8
  %375 = load i64, i64* %33, align 8
  %376 = add nsw i64 %375, %374
  store i64 %376, i64* %33, align 8
  %377 = load i64, i64* %18, align 8
  %378 = load i64, i64* %34, align 8
  %379 = add nsw i64 %378, %377
  store i64 %379, i64* %34, align 8
  %380 = load i64, i64* %19, align 8
  %381 = load i64, i64* %35, align 8
  %382 = add nsw i64 %381, %380
  store i64 %382, i64* %35, align 8
  %383 = load i64, i64* %20, align 8
  %384 = load i64, i64* %36, align 8
  %385 = add nsw i64 %384, %383
  store i64 %385, i64* %36, align 8
  %386 = load i64, i64* %21, align 8
  %387 = load i64, i64* %37, align 8
  %388 = add nsw i64 %387, %386
  store i64 %388, i64* %37, align 8
  %389 = load i64, i64* %22, align 8
  %390 = load i64, i64* %38, align 8
  %391 = add nsw i64 %390, %389
  store i64 %391, i64* %38, align 8
  %392 = load i64, i64* %23, align 8
  %393 = load i64, i64* %39, align 8
  %394 = add nsw i64 %393, %392
  store i64 %394, i64* %39, align 8
  %395 = load i64, i64* %24, align 8
  %396 = load i64, i64* %40, align 8
  %397 = add nsw i64 %396, %395
  store i64 %397, i64* %40, align 8
  %398 = load i64, i64* %25, align 8
  %399 = load i64, i64* %41, align 8
  %400 = add nsw i64 %399, %398
  store i64 %400, i64* %41, align 8
  %401 = load i64, i64* %26, align 8
  %402 = load i64, i64* %42, align 8
  %403 = add nsw i64 %402, %401
  store i64 %403, i64* %42, align 8
  %404 = load i64, i64* %27, align 8
  %405 = load i32*, i32** %10, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 0
  %407 = call i32 @write32_le(i64 %404, i32* %406)
  %408 = load i64, i64* %28, align 8
  %409 = load i32*, i32** %10, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 4
  %411 = call i32 @write32_le(i64 %408, i32* %410)
  %412 = load i64, i64* %29, align 8
  %413 = load i32*, i32** %10, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 8
  %415 = call i32 @write32_le(i64 %412, i32* %414)
  %416 = load i64, i64* %30, align 8
  %417 = load i32*, i32** %10, align 8
  %418 = getelementptr inbounds i32, i32* %417, i64 12
  %419 = call i32 @write32_le(i64 %416, i32* %418)
  %420 = load i64, i64* %31, align 8
  %421 = load i32*, i32** %10, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 16
  %423 = call i32 @write32_le(i64 %420, i32* %422)
  %424 = load i64, i64* %32, align 8
  %425 = load i32*, i32** %10, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 20
  %427 = call i32 @write32_le(i64 %424, i32* %426)
  %428 = load i64, i64* %33, align 8
  %429 = load i32*, i32** %10, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 24
  %431 = call i32 @write32_le(i64 %428, i32* %430)
  %432 = load i64, i64* %34, align 8
  %433 = load i32*, i32** %10, align 8
  %434 = getelementptr inbounds i32, i32* %433, i64 28
  %435 = call i32 @write32_le(i64 %432, i32* %434)
  %436 = load i64, i64* %35, align 8
  %437 = load i32*, i32** %10, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 32
  %439 = call i32 @write32_le(i64 %436, i32* %438)
  %440 = load i64, i64* %36, align 8
  %441 = load i32*, i32** %10, align 8
  %442 = getelementptr inbounds i32, i32* %441, i64 36
  %443 = call i32 @write32_le(i64 %440, i32* %442)
  %444 = load i64, i64* %37, align 8
  %445 = load i32*, i32** %10, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 40
  %447 = call i32 @write32_le(i64 %444, i32* %446)
  %448 = load i64, i64* %38, align 8
  %449 = load i32*, i32** %10, align 8
  %450 = getelementptr inbounds i32, i32* %449, i64 44
  %451 = call i32 @write32_le(i64 %448, i32* %450)
  %452 = load i64, i64* %39, align 8
  %453 = load i32*, i32** %10, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 48
  %455 = call i32 @write32_le(i64 %452, i32* %454)
  %456 = load i64, i64* %40, align 8
  %457 = load i32*, i32** %10, align 8
  %458 = getelementptr inbounds i32, i32* %457, i64 52
  %459 = call i32 @write32_le(i64 %456, i32* %458)
  %460 = load i64, i64* %41, align 8
  %461 = load i32*, i32** %10, align 8
  %462 = getelementptr inbounds i32, i32* %461, i64 56
  %463 = call i32 @write32_le(i64 %460, i32* %462)
  %464 = load i64, i64* %42, align 8
  %465 = load i32*, i32** %10, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 60
  %467 = call i32 @write32_le(i64 %464, i32* %466)
  ret void
}

declare dso_local i64 @read32_le(i32*) #1

declare dso_local i32 @rotl32(...) #1

declare dso_local i32 @write32_le(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
