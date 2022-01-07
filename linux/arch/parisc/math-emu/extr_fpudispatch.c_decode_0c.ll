; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fpudispatch.c_decode_0c.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fpudispatch.c_decode_0c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COPR_INST = common dso_local global i64 0, align 8
@EMULATION_VERSION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i64 0, align 8
@fpr1pos = common dso_local global i32 0, align 4
@fpzeroreg = common dso_local global i64 0, align 8
@fptpos = common dso_local global i32 0, align 4
@MAJOR_0C_EXCP = common dso_local global i64 0, align 8
@fpfmtpos = common dso_local global i32 0, align 4
@fpdfpos = common dso_local global i32 0, align 4
@FPU_TYPE_FLAG_POS = common dso_local global i64 0, align 8
@fpr2pos = common dso_local global i32 0, align 4
@PA2_0_FPU_FLAG = common dso_local global i64 0, align 8
@fpnulpos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64*)* @decode_0c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decode_0c(i64 %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @COPR_INST, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load i32, i32* @EMULATION_VERSION, align 4
  %24 = shl i32 %23, 11
  %25 = sext i32 %24 to i64
  %26 = load i64*, i64** %9, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* @NOEXCEPTION, align 8
  store i64 %28, i64* %5, align 8
  br label %876

29:                                               ; preds = %4
  %30 = load i64*, i64** %9, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  store i64* %31, i64** %15, align 8
  %32 = load i64*, i64** %9, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %17, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* @fpr1pos, align 4
  %37 = call i32 @extru(i64 %35, i32 %36, i32 5)
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 8
  %40 = udiv i64 %39, 8
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i64, i64* @fpzeroreg, align 8
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %43, %29
  %46 = load i64, i64* %6, align 8
  %47 = load i32, i32* @fptpos, align 4
  %48 = call i32 @extru(i64 %46, i32 %47, i32 5)
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 8
  %51 = udiv i64 %50, 8
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %55, 2
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %58, i64* %5, align 8
  br label %876

59:                                               ; preds = %54, %45
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* @fpfmtpos, align 4
  %62 = call i32 @extru(i64 %60, i32 %61, i32 2)
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %7, align 8
  switch i64 %64, label %874 [
    i64 0, label %65
    i64 1, label %307
    i64 2, label %589
    i64 3, label %713
  ]

65:                                               ; preds = %59
  %66 = load i64, i64* %8, align 8
  switch i64 %66, label %306 [
    i64 0, label %67
    i64 1, label %67
    i64 2, label %69
    i64 3, label %116
    i64 6, label %164
    i64 7, label %212
    i64 4, label %260
    i64 5, label %283
  ]

67:                                               ; preds = %65, %65
  %68 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %68, i64* %5, align 8
  br label %876

69:                                               ; preds = %65
  %70 = load i64, i64* %13, align 8
  switch i64 %70, label %115 [
    i64 2, label %71
    i64 3, label %73
    i64 1, label %96
    i64 0, label %106
  ]

71:                                               ; preds = %69
  %72 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %72, i64* %5, align 8
  br label %876

73:                                               ; preds = %69
  %74 = load i64, i64* %12, align 8
  %75 = and i64 %74, -4
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %10, align 8
  %77 = and i64 %76, -4
  store i64 %77, i64* %10, align 8
  %78 = load i64*, i64** %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = add nsw i64 %79, 3
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %9, align 8
  %84 = load i64, i64* %12, align 8
  %85 = add nsw i64 %84, 3
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  store i64 %82, i64* %86, align 8
  %87 = load i64*, i64** %9, align 8
  %88 = load i64, i64* %10, align 8
  %89 = add nsw i64 %88, 2
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %9, align 8
  %93 = load i64, i64* %12, align 8
  %94 = add nsw i64 %93, 2
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  store i64 %91, i64* %95, align 8
  br label %96

96:                                               ; preds = %69, %73
  %97 = load i64*, i64** %9, align 8
  %98 = load i64, i64* %10, align 8
  %99 = add nsw i64 %98, 1
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64*, i64** %9, align 8
  %103 = load i64, i64* %12, align 8
  %104 = add nsw i64 %103, 1
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  store i64 %101, i64* %105, align 8
  br label %106

106:                                              ; preds = %69, %96
  %107 = load i64*, i64** %9, align 8
  %108 = load i64, i64* %10, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i64*, i64** %9, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  store i64 %110, i64* %113, align 8
  %114 = load i64, i64* @NOEXCEPTION, align 8
  store i64 %114, i64* %5, align 8
  br label %876

115:                                              ; preds = %69
  br label %116

116:                                              ; preds = %65, %115
  %117 = load i64, i64* %13, align 8
  switch i64 %117, label %163 [
    i64 2, label %118
    i64 3, label %120
    i64 1, label %143
    i64 0, label %153
  ]

118:                                              ; preds = %116
  %119 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %119, i64* %5, align 8
  br label %876

120:                                              ; preds = %116
  %121 = load i64, i64* %12, align 8
  %122 = and i64 %121, -4
  store i64 %122, i64* %12, align 8
  %123 = load i64, i64* %10, align 8
  %124 = and i64 %123, -4
  store i64 %124, i64* %10, align 8
  %125 = load i64*, i64** %9, align 8
  %126 = load i64, i64* %10, align 8
  %127 = add nsw i64 %126, 3
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load i64*, i64** %9, align 8
  %131 = load i64, i64* %12, align 8
  %132 = add nsw i64 %131, 3
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  store i64 %129, i64* %133, align 8
  %134 = load i64*, i64** %9, align 8
  %135 = load i64, i64* %10, align 8
  %136 = add nsw i64 %135, 2
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load i64*, i64** %9, align 8
  %140 = load i64, i64* %12, align 8
  %141 = add nsw i64 %140, 2
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  store i64 %138, i64* %142, align 8
  br label %143

143:                                              ; preds = %116, %120
  %144 = load i64*, i64** %9, align 8
  %145 = load i64, i64* %10, align 8
  %146 = add nsw i64 %145, 1
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = load i64*, i64** %9, align 8
  %150 = load i64, i64* %12, align 8
  %151 = add nsw i64 %150, 1
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  store i64 %148, i64* %152, align 8
  br label %153

153:                                              ; preds = %116, %143
  %154 = load i64*, i64** %9, align 8
  %155 = load i64, i64* %10, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = and i64 %157, 2147483647
  %159 = load i64*, i64** %9, align 8
  %160 = load i64, i64* %12, align 8
  %161 = getelementptr inbounds i64, i64* %159, i64 %160
  store i64 %158, i64* %161, align 8
  %162 = load i64, i64* @NOEXCEPTION, align 8
  store i64 %162, i64* %5, align 8
  br label %876

163:                                              ; preds = %116
  br label %164

164:                                              ; preds = %65, %163
  %165 = load i64, i64* %13, align 8
  switch i64 %165, label %211 [
    i64 2, label %166
    i64 3, label %168
    i64 1, label %191
    i64 0, label %201
  ]

166:                                              ; preds = %164
  %167 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %167, i64* %5, align 8
  br label %876

168:                                              ; preds = %164
  %169 = load i64, i64* %12, align 8
  %170 = and i64 %169, -4
  store i64 %170, i64* %12, align 8
  %171 = load i64, i64* %10, align 8
  %172 = and i64 %171, -4
  store i64 %172, i64* %10, align 8
  %173 = load i64*, i64** %9, align 8
  %174 = load i64, i64* %10, align 8
  %175 = add nsw i64 %174, 3
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = load i64*, i64** %9, align 8
  %179 = load i64, i64* %12, align 8
  %180 = add nsw i64 %179, 3
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  store i64 %177, i64* %181, align 8
  %182 = load i64*, i64** %9, align 8
  %183 = load i64, i64* %10, align 8
  %184 = add nsw i64 %183, 2
  %185 = getelementptr inbounds i64, i64* %182, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = load i64*, i64** %9, align 8
  %188 = load i64, i64* %12, align 8
  %189 = add nsw i64 %188, 2
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  store i64 %186, i64* %190, align 8
  br label %191

191:                                              ; preds = %164, %168
  %192 = load i64*, i64** %9, align 8
  %193 = load i64, i64* %10, align 8
  %194 = add nsw i64 %193, 1
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = load i64*, i64** %9, align 8
  %198 = load i64, i64* %12, align 8
  %199 = add nsw i64 %198, 1
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  store i64 %196, i64* %200, align 8
  br label %201

201:                                              ; preds = %164, %191
  %202 = load i64*, i64** %9, align 8
  %203 = load i64, i64* %10, align 8
  %204 = getelementptr inbounds i64, i64* %202, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = xor i64 %205, 2147483648
  %207 = load i64*, i64** %9, align 8
  %208 = load i64, i64* %12, align 8
  %209 = getelementptr inbounds i64, i64* %207, i64 %208
  store i64 %206, i64* %209, align 8
  %210 = load i64, i64* @NOEXCEPTION, align 8
  store i64 %210, i64* %5, align 8
  br label %876

211:                                              ; preds = %164
  br label %212

212:                                              ; preds = %65, %211
  %213 = load i64, i64* %13, align 8
  switch i64 %213, label %259 [
    i64 2, label %214
    i64 3, label %216
    i64 1, label %239
    i64 0, label %249
  ]

214:                                              ; preds = %212
  %215 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %215, i64* %5, align 8
  br label %876

216:                                              ; preds = %212
  %217 = load i64, i64* %12, align 8
  %218 = and i64 %217, -4
  store i64 %218, i64* %12, align 8
  %219 = load i64, i64* %10, align 8
  %220 = and i64 %219, -4
  store i64 %220, i64* %10, align 8
  %221 = load i64*, i64** %9, align 8
  %222 = load i64, i64* %10, align 8
  %223 = add nsw i64 %222, 3
  %224 = getelementptr inbounds i64, i64* %221, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = load i64*, i64** %9, align 8
  %227 = load i64, i64* %12, align 8
  %228 = add nsw i64 %227, 3
  %229 = getelementptr inbounds i64, i64* %226, i64 %228
  store i64 %225, i64* %229, align 8
  %230 = load i64*, i64** %9, align 8
  %231 = load i64, i64* %10, align 8
  %232 = add nsw i64 %231, 2
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = load i64*, i64** %9, align 8
  %236 = load i64, i64* %12, align 8
  %237 = add nsw i64 %236, 2
  %238 = getelementptr inbounds i64, i64* %235, i64 %237
  store i64 %234, i64* %238, align 8
  br label %239

239:                                              ; preds = %212, %216
  %240 = load i64*, i64** %9, align 8
  %241 = load i64, i64* %10, align 8
  %242 = add nsw i64 %241, 1
  %243 = getelementptr inbounds i64, i64* %240, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = load i64*, i64** %9, align 8
  %246 = load i64, i64* %12, align 8
  %247 = add nsw i64 %246, 1
  %248 = getelementptr inbounds i64, i64* %245, i64 %247
  store i64 %244, i64* %248, align 8
  br label %249

249:                                              ; preds = %212, %239
  %250 = load i64*, i64** %9, align 8
  %251 = load i64, i64* %10, align 8
  %252 = getelementptr inbounds i64, i64* %250, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = or i64 %253, 2147483648
  %255 = load i64*, i64** %9, align 8
  %256 = load i64, i64* %12, align 8
  %257 = getelementptr inbounds i64, i64* %255, i64 %256
  store i64 %254, i64* %257, align 8
  %258 = load i64, i64* @NOEXCEPTION, align 8
  store i64 %258, i64* %5, align 8
  br label %876

259:                                              ; preds = %212
  br label %260

260:                                              ; preds = %65, %259
  %261 = load i64, i64* %13, align 8
  switch i64 %261, label %282 [
    i64 0, label %262
    i64 1, label %271
    i64 2, label %280
    i64 3, label %280
  ]

262:                                              ; preds = %260
  %263 = load i64*, i64** %9, align 8
  %264 = load i64, i64* %10, align 8
  %265 = getelementptr inbounds i64, i64* %263, i64 %264
  %266 = load i64*, i64** %9, align 8
  %267 = load i64, i64* %12, align 8
  %268 = getelementptr inbounds i64, i64* %266, i64 %267
  %269 = load i64*, i64** %15, align 8
  %270 = call i64 @sgl_fsqrt(i64* %265, i32 0, i64* %268, i64* %269)
  store i64 %270, i64* %5, align 8
  br label %876

271:                                              ; preds = %260
  %272 = load i64*, i64** %9, align 8
  %273 = load i64, i64* %10, align 8
  %274 = getelementptr inbounds i64, i64* %272, i64 %273
  %275 = load i64*, i64** %9, align 8
  %276 = load i64, i64* %12, align 8
  %277 = getelementptr inbounds i64, i64* %275, i64 %276
  %278 = load i64*, i64** %15, align 8
  %279 = call i64 @dbl_fsqrt(i64* %274, i32 0, i64* %277, i64* %278)
  store i64 %279, i64* %5, align 8
  br label %876

280:                                              ; preds = %260, %260
  %281 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %281, i64* %5, align 8
  br label %876

282:                                              ; preds = %260
  br label %283

283:                                              ; preds = %65, %282
  %284 = load i64, i64* %13, align 8
  switch i64 %284, label %305 [
    i64 0, label %285
    i64 1, label %294
    i64 2, label %303
    i64 3, label %303
  ]

285:                                              ; preds = %283
  %286 = load i64*, i64** %9, align 8
  %287 = load i64, i64* %10, align 8
  %288 = getelementptr inbounds i64, i64* %286, i64 %287
  %289 = load i64*, i64** %9, align 8
  %290 = load i64, i64* %12, align 8
  %291 = getelementptr inbounds i64, i64* %289, i64 %290
  %292 = load i64*, i64** %15, align 8
  %293 = call i64 @sgl_frnd(i64* %288, i32 0, i64* %291, i64* %292)
  store i64 %293, i64* %5, align 8
  br label %876

294:                                              ; preds = %283
  %295 = load i64*, i64** %9, align 8
  %296 = load i64, i64* %10, align 8
  %297 = getelementptr inbounds i64, i64* %295, i64 %296
  %298 = load i64*, i64** %9, align 8
  %299 = load i64, i64* %12, align 8
  %300 = getelementptr inbounds i64, i64* %298, i64 %299
  %301 = load i64*, i64** %15, align 8
  %302 = call i64 @dbl_frnd(i64* %297, i32 0, i64* %300, i64* %301)
  store i64 %302, i64* %5, align 8
  br label %876

303:                                              ; preds = %283, %283
  %304 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %304, i64* %5, align 8
  br label %876

305:                                              ; preds = %283
  br label %306

306:                                              ; preds = %305, %65
  br label %307

307:                                              ; preds = %59, %306
  %308 = load i64, i64* %6, align 8
  %309 = load i32, i32* @fpdfpos, align 4
  %310 = call i32 @extru(i64 %308, i32 %309, i32 2)
  %311 = sext i32 %310 to i64
  store i64 %311, i64* %14, align 8
  %312 = load i64, i64* %14, align 8
  %313 = and i64 %312, 2
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %319, label %315

315:                                              ; preds = %307
  %316 = load i64, i64* %13, align 8
  %317 = and i64 %316, 2
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %315, %307
  %320 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %320, i64* %5, align 8
  br label %876

321:                                              ; preds = %315
  %322 = load i64, i64* %13, align 8
  %323 = shl i64 %322, 1
  %324 = load i64, i64* %14, align 8
  %325 = or i64 %323, %324
  store i64 %325, i64* %13, align 8
  %326 = load i64, i64* %8, align 8
  switch i64 %326, label %588 [
    i64 0, label %327
    i64 1, label %352
    i64 2, label %391
    i64 3, label %430
    i64 5, label %469
    i64 6, label %508
    i64 7, label %547
    i64 4, label %586
  ]

327:                                              ; preds = %321
  %328 = load i64, i64* %13, align 8
  switch i64 %328, label %351 [
    i64 0, label %329
    i64 1, label %331
    i64 2, label %340
    i64 3, label %349
  ]

329:                                              ; preds = %327
  %330 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %330, i64* %5, align 8
  br label %876

331:                                              ; preds = %327
  %332 = load i64*, i64** %9, align 8
  %333 = load i64, i64* %10, align 8
  %334 = getelementptr inbounds i64, i64* %332, i64 %333
  %335 = load i64*, i64** %9, align 8
  %336 = load i64, i64* %12, align 8
  %337 = getelementptr inbounds i64, i64* %335, i64 %336
  %338 = load i64*, i64** %15, align 8
  %339 = call i64 @sgl_to_dbl_fcnvff(i64* %334, i32 0, i64* %337, i64* %338)
  store i64 %339, i64* %5, align 8
  br label %876

340:                                              ; preds = %327
  %341 = load i64*, i64** %9, align 8
  %342 = load i64, i64* %10, align 8
  %343 = getelementptr inbounds i64, i64* %341, i64 %342
  %344 = load i64*, i64** %9, align 8
  %345 = load i64, i64* %12, align 8
  %346 = getelementptr inbounds i64, i64* %344, i64 %345
  %347 = load i64*, i64** %15, align 8
  %348 = call i64 @dbl_to_sgl_fcnvff(i64* %343, i32 0, i64* %346, i64* %347)
  store i64 %348, i64* %5, align 8
  br label %876

349:                                              ; preds = %327
  %350 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %350, i64* %5, align 8
  br label %876

351:                                              ; preds = %327
  br label %352

352:                                              ; preds = %321, %351
  %353 = load i64, i64* %13, align 8
  switch i64 %353, label %390 [
    i64 0, label %354
    i64 1, label %363
    i64 2, label %372
    i64 3, label %381
  ]

354:                                              ; preds = %352
  %355 = load i64*, i64** %9, align 8
  %356 = load i64, i64* %10, align 8
  %357 = getelementptr inbounds i64, i64* %355, i64 %356
  %358 = load i64*, i64** %9, align 8
  %359 = load i64, i64* %12, align 8
  %360 = getelementptr inbounds i64, i64* %358, i64 %359
  %361 = load i64*, i64** %15, align 8
  %362 = call i64 @sgl_to_sgl_fcnvxf(i64* %357, i32 0, i64* %360, i64* %361)
  store i64 %362, i64* %5, align 8
  br label %876

363:                                              ; preds = %352
  %364 = load i64*, i64** %9, align 8
  %365 = load i64, i64* %10, align 8
  %366 = getelementptr inbounds i64, i64* %364, i64 %365
  %367 = load i64*, i64** %9, align 8
  %368 = load i64, i64* %12, align 8
  %369 = getelementptr inbounds i64, i64* %367, i64 %368
  %370 = load i64*, i64** %15, align 8
  %371 = call i64 @sgl_to_dbl_fcnvxf(i64* %366, i32 0, i64* %369, i64* %370)
  store i64 %371, i64* %5, align 8
  br label %876

372:                                              ; preds = %352
  %373 = load i64*, i64** %9, align 8
  %374 = load i64, i64* %10, align 8
  %375 = getelementptr inbounds i64, i64* %373, i64 %374
  %376 = load i64*, i64** %9, align 8
  %377 = load i64, i64* %12, align 8
  %378 = getelementptr inbounds i64, i64* %376, i64 %377
  %379 = load i64*, i64** %15, align 8
  %380 = call i64 @dbl_to_sgl_fcnvxf(i64* %375, i32 0, i64* %378, i64* %379)
  store i64 %380, i64* %5, align 8
  br label %876

381:                                              ; preds = %352
  %382 = load i64*, i64** %9, align 8
  %383 = load i64, i64* %10, align 8
  %384 = getelementptr inbounds i64, i64* %382, i64 %383
  %385 = load i64*, i64** %9, align 8
  %386 = load i64, i64* %12, align 8
  %387 = getelementptr inbounds i64, i64* %385, i64 %386
  %388 = load i64*, i64** %15, align 8
  %389 = call i64 @dbl_to_dbl_fcnvxf(i64* %384, i32 0, i64* %387, i64* %388)
  store i64 %389, i64* %5, align 8
  br label %876

390:                                              ; preds = %352
  br label %391

391:                                              ; preds = %321, %390
  %392 = load i64, i64* %13, align 8
  switch i64 %392, label %429 [
    i64 0, label %393
    i64 1, label %402
    i64 2, label %411
    i64 3, label %420
  ]

393:                                              ; preds = %391
  %394 = load i64*, i64** %9, align 8
  %395 = load i64, i64* %10, align 8
  %396 = getelementptr inbounds i64, i64* %394, i64 %395
  %397 = load i64*, i64** %9, align 8
  %398 = load i64, i64* %12, align 8
  %399 = getelementptr inbounds i64, i64* %397, i64 %398
  %400 = load i64*, i64** %15, align 8
  %401 = call i64 @sgl_to_sgl_fcnvfx(i64* %396, i32 0, i64* %399, i64* %400)
  store i64 %401, i64* %5, align 8
  br label %876

402:                                              ; preds = %391
  %403 = load i64*, i64** %9, align 8
  %404 = load i64, i64* %10, align 8
  %405 = getelementptr inbounds i64, i64* %403, i64 %404
  %406 = load i64*, i64** %9, align 8
  %407 = load i64, i64* %12, align 8
  %408 = getelementptr inbounds i64, i64* %406, i64 %407
  %409 = load i64*, i64** %15, align 8
  %410 = call i64 @sgl_to_dbl_fcnvfx(i64* %405, i32 0, i64* %408, i64* %409)
  store i64 %410, i64* %5, align 8
  br label %876

411:                                              ; preds = %391
  %412 = load i64*, i64** %9, align 8
  %413 = load i64, i64* %10, align 8
  %414 = getelementptr inbounds i64, i64* %412, i64 %413
  %415 = load i64*, i64** %9, align 8
  %416 = load i64, i64* %12, align 8
  %417 = getelementptr inbounds i64, i64* %415, i64 %416
  %418 = load i64*, i64** %15, align 8
  %419 = call i64 @dbl_to_sgl_fcnvfx(i64* %414, i32 0, i64* %417, i64* %418)
  store i64 %419, i64* %5, align 8
  br label %876

420:                                              ; preds = %391
  %421 = load i64*, i64** %9, align 8
  %422 = load i64, i64* %10, align 8
  %423 = getelementptr inbounds i64, i64* %421, i64 %422
  %424 = load i64*, i64** %9, align 8
  %425 = load i64, i64* %12, align 8
  %426 = getelementptr inbounds i64, i64* %424, i64 %425
  %427 = load i64*, i64** %15, align 8
  %428 = call i64 @dbl_to_dbl_fcnvfx(i64* %423, i32 0, i64* %426, i64* %427)
  store i64 %428, i64* %5, align 8
  br label %876

429:                                              ; preds = %391
  br label %430

430:                                              ; preds = %321, %429
  %431 = load i64, i64* %13, align 8
  switch i64 %431, label %468 [
    i64 0, label %432
    i64 1, label %441
    i64 2, label %450
    i64 3, label %459
  ]

432:                                              ; preds = %430
  %433 = load i64*, i64** %9, align 8
  %434 = load i64, i64* %10, align 8
  %435 = getelementptr inbounds i64, i64* %433, i64 %434
  %436 = load i64*, i64** %9, align 8
  %437 = load i64, i64* %12, align 8
  %438 = getelementptr inbounds i64, i64* %436, i64 %437
  %439 = load i64*, i64** %15, align 8
  %440 = call i64 @sgl_to_sgl_fcnvfxt(i64* %435, i32 0, i64* %438, i64* %439)
  store i64 %440, i64* %5, align 8
  br label %876

441:                                              ; preds = %430
  %442 = load i64*, i64** %9, align 8
  %443 = load i64, i64* %10, align 8
  %444 = getelementptr inbounds i64, i64* %442, i64 %443
  %445 = load i64*, i64** %9, align 8
  %446 = load i64, i64* %12, align 8
  %447 = getelementptr inbounds i64, i64* %445, i64 %446
  %448 = load i64*, i64** %15, align 8
  %449 = call i64 @sgl_to_dbl_fcnvfxt(i64* %444, i32 0, i64* %447, i64* %448)
  store i64 %449, i64* %5, align 8
  br label %876

450:                                              ; preds = %430
  %451 = load i64*, i64** %9, align 8
  %452 = load i64, i64* %10, align 8
  %453 = getelementptr inbounds i64, i64* %451, i64 %452
  %454 = load i64*, i64** %9, align 8
  %455 = load i64, i64* %12, align 8
  %456 = getelementptr inbounds i64, i64* %454, i64 %455
  %457 = load i64*, i64** %15, align 8
  %458 = call i64 @dbl_to_sgl_fcnvfxt(i64* %453, i32 0, i64* %456, i64* %457)
  store i64 %458, i64* %5, align 8
  br label %876

459:                                              ; preds = %430
  %460 = load i64*, i64** %9, align 8
  %461 = load i64, i64* %10, align 8
  %462 = getelementptr inbounds i64, i64* %460, i64 %461
  %463 = load i64*, i64** %9, align 8
  %464 = load i64, i64* %12, align 8
  %465 = getelementptr inbounds i64, i64* %463, i64 %464
  %466 = load i64*, i64** %15, align 8
  %467 = call i64 @dbl_to_dbl_fcnvfxt(i64* %462, i32 0, i64* %465, i64* %466)
  store i64 %467, i64* %5, align 8
  br label %876

468:                                              ; preds = %430
  br label %469

469:                                              ; preds = %321, %468
  %470 = load i64, i64* %13, align 8
  switch i64 %470, label %507 [
    i64 0, label %471
    i64 1, label %480
    i64 2, label %489
    i64 3, label %498
  ]

471:                                              ; preds = %469
  %472 = load i64*, i64** %9, align 8
  %473 = load i64, i64* %10, align 8
  %474 = getelementptr inbounds i64, i64* %472, i64 %473
  %475 = load i64*, i64** %9, align 8
  %476 = load i64, i64* %12, align 8
  %477 = getelementptr inbounds i64, i64* %475, i64 %476
  %478 = load i64*, i64** %15, align 8
  %479 = call i64 @sgl_to_sgl_fcnvuf(i64* %474, i32 0, i64* %477, i64* %478)
  store i64 %479, i64* %5, align 8
  br label %876

480:                                              ; preds = %469
  %481 = load i64*, i64** %9, align 8
  %482 = load i64, i64* %10, align 8
  %483 = getelementptr inbounds i64, i64* %481, i64 %482
  %484 = load i64*, i64** %9, align 8
  %485 = load i64, i64* %12, align 8
  %486 = getelementptr inbounds i64, i64* %484, i64 %485
  %487 = load i64*, i64** %15, align 8
  %488 = call i64 @sgl_to_dbl_fcnvuf(i64* %483, i32 0, i64* %486, i64* %487)
  store i64 %488, i64* %5, align 8
  br label %876

489:                                              ; preds = %469
  %490 = load i64*, i64** %9, align 8
  %491 = load i64, i64* %10, align 8
  %492 = getelementptr inbounds i64, i64* %490, i64 %491
  %493 = load i64*, i64** %9, align 8
  %494 = load i64, i64* %12, align 8
  %495 = getelementptr inbounds i64, i64* %493, i64 %494
  %496 = load i64*, i64** %15, align 8
  %497 = call i64 @dbl_to_sgl_fcnvuf(i64* %492, i32 0, i64* %495, i64* %496)
  store i64 %497, i64* %5, align 8
  br label %876

498:                                              ; preds = %469
  %499 = load i64*, i64** %9, align 8
  %500 = load i64, i64* %10, align 8
  %501 = getelementptr inbounds i64, i64* %499, i64 %500
  %502 = load i64*, i64** %9, align 8
  %503 = load i64, i64* %12, align 8
  %504 = getelementptr inbounds i64, i64* %502, i64 %503
  %505 = load i64*, i64** %15, align 8
  %506 = call i64 @dbl_to_dbl_fcnvuf(i64* %501, i32 0, i64* %504, i64* %505)
  store i64 %506, i64* %5, align 8
  br label %876

507:                                              ; preds = %469
  br label %508

508:                                              ; preds = %321, %507
  %509 = load i64, i64* %13, align 8
  switch i64 %509, label %546 [
    i64 0, label %510
    i64 1, label %519
    i64 2, label %528
    i64 3, label %537
  ]

510:                                              ; preds = %508
  %511 = load i64*, i64** %9, align 8
  %512 = load i64, i64* %10, align 8
  %513 = getelementptr inbounds i64, i64* %511, i64 %512
  %514 = load i64*, i64** %9, align 8
  %515 = load i64, i64* %12, align 8
  %516 = getelementptr inbounds i64, i64* %514, i64 %515
  %517 = load i64*, i64** %15, align 8
  %518 = call i64 @sgl_to_sgl_fcnvfu(i64* %513, i32 0, i64* %516, i64* %517)
  store i64 %518, i64* %5, align 8
  br label %876

519:                                              ; preds = %508
  %520 = load i64*, i64** %9, align 8
  %521 = load i64, i64* %10, align 8
  %522 = getelementptr inbounds i64, i64* %520, i64 %521
  %523 = load i64*, i64** %9, align 8
  %524 = load i64, i64* %12, align 8
  %525 = getelementptr inbounds i64, i64* %523, i64 %524
  %526 = load i64*, i64** %15, align 8
  %527 = call i64 @sgl_to_dbl_fcnvfu(i64* %522, i32 0, i64* %525, i64* %526)
  store i64 %527, i64* %5, align 8
  br label %876

528:                                              ; preds = %508
  %529 = load i64*, i64** %9, align 8
  %530 = load i64, i64* %10, align 8
  %531 = getelementptr inbounds i64, i64* %529, i64 %530
  %532 = load i64*, i64** %9, align 8
  %533 = load i64, i64* %12, align 8
  %534 = getelementptr inbounds i64, i64* %532, i64 %533
  %535 = load i64*, i64** %15, align 8
  %536 = call i64 @dbl_to_sgl_fcnvfu(i64* %531, i32 0, i64* %534, i64* %535)
  store i64 %536, i64* %5, align 8
  br label %876

537:                                              ; preds = %508
  %538 = load i64*, i64** %9, align 8
  %539 = load i64, i64* %10, align 8
  %540 = getelementptr inbounds i64, i64* %538, i64 %539
  %541 = load i64*, i64** %9, align 8
  %542 = load i64, i64* %12, align 8
  %543 = getelementptr inbounds i64, i64* %541, i64 %542
  %544 = load i64*, i64** %15, align 8
  %545 = call i64 @dbl_to_dbl_fcnvfu(i64* %540, i32 0, i64* %543, i64* %544)
  store i64 %545, i64* %5, align 8
  br label %876

546:                                              ; preds = %508
  br label %547

547:                                              ; preds = %321, %546
  %548 = load i64, i64* %13, align 8
  switch i64 %548, label %585 [
    i64 0, label %549
    i64 1, label %558
    i64 2, label %567
    i64 3, label %576
  ]

549:                                              ; preds = %547
  %550 = load i64*, i64** %9, align 8
  %551 = load i64, i64* %10, align 8
  %552 = getelementptr inbounds i64, i64* %550, i64 %551
  %553 = load i64*, i64** %9, align 8
  %554 = load i64, i64* %12, align 8
  %555 = getelementptr inbounds i64, i64* %553, i64 %554
  %556 = load i64*, i64** %15, align 8
  %557 = call i64 @sgl_to_sgl_fcnvfut(i64* %552, i32 0, i64* %555, i64* %556)
  store i64 %557, i64* %5, align 8
  br label %876

558:                                              ; preds = %547
  %559 = load i64*, i64** %9, align 8
  %560 = load i64, i64* %10, align 8
  %561 = getelementptr inbounds i64, i64* %559, i64 %560
  %562 = load i64*, i64** %9, align 8
  %563 = load i64, i64* %12, align 8
  %564 = getelementptr inbounds i64, i64* %562, i64 %563
  %565 = load i64*, i64** %15, align 8
  %566 = call i64 @sgl_to_dbl_fcnvfut(i64* %561, i32 0, i64* %564, i64* %565)
  store i64 %566, i64* %5, align 8
  br label %876

567:                                              ; preds = %547
  %568 = load i64*, i64** %9, align 8
  %569 = load i64, i64* %10, align 8
  %570 = getelementptr inbounds i64, i64* %568, i64 %569
  %571 = load i64*, i64** %9, align 8
  %572 = load i64, i64* %12, align 8
  %573 = getelementptr inbounds i64, i64* %571, i64 %572
  %574 = load i64*, i64** %15, align 8
  %575 = call i64 @dbl_to_sgl_fcnvfut(i64* %570, i32 0, i64* %573, i64* %574)
  store i64 %575, i64* %5, align 8
  br label %876

576:                                              ; preds = %547
  %577 = load i64*, i64** %9, align 8
  %578 = load i64, i64* %10, align 8
  %579 = getelementptr inbounds i64, i64* %577, i64 %578
  %580 = load i64*, i64** %9, align 8
  %581 = load i64, i64* %12, align 8
  %582 = getelementptr inbounds i64, i64* %580, i64 %581
  %583 = load i64*, i64** %15, align 8
  %584 = call i64 @dbl_to_dbl_fcnvfut(i64* %579, i32 0, i64* %582, i64* %583)
  store i64 %584, i64* %5, align 8
  br label %876

585:                                              ; preds = %547
  br label %586

586:                                              ; preds = %321, %585
  %587 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %587, i64* %5, align 8
  br label %876

588:                                              ; preds = %321
  br label %589

589:                                              ; preds = %59, %588
  %590 = load i64*, i64** %9, align 8
  %591 = load i64, i64* @FPU_TYPE_FLAG_POS, align 8
  %592 = getelementptr inbounds i64, i64* %590, i64 %591
  %593 = load i64, i64* %592, align 8
  store i64 %593, i64* %18, align 8
  %594 = load i64, i64* %6, align 8
  %595 = load i32, i32* @fpr2pos, align 4
  %596 = call i32 @extru(i64 %594, i32 %595, i32 5)
  %597 = sext i32 %596 to i64
  %598 = mul i64 %597, 8
  %599 = udiv i64 %598, 8
  store i64 %599, i64* %11, align 8
  %600 = load i64, i64* %11, align 8
  %601 = icmp eq i64 %600, 0
  br i1 %601, label %602, label %604

602:                                              ; preds = %589
  %603 = load i64, i64* @fpzeroreg, align 8
  store i64 %603, i64* %11, align 8
  br label %604

604:                                              ; preds = %602, %589
  %605 = load i64, i64* %18, align 8
  %606 = load i64, i64* @PA2_0_FPU_FLAG, align 8
  %607 = and i64 %605, %606
  %608 = icmp ne i64 %607, 0
  br i1 %608, label %609, label %661

609:                                              ; preds = %604
  %610 = load i64, i64* %6, align 8
  %611 = load i32, i32* @fpnulpos, align 4
  %612 = call i32 @extru(i64 %610, i32 %611, i32 1)
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %614, label %621

614:                                              ; preds = %609
  %615 = load i64, i64* %13, align 8
  switch i64 %615, label %620 [
    i64 0, label %616
    i64 1, label %618
    i64 2, label %618
    i64 3, label %618
  ]

616:                                              ; preds = %614
  %617 = call i32 (...) @BUG()
  br label %618

618:                                              ; preds = %614, %614, %614, %616
  %619 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %619, i64* %5, align 8
  br label %876

620:                                              ; preds = %614
  br label %660

621:                                              ; preds = %609
  %622 = load i64, i64* %13, align 8
  switch i64 %622, label %659 [
    i64 0, label %623
    i64 1, label %640
    i64 2, label %657
    i64 3, label %657
  ]

623:                                              ; preds = %621
  %624 = load i64*, i64** %9, align 8
  %625 = load i64, i64* %10, align 8
  %626 = getelementptr inbounds i64, i64* %624, i64 %625
  %627 = load i64*, i64** %9, align 8
  %628 = load i64, i64* %11, align 8
  %629 = getelementptr inbounds i64, i64* %627, i64 %628
  %630 = load i64, i64* %6, align 8
  %631 = load i32, i32* @fptpos, align 4
  %632 = call i32 @extru(i64 %630, i32 %631, i32 5)
  %633 = call i64 @sgl_fcmp(i64* %626, i64* %629, i32 %632, i64* %17)
  store i64 %633, i64* %16, align 8
  %634 = load i64*, i64** %15, align 8
  %635 = load i64, i64* %17, align 8
  %636 = load i64, i64* %18, align 8
  %637 = load i64, i64* %8, align 8
  %638 = call i32 @update_status_cbit(i64* %634, i64 %635, i64 %636, i64 %637)
  %639 = load i64, i64* %16, align 8
  store i64 %639, i64* %5, align 8
  br label %876

640:                                              ; preds = %621
  %641 = load i64*, i64** %9, align 8
  %642 = load i64, i64* %10, align 8
  %643 = getelementptr inbounds i64, i64* %641, i64 %642
  %644 = load i64*, i64** %9, align 8
  %645 = load i64, i64* %11, align 8
  %646 = getelementptr inbounds i64, i64* %644, i64 %645
  %647 = load i64, i64* %6, align 8
  %648 = load i32, i32* @fptpos, align 4
  %649 = call i32 @extru(i64 %647, i32 %648, i32 5)
  %650 = call i64 @dbl_fcmp(i64* %643, i64* %646, i32 %649, i64* %17)
  store i64 %650, i64* %16, align 8
  %651 = load i64*, i64** %15, align 8
  %652 = load i64, i64* %17, align 8
  %653 = load i64, i64* %18, align 8
  %654 = load i64, i64* %8, align 8
  %655 = call i32 @update_status_cbit(i64* %651, i64 %652, i64 %653, i64 %654)
  %656 = load i64, i64* %16, align 8
  store i64 %656, i64* %5, align 8
  br label %876

657:                                              ; preds = %621, %621
  %658 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %658, i64* %5, align 8
  br label %876

659:                                              ; preds = %621
  br label %660

660:                                              ; preds = %659, %620
  br label %712

661:                                              ; preds = %604
  %662 = load i64, i64* %8, align 8
  switch i64 %662, label %711 [
    i64 2, label %663
    i64 3, label %663
    i64 4, label %663
    i64 5, label %663
    i64 6, label %663
    i64 7, label %663
    i64 0, label %665
    i64 1, label %704
  ]

663:                                              ; preds = %661, %661, %661, %661, %661, %661
  %664 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %664, i64* %5, align 8
  br label %876

665:                                              ; preds = %661
  %666 = load i64, i64* %13, align 8
  switch i64 %666, label %703 [
    i64 0, label %667
    i64 1, label %684
    i64 2, label %701
    i64 3, label %701
  ]

667:                                              ; preds = %665
  %668 = load i64*, i64** %9, align 8
  %669 = load i64, i64* %10, align 8
  %670 = getelementptr inbounds i64, i64* %668, i64 %669
  %671 = load i64*, i64** %9, align 8
  %672 = load i64, i64* %11, align 8
  %673 = getelementptr inbounds i64, i64* %671, i64 %672
  %674 = load i64, i64* %6, align 8
  %675 = load i32, i32* @fptpos, align 4
  %676 = call i32 @extru(i64 %674, i32 %675, i32 5)
  %677 = call i64 @sgl_fcmp(i64* %670, i64* %673, i32 %676, i64* %17)
  store i64 %677, i64* %16, align 8
  %678 = load i64*, i64** %15, align 8
  %679 = load i64, i64* %17, align 8
  %680 = load i64, i64* %18, align 8
  %681 = load i64, i64* %8, align 8
  %682 = call i32 @update_status_cbit(i64* %678, i64 %679, i64 %680, i64 %681)
  %683 = load i64, i64* %16, align 8
  store i64 %683, i64* %5, align 8
  br label %876

684:                                              ; preds = %665
  %685 = load i64*, i64** %9, align 8
  %686 = load i64, i64* %10, align 8
  %687 = getelementptr inbounds i64, i64* %685, i64 %686
  %688 = load i64*, i64** %9, align 8
  %689 = load i64, i64* %11, align 8
  %690 = getelementptr inbounds i64, i64* %688, i64 %689
  %691 = load i64, i64* %6, align 8
  %692 = load i32, i32* @fptpos, align 4
  %693 = call i32 @extru(i64 %691, i32 %692, i32 5)
  %694 = call i64 @dbl_fcmp(i64* %687, i64* %690, i32 %693, i64* %17)
  store i64 %694, i64* %16, align 8
  %695 = load i64*, i64** %15, align 8
  %696 = load i64, i64* %17, align 8
  %697 = load i64, i64* %18, align 8
  %698 = load i64, i64* %8, align 8
  %699 = call i32 @update_status_cbit(i64* %695, i64 %696, i64 %697, i64 %698)
  %700 = load i64, i64* %16, align 8
  store i64 %700, i64* %5, align 8
  br label %876

701:                                              ; preds = %665, %665
  %702 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %702, i64* %5, align 8
  br label %876

703:                                              ; preds = %665
  br label %704

704:                                              ; preds = %661, %703
  %705 = load i64, i64* %13, align 8
  switch i64 %705, label %710 [
    i64 0, label %706
    i64 1, label %708
    i64 2, label %708
    i64 3, label %708
  ]

706:                                              ; preds = %704
  %707 = call i32 (...) @BUG()
  br label %708

708:                                              ; preds = %704, %704, %704, %706
  %709 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %709, i64* %5, align 8
  br label %876

710:                                              ; preds = %704
  br label %711

711:                                              ; preds = %710, %661
  br label %712

712:                                              ; preds = %711, %660
  br label %713

713:                                              ; preds = %59, %712
  %714 = load i64, i64* %6, align 8
  %715 = load i32, i32* @fpr2pos, align 4
  %716 = call i32 @extru(i64 %714, i32 %715, i32 5)
  %717 = sext i32 %716 to i64
  %718 = mul i64 %717, 8
  %719 = udiv i64 %718, 8
  store i64 %719, i64* %11, align 8
  %720 = load i64, i64* %11, align 8
  %721 = icmp eq i64 %720, 0
  br i1 %721, label %722, label %724

722:                                              ; preds = %713
  %723 = load i64, i64* @fpzeroreg, align 8
  store i64 %723, i64* %11, align 8
  br label %724

724:                                              ; preds = %722, %713
  %725 = load i64, i64* %8, align 8
  switch i64 %725, label %873 [
    i64 5, label %726
    i64 6, label %726
    i64 7, label %726
    i64 0, label %728
    i64 1, label %757
    i64 2, label %786
    i64 3, label %815
    i64 4, label %844
  ]

726:                                              ; preds = %724, %724, %724
  %727 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %727, i64* %5, align 8
  br label %876

728:                                              ; preds = %724
  %729 = load i64, i64* %13, align 8
  switch i64 %729, label %756 [
    i64 0, label %730
    i64 1, label %742
    i64 2, label %754
    i64 3, label %754
  ]

730:                                              ; preds = %728
  %731 = load i64*, i64** %9, align 8
  %732 = load i64, i64* %10, align 8
  %733 = getelementptr inbounds i64, i64* %731, i64 %732
  %734 = load i64*, i64** %9, align 8
  %735 = load i64, i64* %11, align 8
  %736 = getelementptr inbounds i64, i64* %734, i64 %735
  %737 = load i64*, i64** %9, align 8
  %738 = load i64, i64* %12, align 8
  %739 = getelementptr inbounds i64, i64* %737, i64 %738
  %740 = load i64*, i64** %15, align 8
  %741 = call i64 @sgl_fadd(i64* %733, i64* %736, i64* %739, i64* %740)
  store i64 %741, i64* %5, align 8
  br label %876

742:                                              ; preds = %728
  %743 = load i64*, i64** %9, align 8
  %744 = load i64, i64* %10, align 8
  %745 = getelementptr inbounds i64, i64* %743, i64 %744
  %746 = load i64*, i64** %9, align 8
  %747 = load i64, i64* %11, align 8
  %748 = getelementptr inbounds i64, i64* %746, i64 %747
  %749 = load i64*, i64** %9, align 8
  %750 = load i64, i64* %12, align 8
  %751 = getelementptr inbounds i64, i64* %749, i64 %750
  %752 = load i64*, i64** %15, align 8
  %753 = call i64 @dbl_fadd(i64* %745, i64* %748, i64* %751, i64* %752)
  store i64 %753, i64* %5, align 8
  br label %876

754:                                              ; preds = %728, %728
  %755 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %755, i64* %5, align 8
  br label %876

756:                                              ; preds = %728
  br label %757

757:                                              ; preds = %724, %756
  %758 = load i64, i64* %13, align 8
  switch i64 %758, label %785 [
    i64 0, label %759
    i64 1, label %771
    i64 2, label %783
    i64 3, label %783
  ]

759:                                              ; preds = %757
  %760 = load i64*, i64** %9, align 8
  %761 = load i64, i64* %10, align 8
  %762 = getelementptr inbounds i64, i64* %760, i64 %761
  %763 = load i64*, i64** %9, align 8
  %764 = load i64, i64* %11, align 8
  %765 = getelementptr inbounds i64, i64* %763, i64 %764
  %766 = load i64*, i64** %9, align 8
  %767 = load i64, i64* %12, align 8
  %768 = getelementptr inbounds i64, i64* %766, i64 %767
  %769 = load i64*, i64** %15, align 8
  %770 = call i64 @sgl_fsub(i64* %762, i64* %765, i64* %768, i64* %769)
  store i64 %770, i64* %5, align 8
  br label %876

771:                                              ; preds = %757
  %772 = load i64*, i64** %9, align 8
  %773 = load i64, i64* %10, align 8
  %774 = getelementptr inbounds i64, i64* %772, i64 %773
  %775 = load i64*, i64** %9, align 8
  %776 = load i64, i64* %11, align 8
  %777 = getelementptr inbounds i64, i64* %775, i64 %776
  %778 = load i64*, i64** %9, align 8
  %779 = load i64, i64* %12, align 8
  %780 = getelementptr inbounds i64, i64* %778, i64 %779
  %781 = load i64*, i64** %15, align 8
  %782 = call i64 @dbl_fsub(i64* %774, i64* %777, i64* %780, i64* %781)
  store i64 %782, i64* %5, align 8
  br label %876

783:                                              ; preds = %757, %757
  %784 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %784, i64* %5, align 8
  br label %876

785:                                              ; preds = %757
  br label %786

786:                                              ; preds = %724, %785
  %787 = load i64, i64* %13, align 8
  switch i64 %787, label %814 [
    i64 0, label %788
    i64 1, label %800
    i64 2, label %812
    i64 3, label %812
  ]

788:                                              ; preds = %786
  %789 = load i64*, i64** %9, align 8
  %790 = load i64, i64* %10, align 8
  %791 = getelementptr inbounds i64, i64* %789, i64 %790
  %792 = load i64*, i64** %9, align 8
  %793 = load i64, i64* %11, align 8
  %794 = getelementptr inbounds i64, i64* %792, i64 %793
  %795 = load i64*, i64** %9, align 8
  %796 = load i64, i64* %12, align 8
  %797 = getelementptr inbounds i64, i64* %795, i64 %796
  %798 = load i64*, i64** %15, align 8
  %799 = call i64 @sgl_fmpy(i64* %791, i64* %794, i64* %797, i64* %798)
  store i64 %799, i64* %5, align 8
  br label %876

800:                                              ; preds = %786
  %801 = load i64*, i64** %9, align 8
  %802 = load i64, i64* %10, align 8
  %803 = getelementptr inbounds i64, i64* %801, i64 %802
  %804 = load i64*, i64** %9, align 8
  %805 = load i64, i64* %11, align 8
  %806 = getelementptr inbounds i64, i64* %804, i64 %805
  %807 = load i64*, i64** %9, align 8
  %808 = load i64, i64* %12, align 8
  %809 = getelementptr inbounds i64, i64* %807, i64 %808
  %810 = load i64*, i64** %15, align 8
  %811 = call i64 @dbl_fmpy(i64* %803, i64* %806, i64* %809, i64* %810)
  store i64 %811, i64* %5, align 8
  br label %876

812:                                              ; preds = %786, %786
  %813 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %813, i64* %5, align 8
  br label %876

814:                                              ; preds = %786
  br label %815

815:                                              ; preds = %724, %814
  %816 = load i64, i64* %13, align 8
  switch i64 %816, label %843 [
    i64 0, label %817
    i64 1, label %829
    i64 2, label %841
    i64 3, label %841
  ]

817:                                              ; preds = %815
  %818 = load i64*, i64** %9, align 8
  %819 = load i64, i64* %10, align 8
  %820 = getelementptr inbounds i64, i64* %818, i64 %819
  %821 = load i64*, i64** %9, align 8
  %822 = load i64, i64* %11, align 8
  %823 = getelementptr inbounds i64, i64* %821, i64 %822
  %824 = load i64*, i64** %9, align 8
  %825 = load i64, i64* %12, align 8
  %826 = getelementptr inbounds i64, i64* %824, i64 %825
  %827 = load i64*, i64** %15, align 8
  %828 = call i64 @sgl_fdiv(i64* %820, i64* %823, i64* %826, i64* %827)
  store i64 %828, i64* %5, align 8
  br label %876

829:                                              ; preds = %815
  %830 = load i64*, i64** %9, align 8
  %831 = load i64, i64* %10, align 8
  %832 = getelementptr inbounds i64, i64* %830, i64 %831
  %833 = load i64*, i64** %9, align 8
  %834 = load i64, i64* %11, align 8
  %835 = getelementptr inbounds i64, i64* %833, i64 %834
  %836 = load i64*, i64** %9, align 8
  %837 = load i64, i64* %12, align 8
  %838 = getelementptr inbounds i64, i64* %836, i64 %837
  %839 = load i64*, i64** %15, align 8
  %840 = call i64 @dbl_fdiv(i64* %832, i64* %835, i64* %838, i64* %839)
  store i64 %840, i64* %5, align 8
  br label %876

841:                                              ; preds = %815, %815
  %842 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %842, i64* %5, align 8
  br label %876

843:                                              ; preds = %815
  br label %844

844:                                              ; preds = %724, %843
  %845 = load i64, i64* %13, align 8
  switch i64 %845, label %872 [
    i64 0, label %846
    i64 1, label %858
    i64 2, label %870
    i64 3, label %870
  ]

846:                                              ; preds = %844
  %847 = load i64*, i64** %9, align 8
  %848 = load i64, i64* %10, align 8
  %849 = getelementptr inbounds i64, i64* %847, i64 %848
  %850 = load i64*, i64** %9, align 8
  %851 = load i64, i64* %11, align 8
  %852 = getelementptr inbounds i64, i64* %850, i64 %851
  %853 = load i64*, i64** %9, align 8
  %854 = load i64, i64* %12, align 8
  %855 = getelementptr inbounds i64, i64* %853, i64 %854
  %856 = load i64*, i64** %15, align 8
  %857 = call i64 @sgl_frem(i64* %849, i64* %852, i64* %855, i64* %856)
  store i64 %857, i64* %5, align 8
  br label %876

858:                                              ; preds = %844
  %859 = load i64*, i64** %9, align 8
  %860 = load i64, i64* %10, align 8
  %861 = getelementptr inbounds i64, i64* %859, i64 %860
  %862 = load i64*, i64** %9, align 8
  %863 = load i64, i64* %11, align 8
  %864 = getelementptr inbounds i64, i64* %862, i64 %863
  %865 = load i64*, i64** %9, align 8
  %866 = load i64, i64* %12, align 8
  %867 = getelementptr inbounds i64, i64* %865, i64 %866
  %868 = load i64*, i64** %15, align 8
  %869 = call i64 @dbl_frem(i64* %861, i64* %864, i64* %867, i64* %868)
  store i64 %869, i64* %5, align 8
  br label %876

870:                                              ; preds = %844, %844
  %871 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %871, i64* %5, align 8
  br label %876

872:                                              ; preds = %844
  br label %873

873:                                              ; preds = %872, %724
  br label %874

874:                                              ; preds = %873, %59
  %875 = load i64, i64* @MAJOR_0C_EXCP, align 8
  store i64 %875, i64* %5, align 8
  br label %876

876:                                              ; preds = %874, %870, %858, %846, %841, %829, %817, %812, %800, %788, %783, %771, %759, %754, %742, %730, %726, %708, %701, %684, %667, %663, %657, %640, %623, %618, %586, %576, %567, %558, %549, %537, %528, %519, %510, %498, %489, %480, %471, %459, %450, %441, %432, %420, %411, %402, %393, %381, %372, %363, %354, %349, %340, %331, %329, %319, %303, %294, %285, %280, %271, %262, %249, %214, %201, %166, %153, %118, %106, %71, %67, %57, %22
  %877 = load i64, i64* %5, align 8
  ret i64 %877
}

