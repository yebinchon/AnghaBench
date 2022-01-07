; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-value-type.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-value-type.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@__const.main.test_eval_function = private unnamed_addr constant [41 x i8] c"function demo(a) { return a + 1; }; demo\00", align 16
@JERRY_TYPE_NUMBER = common dso_local global i32 0, align 4
@JERRY_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@JERRY_TYPE_UNDEFINED = common dso_local global i32 0, align 4
@JERRY_TYPE_OBJECT = common dso_local global i32 0, align 4
@JERRY_TYPE_ERROR = common dso_local global i32 0, align 4
@JERRY_ERROR_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"error\00", align 1
@JERRY_TYPE_NULL = common dso_local global i32 0, align 4
@JERRY_TYPE_FUNCTION = common dso_local global i32 0, align 4
@JERRY_PARSE_NO_OPTS = common dso_local global i32 0, align 4
@test_ext_function = common dso_local global i32 0, align 4
@JERRY_TYPE_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@JERRY_TYPE_NONE = common dso_local global i64 0, align 8
@JERRY_FEATURE_SYMBOL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@JERRY_TYPE_SYMBOL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [41 x i8], align 16
  %3 = alloca [16 x %struct.TYPE_3__], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %9 = call i32 (...) @TEST_INIT()
  %10 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %11 = call i32 @jerry_init(i32 %10)
  %12 = bitcast [41 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 getelementptr inbounds ([41 x i8], [41 x i8]* @__const.main.test_eval_function, i32 0, i32 0), i64 41, i1 false)
  %13 = getelementptr inbounds [16 x %struct.TYPE_3__], [16 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %14 = load i32, i32* @JERRY_TYPE_NUMBER, align 4
  %15 = call i32 @jerry_create_number(i32 -33)
  %16 = call { i64, i32 } @ENTRY(i32 %14, i32 %15)
  %17 = bitcast %struct.TYPE_3__* %13 to { i64, i32 }*
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %19 = extractvalue { i64, i32 } %16, 0
  store i64 %19, i64* %18, align 16
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %21 = extractvalue { i64, i32 } %16, 1
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 1
  %23 = load i32, i32* @JERRY_TYPE_NUMBER, align 4
  %24 = call i32 @jerry_create_number(i32 3)
  %25 = call { i64, i32 } @ENTRY(i32 %23, i32 %24)
  %26 = bitcast %struct.TYPE_3__* %22 to { i64, i32 }*
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 0
  %28 = extractvalue { i64, i32 } %25, 0
  store i64 %28, i64* %27, align 16
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 1
  %30 = extractvalue { i64, i32 } %25, 1
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 1
  %32 = load i32, i32* @JERRY_TYPE_NUMBER, align 4
  %33 = call i32 (...) @jerry_create_number_nan()
  %34 = call { i64, i32 } @ENTRY(i32 %32, i32 %33)
  %35 = bitcast %struct.TYPE_3__* %31 to { i64, i32 }*
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 0
  %37 = extractvalue { i64, i32 } %34, 0
  store i64 %37, i64* %36, align 16
  %38 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %35, i32 0, i32 1
  %39 = extractvalue { i64, i32 } %34, 1
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 1
  %41 = load i32, i32* @JERRY_TYPE_NUMBER, align 4
  %42 = call i32 @jerry_create_number_infinity(i32 0)
  %43 = call { i64, i32 } @ENTRY(i32 %41, i32 %42)
  %44 = bitcast %struct.TYPE_3__* %40 to { i64, i32 }*
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %44, i32 0, i32 0
  %46 = extractvalue { i64, i32 } %43, 0
  store i64 %46, i64* %45, align 16
  %47 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %44, i32 0, i32 1
  %48 = extractvalue { i64, i32 } %43, 1
  store i32 %48, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 1
  %50 = load i32, i32* @JERRY_TYPE_NUMBER, align 4
  %51 = call i32 @jerry_create_number_infinity(i32 1)
  %52 = call { i64, i32 } @ENTRY(i32 %50, i32 %51)
  %53 = bitcast %struct.TYPE_3__* %49 to { i64, i32 }*
  %54 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %53, i32 0, i32 0
  %55 = extractvalue { i64, i32 } %52, 0
  store i64 %55, i64* %54, align 16
  %56 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %53, i32 0, i32 1
  %57 = extractvalue { i64, i32 } %52, 1
  store i32 %57, i32* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 1
  %59 = load i32, i32* @JERRY_TYPE_BOOLEAN, align 4
  %60 = call i32 @jerry_create_boolean(i32 1)
  %61 = call { i64, i32 } @ENTRY(i32 %59, i32 %60)
  %62 = bitcast %struct.TYPE_3__* %58 to { i64, i32 }*
  %63 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %62, i32 0, i32 0
  %64 = extractvalue { i64, i32 } %61, 0
  store i64 %64, i64* %63, align 16
  %65 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %62, i32 0, i32 1
  %66 = extractvalue { i64, i32 } %61, 1
  store i32 %66, i32* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 1
  %68 = load i32, i32* @JERRY_TYPE_BOOLEAN, align 4
  %69 = call i32 @jerry_create_boolean(i32 0)
  %70 = call { i64, i32 } @ENTRY(i32 %68, i32 %69)
  %71 = bitcast %struct.TYPE_3__* %67 to { i64, i32 }*
  %72 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %71, i32 0, i32 0
  %73 = extractvalue { i64, i32 } %70, 0
  store i64 %73, i64* %72, align 16
  %74 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %71, i32 0, i32 1
  %75 = extractvalue { i64, i32 } %70, 1
  store i32 %75, i32* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 1
  %77 = load i32, i32* @JERRY_TYPE_UNDEFINED, align 4
  %78 = call i32 (...) @jerry_create_undefined()
  %79 = call { i64, i32 } @ENTRY(i32 %77, i32 %78)
  %80 = bitcast %struct.TYPE_3__* %76 to { i64, i32 }*
  %81 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %80, i32 0, i32 0
  %82 = extractvalue { i64, i32 } %79, 0
  store i64 %82, i64* %81, align 16
  %83 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %80, i32 0, i32 1
  %84 = extractvalue { i64, i32 } %79, 1
  store i32 %84, i32* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 1
  %86 = load i32, i32* @JERRY_TYPE_OBJECT, align 4
  %87 = call i32 (...) @jerry_create_object()
  %88 = call { i64, i32 } @ENTRY(i32 %86, i32 %87)
  %89 = bitcast %struct.TYPE_3__* %85 to { i64, i32 }*
  %90 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %89, i32 0, i32 0
  %91 = extractvalue { i64, i32 } %88, 0
  store i64 %91, i64* %90, align 16
  %92 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %89, i32 0, i32 1
  %93 = extractvalue { i64, i32 } %88, 1
  store i32 %93, i32* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 1
  %95 = load i32, i32* @JERRY_TYPE_OBJECT, align 4
  %96 = call i32 @jerry_create_array(i32 10)
  %97 = call { i64, i32 } @ENTRY(i32 %95, i32 %96)
  %98 = bitcast %struct.TYPE_3__* %94 to { i64, i32 }*
  %99 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %98, i32 0, i32 0
  %100 = extractvalue { i64, i32 } %97, 0
  store i64 %100, i64* %99, align 16
  %101 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %98, i32 0, i32 1
  %102 = extractvalue { i64, i32 } %97, 1
  store i32 %102, i32* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 1
  %104 = load i32, i32* @JERRY_TYPE_ERROR, align 4
  %105 = load i32, i32* @JERRY_ERROR_TYPE, align 4
  %106 = call i32 @jerry_create_error(i32 %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %107 = call { i64, i32 } @ENTRY(i32 %104, i32 %106)
  %108 = bitcast %struct.TYPE_3__* %103 to { i64, i32 }*
  %109 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %108, i32 0, i32 0
  %110 = extractvalue { i64, i32 } %107, 0
  store i64 %110, i64* %109, align 16
  %111 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %108, i32 0, i32 1
  %112 = extractvalue { i64, i32 } %107, 1
  store i32 %112, i32* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 1
  %114 = load i32, i32* @JERRY_TYPE_NULL, align 4
  %115 = call i32 (...) @jerry_create_null()
  %116 = call { i64, i32 } @ENTRY(i32 %114, i32 %115)
  %117 = bitcast %struct.TYPE_3__* %113 to { i64, i32 }*
  %118 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %117, i32 0, i32 0
  %119 = extractvalue { i64, i32 } %116, 0
  store i64 %119, i64* %118, align 16
  %120 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %117, i32 0, i32 1
  %121 = extractvalue { i64, i32 } %116, 1
  store i32 %121, i32* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 1
  %123 = load i32, i32* @JERRY_TYPE_FUNCTION, align 4
  %124 = getelementptr inbounds [41 x i8], [41 x i8]* %2, i64 0, i64 0
  %125 = load i32, i32* @JERRY_PARSE_NO_OPTS, align 4
  %126 = call i32 @jerry_eval(i8* %124, i32 40, i32 %125)
  %127 = call { i64, i32 } @ENTRY(i32 %123, i32 %126)
  %128 = bitcast %struct.TYPE_3__* %122 to { i64, i32 }*
  %129 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %128, i32 0, i32 0
  %130 = extractvalue { i64, i32 } %127, 0
  store i64 %130, i64* %129, align 16
  %131 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %128, i32 0, i32 1
  %132 = extractvalue { i64, i32 } %127, 1
  store i32 %132, i32* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 1
  %134 = load i32, i32* @JERRY_TYPE_FUNCTION, align 4
  %135 = load i32, i32* @test_ext_function, align 4
  %136 = call i32 @jerry_create_external_function(i32 %135)
  %137 = call { i64, i32 } @ENTRY(i32 %134, i32 %136)
  %138 = bitcast %struct.TYPE_3__* %133 to { i64, i32 }*
  %139 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %138, i32 0, i32 0
  %140 = extractvalue { i64, i32 } %137, 0
  store i64 %140, i64* %139, align 16
  %141 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %138, i32 0, i32 1
  %142 = extractvalue { i64, i32 } %137, 1
  store i32 %142, i32* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i64 1
  %144 = load i32, i32* @JERRY_TYPE_STRING, align 4
  %145 = getelementptr inbounds [41 x i8], [41 x i8]* %2, i64 0, i64 0
  %146 = call i32 @jerry_create_string(i8* %145)
  %147 = call { i64, i32 } @ENTRY(i32 %144, i32 %146)
  %148 = bitcast %struct.TYPE_3__* %143 to { i64, i32 }*
  %149 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %148, i32 0, i32 0
  %150 = extractvalue { i64, i32 } %147, 0
  store i64 %150, i64* %149, align 16
  %151 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %148, i32 0, i32 1
  %152 = extractvalue { i64, i32 } %147, 1
  store i32 %152, i32* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 1
  %154 = load i32, i32* @JERRY_TYPE_STRING, align 4
  %155 = call i32 @jerry_create_string(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %156 = call { i64, i32 } @ENTRY(i32 %154, i32 %155)
  %157 = bitcast %struct.TYPE_3__* %153 to { i64, i32 }*
  %158 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %157, i32 0, i32 0
  %159 = extractvalue { i64, i32 } %156, 0
  store i64 %159, i64* %158, align 16
  %160 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %157, i32 0, i32 1
  %161 = extractvalue { i64, i32 } %156, 1
  store i32 %161, i32* %160, align 8
  store i64 0, i64* %4, align 8
  br label %162

162:                                              ; preds = %189, %0
  %163 = load i64, i64* %4, align 8
  %164 = icmp ult i64 %163, 16
  br i1 %164, label %165, label %192

165:                                              ; preds = %162
  %166 = load i64, i64* %4, align 8
  %167 = getelementptr inbounds [16 x %struct.TYPE_3__], [16 x %struct.TYPE_3__]* %3, i64 0, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @jerry_value_get_type(i32 %169)
  store i64 %170, i64* %5, align 8
  %171 = load i64, i64* %5, align 8
  %172 = load i64, i64* @JERRY_TYPE_NONE, align 8
  %173 = icmp ne i64 %171, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 @TEST_ASSERT(i32 %174)
  %176 = load i64, i64* %5, align 8
  %177 = load i64, i64* %4, align 8
  %178 = getelementptr inbounds [16 x %struct.TYPE_3__], [16 x %struct.TYPE_3__]* %3, i64 0, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 16
  %181 = icmp eq i64 %176, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @TEST_ASSERT(i32 %182)
  %184 = load i64, i64* %4, align 8
  %185 = getelementptr inbounds [16 x %struct.TYPE_3__], [16 x %struct.TYPE_3__]* %3, i64 0, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @jerry_release_value(i32 %187)
  br label %189

189:                                              ; preds = %165
  %190 = load i64, i64* %4, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %4, align 8
  br label %162

192:                                              ; preds = %162
  %193 = load i32, i32* @JERRY_FEATURE_SYMBOL, align 4
  %194 = call i64 @jerry_is_feature_enabled(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %216

196:                                              ; preds = %192
  %197 = call i32 @jerry_create_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %197, i32* %6, align 4
  %198 = load i32, i32* %6, align 4
  %199 = call i32 @jerry_create_symbol(i32 %198)
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %7, align 4
  %201 = call i64 @jerry_value_get_type(i32 %200)
  store i64 %201, i64* %8, align 8
  %202 = load i64, i64* %8, align 8
  %203 = load i64, i64* @JERRY_TYPE_NONE, align 8
  %204 = icmp ne i64 %202, %203
  %205 = zext i1 %204 to i32
  %206 = call i32 @TEST_ASSERT(i32 %205)
  %207 = load i64, i64* %8, align 8
  %208 = load i64, i64* @JERRY_TYPE_SYMBOL, align 8
  %209 = icmp eq i64 %207, %208
  %210 = zext i1 %209 to i32
  %211 = call i32 @TEST_ASSERT(i32 %210)
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @jerry_release_value(i32 %212)
  %214 = load i32, i32* %6, align 4
  %215 = call i32 @jerry_release_value(i32 %214)
  br label %216

216:                                              ; preds = %196, %192
  %217 = call i32 (...) @jerry_cleanup()
  ret i32 0
}

declare dso_local i32 @TEST_INIT(...) #1

declare dso_local i32 @jerry_init(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i32 } @ENTRY(i32, i32) #1

declare dso_local i32 @jerry_create_number(i32) #1

declare dso_local i32 @jerry_create_number_nan(...) #1

declare dso_local i32 @jerry_create_number_infinity(i32) #1

declare dso_local i32 @jerry_create_boolean(i32) #1

declare dso_local i32 @jerry_create_undefined(...) #1

declare dso_local i32 @jerry_create_object(...) #1

declare dso_local i32 @jerry_create_array(i32) #1

declare dso_local i32 @jerry_create_error(i32, i8*) #1

declare dso_local i32 @jerry_create_null(...) #1

declare dso_local i32 @jerry_eval(i8*, i32, i32) #1

declare dso_local i32 @jerry_create_external_function(i32) #1

declare dso_local i32 @jerry_create_string(i8*) #1

declare dso_local i64 @jerry_value_get_type(i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i64 @jerry_is_feature_enabled(i32) #1

declare dso_local i32 @jerry_create_symbol(i32) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
