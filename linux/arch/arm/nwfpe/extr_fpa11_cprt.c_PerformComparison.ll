; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_fpa11_cprt.c_PerformComparison.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_fpa11_cprt.c_PerformComparison.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@CC_NEGATIVE = common dso_local global i32 0, align 4
@CC_ZERO = common dso_local global i32 0, align 4
@CC_CARRY = common dso_local global i32 0, align 4
@CC_OVERFLOW = common dso_local global i32 0, align 4
@BIT_AC = common dso_local global i32 0, align 4
@float_flag_invalid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @PerformComparison to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PerformComparison(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
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
  store i32 %0, i32* %3, align 4
  %18 = call %struct.TYPE_15__* (...) @GET_FPA11()
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @getFn(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @getFm(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 4194304
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 2097152
  store i32 %26, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @CONSTANT_FM(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %140

30:                                               ; preds = %1
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 128
  br i1 %38, label %39, label %88

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @getSingleConstant(i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @float32_is_nan(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  br label %324

54:                                               ; preds = %39
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = xor i32 %58, -2147483648
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i64 @float32_lt_nocheck(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @CC_NEGATIVE, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i64 @float32_eq_nocheck(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @CC_ZERO, align 4
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %74, %69
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @float32_lt_nocheck(i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* @CC_CARRY, align 4
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %83, %78
  br label %139

88:                                               ; preds = %30
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @getDoubleConstant(i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i64 @float64_is_nan(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  br label %324

103:                                              ; preds = %88
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = xor i64 %108, -9223372036854775808
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %106, %103
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %12, align 4
  %114 = call i64 @float64_lt_nocheck(i32 %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* @CC_NEGATIVE, align 4
  %118 = load i32, i32* %9, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %116, %111
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call i64 @float64_eq_nocheck(i32 %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i32, i32* @CC_ZERO, align 4
  %127 = load i32, i32* %9, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %125, %120
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i64 @float64_lt_nocheck(i32 %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i32, i32* @CC_CARRY, align 4
  %136 = load i32, i32* %9, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %134, %129
  br label %139

139:                                              ; preds = %138, %87
  br label %321

140:                                              ; preds = %1
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 128
  br i1 %148, label %149, label %217

149:                                              ; preds = %140
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 128
  br i1 %157, label %158, label %217

158:                                              ; preds = %149
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %14, align 4
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %168, align 8
  %170 = load i32, i32* %5, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %15, align 4
  %175 = load i32, i32* %15, align 4
  %176 = call i64 @float32_is_nan(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %158
  %179 = load i32, i32* %14, align 4
  %180 = call i64 @float32_is_nan(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %178, %158
  br label %324

183:                                              ; preds = %178
  %184 = load i32, i32* %8, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i32, i32* %14, align 4
  %188 = xor i32 %187, -2147483648
  store i32 %188, i32* %14, align 4
  br label %189

189:                                              ; preds = %186, %183
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* %14, align 4
  %192 = call i64 @float32_lt_nocheck(i32 %190, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  %195 = load i32, i32* @CC_NEGATIVE, align 4
  %196 = load i32, i32* %9, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %9, align 4
  br label %198

198:                                              ; preds = %194, %189
  %199 = load i32, i32* %15, align 4
  %200 = load i32, i32* %14, align 4
  %201 = call i64 @float32_eq_nocheck(i32 %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load i32, i32* @CC_ZERO, align 4
  %205 = load i32, i32* %9, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %9, align 4
  br label %207

207:                                              ; preds = %203, %198
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* %15, align 4
  %210 = call i64 @float32_lt_nocheck(i32 %208, i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = load i32, i32* @CC_CARRY, align 4
  %214 = load i32, i32* %9, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %9, align 4
  br label %216

216:                                              ; preds = %212, %207
  br label %320

217:                                              ; preds = %149, %140
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %6, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, 128
  br i1 %225, label %226, label %236

226:                                              ; preds = %217
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %228, align 8
  %230 = load i32, i32* %6, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @float32_to_float64(i32 %234)
  br label %245

236:                                              ; preds = %217
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %238, align 8
  %240 = load i32, i32* %6, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  br label %245

245:                                              ; preds = %236, %226
  %246 = phi i32 [ %235, %226 ], [ %244, %236 ]
  store i32 %246, i32* %16, align 4
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %5, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, 128
  br i1 %254, label %255, label %265

255:                                              ; preds = %245
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %257, align 8
  %259 = load i32, i32* %5, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @float32_to_float64(i32 %263)
  br label %274

265:                                              ; preds = %245
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %267, align 8
  %269 = load i32, i32* %5, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  br label %274

274:                                              ; preds = %265, %255
  %275 = phi i32 [ %264, %255 ], [ %273, %265 ]
  store i32 %275, i32* %17, align 4
  %276 = load i32, i32* %17, align 4
  %277 = call i64 @float64_is_nan(i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %283, label %279

279:                                              ; preds = %274
  %280 = load i32, i32* %16, align 4
  %281 = call i64 @float64_is_nan(i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %279, %274
  br label %324

284:                                              ; preds = %279
  %285 = load i32, i32* %8, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %284
  %288 = load i32, i32* %16, align 4
  %289 = sext i32 %288 to i64
  %290 = xor i64 %289, -9223372036854775808
  %291 = trunc i64 %290 to i32
  store i32 %291, i32* %16, align 4
  br label %292

292:                                              ; preds = %287, %284
  %293 = load i32, i32* %17, align 4
  %294 = load i32, i32* %16, align 4
  %295 = call i64 @float64_lt_nocheck(i32 %293, i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %292
  %298 = load i32, i32* @CC_NEGATIVE, align 4
  %299 = load i32, i32* %9, align 4
  %300 = or i32 %299, %298
  store i32 %300, i32* %9, align 4
  br label %301

301:                                              ; preds = %297, %292
  %302 = load i32, i32* %17, align 4
  %303 = load i32, i32* %16, align 4
  %304 = call i64 @float64_eq_nocheck(i32 %302, i32 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %301
  %307 = load i32, i32* @CC_ZERO, align 4
  %308 = load i32, i32* %9, align 4
  %309 = or i32 %308, %307
  store i32 %309, i32* %9, align 4
  br label %310

310:                                              ; preds = %306, %301
  %311 = load i32, i32* %16, align 4
  %312 = load i32, i32* %17, align 4
  %313 = call i64 @float64_lt_nocheck(i32 %311, i32 %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %310
  %316 = load i32, i32* @CC_CARRY, align 4
  %317 = load i32, i32* %9, align 4
  %318 = or i32 %317, %316
  store i32 %318, i32* %9, align 4
  br label %319

319:                                              ; preds = %315, %310
  br label %320

320:                                              ; preds = %319, %216
  br label %321

321:                                              ; preds = %320, %139
  %322 = load i32, i32* %9, align 4
  %323 = call i32 @writeConditionCodes(i32 %322)
  store i32 1, i32* %2, align 4
  br label %351

324:                                              ; preds = %283, %182, %102, %53
  %325 = load i32, i32* @CC_OVERFLOW, align 4
  %326 = load i32, i32* %9, align 4
  %327 = or i32 %326, %325
  store i32 %327, i32* %9, align 4
  %328 = load i32, i32* @CC_ZERO, align 4
  %329 = load i32, i32* @CC_NEGATIVE, align 4
  %330 = or i32 %328, %329
  %331 = xor i32 %330, -1
  %332 = load i32, i32* %9, align 4
  %333 = and i32 %332, %331
  store i32 %333, i32* %9, align 4
  %334 = load i32, i32* @BIT_AC, align 4
  %335 = call i32 (...) @readFPSR()
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %324
  %339 = load i32, i32* @CC_CARRY, align 4
  %340 = load i32, i32* %9, align 4
  %341 = or i32 %340, %339
  store i32 %341, i32* %9, align 4
  br label %342

342:                                              ; preds = %338, %324
  %343 = load i32, i32* %7, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %342
  %346 = load i32, i32* @float_flag_invalid, align 4
  %347 = call i32 @float_raise(i32 %346)
  br label %348

348:                                              ; preds = %345, %342
  %349 = load i32, i32* %9, align 4
  %350 = call i32 @writeConditionCodes(i32 %349)
  store i32 1, i32* %2, align 4
  br label %351

351:                                              ; preds = %348, %321
  %352 = load i32, i32* %2, align 4
  ret i32 %352
}

declare dso_local %struct.TYPE_15__* @GET_FPA11(...) #1

declare dso_local i32 @getFn(i32) #1

declare dso_local i32 @getFm(i32) #1

declare dso_local i64 @CONSTANT_FM(i32) #1

declare dso_local i32 @getSingleConstant(i32) #1

declare dso_local i64 @float32_is_nan(i32) #1

declare dso_local i64 @float32_lt_nocheck(i32, i32) #1

declare dso_local i64 @float32_eq_nocheck(i32, i32) #1

declare dso_local i32 @getDoubleConstant(i32) #1

declare dso_local i64 @float64_is_nan(i32) #1

declare dso_local i64 @float64_lt_nocheck(i32, i32) #1

declare dso_local i64 @float64_eq_nocheck(i32, i32) #1

declare dso_local i32 @float32_to_float64(i32) #1

declare dso_local i32 @writeConditionCodes(i32) #1

declare dso_local i32 @readFPSR(...) #1

declare dso_local i32 @float_raise(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