declare dso_local i32 @extru(i64, i32, i32) #1

declare dso_local i64 @sgl_fsqrt(i64*, i32, i64*, i64*) #1

declare dso_local i64 @dbl_fsqrt(i64*, i32, i64*, i64*) #1

declare dso_local i64 @sgl_frnd(i64*, i32, i64*, i64*) #1

declare dso_local i64 @dbl_frnd(i64*, i32, i64*, i64*) #1

declare dso_local i64 @sgl_to_dbl_fcnvff(i64*, i32, i64*, i64*) #1

declare dso_local i64 @dbl_to_sgl_fcnvff(i64*, i32, i64*, i64*) #1

declare dso_local i64 @sgl_to_sgl_fcnvxf(i64*, i32, i64*, i64*) #1

declare dso_local i64 @sgl_to_dbl_fcnvxf(i64*, i32, i64*, i64*) #1

declare dso_local i64 @dbl_to_sgl_fcnvxf(i64*, i32, i64*, i64*) #1

declare dso_local i64 @dbl_to_dbl_fcnvxf(i64*, i32, i64*, i64*) #1

declare dso_local i64 @sgl_to_sgl_fcnvfx(i64*, i32, i64*, i64*) #1

declare dso_local i64 @sgl_to_dbl_fcnvfx(i64*, i32, i64*, i64*) #1

