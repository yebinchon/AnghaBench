; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-internal-properties.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-internal-properties.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"non_hidden_prop\00", align 1
@JERRY_FEATURE_SYMBOL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"non_hidden_string_prop\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"hidden_foo\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"hidden_prop\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"hidden_string_prop\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
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
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %65 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %66 = call i32 @jerry_init(i32 %65)
  %67 = call i32 (...) @jerry_create_object()
  store i32 %67, i32* %2, align 4
  %68 = call i32 @jerry_create_string(i32* bitcast ([4 x i8]* @.str to i32*))
  store i32 %68, i32* %3, align 4
  %69 = call i32 @jerry_create_string(i32* bitcast ([16 x i8]* @.str.1 to i32*))
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* @JERRY_FEATURE_SYMBOL, align 4
  %71 = call i64 @jerry_is_feature_enabled(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %0
  %74 = call i32 @jerry_create_string(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @jerry_create_symbol(i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @jerry_release_value(i32 %77)
  br label %81

79:                                               ; preds = %0
  %80 = call i32 @jerry_create_string(i32* bitcast ([23 x i8]* @.str.3 to i32*))
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %73
  %82 = call i32 @jerry_create_string(i32* bitcast ([11 x i8]* @.str.4 to i32*))
  store i32 %82, i32* %7, align 4
  %83 = call i32 @jerry_create_string(i32* bitcast ([12 x i8]* @.str.5 to i32*))
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* @JERRY_FEATURE_SYMBOL, align 4
  %85 = call i64 @jerry_is_feature_enabled(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = call i32 @jerry_create_string(i32* bitcast ([4 x i8]* @.str.2 to i32*))
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @jerry_create_symbol(i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @jerry_release_value(i32 %91)
  br label %95

93:                                               ; preds = %81
  %94 = call i32 @jerry_create_string(i32* bitcast ([19 x i8]* @.str.6 to i32*))
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %93, %87
  %96 = call i32 @jerry_create_number(double 5.500000e+00)
  store i32 %96, i32* %11, align 4
  %97 = call i32 @jerry_create_number(double 6.500000e+00)
  store i32 %97, i32* %12, align 4
  %98 = call i32 @jerry_create_number(double 7.500000e+00)
  store i32 %98, i32* %13, align 4
  %99 = call i32 @jerry_create_number(double 8.500000e+00)
  store i32 %99, i32* %14, align 4
  %100 = call i32 @jerry_create_number(double 9.500000e+00)
  store i32 %100, i32* %15, align 4
  %101 = call i32 @jerry_create_number(double 1.050000e+01)
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @jerry_set_property(i32 %102, i32 %103, i32 %104)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @jerry_set_property(i32 %106, i32 %107, i32 %108)
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %2, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @jerry_set_property(i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %19, align 4
  %114 = load i32, i32* %17, align 4
  %115 = call i32 @TEST_ASSERT(i32 %114)
  %116 = load i32, i32* %18, align 4
  %117 = call i32 @TEST_ASSERT(i32 %116)
  %118 = load i32, i32* %19, align 4
  %119 = call i32 @TEST_ASSERT(i32 %118)
  %120 = load i32, i32* %2, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @jerry_set_internal_property(i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %20, align 4
  %124 = load i32, i32* %2, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @jerry_set_internal_property(i32 %124, i32 %125, i32 %126)
  store i32 %127, i32* %21, align 4
  %128 = load i32, i32* %2, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %16, align 4
  %131 = call i32 @jerry_set_internal_property(i32 %128, i32 %129, i32 %130)
  store i32 %131, i32* %22, align 4
  %132 = load i32, i32* %20, align 4
  %133 = call i32 @TEST_ASSERT(i32 %132)
  %134 = load i32, i32* %21, align 4
  %135 = call i32 @TEST_ASSERT(i32 %134)
  %136 = load i32, i32* %22, align 4
  %137 = call i32 @TEST_ASSERT(i32 %136)
  %138 = load i32, i32* %2, align 4
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @jerry_has_property(i32 %138, i32 %139)
  store i32 %140, i32* %23, align 4
  %141 = load i32, i32* %2, align 4
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @jerry_has_property(i32 %141, i32 %142)
  store i32 %143, i32* %24, align 4
  %144 = load i32, i32* %2, align 4
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @jerry_has_property(i32 %144, i32 %145)
  store i32 %146, i32* %25, align 4
  %147 = load i32, i32* %2, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @jerry_has_property(i32 %147, i32 %148)
  store i32 %149, i32* %26, align 4
  %150 = load i32, i32* %2, align 4
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @jerry_has_property(i32 %150, i32 %151)
  store i32 %152, i32* %27, align 4
  %153 = load i32, i32* %2, align 4
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @jerry_has_property(i32 %153, i32 %154)
  store i32 %155, i32* %28, align 4
  %156 = load i32, i32* %23, align 4
  %157 = call i64 @jerry_value_is_boolean(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %95
  %160 = load i32, i32* %23, align 4
  %161 = call i64 @jerry_get_boolean_value(i32 %160)
  %162 = icmp ne i64 %161, 0
  br label %163

163:                                              ; preds = %159, %95
  %164 = phi i1 [ false, %95 ], [ %162, %159 ]
  %165 = zext i1 %164 to i32
  %166 = call i32 @TEST_ASSERT(i32 %165)
  %167 = load i32, i32* %24, align 4
  %168 = call i64 @jerry_value_is_boolean(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %163
  %171 = load i32, i32* %24, align 4
  %172 = call i64 @jerry_get_boolean_value(i32 %171)
  %173 = icmp ne i64 %172, 0
  br label %174

174:                                              ; preds = %170, %163
  %175 = phi i1 [ false, %163 ], [ %173, %170 ]
  %176 = zext i1 %175 to i32
  %177 = call i32 @TEST_ASSERT(i32 %176)
  %178 = load i32, i32* %25, align 4
  %179 = call i64 @jerry_value_is_boolean(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %174
  %182 = load i32, i32* %25, align 4
  %183 = call i64 @jerry_get_boolean_value(i32 %182)
  %184 = icmp ne i64 %183, 0
  br label %185

185:                                              ; preds = %181, %174
  %186 = phi i1 [ false, %174 ], [ %184, %181 ]
  %187 = zext i1 %186 to i32
  %188 = call i32 @TEST_ASSERT(i32 %187)
  %189 = load i32, i32* %26, align 4
  %190 = call i64 @jerry_value_is_boolean(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %185
  %193 = load i32, i32* %26, align 4
  %194 = call i64 @jerry_get_boolean_value(i32 %193)
  %195 = icmp ne i64 %194, 0
  %196 = xor i1 %195, true
  br label %197

197:                                              ; preds = %192, %185
  %198 = phi i1 [ false, %185 ], [ %196, %192 ]
  %199 = zext i1 %198 to i32
  %200 = call i32 @TEST_ASSERT(i32 %199)
  %201 = load i32, i32* %27, align 4
  %202 = call i64 @jerry_value_is_boolean(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %197
  %205 = load i32, i32* %27, align 4
  %206 = call i64 @jerry_get_boolean_value(i32 %205)
  %207 = icmp ne i64 %206, 0
  %208 = xor i1 %207, true
  br label %209

209:                                              ; preds = %204, %197
  %210 = phi i1 [ false, %197 ], [ %208, %204 ]
  %211 = zext i1 %210 to i32
  %212 = call i32 @TEST_ASSERT(i32 %211)
  %213 = load i32, i32* %28, align 4
  %214 = call i64 @jerry_value_is_boolean(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %209
  %217 = load i32, i32* %28, align 4
  %218 = call i64 @jerry_get_boolean_value(i32 %217)
  %219 = icmp ne i64 %218, 0
  %220 = xor i1 %219, true
  br label %221

221:                                              ; preds = %216, %209
  %222 = phi i1 [ false, %209 ], [ %220, %216 ]
  %223 = zext i1 %222 to i32
  %224 = call i32 @TEST_ASSERT(i32 %223)
  %225 = load i32, i32* %23, align 4
  %226 = call i32 @jerry_release_value(i32 %225)
  %227 = load i32, i32* %24, align 4
  %228 = call i32 @jerry_release_value(i32 %227)
  %229 = load i32, i32* %25, align 4
  %230 = call i32 @jerry_release_value(i32 %229)
  %231 = load i32, i32* %26, align 4
  %232 = call i32 @jerry_release_value(i32 %231)
  %233 = load i32, i32* %27, align 4
  %234 = call i32 @jerry_release_value(i32 %233)
  %235 = load i32, i32* %28, align 4
  %236 = call i32 @jerry_release_value(i32 %235)
  %237 = load i32, i32* %2, align 4
  %238 = load i32, i32* %3, align 4
  %239 = call i32 @jerry_has_internal_property(i32 %237, i32 %238)
  store i32 %239, i32* %29, align 4
  %240 = load i32, i32* %2, align 4
  %241 = load i32, i32* %4, align 4
  %242 = call i32 @jerry_has_internal_property(i32 %240, i32 %241)
  store i32 %242, i32* %30, align 4
  %243 = load i32, i32* %2, align 4
  %244 = load i32, i32* %5, align 4
  %245 = call i32 @jerry_has_internal_property(i32 %243, i32 %244)
  store i32 %245, i32* %31, align 4
  %246 = load i32, i32* %2, align 4
  %247 = load i32, i32* %7, align 4
  %248 = call i32 @jerry_has_internal_property(i32 %246, i32 %247)
  store i32 %248, i32* %32, align 4
  %249 = load i32, i32* %2, align 4
  %250 = load i32, i32* %8, align 4
  %251 = call i32 @jerry_has_internal_property(i32 %249, i32 %250)
  store i32 %251, i32* %33, align 4
  %252 = load i32, i32* %2, align 4
  %253 = load i32, i32* %9, align 4
  %254 = call i32 @jerry_has_internal_property(i32 %252, i32 %253)
  store i32 %254, i32* %34, align 4
  %255 = load i32, i32* %29, align 4
  %256 = icmp ne i32 %255, 0
  %257 = xor i1 %256, true
  %258 = zext i1 %257 to i32
  %259 = call i32 @TEST_ASSERT(i32 %258)
  %260 = load i32, i32* %30, align 4
  %261 = icmp ne i32 %260, 0
  %262 = xor i1 %261, true
  %263 = zext i1 %262 to i32
  %264 = call i32 @TEST_ASSERT(i32 %263)
  %265 = load i32, i32* %31, align 4
  %266 = icmp ne i32 %265, 0
  %267 = xor i1 %266, true
  %268 = zext i1 %267 to i32
  %269 = call i32 @TEST_ASSERT(i32 %268)
  %270 = load i32, i32* %32, align 4
  %271 = call i32 @TEST_ASSERT(i32 %270)
  %272 = load i32, i32* %33, align 4
  %273 = call i32 @TEST_ASSERT(i32 %272)
  %274 = load i32, i32* %34, align 4
  %275 = call i32 @TEST_ASSERT(i32 %274)
  %276 = load i32, i32* %2, align 4
  %277 = load i32, i32* %3, align 4
  %278 = call i32 @jerry_get_property(i32 %276, i32 %277)
  store i32 %278, i32* %35, align 4
  %279 = load i32, i32* %2, align 4
  %280 = load i32, i32* %4, align 4
  %281 = call i32 @jerry_get_property(i32 %279, i32 %280)
  store i32 %281, i32* %36, align 4
  %282 = load i32, i32* %2, align 4
  %283 = load i32, i32* %5, align 4
  %284 = call i32 @jerry_get_property(i32 %282, i32 %283)
  store i32 %284, i32* %37, align 4
  %285 = load i32, i32* %2, align 4
  %286 = load i32, i32* %7, align 4
  %287 = call i32 @jerry_get_property(i32 %285, i32 %286)
  store i32 %287, i32* %38, align 4
  %288 = load i32, i32* %2, align 4
  %289 = load i32, i32* %8, align 4
  %290 = call i32 @jerry_get_property(i32 %288, i32 %289)
  store i32 %290, i32* %39, align 4
  %291 = load i32, i32* %2, align 4
  %292 = load i32, i32* %9, align 4
  %293 = call i32 @jerry_get_property(i32 %291, i32 %292)
  store i32 %293, i32* %40, align 4
  %294 = load i32, i32* %35, align 4
  %295 = call i64 @jerry_value_is_number(i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %221
  %298 = load i32, i32* %35, align 4
  %299 = call double @jerry_get_number_value(i32 %298)
  %300 = fcmp oeq double %299, 5.500000e+00
  br label %301

301:                                              ; preds = %297, %221
  %302 = phi i1 [ false, %221 ], [ %300, %297 ]
  %303 = zext i1 %302 to i32
  %304 = call i32 @TEST_ASSERT(i32 %303)
  %305 = load i32, i32* %36, align 4
  %306 = call i64 @jerry_value_is_number(i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %301
  %309 = load i32, i32* %36, align 4
  %310 = call double @jerry_get_number_value(i32 %309)
  %311 = fcmp oeq double %310, 6.500000e+00
  br label %312

312:                                              ; preds = %308, %301
  %313 = phi i1 [ false, %301 ], [ %311, %308 ]
  %314 = zext i1 %313 to i32
  %315 = call i32 @TEST_ASSERT(i32 %314)
  %316 = load i32, i32* %37, align 4
  %317 = call i64 @jerry_value_is_number(i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %312
  %320 = load i32, i32* %37, align 4
  %321 = call double @jerry_get_number_value(i32 %320)
  %322 = fcmp oeq double %321, 7.500000e+00
  br label %323

323:                                              ; preds = %319, %312
  %324 = phi i1 [ false, %312 ], [ %322, %319 ]
  %325 = zext i1 %324 to i32
  %326 = call i32 @TEST_ASSERT(i32 %325)
  %327 = load i32, i32* %38, align 4
  %328 = call i32 @jerry_value_is_undefined(i32 %327)
  %329 = call i32 @TEST_ASSERT(i32 %328)
  %330 = load i32, i32* %39, align 4
  %331 = call i32 @jerry_value_is_undefined(i32 %330)
  %332 = call i32 @TEST_ASSERT(i32 %331)
  %333 = load i32, i32* %40, align 4
  %334 = call i32 @jerry_value_is_undefined(i32 %333)
  %335 = call i32 @TEST_ASSERT(i32 %334)
  %336 = load i32, i32* %35, align 4
  %337 = call i32 @jerry_release_value(i32 %336)
  %338 = load i32, i32* %36, align 4
  %339 = call i32 @jerry_release_value(i32 %338)
  %340 = load i32, i32* %37, align 4
  %341 = call i32 @jerry_release_value(i32 %340)
  %342 = load i32, i32* %38, align 4
  %343 = call i32 @jerry_release_value(i32 %342)
  %344 = load i32, i32* %39, align 4
  %345 = call i32 @jerry_release_value(i32 %344)
  %346 = load i32, i32* %40, align 4
  %347 = call i32 @jerry_release_value(i32 %346)
  %348 = load i32, i32* %2, align 4
  %349 = load i32, i32* %3, align 4
  %350 = call i32 @jerry_get_internal_property(i32 %348, i32 %349)
  store i32 %350, i32* %41, align 4
  %351 = load i32, i32* %2, align 4
  %352 = load i32, i32* %4, align 4
  %353 = call i32 @jerry_get_internal_property(i32 %351, i32 %352)
  store i32 %353, i32* %42, align 4
  %354 = load i32, i32* %2, align 4
  %355 = load i32, i32* %5, align 4
  %356 = call i32 @jerry_get_internal_property(i32 %354, i32 %355)
  store i32 %356, i32* %43, align 4
  %357 = load i32, i32* %2, align 4
  %358 = load i32, i32* %7, align 4
  %359 = call i32 @jerry_get_internal_property(i32 %357, i32 %358)
  store i32 %359, i32* %44, align 4
  %360 = load i32, i32* %2, align 4
  %361 = load i32, i32* %8, align 4
  %362 = call i32 @jerry_get_internal_property(i32 %360, i32 %361)
  store i32 %362, i32* %45, align 4
  %363 = load i32, i32* %2, align 4
  %364 = load i32, i32* %9, align 4
  %365 = call i32 @jerry_get_internal_property(i32 %363, i32 %364)
  store i32 %365, i32* %46, align 4
  %366 = load i32, i32* %41, align 4
  %367 = call i32 @jerry_value_is_undefined(i32 %366)
  %368 = call i32 @TEST_ASSERT(i32 %367)
  %369 = load i32, i32* %42, align 4
  %370 = call i32 @jerry_value_is_undefined(i32 %369)
  %371 = call i32 @TEST_ASSERT(i32 %370)
  %372 = load i32, i32* %43, align 4
  %373 = call i32 @jerry_value_is_undefined(i32 %372)
  %374 = call i32 @TEST_ASSERT(i32 %373)
  %375 = load i32, i32* %44, align 4
  %376 = call i64 @jerry_value_is_number(i32 %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %323
  %379 = load i32, i32* %44, align 4
  %380 = call double @jerry_get_number_value(i32 %379)
  %381 = fcmp oeq double %380, 8.500000e+00
  br label %382

382:                                              ; preds = %378, %323
  %383 = phi i1 [ false, %323 ], [ %381, %378 ]
  %384 = zext i1 %383 to i32
  %385 = call i32 @TEST_ASSERT(i32 %384)
  %386 = load i32, i32* %45, align 4
  %387 = call i64 @jerry_value_is_number(i32 %386)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %393

389:                                              ; preds = %382
  %390 = load i32, i32* %45, align 4
  %391 = call double @jerry_get_number_value(i32 %390)
  %392 = fcmp oeq double %391, 9.500000e+00
  br label %393

393:                                              ; preds = %389, %382
  %394 = phi i1 [ false, %382 ], [ %392, %389 ]
  %395 = zext i1 %394 to i32
  %396 = call i32 @TEST_ASSERT(i32 %395)
  %397 = load i32, i32* %46, align 4
  %398 = call i64 @jerry_value_is_number(i32 %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %404

400:                                              ; preds = %393
  %401 = load i32, i32* %46, align 4
  %402 = call double @jerry_get_number_value(i32 %401)
  %403 = fcmp oeq double %402, 1.050000e+01
  br label %404

404:                                              ; preds = %400, %393
  %405 = phi i1 [ false, %393 ], [ %403, %400 ]
  %406 = zext i1 %405 to i32
  %407 = call i32 @TEST_ASSERT(i32 %406)
  %408 = load i32, i32* %41, align 4
  %409 = call i32 @jerry_release_value(i32 %408)
  %410 = load i32, i32* %42, align 4
  %411 = call i32 @jerry_release_value(i32 %410)
  %412 = load i32, i32* %43, align 4
  %413 = call i32 @jerry_release_value(i32 %412)
  %414 = load i32, i32* %44, align 4
  %415 = call i32 @jerry_release_value(i32 %414)
  %416 = load i32, i32* %45, align 4
  %417 = call i32 @jerry_release_value(i32 %416)
  %418 = load i32, i32* %46, align 4
  %419 = call i32 @jerry_release_value(i32 %418)
  %420 = load i32, i32* %2, align 4
  %421 = load i32, i32* %3, align 4
  %422 = call i32 @jerry_delete_property(i32 %420, i32 %421)
  store i32 %422, i32* %47, align 4
  %423 = load i32, i32* %2, align 4
  %424 = load i32, i32* %4, align 4
  %425 = call i32 @jerry_delete_property(i32 %423, i32 %424)
  store i32 %425, i32* %48, align 4
  %426 = load i32, i32* %2, align 4
  %427 = load i32, i32* %5, align 4
  %428 = call i32 @jerry_delete_property(i32 %426, i32 %427)
  store i32 %428, i32* %49, align 4
  %429 = load i32, i32* %2, align 4
  %430 = load i32, i32* %7, align 4
  %431 = call i32 @jerry_delete_property(i32 %429, i32 %430)
  store i32 %431, i32* %50, align 4
  %432 = load i32, i32* %2, align 4
  %433 = load i32, i32* %8, align 4
  %434 = call i32 @jerry_delete_property(i32 %432, i32 %433)
  store i32 %434, i32* %51, align 4
  %435 = load i32, i32* %2, align 4
  %436 = load i32, i32* %9, align 4
  %437 = call i32 @jerry_delete_property(i32 %435, i32 %436)
  store i32 %437, i32* %52, align 4
  %438 = load i32, i32* %47, align 4
  %439 = call i32 @TEST_ASSERT(i32 %438)
  %440 = load i32, i32* %48, align 4
  %441 = call i32 @TEST_ASSERT(i32 %440)
  %442 = load i32, i32* %49, align 4
  %443 = call i32 @TEST_ASSERT(i32 %442)
  %444 = load i32, i32* %50, align 4
  %445 = call i32 @TEST_ASSERT(i32 %444)
  %446 = load i32, i32* %51, align 4
  %447 = call i32 @TEST_ASSERT(i32 %446)
  %448 = load i32, i32* %52, align 4
  %449 = call i32 @TEST_ASSERT(i32 %448)
  %450 = load i32, i32* %2, align 4
  %451 = load i32, i32* %3, align 4
  %452 = call i32 @jerry_has_property(i32 %450, i32 %451)
  store i32 %452, i32* %53, align 4
  %453 = load i32, i32* %2, align 4
  %454 = load i32, i32* %4, align 4
  %455 = call i32 @jerry_has_property(i32 %453, i32 %454)
  store i32 %455, i32* %54, align 4
  %456 = load i32, i32* %2, align 4
  %457 = load i32, i32* %5, align 4
  %458 = call i32 @jerry_has_property(i32 %456, i32 %457)
  store i32 %458, i32* %55, align 4
  %459 = load i32, i32* %2, align 4
  %460 = load i32, i32* %7, align 4
  %461 = call i32 @jerry_has_internal_property(i32 %459, i32 %460)
  store i32 %461, i32* %56, align 4
  %462 = load i32, i32* %2, align 4
  %463 = load i32, i32* %8, align 4
  %464 = call i32 @jerry_has_internal_property(i32 %462, i32 %463)
  store i32 %464, i32* %57, align 4
  %465 = load i32, i32* %2, align 4
  %466 = load i32, i32* %9, align 4
  %467 = call i32 @jerry_has_internal_property(i32 %465, i32 %466)
  store i32 %467, i32* %58, align 4
  %468 = load i32, i32* %53, align 4
  %469 = call i64 @jerry_value_is_boolean(i32 %468)
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %476

471:                                              ; preds = %404
  %472 = load i32, i32* %53, align 4
  %473 = call i64 @jerry_get_boolean_value(i32 %472)
  %474 = icmp ne i64 %473, 0
  %475 = xor i1 %474, true
  br label %476

476:                                              ; preds = %471, %404
  %477 = phi i1 [ false, %404 ], [ %475, %471 ]
  %478 = zext i1 %477 to i32
  %479 = call i32 @TEST_ASSERT(i32 %478)
  %480 = load i32, i32* %54, align 4
  %481 = call i64 @jerry_value_is_boolean(i32 %480)
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %488

483:                                              ; preds = %476
  %484 = load i32, i32* %54, align 4
  %485 = call i64 @jerry_get_boolean_value(i32 %484)
  %486 = icmp ne i64 %485, 0
  %487 = xor i1 %486, true
  br label %488

488:                                              ; preds = %483, %476
  %489 = phi i1 [ false, %476 ], [ %487, %483 ]
  %490 = zext i1 %489 to i32
  %491 = call i32 @TEST_ASSERT(i32 %490)
  %492 = load i32, i32* %55, align 4
  %493 = call i64 @jerry_value_is_boolean(i32 %492)
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %500

495:                                              ; preds = %488
  %496 = load i32, i32* %55, align 4
  %497 = call i64 @jerry_get_boolean_value(i32 %496)
  %498 = icmp ne i64 %497, 0
  %499 = xor i1 %498, true
  br label %500

500:                                              ; preds = %495, %488
  %501 = phi i1 [ false, %488 ], [ %499, %495 ]
  %502 = zext i1 %501 to i32
  %503 = call i32 @TEST_ASSERT(i32 %502)
  %504 = load i32, i32* %56, align 4
  %505 = call i32 @TEST_ASSERT(i32 %504)
  %506 = load i32, i32* %57, align 4
  %507 = call i32 @TEST_ASSERT(i32 %506)
  %508 = load i32, i32* %58, align 4
  %509 = call i32 @TEST_ASSERT(i32 %508)
  %510 = load i32, i32* %53, align 4
  %511 = call i32 @jerry_release_value(i32 %510)
  %512 = load i32, i32* %54, align 4
  %513 = call i32 @jerry_release_value(i32 %512)
  %514 = load i32, i32* %55, align 4
  %515 = call i32 @jerry_release_value(i32 %514)
  %516 = load i32, i32* %2, align 4
  %517 = load i32, i32* %7, align 4
  %518 = call i32 @jerry_delete_internal_property(i32 %516, i32 %517)
  store i32 %518, i32* %59, align 4
  %519 = load i32, i32* %2, align 4
  %520 = load i32, i32* %8, align 4
  %521 = call i32 @jerry_delete_internal_property(i32 %519, i32 %520)
  store i32 %521, i32* %60, align 4
  %522 = load i32, i32* %2, align 4
  %523 = load i32, i32* %9, align 4
  %524 = call i32 @jerry_delete_internal_property(i32 %522, i32 %523)
  store i32 %524, i32* %61, align 4
  %525 = load i32, i32* %59, align 4
  %526 = call i32 @TEST_ASSERT(i32 %525)
  %527 = load i32, i32* %60, align 4
  %528 = call i32 @TEST_ASSERT(i32 %527)
  %529 = load i32, i32* %61, align 4
  %530 = call i32 @TEST_ASSERT(i32 %529)
  %531 = load i32, i32* %2, align 4
  %532 = load i32, i32* %7, align 4
  %533 = call i32 @jerry_has_internal_property(i32 %531, i32 %532)
  store i32 %533, i32* %62, align 4
  %534 = load i32, i32* %2, align 4
  %535 = load i32, i32* %8, align 4
  %536 = call i32 @jerry_has_internal_property(i32 %534, i32 %535)
  store i32 %536, i32* %63, align 4
  %537 = load i32, i32* %2, align 4
  %538 = load i32, i32* %9, align 4
  %539 = call i32 @jerry_has_internal_property(i32 %537, i32 %538)
  store i32 %539, i32* %64, align 4
  %540 = load i32, i32* %62, align 4
  %541 = icmp ne i32 %540, 0
  %542 = xor i1 %541, true
  %543 = zext i1 %542 to i32
  %544 = call i32 @TEST_ASSERT(i32 %543)
  %545 = load i32, i32* %63, align 4
  %546 = icmp ne i32 %545, 0
  %547 = xor i1 %546, true
  %548 = zext i1 %547 to i32
  %549 = call i32 @TEST_ASSERT(i32 %548)
  %550 = load i32, i32* %64, align 4
  %551 = icmp ne i32 %550, 0
  %552 = xor i1 %551, true
  %553 = zext i1 %552 to i32
  %554 = call i32 @TEST_ASSERT(i32 %553)
  %555 = load i32, i32* %13, align 4
  %556 = call i32 @jerry_release_value(i32 %555)
  %557 = load i32, i32* %12, align 4
  %558 = call i32 @jerry_release_value(i32 %557)
  %559 = load i32, i32* %11, align 4
  %560 = call i32 @jerry_release_value(i32 %559)
  %561 = load i32, i32* %5, align 4
  %562 = call i32 @jerry_release_value(i32 %561)
  %563 = load i32, i32* %4, align 4
  %564 = call i32 @jerry_release_value(i32 %563)
  %565 = load i32, i32* %3, align 4
  %566 = call i32 @jerry_release_value(i32 %565)
  %567 = load i32, i32* %16, align 4
  %568 = call i32 @jerry_release_value(i32 %567)
  %569 = load i32, i32* %15, align 4
  %570 = call i32 @jerry_release_value(i32 %569)
  %571 = load i32, i32* %14, align 4
  %572 = call i32 @jerry_release_value(i32 %571)
  %573 = load i32, i32* %9, align 4
  %574 = call i32 @jerry_release_value(i32 %573)
  %575 = load i32, i32* %8, align 4
  %576 = call i32 @jerry_release_value(i32 %575)
  %577 = load i32, i32* %7, align 4
  %578 = call i32 @jerry_release_value(i32 %577)
  %579 = load i32, i32* %2, align 4
  %580 = call i32 @jerry_release_value(i32 %579)
  %581 = call i32 (...) @jerry_cleanup()
  ret i32 0
}

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i32 @jerry_create_object(...) #1

declare dso_local i32 @jerry_create_string(i32*) #1

declare dso_local i64 @jerry_is_feature_enabled(i32) #1

declare dso_local i32 @jerry_create_symbol(i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_create_number(double) #1

declare dso_local i32 @jerry_set_property(i32, i32, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_set_internal_property(i32, i32, i32) #1

declare dso_local i32 @jerry_has_property(i32, i32) #1

declare dso_local i64 @jerry_value_is_boolean(i32) #1

declare dso_local i64 @jerry_get_boolean_value(i32) #1

declare dso_local i32 @jerry_has_internal_property(i32, i32) #1

declare dso_local i32 @jerry_get_property(i32, i32) #1

declare dso_local i64 @jerry_value_is_number(i32) #1

declare dso_local double @jerry_get_number_value(i32) #1

declare dso_local i32 @jerry_value_is_undefined(i32) #1

declare dso_local i32 @jerry_get_internal_property(i32, i32) #1

declare dso_local i32 @jerry_delete_property(i32, i32) #1

declare dso_local i32 @jerry_delete_internal_property(i32, i32) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
