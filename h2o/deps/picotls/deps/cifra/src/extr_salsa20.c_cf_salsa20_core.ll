; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_salsa20.c_cf_salsa20_core.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_salsa20.c_cf_salsa20_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COLUMN = common dso_local global i32 0, align 4
@ROW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cf_salsa20_core(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
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
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = call i64 @read32_le(i32* %48)
  store i64 %49, i64* %12, align 8
  store i64 %49, i64* %28, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = call i64 @read32_le(i32* %51)
  store i64 %52, i64* %13, align 8
  store i64 %52, i64* %29, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 8
  %55 = call i64 @read32_le(i32* %54)
  store i64 %55, i64* %14, align 8
  store i64 %55, i64* %30, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 12
  %58 = call i64 @read32_le(i32* %57)
  store i64 %58, i64* %15, align 8
  store i64 %58, i64* %31, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = call i64 @read32_le(i32* %60)
  store i64 %61, i64* %16, align 8
  store i64 %61, i64* %32, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = call i64 @read32_le(i32* %63)
  store i64 %64, i64* %17, align 8
  store i64 %64, i64* %33, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = call i64 @read32_le(i32* %66)
  store i64 %67, i64* %18, align 8
  store i64 %67, i64* %34, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 8
  %70 = call i64 @read32_le(i32* %69)
  store i64 %70, i64* %19, align 8
  store i64 %70, i64* %35, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 12
  %73 = call i64 @read32_le(i32* %72)
  store i64 %73, i64* %20, align 8
  store i64 %73, i64* %36, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 8
  %76 = call i64 @read32_le(i32* %75)
  store i64 %76, i64* %21, align 8
  store i64 %76, i64* %37, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = call i64 @read32_le(i32* %78)
  store i64 %79, i64* %22, align 8
  store i64 %79, i64* %38, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  %82 = call i64 @read32_le(i32* %81)
  store i64 %82, i64* %23, align 8
  store i64 %82, i64* %39, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 8
  %85 = call i64 @read32_le(i32* %84)
  store i64 %85, i64* %24, align 8
  store i64 %85, i64* %40, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 12
  %88 = call i64 @read32_le(i32* %87)
  store i64 %88, i64* %25, align 8
  store i64 %88, i64* %41, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 12
  %91 = call i64 @read32_le(i32* %90)
  store i64 %91, i64* %26, align 8
  store i64 %91, i64* %42, align 8
  store i32 0, i32* %43, align 4
  br label %92

92:                                               ; preds = %320, %5
  %93 = load i32, i32* %43, align 4
  %94 = icmp slt i32 %93, 10
  br i1 %94, label %95, label %323

95:                                               ; preds = %92
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* %23, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %98, i32 7)
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %15, align 8
  %102 = xor i64 %101, %100
  store i64 %102, i64* %15, align 8
  %103 = load i64, i64* %15, align 8
  %104 = load i64, i64* %11, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %105, i32 9)
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %19, align 8
  %109 = xor i64 %108, %107
  store i64 %109, i64* %19, align 8
  %110 = load i64, i64* %19, align 8
  %111 = load i64, i64* %15, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %112, i32 13)
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %23, align 8
  %116 = xor i64 %115, %114
  store i64 %116, i64* %23, align 8
  %117 = load i64, i64* %23, align 8
  %118 = load i64, i64* %19, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %119, i32 18)
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %11, align 8
  %123 = xor i64 %122, %121
  store i64 %123, i64* %11, align 8
  %124 = load i64, i64* %16, align 8
  %125 = load i64, i64* %12, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %126, i32 7)
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %20, align 8
  %130 = xor i64 %129, %128
  store i64 %130, i64* %20, align 8
  %131 = load i64, i64* %20, align 8
  %132 = load i64, i64* %16, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %133, i32 9)
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %24, align 8
  %137 = xor i64 %136, %135
  store i64 %137, i64* %24, align 8
  %138 = load i64, i64* %24, align 8
  %139 = load i64, i64* %20, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %140, i32 13)
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %12, align 8
  %144 = xor i64 %143, %142
  store i64 %144, i64* %12, align 8
  %145 = load i64, i64* %12, align 8
  %146 = load i64, i64* %24, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %147, i32 18)
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %16, align 8
  %151 = xor i64 %150, %149
  store i64 %151, i64* %16, align 8
  %152 = load i64, i64* %21, align 8
  %153 = load i64, i64* %17, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %154, i32 7)
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* %25, align 8
  %158 = xor i64 %157, %156
  store i64 %158, i64* %25, align 8
  %159 = load i64, i64* %25, align 8
  %160 = load i64, i64* %21, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %161, i32 9)
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* %13, align 8
  %165 = xor i64 %164, %163
  store i64 %165, i64* %13, align 8
  %166 = load i64, i64* %13, align 8
  %167 = load i64, i64* %25, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %168, i32 13)
  %170 = sext i32 %169 to i64
  %171 = load i64, i64* %17, align 8
  %172 = xor i64 %171, %170
  store i64 %172, i64* %17, align 8
  %173 = load i64, i64* %17, align 8
  %174 = load i64, i64* %13, align 8
  %175 = add nsw i64 %173, %174
  %176 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %175, i32 18)
  %177 = sext i32 %176 to i64
  %178 = load i64, i64* %21, align 8
  %179 = xor i64 %178, %177
  store i64 %179, i64* %21, align 8
  %180 = load i64, i64* %26, align 8
  %181 = load i64, i64* %22, align 8
  %182 = add nsw i64 %180, %181
  %183 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %182, i32 7)
  %184 = sext i32 %183 to i64
  %185 = load i64, i64* %14, align 8
  %186 = xor i64 %185, %184
  store i64 %186, i64* %14, align 8
  %187 = load i64, i64* %14, align 8
  %188 = load i64, i64* %26, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %189, i32 9)
  %191 = sext i32 %190 to i64
  %192 = load i64, i64* %18, align 8
  %193 = xor i64 %192, %191
  store i64 %193, i64* %18, align 8
  %194 = load i64, i64* %18, align 8
  %195 = load i64, i64* %14, align 8
  %196 = add nsw i64 %194, %195
  %197 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %196, i32 13)
  %198 = sext i32 %197 to i64
  %199 = load i64, i64* %22, align 8
  %200 = xor i64 %199, %198
  store i64 %200, i64* %22, align 8
  %201 = load i64, i64* %22, align 8
  %202 = load i64, i64* %18, align 8
  %203 = add nsw i64 %201, %202
  %204 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %203, i32 18)
  %205 = sext i32 %204 to i64
  %206 = load i64, i64* %26, align 8
  %207 = xor i64 %206, %205
  store i64 %207, i64* %26, align 8
  %208 = load i64, i64* %11, align 8
  %209 = load i64, i64* %14, align 8
  %210 = add nsw i64 %208, %209
  %211 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %210, i32 7)
  %212 = sext i32 %211 to i64
  %213 = load i64, i64* %12, align 8
  %214 = xor i64 %213, %212
  store i64 %214, i64* %12, align 8
  %215 = load i64, i64* %12, align 8
  %216 = load i64, i64* %11, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %217, i32 9)
  %219 = sext i32 %218 to i64
  %220 = load i64, i64* %13, align 8
  %221 = xor i64 %220, %219
  store i64 %221, i64* %13, align 8
  %222 = load i64, i64* %13, align 8
  %223 = load i64, i64* %12, align 8
  %224 = add nsw i64 %222, %223
  %225 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %224, i32 13)
  %226 = sext i32 %225 to i64
  %227 = load i64, i64* %14, align 8
  %228 = xor i64 %227, %226
  store i64 %228, i64* %14, align 8
  %229 = load i64, i64* %14, align 8
  %230 = load i64, i64* %13, align 8
  %231 = add nsw i64 %229, %230
  %232 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %231, i32 18)
  %233 = sext i32 %232 to i64
  %234 = load i64, i64* %11, align 8
  %235 = xor i64 %234, %233
  store i64 %235, i64* %11, align 8
  %236 = load i64, i64* %16, align 8
  %237 = load i64, i64* %15, align 8
  %238 = add nsw i64 %236, %237
  %239 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %238, i32 7)
  %240 = sext i32 %239 to i64
  %241 = load i64, i64* %17, align 8
  %242 = xor i64 %241, %240
  store i64 %242, i64* %17, align 8
  %243 = load i64, i64* %17, align 8
  %244 = load i64, i64* %16, align 8
  %245 = add nsw i64 %243, %244
  %246 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %245, i32 9)
  %247 = sext i32 %246 to i64
  %248 = load i64, i64* %18, align 8
  %249 = xor i64 %248, %247
  store i64 %249, i64* %18, align 8
  %250 = load i64, i64* %18, align 8
  %251 = load i64, i64* %17, align 8
  %252 = add nsw i64 %250, %251
  %253 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %252, i32 13)
  %254 = sext i32 %253 to i64
  %255 = load i64, i64* %15, align 8
  %256 = xor i64 %255, %254
  store i64 %256, i64* %15, align 8
  %257 = load i64, i64* %15, align 8
  %258 = load i64, i64* %18, align 8
  %259 = add nsw i64 %257, %258
  %260 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %259, i32 18)
  %261 = sext i32 %260 to i64
  %262 = load i64, i64* %16, align 8
  %263 = xor i64 %262, %261
  store i64 %263, i64* %16, align 8
  %264 = load i64, i64* %21, align 8
  %265 = load i64, i64* %20, align 8
  %266 = add nsw i64 %264, %265
  %267 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %266, i32 7)
  %268 = sext i32 %267 to i64
  %269 = load i64, i64* %22, align 8
  %270 = xor i64 %269, %268
  store i64 %270, i64* %22, align 8
  %271 = load i64, i64* %22, align 8
  %272 = load i64, i64* %21, align 8
  %273 = add nsw i64 %271, %272
  %274 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %273, i32 9)
  %275 = sext i32 %274 to i64
  %276 = load i64, i64* %19, align 8
  %277 = xor i64 %276, %275
  store i64 %277, i64* %19, align 8
  %278 = load i64, i64* %19, align 8
  %279 = load i64, i64* %22, align 8
  %280 = add nsw i64 %278, %279
  %281 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %280, i32 13)
  %282 = sext i32 %281 to i64
  %283 = load i64, i64* %20, align 8
  %284 = xor i64 %283, %282
  store i64 %284, i64* %20, align 8
  %285 = load i64, i64* %20, align 8
  %286 = load i64, i64* %19, align 8
  %287 = add nsw i64 %285, %286
  %288 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %287, i32 18)
  %289 = sext i32 %288 to i64
  %290 = load i64, i64* %21, align 8
  %291 = xor i64 %290, %289
  store i64 %291, i64* %21, align 8
  %292 = load i64, i64* %26, align 8
  %293 = load i64, i64* %25, align 8
  %294 = add nsw i64 %292, %293
  %295 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %294, i32 7)
  %296 = sext i32 %295 to i64
  %297 = load i64, i64* %23, align 8
  %298 = xor i64 %297, %296
  store i64 %298, i64* %23, align 8
  %299 = load i64, i64* %23, align 8
  %300 = load i64, i64* %26, align 8
  %301 = add nsw i64 %299, %300
  %302 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %301, i32 9)
  %303 = sext i32 %302 to i64
  %304 = load i64, i64* %24, align 8
  %305 = xor i64 %304, %303
  store i64 %305, i64* %24, align 8
  %306 = load i64, i64* %24, align 8
  %307 = load i64, i64* %23, align 8
  %308 = add nsw i64 %306, %307
  %309 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %308, i32 13)
  %310 = sext i32 %309 to i64
  %311 = load i64, i64* %25, align 8
  %312 = xor i64 %311, %310
  store i64 %312, i64* %25, align 8
  %313 = load i64, i64* %25, align 8
  %314 = load i64, i64* %24, align 8
  %315 = add nsw i64 %313, %314
  %316 = call i32 (i64, i32, ...) bitcast (i32 (...)* @rotl32 to i32 (i64, i32, ...)*)(i64 %315, i32 18)
  %317 = sext i32 %316 to i64
  %318 = load i64, i64* %26, align 8
  %319 = xor i64 %318, %317
  store i64 %319, i64* %26, align 8
  br label %320

