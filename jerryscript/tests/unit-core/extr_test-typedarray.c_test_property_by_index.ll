; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-typedarray.c_test_property_by_index.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-typedarray.c_test_property_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@__const.test_property_by_index.test_int_numbers = private unnamed_addr constant [5 x i32] [i32 -5, i32 -70, i32 13, i32 0, i32 56], align 16
@__const.test_property_by_index.test_uint_numbers = private unnamed_addr constant [5 x i32] [i32 83, i32 15, i32 36, i32 0, i32 43], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @test_property_by_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_property_by_index(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [5 x i32], align 16
  %4 = alloca [5 x double], align 16
  %5 = alloca [5 x i32], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %24 = bitcast [5 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([5 x i32]* @__const.test_property_by_index.test_int_numbers to i8*), i64 20, i1 false)
  %25 = bitcast [5 x double]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 40, i1 false)
  %26 = bitcast i8* %25 to [5 x double]*
  %27 = getelementptr inbounds [5 x double], [5 x double]* %26, i32 0, i32 0
  store double -8.315300e+01, double* %27, align 16
  %28 = getelementptr inbounds [5 x double], [5 x double]* %26, i32 0, i32 1
  store double -3.515000e+01, double* %28, align 8
  %29 = getelementptr inbounds [5 x double], [5 x double]* %26, i32 0, i32 3
  store double 1.310000e+01, double* %29, align 8
  %30 = getelementptr inbounds [5 x double], [5 x double]* %26, i32 0, i32 4
  store double 0x40567970A3D70A3D, double* %30, align 16
  %31 = bitcast [5 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %31, i8* align 16 bitcast ([5 x i32]* @__const.test_property_by_index.test_uint_numbers to i8*), i64 20, i1 false)
  store i64 0, i64* %6, align 8
  br label %32

32:                                               ; preds = %281, %1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %284