declare dso_local i64 @dbl_to_sgl_fcnvfx(i64*, i32, i64*, i64*) #1

declare dso_local i64 @dbl_to_dbl_fcnvfx(i64*, i32, i64*, i64*) #1

declare dso_local i64 @sgl_to_sgl_fcnvfxt(i64*, i32, i64*, i64*) #1

declare dso_local i64 @sgl_to_dbl_fcnvfxt(i64*, i32, i64*, i64*) #1

declare dso_local i64 @dbl_to_sgl_fcnvfxt(i64*, i32, i64*, i64*) #1

declare dso_local i64 @dbl_to_dbl_fcnvfxt(i64*, i32, i64*, i64*) #1

declare dso_local i64 @sgl_to_sgl_fcnvuf(i64*, i32, i64*, i64*) #1

declare dso_local i64 @sgl_to_dbl_fcnvuf(i64*, i32, i64*, i64*) #1

declare dso_local i64 @dbl_to_sgl_fcnvuf(i64*, i32, i64*, i64*) #1

declare dso_local i64 @dbl_to_dbl_fcnvuf(i64*, i32, i64*, i64*) #1

declare dso_local i64 @sgl_to_sgl_fcnvfu(i64*, i32, i64*, i64*) #1

declare dso_local i64 @sgl_to_dbl_fcnvfu(i64*, i32, i64*, i64*) #1

