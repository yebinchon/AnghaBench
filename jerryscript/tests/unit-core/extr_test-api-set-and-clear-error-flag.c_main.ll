; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-set-and-clear-error-flag.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-set-and-clear-error-flag.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@__const.main.pterodactylus = private unnamed_addr constant [14 x i8] c"Pterodactylus\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca [14 x i8], align 1
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = call i32 (...) @TEST_INIT()
  %15 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %16 = call i32 @jerry_init(i32 %15)
  %17 = call i64 (...) @jerry_create_object()
  store i64 %17, i64* %1, align 8
  %18 = load i64, i64* %1, align 8
  %19 = call i64 @jerry_create_error_from_value(i64 %18, i32 1)
  store i64 %19, i64* %1, align 8
  %20 = load i64, i64* %1, align 8
  %21 = call i64 @jerry_acquire_value(i64 %20)
  store i64 %21, i64* %2, align 8
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @jerry_get_value_from_error(i64 %22, i32 1)
  store i64 %23, i64* %1, align 8
  %24 = load i64, i64* %1, align 8
  %25 = load i64, i64* %2, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @TEST_ASSERT(i32 %27)
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @jerry_release_value(i64 %29)
  %31 = load i64, i64* %1, align 8
  %32 = call i32 @jerry_release_value(i64 %31)
  %33 = bitcast [14 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.main.pterodactylus, i32 0, i32 0), i64 14, i1 false)
  store i64 13, i64* %4, align 8
  %34 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %35 = call i64 @jerry_create_string(i8* %34)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @jerry_create_error_from_value(i64 %36, i32 1)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @jerry_get_value_from_error(i64 %38, i32 1)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %42 = call i32 @compare_str(i64 %40, i8* %41, i64 13)
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @jerry_release_value(i64 %43)
  %45 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %46 = call i64 @jerry_create_string(i8* %45)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @jerry_create_error_from_value(i64 %47, i32 0)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @jerry_release_value(i64 %49)
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @jerry_get_value_from_error(i64 %51, i32 1)
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %55 = call i32 @compare_str(i64 %53, i8* %54, i64 13)
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @jerry_release_value(i64 %56)
  %58 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %59 = call i64 @jerry_create_string(i8* %58)
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @jerry_create_abort_from_value(i64 %60, i32 1)
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i64 @jerry_get_value_from_error(i64 %62, i32 1)
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %66 = call i32 @compare_str(i64 %64, i8* %65, i64 13)
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @jerry_release_value(i64 %67)
  %69 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %70 = call i64 @jerry_create_string(i8* %69)
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i64 @jerry_create_abort_from_value(i64 %71, i32 0)
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @jerry_release_value(i64 %73)
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @jerry_get_value_from_error(i64 %75, i32 1)
  store i64 %76, i64* %5, align 8
  %77 = load i64, i64* %5, align 8
  %78 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %79 = call i32 @compare_str(i64 %77, i8* %78, i64 13)
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @jerry_release_value(i64 %80)
  %82 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %83 = call i64 @jerry_create_string(i8* %82)
  store i64 %83, i64* %5, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call i64 @jerry_create_error_from_value(i64 %84, i32 1)
  store i64 %85, i64* %6, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i64 @jerry_create_abort_from_value(i64 %86, i32 1)
  store i64 %87, i64* %6, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @jerry_value_is_abort(i64 %88)
  %90 = call i32 @TEST_ASSERT(i32 %89)
  %91 = load i64, i64* %6, align 8
  %92 = call i64 @jerry_get_value_from_error(i64 %91, i32 1)
  store i64 %92, i64* %5, align 8
  %93 = load i64, i64* %5, align 8
  %94 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %95 = call i32 @compare_str(i64 %93, i8* %94, i64 13)
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @jerry_release_value(i64 %96)
  %98 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %99 = call i64 @jerry_create_string(i8* %98)
  store i64 %99, i64* %5, align 8
  %100 = load i64, i64* %5, align 8
  %101 = call i64 @jerry_create_error_from_value(i64 %100, i32 1)
  store i64 %101, i64* %6, align 8
  %102 = load i64, i64* %6, align 8
  %103 = call i64 @jerry_create_abort_from_value(i64 %102, i32 0)
  store i64 %103, i64* %7, align 8
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @jerry_value_is_abort(i64 %104)
  %106 = call i32 @TEST_ASSERT(i32 %105)
  %107 = load i64, i64* %6, align 8
  %108 = call i32 @jerry_release_value(i64 %107)
  %109 = load i64, i64* %7, align 8
  %110 = call i64 @jerry_get_value_from_error(i64 %109, i32 1)
  store i64 %110, i64* %5, align 8
  %111 = load i64, i64* %5, align 8
  %112 = getelementptr inbounds [14 x i8], [14 x i8]* %3, i64 0, i64 0
  %113 = call i32 @compare_str(i64 %111, i8* %112, i64 13)
  %114 = load i64, i64* %5, align 8
  %115 = call i32 @jerry_release_value(i64 %114)
  store double 0x400921FB4D12D84A, double* %8, align 8
  %116 = load double, double* %8, align 8
  %117 = fptosi double %116 to i32
  %118 = call i64 @jerry_create_number(i32 %117)
  store i64 %118, i64* %9, align 8
  %119 = load i64, i64* %9, align 8
  %120 = call i64 @jerry_create_error_from_value(i64 %119, i32 0)
  store i64 %120, i64* %10, align 8
  %121 = load i64, i64* %10, align 8
  %122 = call i32 @jerry_value_is_error(i64 %121)
  %123 = call i32 @TEST_ASSERT(i32 %122)
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @jerry_release_value(i64 %124)
  %126 = load i64, i64* %10, align 8
  %127 = call i64 @jerry_get_value_from_error(i64 %126, i32 1)
  store i64 %127, i64* %10, align 8
  %128 = load i64, i64* %10, align 8
  %129 = call double @jerry_get_number_value(i64 %128)
  %130 = load double, double* %8, align 8
  %131 = fcmp oeq double %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @TEST_ASSERT(i32 %132)
  %134 = load i64, i64* %10, align 8
  %135 = call i32 @jerry_release_value(i64 %134)
  %136 = load double, double* %8, align 8
  %137 = fptosi double %136 to i32
  %138 = call i64 @jerry_create_number(i32 %137)
  store i64 %138, i64* %9, align 8
  %139 = load i64, i64* %9, align 8
  %140 = call i64 @jerry_create_error_from_value(i64 %139, i32 1)
  store i64 %140, i64* %10, align 8
  %141 = load i64, i64* %10, align 8
  %142 = call i32 @jerry_value_is_error(i64 %141)
  %143 = call i32 @TEST_ASSERT(i32 %142)
  %144 = load i64, i64* %10, align 8
  %145 = call i64 @jerry_get_value_from_error(i64 %144, i32 1)
  store i64 %145, i64* %10, align 8
  %146 = load i64, i64* %10, align 8
  %147 = call double @jerry_get_number_value(i64 %146)
  %148 = load double, double* %8, align 8
  %149 = fcmp oeq double %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @TEST_ASSERT(i32 %150)
  %152 = load i64, i64* %10, align 8
  %153 = call i32 @jerry_release_value(i64 %152)
  %154 = load double, double* %8, align 8
  %155 = fptosi double %154 to i32
  %156 = call i64 @jerry_create_number(i32 %155)
  store i64 %156, i64* %9, align 8
  %157 = load i64, i64* %9, align 8
  %158 = call i64 @jerry_create_error_from_value(i64 %157, i32 0)
  store i64 %158, i64* %10, align 8
  %159 = load i64, i64* %10, align 8
  %160 = call i32 @jerry_value_is_error(i64 %159)
  %161 = call i32 @TEST_ASSERT(i32 %160)
  %162 = load i64, i64* %9, align 8
  %163 = call i32 @jerry_release_value(i64 %162)
  %164 = load i64, i64* %10, align 8
  %165 = call i64 @jerry_create_error_from_value(i64 %164, i32 0)
  store i64 %165, i64* %11, align 8
  %166 = load i64, i64* %11, align 8
  %167 = call i32 @jerry_value_is_error(i64 %166)
  %168 = call i32 @TEST_ASSERT(i32 %167)
  %169 = load i64, i64* %10, align 8
  %170 = call i32 @jerry_release_value(i64 %169)
  %171 = load i64, i64* %11, align 8
  %172 = call i64 @jerry_get_value_from_error(i64 %171, i32 1)
  store i64 %172, i64* %10, align 8
  %173 = load i64, i64* %10, align 8
  %174 = call double @jerry_get_number_value(i64 %173)
  %175 = load double, double* %8, align 8
  %176 = fcmp oeq double %174, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @TEST_ASSERT(i32 %177)
  %179 = load i64, i64* %10, align 8
  %180 = call i32 @jerry_release_value(i64 %179)
  %181 = load double, double* %8, align 8
  %182 = fptosi double %181 to i32
  %183 = call i64 @jerry_create_number(i32 %182)
  store i64 %183, i64* %9, align 8
  %184 = load i64, i64* %9, align 8
  %185 = call i64 @jerry_create_error_from_value(i64 %184, i32 1)
  store i64 %185, i64* %10, align 8
  %186 = load i64, i64* %10, align 8
  %187 = call i32 @jerry_value_is_error(i64 %186)
  %188 = call i32 @TEST_ASSERT(i32 %187)
  %189 = load i64, i64* %10, align 8
  %190 = call i64 @jerry_create_error_from_value(i64 %189, i32 1)
  store i64 %190, i64* %11, align 8
  %191 = load i64, i64* %11, align 8
  %192 = call i32 @jerry_value_is_error(i64 %191)
  %193 = call i32 @TEST_ASSERT(i32 %192)
  %194 = load i64, i64* %11, align 8
  %195 = call i64 @jerry_get_value_from_error(i64 %194, i32 1)
  store i64 %195, i64* %10, align 8
  %196 = load i64, i64* %10, align 8
  %197 = call double @jerry_get_number_value(i64 %196)
  %198 = load double, double* %8, align 8
  %199 = fcmp oeq double %197, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 @TEST_ASSERT(i32 %200)
  %202 = load i64, i64* %10, align 8
  %203 = call i32 @jerry_release_value(i64 %202)
  %204 = load double, double* %8, align 8
  %205 = fptosi double %204 to i32
  %206 = call i64 @jerry_create_number(i32 %205)
  store i64 %206, i64* %9, align 8
  %207 = load i64, i64* %9, align 8
  %208 = call i64 @jerry_create_abort_from_value(i64 %207, i32 1)
  store i64 %208, i64* %6, align 8
  %209 = load i64, i64* %6, align 8
  %210 = call i32 @jerry_value_is_abort(i64 %209)
  %211 = call i32 @TEST_ASSERT(i32 %210)
  %212 = load i64, i64* %6, align 8
  %213 = call i64 @jerry_create_error_from_value(i64 %212, i32 1)
  store i64 %213, i64* %10, align 8
  %214 = load i64, i64* %10, align 8
  %215 = call i32 @jerry_value_is_error(i64 %214)
  %216 = call i32 @TEST_ASSERT(i32 %215)
  %217 = load i64, i64* %10, align 8
  %218 = call i64 @jerry_get_value_from_error(i64 %217, i32 1)
  store i64 %218, i64* %9, align 8
  %219 = load i64, i64* %9, align 8
  %220 = call double @jerry_get_number_value(i64 %219)
  %221 = load double, double* %8, align 8
  %222 = fcmp oeq double %220, %221
  %223 = zext i1 %222 to i32
  %224 = call i32 @TEST_ASSERT(i32 %223)
  %225 = load i64, i64* %9, align 8
  %226 = call i32 @jerry_release_value(i64 %225)
  %227 = load double, double* %8, align 8
  %228 = fptosi double %227 to i32
  %229 = call i64 @jerry_create_number(i32 %228)
  store i64 %229, i64* %9, align 8
  %230 = load i64, i64* %9, align 8
  %231 = call i64 @jerry_create_abort_from_value(i64 %230, i32 0)
  store i64 %231, i64* %6, align 8
  %232 = load i64, i64* %9, align 8
  %233 = call i32 @jerry_release_value(i64 %232)
  %234 = load i64, i64* %6, align 8
  %235 = call i32 @jerry_value_is_abort(i64 %234)
  %236 = call i32 @TEST_ASSERT(i32 %235)
  %237 = load i64, i64* %6, align 8
  %238 = call i64 @jerry_create_error_from_value(i64 %237, i32 1)
  store i64 %238, i64* %10, align 8
  %239 = load i64, i64* %10, align 8
  %240 = call i32 @jerry_value_is_error(i64 %239)
  %241 = call i32 @TEST_ASSERT(i32 %240)
  %242 = load i64, i64* %10, align 8
  %243 = call i64 @jerry_get_value_from_error(i64 %242, i32 1)
  store i64 %243, i64* %9, align 8
  %244 = load i64, i64* %9, align 8
  %245 = call double @jerry_get_number_value(i64 %244)
  %246 = load double, double* %8, align 8
  %247 = fcmp oeq double %245, %246
  %248 = zext i1 %247 to i32
  %249 = call i32 @TEST_ASSERT(i32 %248)
  %250 = load i64, i64* %9, align 8
  %251 = call i32 @jerry_release_value(i64 %250)
  %252 = load double, double* %8, align 8
  %253 = fptosi double %252 to i32
  %254 = call i64 @jerry_create_number(i32 %253)
  store i64 %254, i64* %9, align 8
  %255 = load i64, i64* %9, align 8
  %256 = call i64 @jerry_create_abort_from_value(i64 %255, i32 1)
  store i64 %256, i64* %6, align 8
  %257 = load i64, i64* %6, align 8
  %258 = call i32 @jerry_value_is_abort(i64 %257)
  %259 = call i32 @TEST_ASSERT(i32 %258)
  %260 = load i64, i64* %6, align 8
  %261 = call i64 @jerry_create_error_from_value(i64 %260, i32 0)
  store i64 %261, i64* %10, align 8
  %262 = load i64, i64* %6, align 8
  %263 = call i32 @jerry_release_value(i64 %262)
  %264 = load i64, i64* %10, align 8
  %265 = call i32 @jerry_value_is_error(i64 %264)
  %266 = call i32 @TEST_ASSERT(i32 %265)
  %267 = load i64, i64* %10, align 8
  %268 = call i64 @jerry_get_value_from_error(i64 %267, i32 1)
  store i64 %268, i64* %9, align 8
  %269 = load i64, i64* %9, align 8
  %270 = call double @jerry_get_number_value(i64 %269)
  %271 = load double, double* %8, align 8
  %272 = fcmp oeq double %270, %271
  %273 = zext i1 %272 to i32
  %274 = call i32 @TEST_ASSERT(i32 %273)
  %275 = load i64, i64* %9, align 8
  %276 = call i32 @jerry_release_value(i64 %275)
  %277 = load double, double* %8, align 8
  %278 = fptosi double %277 to i32
  %279 = call i64 @jerry_create_number(i32 %278)
  store i64 %279, i64* %9, align 8
  %280 = load i64, i64* %9, align 8
  %281 = call i64 @jerry_create_abort_from_value(i64 %280, i32 0)
  store i64 %281, i64* %6, align 8
  %282 = load i64, i64* %9, align 8
  %283 = call i32 @jerry_release_value(i64 %282)
  %284 = load i64, i64* %6, align 8
  %285 = call i32 @jerry_value_is_abort(i64 %284)
  %286 = call i32 @TEST_ASSERT(i32 %285)
  %287 = load i64, i64* %6, align 8
  %288 = call i64 @jerry_create_error_from_value(i64 %287, i32 0)
  store i64 %288, i64* %10, align 8
  %289 = load i64, i64* %6, align 8
  %290 = call i32 @jerry_release_value(i64 %289)
  %291 = load i64, i64* %10, align 8
  %292 = call i32 @jerry_value_is_error(i64 %291)
  %293 = call i32 @TEST_ASSERT(i32 %292)
  %294 = load i64, i64* %10, align 8
  %295 = call i64 @jerry_get_value_from_error(i64 %294, i32 1)
  store i64 %295, i64* %9, align 8
  %296 = load i64, i64* %9, align 8
  %297 = call double @jerry_get_number_value(i64 %296)
  %298 = load double, double* %8, align 8
  %299 = fcmp oeq double %297, %298
  %300 = zext i1 %299 to i32
  %301 = call i32 @TEST_ASSERT(i32 %300)
  %302 = load i64, i64* %9, align 8
  %303 = call i32 @jerry_release_value(i64 %302)
  %304 = call i64 @jerry_create_number(i32 42)
  store i64 %304, i64* %12, align 8
  %305 = load i64, i64* %12, align 8
  %306 = call i64 @jerry_get_value_from_error(i64 %305, i32 1)
  store i64 %306, i64* %12, align 8
  %307 = load i64, i64* %12, align 8
  %308 = call i32 @jerry_release_value(i64 %307)
  %309 = call i64 @jerry_create_number(i32 42)
  store i64 %309, i64* %12, align 8
  %310 = load i64, i64* %12, align 8
  %311 = call i64 @jerry_get_value_from_error(i64 %310, i32 0)
  store i64 %311, i64* %13, align 8
  %312 = load i64, i64* %12, align 8
  %313 = call i32 @jerry_release_value(i64 %312)
  %314 = load i64, i64* %13, align 8
  %315 = call i32 @jerry_release_value(i64 %314)
  %316 = call i64 @jerry_create_number(i32 42)
  store i64 %316, i64* %12, align 8
  %317 = load i64, i64* %12, align 8
  %318 = call i64 @jerry_create_error_from_value(i64 %317, i32 1)
  store i64 %318, i64* %6, align 8
  %319 = load i64, i64* %6, align 8
  %320 = call i64 @jerry_create_error_from_value(i64 %319, i32 1)
  store i64 %320, i64* %6, align 8
  %321 = load i64, i64* %6, align 8
  %322 = call i32 @jerry_release_value(i64 %321)
  %323 = call i64 @jerry_create_number(i32 42)
  store i64 %323, i64* %12, align 8
  %324 = load i64, i64* %12, align 8
  %325 = call i64 @jerry_create_abort_from_value(i64 %324, i32 1)
  store i64 %325, i64* %6, align 8
  %326 = load i64, i64* %6, align 8
  %327 = call i64 @jerry_create_abort_from_value(i64 %326, i32 1)
  store i64 %327, i64* %6, align 8
  %328 = load i64, i64* %6, align 8
  %329 = call i32 @jerry_release_value(i64 %328)
  %330 = call i64 @jerry_create_number(i32 42)
  store i64 %330, i64* %12, align 8
  %331 = load i64, i64* %12, align 8
  %332 = call i64 @jerry_create_error_from_value(i64 %331, i32 1)
  store i64 %332, i64* %6, align 8
  %333 = load i64, i64* %6, align 8
  %334 = call i64 @jerry_create_error_from_value(i64 %333, i32 0)
  store i64 %334, i64* %7, align 8
  %335 = load i64, i64* %6, align 8
  %336 = call i32 @jerry_release_value(i64 %335)
  %337 = load i64, i64* %7, align 8
  %338 = call i32 @jerry_release_value(i64 %337)
  %339 = call i64 @jerry_create_number(i32 42)
  store i64 %339, i64* %12, align 8
  %340 = load i64, i64* %12, align 8
  %341 = call i64 @jerry_create_abort_from_value(i64 %340, i32 1)
  store i64 %341, i64* %6, align 8
  %342 = load i64, i64* %6, align 8
  %343 = call i64 @jerry_create_abort_from_value(i64 %342, i32 0)
  store i64 %343, i64* %7, align 8
  %344 = load i64, i64* %6, align 8
  %345 = call i32 @jerry_release_value(i64 %344)
  %346 = load i64, i64* %7, align 8
  %347 = call i32 @jerry_release_value(i64 %346)
  %348 = call i32 (...) @jerry_cleanup()
  ret i32 0
}

declare dso_local i32 @TEST_INIT(...) #1

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i64 @jerry_create_object(...) #1

declare dso_local i64 @jerry_create_error_from_value(i64, i32) #1

declare dso_local i64 @jerry_acquire_value(i64) #1

declare dso_local i64 @jerry_get_value_from_error(i64, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_release_value(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @jerry_create_string(i8*) #1

declare dso_local i32 @compare_str(i64, i8*, i64) #1

declare dso_local i64 @jerry_create_abort_from_value(i64, i32) #1

declare dso_local i32 @jerry_value_is_abort(i64) #1

declare dso_local i64 @jerry_create_number(i32) #1

declare dso_local i32 @jerry_value_is_error(i64) #1

declare dso_local double @jerry_get_number_value(i64) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