39:                                               ; preds = %32
  store i64 5, i64* %8, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @jerry_create_typedarray(i32 %44, i64 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @jerry_get_typedarray_type(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  switch i32 %49, label %205 [
    i32 128, label %50
    i32 130, label %50
    i32 129, label %50
    i32 132, label %108
    i32 131, label %108
  ]

50:                                               ; preds = %39, %39, %39
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %104, %50
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %8, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %107

56:                                               ; preds = %51
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @jerry_create_number(i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @jerry_delete_property_by_index(i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @TEST_ASSERT(i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @jerry_set_property_by_index(i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @jerry_get_property_by_index(i32 %73, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @jerry_value_is_boolean(i32 %76)
  %78 = call i32 @TEST_ASSERT(i32 %77)
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @jerry_get_boolean_value(i32 %79)
  %81 = call i32 @TEST_ASSERT(i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @jerry_delete_property_by_index(i32 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 @TEST_ASSERT(i32 %87)
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @jerry_get_number_value(i32 %89)
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %90, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @TEST_ASSERT(i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @jerry_release_value(i32 %98)
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @jerry_release_value(i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @jerry_release_value(i32 %102)
  br label %104

104:                                              ; preds = %56
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %51

107:                                              ; preds = %51
  br label %263

108:                                              ; preds = %39, %39
  store i32 0, i32* %14, align 4
  br label %109

109:                                              ; preds = %201, %108
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %8, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %204

114:                                              ; preds = %109
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 0, i64 %116
  %118 = load double, double* %117, align 8
  %119 = fptosi double %118 to i32
  %120 = call i32 @jerry_create_number(i32 %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @jerry_delete_property_by_index(i32 %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = call i32 @TEST_ASSERT(i32 %126)
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @jerry_set_property_by_index(i32 %128, i32 %129, i32 %130)
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @jerry_get_property_by_index(i32 %132, i32 %133)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @jerry_value_is_boolean(i32 %135)
  %137 = call i32 @TEST_ASSERT(i32 %136)
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @jerry_get_boolean_value(i32 %138)
  %140 = call i32 @TEST_ASSERT(i32 %139)
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @jerry_delete_property_by_index(i32 %141, i32 %142)
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = call i32 @TEST_ASSERT(i32 %146)
  %148 = call double @pow(i32 10, i32 -5)
  store double %148, double* %15, align 8
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @jerry_get_number_value(i32 %149)
  %151 = sitofp i32 %150 to double
  %152 = load i32, i32* %14, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 0, i64 %153
  %155 = load double, double* %154, align 8
  %156 = fsub double %151, %155
  %157 = fptosi double %156 to i32
  %158 = call double @fabs(i32 %157)
  store double %158, double* %16, align 8
  %159 = load double, double* %16, align 8
  %160 = load double, double* %15, align 8
  %161 = fcmp olt double %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @TEST_ASSERT(i32 %162)
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @jerry_release_value(i32 %164)
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @jerry_release_value(i32 %166)
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @jerry_release_value(i32 %168)
  store i32 0, i32* %17, align 4
  br label %170

170:                                              ; preds = %197, %114
  %171 = load i32, i32* %17, align 4
  %172 = icmp slt i32 %171, 2
  br i1 %172, label %173, label %200

173:                                              ; preds = %170
  %174 = load i32, i32* %17, align 4
  %175 = call i32 @jerry_create_number_infinity(i32 %174)
  store i32 %175, i32* %18, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %18, align 4
  %178 = call i32 @jerry_set_property_by_index(i32 %176, i32 0, i32 %177)
  store i32 %178, i32* %19, align 4
  %179 = load i32, i32* %19, align 4
  %180 = call i32 @jerry_value_is_boolean(i32 %179)
  %181 = call i32 @TEST_ASSERT(i32 %180)
  %182 = load i32, i32* %19, align 4
  %183 = call i32 @jerry_get_boolean_value(i32 %182)
  %184 = call i32 @TEST_ASSERT(i32 %183)
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @jerry_get_property_by_index(i32 %185, i32 0)
  store i32 %186, i32* %20, align 4
  %187 = load i32, i32* %20, align 4
  %188 = call i32 @jerry_get_number_value(i32 %187)
  %189 = call i32 @isinf(i32 %188)
  %190 = call i32 @TEST_ASSERT(i32 %189)
  %191 = load i32, i32* %18, align 4
  %192 = call i32 @jerry_release_value(i32 %191)
  %193 = load i32, i32* %19, align 4
  %194 = call i32 @jerry_release_value(i32 %193)
  %195 = load i32, i32* %20, align 4
  %196 = call i32 @jerry_release_value(i32 %195)
  br label %197

197:                                              ; preds = %173
  %198 = load i32, i32* %17, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %17, align 4
  br label %170

200:                                              ; preds = %170
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %14, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %14, align 4
  br label %109

204:                                              ; preds = %109
  br label %263

205:                                              ; preds = %39
  store i32 0, i32* %21, align 4
  br label %206

206:                                              ; preds = %259, %205
  %207 = load i32, i32* %21, align 4
  %208 = sext i32 %207 to i64
  %209 = load i64, i64* %8, align 8
  %210 = icmp ult i64 %208, %209
  br i1 %210, label %211, label %262

211:                                              ; preds = %206
  %212 = load i32, i32* %21, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @jerry_create_number(i32 %215)
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %21, align 4
  %219 = call i32 @jerry_delete_property_by_index(i32 %217, i32 %218)
  %220 = icmp ne i32 %219, 0
  %221 = xor i1 %220, true
  %222 = zext i1 %221 to i32
  %223 = call i32 @TEST_ASSERT(i32 %222)
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* %21, align 4
  %226 = load i32, i32* %7, align 4
  %227 = call i32 @jerry_set_property_by_index(i32 %224, i32 %225, i32 %226)
  store i32 %227, i32* %11, align 4
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* %21, align 4
  %230 = call i32 @jerry_get_property_by_index(i32 %228, i32 %229)
  store i32 %230, i32* %12, align 4
  %231 = load i32, i32* %11, align 4
  %232 = call i32 @jerry_value_is_boolean(i32 %231)
  %233 = call i32 @TEST_ASSERT(i32 %232)
  %234 = load i32, i32* %11, align 4
  %235 = call i32 @jerry_get_boolean_value(i32 %234)
  %236 = call i32 @TEST_ASSERT(i32 %235)
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %21, align 4
  %239 = call i32 @jerry_delete_property_by_index(i32 %237, i32 %238)
  %240 = icmp ne i32 %239, 0
  %241 = xor i1 %240, true
  %242 = zext i1 %241 to i32
  %243 = call i32 @TEST_ASSERT(i32 %242)
  %244 = load i32, i32* %12, align 4
  %245 = call i32 @jerry_get_number_value(i32 %244)
  %246 = load i32, i32* %21, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = icmp eq i32 %245, %249
  %251 = zext i1 %250 to i32
  %252 = call i32 @TEST_ASSERT(i32 %251)
  %253 = load i32, i32* %7, align 4
  %254 = call i32 @jerry_release_value(i32 %253)
  %255 = load i32, i32* %11, align 4
  %256 = call i32 @jerry_release_value(i32 %255)
  %257 = load i32, i32* %12, align 4
  %258 = call i32 @jerry_release_value(i32 %257)
  br label %259

259:                                              ; preds = %211
  %260 = load i32, i32* %21, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %21, align 4
  br label %206

262:                                              ; preds = %206
  br label %263

263:                                              ; preds = %262, %204, %107
  %264 = load i32, i32* %9, align 4
  %265 = call i32 @jerry_create_number(i32 50)
  %266 = call i32 @jerry_set_property_by_index(i32 %264, i32 100, i32 %265)
  store i32 %266, i32* %22, align 4
  %267 = load i32, i32* %22, align 4
  %268 = call i32 @jerry_value_is_error(i32 %267)
  %269 = call i32 @TEST_ASSERT(i32 %268)
  %270 = load i32, i32* %9, align 4
  %271 = call i32 @jerry_get_property_by_index(i32 %270, i32 100)
  store i32 %271, i32* %23, align 4
  %272 = load i32, i32* %23, align 4
  %273 = call i32 @jerry_value_is_undefined(i32 %272)
  %274 = call i32 @TEST_ASSERT(i32 %273)
  %275 = load i32, i32* %22, align 4
  %276 = call i32 @jerry_release_value(i32 %275)
  %277 = load i32, i32* %23, align 4
  %278 = call i32 @jerry_release_value(i32 %277)
  %279 = load i32, i32* %9, align 4
  %280 = call i32 @jerry_release_value(i32 %279)
  br label %281

281:                                              ; preds = %263
  %282 = load i64, i64* %6, align 8
  %283 = add i64 %282, 1
  store i64 %283, i64* %6, align 8
  br label %32

284:                                              ; preds = %32
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @jerry_create_typedarray(i32, i64) #2

declare dso_local i32 @jerry_get_typedarray_type(i32) #2

declare dso_local i32 @jerry_create_number(i32) #2

declare dso_local i32 @TEST_ASSERT(i32) #2

declare dso_local i32 @jerry_delete_property_by_index(i32, i32) #2

declare dso_local i32 @jerry_set_property_by_index(i32, i32, i32) #2

declare dso_local i32 @jerry_get_property_by_index(i32, i32) #2

declare dso_local i32 @jerry_value_is_boolean(i32) #2

declare dso_local i32 @jerry_get_boolean_value(i32) #2

declare dso_local i32 @jerry_get_number_value(i32) #2

declare dso_local i32 @jerry_release_value(i32) #2

declare dso_local double @pow(i32, i32) #2

declare dso_local double @fabs(i32) #2

declare dso_local i32 @jerry_create_number_infinity(i32) #2

declare dso_local i32 @isinf(i32) #2

declare dso_local i32 @jerry_value_is_error(i32) #2

declare dso_local i32 @jerry_value_is_undefined(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