320:                                              ; preds = %95
  %321 = load i32, i32* %43, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %43, align 4
  br label %92

323:                                              ; preds = %92
  %324 = load i64, i64* %11, align 8
  %325 = load i64, i64* %27, align 8
  %326 = add nsw i64 %325, %324
  store i64 %326, i64* %27, align 8
  %327 = load i64, i64* %12, align 8
  %328 = load i64, i64* %28, align 8
  %329 = add nsw i64 %328, %327
  store i64 %329, i64* %28, align 8
  %330 = load i64, i64* %13, align 8
  %331 = load i64, i64* %29, align 8
  %332 = add nsw i64 %331, %330
  store i64 %332, i64* %29, align 8
  %333 = load i64, i64* %14, align 8
  %334 = load i64, i64* %30, align 8
  %335 = add nsw i64 %334, %333
  store i64 %335, i64* %30, align 8
  %336 = load i64, i64* %15, align 8
  %337 = load i64, i64* %31, align 8
  %338 = add nsw i64 %337, %336
  store i64 %338, i64* %31, align 8
  %339 = load i64, i64* %16, align 8
  %340 = load i64, i64* %32, align 8
  %341 = add nsw i64 %340, %339
  store i64 %341, i64* %32, align 8
  %342 = load i64, i64* %17, align 8
  %343 = load i64, i64* %33, align 8
  %344 = add nsw i64 %343, %342
  store i64 %344, i64* %33, align 8
  %345 = load i64, i64* %18, align 8
  %346 = load i64, i64* %34, align 8
  %347 = add nsw i64 %346, %345
  store i64 %347, i64* %34, align 8
  %348 = load i64, i64* %19, align 8
  %349 = load i64, i64* %35, align 8
  %350 = add nsw i64 %349, %348
  store i64 %350, i64* %35, align 8
  %351 = load i64, i64* %20, align 8
  %352 = load i64, i64* %36, align 8
  %353 = add nsw i64 %352, %351
  store i64 %353, i64* %36, align 8
  %354 = load i64, i64* %21, align 8
  %355 = load i64, i64* %37, align 8
  %356 = add nsw i64 %355, %354
  store i64 %356, i64* %37, align 8
  %357 = load i64, i64* %22, align 8
  %358 = load i64, i64* %38, align 8
  %359 = add nsw i64 %358, %357
  store i64 %359, i64* %38, align 8
  %360 = load i64, i64* %23, align 8
  %361 = load i64, i64* %39, align 8
  %362 = add nsw i64 %361, %360
  store i64 %362, i64* %39, align 8
  %363 = load i64, i64* %24, align 8
  %364 = load i64, i64* %40, align 8
  %365 = add nsw i64 %364, %363
  store i64 %365, i64* %40, align 8
  %366 = load i64, i64* %25, align 8
  %367 = load i64, i64* %41, align 8
  %368 = add nsw i64 %367, %366
  store i64 %368, i64* %41, align 8
  %369 = load i64, i64* %26, align 8
  %370 = load i64, i64* %42, align 8
  %371 = add nsw i64 %370, %369
  store i64 %371, i64* %42, align 8
  %372 = load i64, i64* %27, align 8
  %373 = load i32*, i32** %10, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 0
  %375 = call i32 @write32_le(i64 %372, i32* %374)
  %376 = load i64, i64* %28, align 8
  %377 = load i32*, i32** %10, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 4
  %379 = call i32 @write32_le(i64 %376, i32* %378)
  %380 = load i64, i64* %29, align 8
  %381 = load i32*, i32** %10, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 8
  %383 = call i32 @write32_le(i64 %380, i32* %382)
  %384 = load i64, i64* %30, align 8
  %385 = load i32*, i32** %10, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 12
  %387 = call i32 @write32_le(i64 %384, i32* %386)
  %388 = load i64, i64* %31, align 8
  %389 = load i32*, i32** %10, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 16
  %391 = call i32 @write32_le(i64 %388, i32* %390)
  %392 = load i64, i64* %32, align 8
  %393 = load i32*, i32** %10, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 20
  %395 = call i32 @write32_le(i64 %392, i32* %394)
  %396 = load i64, i64* %33, align 8
  %397 = load i32*, i32** %10, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 24
  %399 = call i32 @write32_le(i64 %396, i32* %398)
  %400 = load i64, i64* %34, align 8
  %401 = load i32*, i32** %10, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 28
  %403 = call i32 @write32_le(i64 %400, i32* %402)
  %404 = load i64, i64* %35, align 8
  %405 = load i32*, i32** %10, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 32
  %407 = call i32 @write32_le(i64 %404, i32* %406)
  %408 = load i64, i64* %36, align 8
  %409 = load i32*, i32** %10, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 36
  %411 = call i32 @write32_le(i64 %408, i32* %410)
  %412 = load i64, i64* %37, align 8
  %413 = load i32*, i32** %10, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 40
  %415 = call i32 @write32_le(i64 %412, i32* %414)
  %416 = load i64, i64* %38, align 8
  %417 = load i32*, i32** %10, align 8
  %418 = getelementptr inbounds i32, i32* %417, i64 44
  %419 = call i32 @write32_le(i64 %416, i32* %418)
  %420 = load i64, i64* %39, align 8
  %421 = load i32*, i32** %10, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 48
  %423 = call i32 @write32_le(i64 %420, i32* %422)
  %424 = load i64, i64* %40, align 8
  %425 = load i32*, i32** %10, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 52
  %427 = call i32 @write32_le(i64 %424, i32* %426)
  %428 = load i64, i64* %41, align 8
  %429 = load i32*, i32** %10, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 56
  %431 = call i32 @write32_le(i64 %428, i32* %430)
  %432 = load i64, i64* %42, align 8
  %433 = load i32*, i32** %10, align 8
  %434 = getelementptr inbounds i32, i32* %433, i64 60
  %435 = call i32 @write32_le(i64 %432, i32* %434)
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
