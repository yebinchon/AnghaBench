; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-binary-operations-instanceof.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-binary-operations-instanceof.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@my_constructor = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"prototype\00", align 1
@JERRY_BIN_OP_INSTANCEOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

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
  %9 = alloca [3 x %struct.TYPE_3__], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [14 x %struct.TYPE_3__], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %15 = call i32 (...) @TEST_INIT()
  %16 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %17 = call i32 @jerry_init(i32 %16)
  %18 = call i32 (...) @jerry_create_object()
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* @my_constructor, align 4
  %20 = call i32 @jerry_create_external_function(i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @jerry_construct_object(i32 %21, i32* null, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = call i32 @jerry_create_string(i32* bitcast ([10 x i8]* @.str to i32*))
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @jerry_set_property(i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @jerry_release_value(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @jerry_value_is_error(i32 %30)
  %32 = icmp ne i64 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @TEST_ASSERT(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @jerry_release_value(i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @jerry_construct_object(i32 %38, i32* null, i32 0)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @jerry_create_error_from_value(i32 %40, i32 0)
  store i32 %41, i32* %8, align 4
  %42 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %9, i64 0, i64 0
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @jerry_acquire_value(i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @jerry_acquire_value(i32 %45)
  %47 = call { i64, i64 } @T(i32 %44, i32 %46, i32 1)
  %48 = bitcast %struct.TYPE_3__* %42 to { i64, i64 }*
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %48, i32 0, i32 0
  %50 = extractvalue { i64, i64 } %47, 0
  store i64 %50, i64* %49, align 16
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %48, i32 0, i32 1
  %52 = extractvalue { i64, i64 } %47, 1
  store i64 %52, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 1
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @jerry_acquire_value(i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @jerry_acquire_value(i32 %56)
  %58 = call { i64, i64 } @T(i32 %55, i32 %57, i32 0)
  %59 = bitcast %struct.TYPE_3__* %53 to { i64, i64 }*
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %59, i32 0, i32 0
  %61 = extractvalue { i64, i64 } %58, 0
  store i64 %61, i64* %60, align 16
  %62 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %59, i32 0, i32 1
  %63 = extractvalue { i64, i64 } %58, 1
  store i64 %63, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 1
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @jerry_acquire_value(i32 %65)
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @jerry_acquire_value(i32 %67)
  %69 = call { i64, i64 } @T(i32 %66, i32 %68, i32 0)
  %70 = bitcast %struct.TYPE_3__* %64 to { i64, i64 }*
  %71 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %70, i32 0, i32 0
  %72 = extractvalue { i64, i64 } %69, 0
  store i64 %72, i64* %71, align 16
  %73 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %70, i32 0, i32 1
  %74 = extractvalue { i64, i64 } %69, 1
  store i64 %74, i64* %73, align 8
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %122, %0
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp ult i64 %77, 3
  br i1 %78, label %79, label %125

79:                                               ; preds = %75
  %80 = load i32, i32* @JERRY_BIN_OP_INSTANCEOF, align 4
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %9, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %9, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @jerry_binary_operation(i32 %80, i32 %85, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i64 @jerry_value_is_error(i32 %92)
  %94 = icmp ne i64 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i32 @TEST_ASSERT(i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = call i64 @jerry_get_boolean_value(i32 %98)
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %9, i64 0, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 16
  %105 = icmp eq i64 %99, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @TEST_ASSERT(i32 %106)
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %9, i64 0, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @jerry_release_value(i32 %112)
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %9, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @jerry_release_value(i32 %118)
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @jerry_release_value(i32 %120)
  br label %122

122:                                              ; preds = %79
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %75

125:                                              ; preds = %75
  %126 = getelementptr inbounds [14 x %struct.TYPE_3__], [14 x %struct.TYPE_3__]* %12, i64 0, i64 0
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @jerry_acquire_value(i32 %127)
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @jerry_acquire_value(i32 %129)
  %131 = call { i64, i64 } @T(i32 %128, i32 %130, i32 1)
  %132 = bitcast %struct.TYPE_3__* %126 to { i64, i64 }*
  %133 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %132, i32 0, i32 0
  %134 = extractvalue { i64, i64 } %131, 0
  store i64 %134, i64* %133, align 16
  %135 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %132, i32 0, i32 1
  %136 = extractvalue { i64, i64 } %131, 1
  store i64 %136, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 1
  %138 = call i32 (...) @jerry_create_undefined()
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @jerry_acquire_value(i32 %139)
  %141 = call { i64, i64 } @T(i32 %138, i32 %140, i32 1)
  %142 = bitcast %struct.TYPE_3__* %137 to { i64, i64 }*
  %143 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %142, i32 0, i32 0
  %144 = extractvalue { i64, i64 } %141, 0
  store i64 %144, i64* %143, align 16
  %145 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %142, i32 0, i32 1
  %146 = extractvalue { i64, i64 } %141, 1
  store i64 %146, i64* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 1
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @jerry_acquire_value(i32 %148)
  %150 = call i32 (...) @jerry_create_undefined()
  %151 = call { i64, i64 } @T(i32 %149, i32 %150, i32 1)
  %152 = bitcast %struct.TYPE_3__* %147 to { i64, i64 }*
  %153 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %152, i32 0, i32 0
  %154 = extractvalue { i64, i64 } %151, 0
  store i64 %154, i64* %153, align 16
  %155 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %152, i32 0, i32 1
  %156 = extractvalue { i64, i64 } %151, 1
  store i64 %156, i64* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 1
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @jerry_acquire_value(i32 %158)
  %160 = load i32, i32* %2, align 4
  %161 = call i32 @jerry_acquire_value(i32 %160)
  %162 = call { i64, i64 } @T(i32 %159, i32 %161, i32 1)
  %163 = bitcast %struct.TYPE_3__* %157 to { i64, i64 }*
  %164 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %163, i32 0, i32 0
  %165 = extractvalue { i64, i64 } %162, 0
  store i64 %165, i64* %164, align 16
  %166 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %163, i32 0, i32 1
  %167 = extractvalue { i64, i64 } %162, 1
  store i64 %167, i64* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i64 1
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @jerry_acquire_value(i32 %169)
  %171 = load i32, i32* %3, align 4
  %172 = call i32 @jerry_acquire_value(i32 %171)
  %173 = call { i64, i64 } @T(i32 %170, i32 %172, i32 1)
  %174 = bitcast %struct.TYPE_3__* %168 to { i64, i64 }*
  %175 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %174, i32 0, i32 0
  %176 = extractvalue { i64, i64 } %173, 0
  store i64 %176, i64* %175, align 16
  %177 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %174, i32 0, i32 1
  %178 = extractvalue { i64, i64 } %173, 1
  store i64 %178, i64* %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i64 1
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @jerry_acquire_value(i32 %180)
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @jerry_acquire_value(i32 %182)
  %184 = call { i64, i64 } @T(i32 %181, i32 %183, i32 1)
  %185 = bitcast %struct.TYPE_3__* %179 to { i64, i64 }*
  %186 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %185, i32 0, i32 0
  %187 = extractvalue { i64, i64 } %184, 0
  store i64 %187, i64* %186, align 16
  %188 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %185, i32 0, i32 1
  %189 = extractvalue { i64, i64 } %184, 1
  store i64 %189, i64* %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i64 1
  %191 = call i32 @jerry_create_string(i32* bitcast ([1 x i8]* @.str.1 to i32*))
  %192 = call i32 @jerry_create_string(i32* bitcast ([1 x i8]* @.str.1 to i32*))
  %193 = call { i64, i64 } @T(i32 %191, i32 %192, i32 1)
  %194 = bitcast %struct.TYPE_3__* %190 to { i64, i64 }*
  %195 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %194, i32 0, i32 0
  %196 = extractvalue { i64, i64 } %193, 0
  store i64 %196, i64* %195, align 16
  %197 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %194, i32 0, i32 1
  %198 = extractvalue { i64, i64 } %193, 1
  store i64 %198, i64* %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i64 1
  %200 = call i32 @jerry_create_string(i32* bitcast ([1 x i8]* @.str.1 to i32*))
  %201 = call i32 @jerry_create_number(double 5.000000e+00)
  %202 = call { i64, i64 } @T(i32 %200, i32 %201, i32 1)
  %203 = bitcast %struct.TYPE_3__* %199 to { i64, i64 }*
  %204 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %203, i32 0, i32 0
  %205 = extractvalue { i64, i64 } %202, 0
  store i64 %205, i64* %204, align 16
  %206 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %203, i32 0, i32 1
  %207 = extractvalue { i64, i64 } %202, 1
  store i64 %207, i64* %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i64 1
  %209 = call i32 @jerry_create_number(double 5.000000e+00)
  %210 = call i32 @jerry_create_string(i32* bitcast ([1 x i8]* @.str.1 to i32*))
  %211 = call { i64, i64 } @T(i32 %209, i32 %210, i32 1)
  %212 = bitcast %struct.TYPE_3__* %208 to { i64, i64 }*
  %213 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %212, i32 0, i32 0
  %214 = extractvalue { i64, i64 } %211, 0
  store i64 %214, i64* %213, align 16
  %215 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %212, i32 0, i32 1
  %216 = extractvalue { i64, i64 } %211, 1
  store i64 %216, i64* %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i64 1
  %218 = call i32 @jerry_create_array(i32 1)
  %219 = call i32 @jerry_create_array(i32 1)
  %220 = call { i64, i64 } @T(i32 %218, i32 %219, i32 1)
  %221 = bitcast %struct.TYPE_3__* %217 to { i64, i64 }*
  %222 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %221, i32 0, i32 0
  %223 = extractvalue { i64, i64 } %220, 0
  store i64 %223, i64* %222, align 16
  %224 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %221, i32 0, i32 1
  %225 = extractvalue { i64, i64 } %220, 1
  store i64 %225, i64* %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i64 1
  %227 = call i32 @jerry_create_array(i32 1)
  %228 = call i32 (...) @jerry_create_object()
  %229 = call { i64, i64 } @T(i32 %227, i32 %228, i32 1)
  %230 = bitcast %struct.TYPE_3__* %226 to { i64, i64 }*
  %231 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %230, i32 0, i32 0
  %232 = extractvalue { i64, i64 } %229, 0
  store i64 %232, i64* %231, align 16
  %233 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %230, i32 0, i32 1
  %234 = extractvalue { i64, i64 } %229, 1
  store i64 %234, i64* %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i64 1
  %236 = call i32 (...) @jerry_create_object()
  %237 = call i32 @jerry_create_array(i32 1)
  %238 = call { i64, i64 } @T(i32 %236, i32 %237, i32 1)
  %239 = bitcast %struct.TYPE_3__* %235 to { i64, i64 }*
  %240 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %239, i32 0, i32 0
  %241 = extractvalue { i64, i64 } %238, 0
  store i64 %241, i64* %240, align 16
  %242 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %239, i32 0, i32 1
  %243 = extractvalue { i64, i64 } %238, 1
  store i64 %243, i64* %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i64 1
  %245 = call i32 (...) @jerry_create_null()
  %246 = call i32 (...) @jerry_create_object()
  %247 = call { i64, i64 } @T(i32 %245, i32 %246, i32 1)
  %248 = bitcast %struct.TYPE_3__* %244 to { i64, i64 }*
  %249 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %248, i32 0, i32 0
  %250 = extractvalue { i64, i64 } %247, 0
  store i64 %250, i64* %249, align 16
  %251 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %248, i32 0, i32 1
  %252 = extractvalue { i64, i64 } %247, 1
  store i64 %252, i64* %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i64 1
  %254 = call i32 (...) @jerry_create_object()
  %255 = call i32 @jerry_create_string(i32* bitcast ([1 x i8]* @.str.1 to i32*))
  %256 = call { i64, i64 } @T(i32 %254, i32 %255, i32 1)
  %257 = bitcast %struct.TYPE_3__* %253 to { i64, i64 }*
  %258 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %257, i32 0, i32 0
  %259 = extractvalue { i64, i64 } %256, 0
  store i64 %259, i64* %258, align 16
  %260 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %257, i32 0, i32 1
  %261 = extractvalue { i64, i64 } %256, 1
  store i64 %261, i64* %260, align 8
  store i32 0, i32* %13, align 4
  br label %262

262:                                              ; preds = %303, %125
  %263 = load i32, i32* %13, align 4
  %264 = sext i32 %263 to i64
  %265 = icmp ult i64 %264, 14
  br i1 %265, label %266, label %306

266:                                              ; preds = %262
  %267 = load i32, i32* @JERRY_BIN_OP_INSTANCEOF, align 4
  %268 = load i32, i32* %13, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [14 x %struct.TYPE_3__], [14 x %struct.TYPE_3__]* %12, i64 0, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %13, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [14 x %struct.TYPE_3__], [14 x %struct.TYPE_3__]* %12, i64 0, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @jerry_binary_operation(i32 %267, i32 %272, i32 %277)
  store i32 %278, i32* %14, align 4
  %279 = load i32, i32* %14, align 4
  %280 = call i64 @jerry_value_is_error(i32 %279)
  %281 = load i32, i32* %13, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [14 x %struct.TYPE_3__], [14 x %struct.TYPE_3__]* %12, i64 0, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 16
  %286 = icmp eq i64 %280, %285
  %287 = zext i1 %286 to i32
  %288 = call i32 @TEST_ASSERT(i32 %287)
  %289 = load i32, i32* %13, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [14 x %struct.TYPE_3__], [14 x %struct.TYPE_3__]* %12, i64 0, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @jerry_release_value(i32 %293)
  %295 = load i32, i32* %13, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [14 x %struct.TYPE_3__], [14 x %struct.TYPE_3__]* %12, i64 0, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @jerry_release_value(i32 %299)
  %301 = load i32, i32* %14, align 4
  %302 = call i32 @jerry_release_value(i32 %301)
  br label %303

303:                                              ; preds = %266
  %304 = load i32, i32* %13, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %13, align 4
  br label %262

306:                                              ; preds = %262
  %307 = load i32, i32* %2, align 4
  %308 = call i32 @jerry_release_value(i32 %307)
  %309 = load i32, i32* %3, align 4
  %310 = call i32 @jerry_release_value(i32 %309)
  %311 = load i32, i32* %8, align 4
  %312 = call i32 @jerry_release_value(i32 %311)
  %313 = load i32, i32* %7, align 4
  %314 = call i32 @jerry_release_value(i32 %313)
  %315 = load i32, i32* %4, align 4
  %316 = call i32 @jerry_release_value(i32 %315)
  %317 = call i32 (...) @jerry_cleanup()
  ret i32 0
}

declare dso_local i32 @TEST_INIT(...) #1

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i32 @jerry_create_object(...) #1

declare dso_local i32 @jerry_create_external_function(i32) #1

declare dso_local i32 @jerry_construct_object(i32, i32*, i32) #1

declare dso_local i32 @jerry_create_string(i32*) #1

declare dso_local i32 @jerry_set_property(i32, i32, i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i64 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerry_create_error_from_value(i32, i32) #1

declare dso_local { i64, i64 } @T(i32, i32, i32) #1

declare dso_local i32 @jerry_acquire_value(i32) #1

declare dso_local i32 @jerry_binary_operation(i32, i32, i32) #1

declare dso_local i64 @jerry_get_boolean_value(i32) #1

declare dso_local i32 @jerry_create_undefined(...) #1

declare dso_local i32 @jerry_create_number(double) #1

declare dso_local i32 @jerry_create_array(i32) #1

declare dso_local i32 @jerry_create_null(...) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
