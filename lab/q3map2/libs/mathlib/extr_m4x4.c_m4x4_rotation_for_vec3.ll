; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_m4x4.c_m4x4_rotation_for_vec3.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/mathlib/extr_m4x4.c_m4x4_rotation_for_vec3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m4x4_rotation_for_vec3(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @DEG2RAD(i32 %18)
  %20 = call double @cos(i32 %19)
  store double %20, double* %7, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DEG2RAD(i32 %23)
  %25 = call double @sin(i32 %24)
  store double %25, double* %8, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @DEG2RAD(i32 %28)
  %30 = call double @cos(i32 %29)
  store double %30, double* %9, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DEG2RAD(i32 %33)
  %35 = call double @sin(i32 %34)
  store double %35, double* %10, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @DEG2RAD(i32 %38)
  %40 = call double @cos(i32 %39)
  store double %40, double* %11, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @DEG2RAD(i32 %43)
  %45 = call double @sin(i32 %44)
  store double %45, double* %12, align 8
  %46 = load i32, i32* %6, align 4
  switch i32 %46, label %527 [
    i32 133, label %47
    i32 130, label %141
    i32 129, label %205
    i32 132, label %269
    i32 131, label %333
    i32 128, label %430
  ]

47:                                               ; preds = %3
  %48 = load double, double* %9, align 8
  %49 = load double, double* %11, align 8
  %50 = fmul double %48, %49
  %51 = fptosi double %50 to i32
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %51, i32* %53, align 4
  %54 = load double, double* %9, align 8
  %55 = load double, double* %12, align 8
  %56 = fmul double %54, %55
  %57 = fptosi double %56 to i32
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %57, i32* %59, align 4
  %60 = load double, double* %10, align 8
  %61 = fneg double %60
  %62 = fptosi double %61 to i32
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32 %62, i32* %64, align 4
  %65 = load double, double* %8, align 8
  %66 = load double, double* %10, align 8
  %67 = fmul double %65, %66
  %68 = load double, double* %11, align 8
  %69 = fmul double %67, %68
  %70 = load double, double* %7, align 8
  %71 = load double, double* %12, align 8
  %72 = fneg double %71
  %73 = fmul double %70, %72
  %74 = fadd double %69, %73
  %75 = fptosi double %74 to i32
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  store i32 %75, i32* %77, align 4
  %78 = load double, double* %8, align 8
  %79 = load double, double* %10, align 8
  %80 = fmul double %78, %79
  %81 = load double, double* %12, align 8
  %82 = fmul double %80, %81
  %83 = load double, double* %7, align 8
  %84 = load double, double* %11, align 8
  %85 = fmul double %83, %84
  %86 = fadd double %82, %85
  %87 = fptosi double %86 to i32
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 5
  store i32 %87, i32* %89, align 4
  %90 = load double, double* %8, align 8
  %91 = load double, double* %9, align 8
  %92 = fmul double %90, %91
  %93 = fptosi double %92 to i32
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 6
  store i32 %93, i32* %95, align 4
  %96 = load double, double* %7, align 8
  %97 = load double, double* %10, align 8
  %98 = fmul double %96, %97
  %99 = load double, double* %11, align 8
  %100 = fmul double %98, %99
  %101 = load double, double* %8, align 8
  %102 = load double, double* %12, align 8
  %103 = fmul double %101, %102
  %104 = fadd double %100, %103
  %105 = fptosi double %104 to i32
  %106 = load i32*, i32** %4, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 8
  store i32 %105, i32* %107, align 4
  %108 = load double, double* %7, align 8
  %109 = load double, double* %10, align 8
  %110 = fmul double %108, %109
  %111 = load double, double* %12, align 8
  %112 = fmul double %110, %111
  %113 = load double, double* %8, align 8
  %114 = fneg double %113
  %115 = load double, double* %11, align 8
  %116 = fmul double %114, %115
  %117 = fadd double %112, %116
  %118 = fptosi double %117 to i32
  %119 = load i32*, i32** %4, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 9
  store i32 %118, i32* %120, align 4
  %121 = load double, double* %7, align 8
  %122 = load double, double* %9, align 8
  %123 = fmul double %121, %122
  %124 = fptosi double %123 to i32
  %125 = load i32*, i32** %4, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 10
  store i32 %124, i32* %126, align 4
  %127 = load i32*, i32** %4, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 11
  store i32 0, i32* %128, align 4
  %129 = load i32*, i32** %4, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 7
  store i32 0, i32* %130, align 4
  %131 = load i32*, i32** %4, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  store i32 0, i32* %132, align 4
  %133 = load i32*, i32** %4, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 14
  store i32 0, i32* %134, align 4
  %135 = load i32*, i32** %4, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 13
  store i32 0, i32* %136, align 4
  %137 = load i32*, i32** %4, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 12
  store i32 0, i32* %138, align 4
  %139 = load i32*, i32** %4, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 15
  store i32 1, i32* %140, align 4
  br label %527

141:                                              ; preds = %3
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 @m4x4_identity(i32* %142)
  %144 = load double, double* %9, align 8
  %145 = fptosi double %144 to i32
  %146 = load i32*, i32** %4, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  store i32 %145, i32* %147, align 4
  %148 = load double, double* %10, align 8
  %149 = fneg double %148
  %150 = fptosi double %149 to i32
  %151 = load i32*, i32** %4, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 2
  store i32 %150, i32* %152, align 4
  %153 = load double, double* %10, align 8
  %154 = fptosi double %153 to i32
  %155 = load i32*, i32** %4, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 8
  store i32 %154, i32* %156, align 4
  %157 = load double, double* %9, align 8
  %158 = fptosi double %157 to i32
  %159 = load i32*, i32** %4, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 10
  store i32 %158, i32* %160, align 4
  %161 = load i32*, i32** %13, align 8
  %162 = call i32 @m4x4_identity(i32* %161)
  %163 = load double, double* %7, align 8
  %164 = fptosi double %163 to i32
  %165 = load i32*, i32** %13, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 5
  store i32 %164, i32* %166, align 4
  %167 = load double, double* %8, align 8
  %168 = fptosi double %167 to i32
  %169 = load i32*, i32** %13, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 6
  store i32 %168, i32* %170, align 4
  %171 = load double, double* %8, align 8
  %172 = fneg double %171
  %173 = fptosi double %172 to i32
  %174 = load i32*, i32** %13, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 9
  store i32 %173, i32* %175, align 4
  %176 = load double, double* %7, align 8
  %177 = fptosi double %176 to i32
  %178 = load i32*, i32** %13, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 10
  store i32 %177, i32* %179, align 4
  %180 = load i32*, i32** %4, align 8
  %181 = load i32*, i32** %13, align 8
  %182 = call i32 @m4x4_premultiply_by_m4x4(i32* %180, i32* %181)
  %183 = load i32*, i32** %13, align 8
  %184 = call i32 @m4x4_identity(i32* %183)
  %185 = load double, double* %11, align 8
  %186 = fptosi double %185 to i32
  %187 = load i32*, i32** %13, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  store i32 %186, i32* %188, align 4
  %189 = load double, double* %12, align 8
  %190 = fptosi double %189 to i32
  %191 = load i32*, i32** %13, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  store i32 %190, i32* %192, align 4
  %193 = load double, double* %12, align 8
  %194 = fneg double %193
  %195 = fptosi double %194 to i32
  %196 = load i32*, i32** %13, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 4
  store i32 %195, i32* %197, align 4
  %198 = load double, double* %11, align 8
  %199 = fptosi double %198 to i32
  %200 = load i32*, i32** %13, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 5
  store i32 %199, i32* %201, align 4
  %202 = load i32*, i32** %4, align 8
  %203 = load i32*, i32** %13, align 8
  %204 = call i32 @m4x4_premultiply_by_m4x4(i32* %202, i32* %203)
  br label %527

205:                                              ; preds = %3
  %206 = load i32*, i32** %4, align 8
  %207 = call i32 @m4x4_identity(i32* %206)
  %208 = load double, double* %11, align 8
  %209 = fptosi double %208 to i32
  %210 = load i32*, i32** %4, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  store i32 %209, i32* %211, align 4
  %212 = load double, double* %12, align 8
  %213 = fptosi double %212 to i32
  %214 = load i32*, i32** %4, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  store i32 %213, i32* %215, align 4
  %216 = load double, double* %12, align 8
  %217 = fneg double %216
  %218 = fptosi double %217 to i32
  %219 = load i32*, i32** %4, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 4
  store i32 %218, i32* %220, align 4
  %221 = load double, double* %11, align 8
  %222 = fptosi double %221 to i32
  %223 = load i32*, i32** %4, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 5
  store i32 %222, i32* %224, align 4
  %225 = load i32*, i32** %14, align 8
  %226 = call i32 @m4x4_identity(i32* %225)
  %227 = load double, double* %7, align 8
  %228 = fptosi double %227 to i32
  %229 = load i32*, i32** %14, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 5
  store i32 %228, i32* %230, align 4
  %231 = load double, double* %8, align 8
  %232 = fptosi double %231 to i32
  %233 = load i32*, i32** %14, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 6
  store i32 %232, i32* %234, align 4
  %235 = load double, double* %8, align 8
  %236 = fneg double %235
  %237 = fptosi double %236 to i32
  %238 = load i32*, i32** %14, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 9
  store i32 %237, i32* %239, align 4
  %240 = load double, double* %7, align 8
  %241 = fptosi double %240 to i32
  %242 = load i32*, i32** %14, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 10
  store i32 %241, i32* %243, align 4
  %244 = load i32*, i32** %4, align 8
  %245 = load i32*, i32** %14, align 8
  %246 = call i32 @m4x4_premultiply_by_m4x4(i32* %244, i32* %245)
  %247 = load i32*, i32** %14, align 8
  %248 = call i32 @m4x4_identity(i32* %247)
  %249 = load double, double* %9, align 8
  %250 = fptosi double %249 to i32
  %251 = load i32*, i32** %14, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 0
  store i32 %250, i32* %252, align 4
  %253 = load double, double* %10, align 8
  %254 = fneg double %253
  %255 = fptosi double %254 to i32
  %256 = load i32*, i32** %14, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 2
  store i32 %255, i32* %257, align 4
  %258 = load double, double* %10, align 8
  %259 = fptosi double %258 to i32
  %260 = load i32*, i32** %14, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 8
  store i32 %259, i32* %261, align 4
  %262 = load double, double* %9, align 8
  %263 = fptosi double %262 to i32
  %264 = load i32*, i32** %14, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 10
  store i32 %263, i32* %265, align 4
  %266 = load i32*, i32** %4, align 8
  %267 = load i32*, i32** %14, align 8
  %268 = call i32 @m4x4_premultiply_by_m4x4(i32* %266, i32* %267)
  br label %527

269:                                              ; preds = %3
  %270 = load i32*, i32** %4, align 8
  %271 = call i32 @m4x4_identity(i32* %270)
  %272 = load double, double* %7, align 8
  %273 = fptosi double %272 to i32
  %274 = load i32*, i32** %4, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 5
  store i32 %273, i32* %275, align 4
  %276 = load double, double* %8, align 8
  %277 = fptosi double %276 to i32
  %278 = load i32*, i32** %4, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 6
  store i32 %277, i32* %279, align 4
  %280 = load double, double* %8, align 8
  %281 = fneg double %280
  %282 = fptosi double %281 to i32
  %283 = load i32*, i32** %4, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 9
  store i32 %282, i32* %284, align 4
  %285 = load double, double* %7, align 8
  %286 = fptosi double %285 to i32
  %287 = load i32*, i32** %4, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 10
  store i32 %286, i32* %288, align 4
  %289 = load i32*, i32** %15, align 8
  %290 = call i32 @m4x4_identity(i32* %289)
  %291 = load double, double* %11, align 8
  %292 = fptosi double %291 to i32
  %293 = load i32*, i32** %15, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 0
  store i32 %292, i32* %294, align 4
  %295 = load double, double* %12, align 8
  %296 = fptosi double %295 to i32
  %297 = load i32*, i32** %15, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 1
  store i32 %296, i32* %298, align 4
  %299 = load double, double* %12, align 8
  %300 = fneg double %299
  %301 = fptosi double %300 to i32
  %302 = load i32*, i32** %15, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 4
  store i32 %301, i32* %303, align 4
  %304 = load double, double* %11, align 8
  %305 = fptosi double %304 to i32
  %306 = load i32*, i32** %15, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 5
  store i32 %305, i32* %307, align 4
  %308 = load i32*, i32** %4, align 8
  %309 = load i32*, i32** %15, align 8
  %310 = call i32 @m4x4_premultiply_by_m4x4(i32* %308, i32* %309)
  %311 = load i32*, i32** %15, align 8
  %312 = call i32 @m4x4_identity(i32* %311)
  %313 = load double, double* %9, align 8
  %314 = fptosi double %313 to i32
  %315 = load i32*, i32** %15, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 0
  store i32 %314, i32* %316, align 4
  %317 = load double, double* %10, align 8
  %318 = fneg double %317
  %319 = fptosi double %318 to i32
  %320 = load i32*, i32** %15, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 2
  store i32 %319, i32* %321, align 4
  %322 = load double, double* %10, align 8
  %323 = fptosi double %322 to i32
  %324 = load i32*, i32** %15, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 8
  store i32 %323, i32* %325, align 4
  %326 = load double, double* %9, align 8
  %327 = fptosi double %326 to i32
  %328 = load i32*, i32** %15, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 10
  store i32 %327, i32* %329, align 4
  %330 = load i32*, i32** %4, align 8
  %331 = load i32*, i32** %15, align 8
  %332 = call i32 @m4x4_premultiply_by_m4x4(i32* %330, i32* %331)
  br label %527

333:                                              ; preds = %3
  %334 = load double, double* %9, align 8
  %335 = load double, double* %11, align 8
  %336 = fmul double %334, %335
  %337 = load double, double* %8, align 8
  %338 = load double, double* %10, align 8
  %339 = fmul double %337, %338
  %340 = load double, double* %12, align 8
  %341 = fneg double %340
  %342 = fmul double %339, %341
  %343 = fadd double %336, %342
  %344 = fptosi double %343 to i32
  %345 = load i32*, i32** %4, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 0
  store i32 %344, i32* %346, align 4
  %347 = load double, double* %9, align 8
  %348 = load double, double* %12, align 8
  %349 = fmul double %347, %348
  %350 = load double, double* %8, align 8
  %351 = load double, double* %10, align 8
  %352 = fmul double %350, %351
  %353 = load double, double* %11, align 8
  %354 = fmul double %352, %353
  %355 = fadd double %349, %354
  %356 = fptosi double %355 to i32
  %357 = load i32*, i32** %4, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 1
  store i32 %356, i32* %358, align 4
  %359 = load double, double* %7, align 8
  %360 = fneg double %359
  %361 = load double, double* %10, align 8
  %362 = fmul double %360, %361
  %363 = fptosi double %362 to i32
  %364 = load i32*, i32** %4, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 2
  store i32 %363, i32* %365, align 4
  %366 = load double, double* %7, align 8
  %367 = load double, double* %12, align 8
  %368 = fneg double %367
  %369 = fmul double %366, %368
  %370 = fptosi double %369 to i32
  %371 = load i32*, i32** %4, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 4
  store i32 %370, i32* %372, align 4
  %373 = load double, double* %7, align 8
  %374 = load double, double* %11, align 8
  %375 = fmul double %373, %374
  %376 = fptosi double %375 to i32
  %377 = load i32*, i32** %4, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 5
  store i32 %376, i32* %378, align 4
  %379 = load double, double* %8, align 8
  %380 = fptosi double %379 to i32
  %381 = load i32*, i32** %4, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 6
  store i32 %380, i32* %382, align 4
  %383 = load double, double* %10, align 8
  %384 = load double, double* %11, align 8
  %385 = fmul double %383, %384
  %386 = load double, double* %8, align 8
  %387 = fneg double %386
  %388 = load double, double* %9, align 8
  %389 = fmul double %387, %388
  %390 = load double, double* %12, align 8
  %391 = fneg double %390
  %392 = fmul double %389, %391
  %393 = fadd double %385, %392
  %394 = fptosi double %393 to i32
  %395 = load i32*, i32** %4, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 8
  store i32 %394, i32* %396, align 4
  %397 = load double, double* %10, align 8
  %398 = load double, double* %12, align 8
  %399 = fmul double %397, %398
  %400 = load double, double* %8, align 8
  %401 = fneg double %400
  %402 = load double, double* %9, align 8
  %403 = fmul double %401, %402
  %404 = load double, double* %11, align 8
  %405 = fmul double %403, %404
  %406 = fadd double %399, %405
  %407 = fptosi double %406 to i32
  %408 = load i32*, i32** %4, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 9
  store i32 %407, i32* %409, align 4
  %410 = load double, double* %7, align 8
  %411 = load double, double* %9, align 8
  %412 = fmul double %410, %411
  %413 = fptosi double %412 to i32
  %414 = load i32*, i32** %4, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 10
  store i32 %413, i32* %415, align 4
  %416 = load i32*, i32** %4, align 8
  %417 = getelementptr inbounds i32, i32* %416, i64 11
  store i32 0, i32* %417, align 4
  %418 = load i32*, i32** %4, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 7
  store i32 0, i32* %419, align 4
  %420 = load i32*, i32** %4, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 3
  store i32 0, i32* %421, align 4
  %422 = load i32*, i32** %4, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 14
  store i32 0, i32* %423, align 4
  %424 = load i32*, i32** %4, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 13
  store i32 0, i32* %425, align 4
  %426 = load i32*, i32** %4, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 12
  store i32 0, i32* %427, align 4
  %428 = load i32*, i32** %4, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 15
  store i32 1, i32* %429, align 4
  br label %527

430:                                              ; preds = %3
  %431 = load double, double* %9, align 8
  %432 = load double, double* %11, align 8
  %433 = fmul double %431, %432
  %434 = fptosi double %433 to i32
  %435 = load i32*, i32** %4, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 0
  store i32 %434, i32* %436, align 4
  %437 = load double, double* %9, align 8
  %438 = load double, double* %12, align 8
  %439 = fneg double %438
  %440 = fmul double %437, %439
  %441 = fptosi double %440 to i32
  %442 = load i32*, i32** %4, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 4
  store i32 %441, i32* %443, align 4
  %444 = load double, double* %10, align 8
  %445 = fptosi double %444 to i32
  %446 = load i32*, i32** %4, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 8
  store i32 %445, i32* %447, align 4
  %448 = load double, double* %8, align 8
  %449 = load double, double* %10, align 8
  %450 = fmul double %448, %449
  %451 = load double, double* %11, align 8
  %452 = fmul double %450, %451
  %453 = load double, double* %7, align 8
  %454 = load double, double* %12, align 8
  %455 = fmul double %453, %454
  %456 = fadd double %452, %455
  %457 = fptosi double %456 to i32
  %458 = load i32*, i32** %4, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 1
  store i32 %457, i32* %459, align 4
  %460 = load double, double* %8, align 8
  %461 = load double, double* %10, align 8
  %462 = fmul double %460, %461
  %463 = load double, double* %12, align 8
  %464 = fneg double %463
  %465 = fmul double %462, %464
  %466 = load double, double* %7, align 8
  %467 = load double, double* %11, align 8
  %468 = fmul double %466, %467
  %469 = fadd double %465, %468
  %470 = fptosi double %469 to i32
  %471 = load i32*, i32** %4, align 8
  %472 = getelementptr inbounds i32, i32* %471, i64 5
  store i32 %470, i32* %472, align 4
  %473 = load double, double* %8, align 8
  %474 = fneg double %473
  %475 = load double, double* %9, align 8
  %476 = fmul double %474, %475
  %477 = fptosi double %476 to i32
  %478 = load i32*, i32** %4, align 8
  %479 = getelementptr inbounds i32, i32* %478, i64 9
  store i32 %477, i32* %479, align 4
  %480 = load double, double* %7, align 8
  %481 = load double, double* %10, align 8
  %482 = fneg double %481
  %483 = fmul double %480, %482
  %484 = load double, double* %11, align 8
  %485 = fmul double %483, %484
  %486 = load double, double* %8, align 8
  %487 = load double, double* %12, align 8
  %488 = fmul double %486, %487
  %489 = fadd double %485, %488
  %490 = fptosi double %489 to i32
  %491 = load i32*, i32** %4, align 8
  %492 = getelementptr inbounds i32, i32* %491, i64 2
  store i32 %490, i32* %492, align 4
  %493 = load double, double* %7, align 8
  %494 = load double, double* %10, align 8
  %495 = fneg double %494
  %496 = fmul double %493, %495
  %497 = load double, double* %12, align 8
  %498 = fneg double %497
  %499 = fmul double %496, %498
  %500 = load double, double* %8, align 8
  %501 = load double, double* %11, align 8
  %502 = fmul double %500, %501
  %503 = fadd double %499, %502
  %504 = fptosi double %503 to i32
  %505 = load i32*, i32** %4, align 8
  %506 = getelementptr inbounds i32, i32* %505, i64 6
  store i32 %504, i32* %506, align 4
  %507 = load double, double* %7, align 8
  %508 = load double, double* %9, align 8
  %509 = fmul double %507, %508
  %510 = fptosi double %509 to i32
  %511 = load i32*, i32** %4, align 8
  %512 = getelementptr inbounds i32, i32* %511, i64 10
  store i32 %510, i32* %512, align 4
  %513 = load i32*, i32** %4, align 8
  %514 = getelementptr inbounds i32, i32* %513, i64 11
  store i32 0, i32* %514, align 4
  %515 = load i32*, i32** %4, align 8
  %516 = getelementptr inbounds i32, i32* %515, i64 7
  store i32 0, i32* %516, align 4
  %517 = load i32*, i32** %4, align 8
  %518 = getelementptr inbounds i32, i32* %517, i64 3
  store i32 0, i32* %518, align 4
  %519 = load i32*, i32** %4, align 8
  %520 = getelementptr inbounds i32, i32* %519, i64 14
  store i32 0, i32* %520, align 4
  %521 = load i32*, i32** %4, align 8
  %522 = getelementptr inbounds i32, i32* %521, i64 13
  store i32 0, i32* %522, align 4
  %523 = load i32*, i32** %4, align 8
  %524 = getelementptr inbounds i32, i32* %523, i64 12
  store i32 0, i32* %524, align 4
  %525 = load i32*, i32** %4, align 8
  %526 = getelementptr inbounds i32, i32* %525, i64 15
  store i32 1, i32* %526, align 4
  br label %527

527:                                              ; preds = %3, %430, %333, %269, %205, %141, %47
  ret void
}

declare dso_local double @cos(i32) #1

declare dso_local i32 @DEG2RAD(i32) #1

declare dso_local double @sin(i32) #1

declare dso_local i32 @m4x4_identity(i32*) #1

declare dso_local i32 @m4x4_premultiply_by_m4x4(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