declare dso_local i64 @dbl_to_sgl_fcnvfu(i64*, i32, i64*, i64*) #1

declare dso_local i64 @dbl_to_dbl_fcnvfu(i64*, i32, i64*, i64*) #1

declare dso_local i64 @sgl_to_sgl_fcnvfut(i64*, i32, i64*, i64*) #1

declare dso_local i64 @sgl_to_dbl_fcnvfut(i64*, i32, i64*, i64*) #1

declare dso_local i64 @dbl_to_sgl_fcnvfut(i64*, i32, i64*, i64*) #1

declare dso_local i64 @dbl_to_dbl_fcnvfut(i64*, i32, i64*, i64*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @sgl_fcmp(i64*, i64*, i32, i64*) #1

declare dso_local i32 @update_status_cbit(i64*, i64, i64, i64) #1

declare dso_local i64 @dbl_fcmp(i64*, i64*, i32, i64*) #1

declare dso_local i64 @sgl_fadd(i64*, i64*, i64*, i64*) #1

declare dso_local i64 @dbl_fadd(i64*, i64*, i64*, i64*) #1

declare dso_local i64 @sgl_fsub(i64*, i64*, i64*, i64*) #1

declare dso_local i64 @dbl_fsub(i64*, i64*, i64*, i64*) #1

declare dso_local i64 @sgl_fmpy(i64*, i64*, i64*, i64*) #1

declare dso_local i64 @dbl_fmpy(i64*, i64*, i64*, i64*) #1

declare dso_local i64 @sgl_fdiv(i64*, i64*, i64*, i64*) #1

declare dso_local i64 @dbl_fdiv(i64*, i64*, i64*, i64*) #1

declare dso_local i64 @sgl_frem(i64*, i64*, i64*, i64*) #1

declare dso_local i64 @dbl_frem(i64*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
