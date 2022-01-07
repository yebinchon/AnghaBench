; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-dataview.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-dataview.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRY_FEATURE_DATAVIEW = common dso_local global i32 0, align 4
@JERRY_LOG_LEVEL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"DataView support is disabled!\0A\00", align 1
@JERRY_FEATURE_TYPEDARRAY = common dso_local global i32 0, align 4
@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@JERRY_BIN_OP_STRICT_EQUAL = common dso_local global i32 0, align 4
@JERRY_ERROR_TYPE = common dso_local global i64 0, align 8
@JERRY_ERROR_RANGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"view1\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"view2\00", align 1
@__const.main.set_src = private unnamed_addr constant [25 x i8] c"view1.setInt16 (12, 255)\00", align 16
@JERRY_PARSE_NO_OPTS = common dso_local global i32 0, align 4
@__const.main.get_src = private unnamed_addr constant [19 x i8] c"view2.getInt16 (0)\00", align 16
@__const.main.get_src_little_endian = private unnamed_addr constant [25 x i8] c"view2.getInt16 (0, true)\00", align 16

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
  %15 = alloca [25 x i8], align 16
  %16 = alloca [19 x i8], align 16
  %17 = alloca [25 x i8], align 16
  store i32 0, i32* %1, align 4
  %18 = load i32, i32* @JERRY_FEATURE_DATAVIEW, align 4
  %19 = call i32 @jerry_is_feature_enabled(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %0
  %22 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %23 = call i32 @jerry_port_log(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %168

24:                                               ; preds = %0
  %25 = load i32, i32* @JERRY_FEATURE_TYPEDARRAY, align 4
  %26 = call i32 @jerry_is_feature_enabled(i32 %25)
  %27 = call i32 @TEST_ASSERT(i32 %26)
  %28 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %29 = call i32 @jerry_init(i32 %28)
  %30 = call i32 @jerry_create_arraybuffer(i32 16)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @jerry_create_dataview(i32 %31, i32 0, i32 16)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @jerry_value_is_error(i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @TEST_ASSERT(i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @jerry_value_is_dataview(i32 %39)
  %41 = call i32 @TEST_ASSERT(i32 %40)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @jerry_get_dataview_buffer(i32 %42, i32* %4, i32* %5)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @JERRY_BIN_OP_STRICT_EQUAL, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @jerry_binary_operation(i32 %44, i32 %45, i32 %46)
  %48 = call i32 @TEST_ASSERT(i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @TEST_ASSERT(i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 16
  %55 = zext i1 %54 to i32
  %56 = call i32 @TEST_ASSERT(i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @jerry_release_value(i32 %57)
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @jerry_create_dataview(i32 %59, i32 12, i32 4)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @jerry_value_is_error(i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @TEST_ASSERT(i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @jerry_value_is_dataview(i32 %67)
  %69 = call i32 @TEST_ASSERT(i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @jerry_get_dataview_buffer(i32 %70, i32* %4, i32* %5)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @JERRY_BIN_OP_STRICT_EQUAL, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @jerry_binary_operation(i32 %72, i32 %73, i32 %74)
  %76 = call i32 @TEST_ASSERT(i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = icmp eq i32 %77, 12
  %79 = zext i1 %78 to i32
  %80 = call i32 @TEST_ASSERT(i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = icmp eq i32 %81, 4
  %83 = zext i1 %82 to i32
  %84 = call i32 @TEST_ASSERT(i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @jerry_release_value(i32 %85)
  %87 = call i32 (...) @jerry_create_object()
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @jerry_create_dataview(i32 %88, i32 20, i32 10)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @jerry_value_is_error(i32 %90)
  %92 = call i32 @TEST_ASSERT(i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @jerry_get_value_from_error(i32 %93, i32 1)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i64 @jerry_get_error_type(i32 %95)
  %97 = load i64, i64* @JERRY_ERROR_TYPE, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @TEST_ASSERT(i32 %99)
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @jerry_release_value(i32 %101)
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @jerry_release_value(i32 %103)
  %105 = load i32, i32* %2, align 4
  %106 = call i32 @jerry_create_dataview(i32 %105, i32 20, i32 10)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @jerry_value_is_error(i32 %107)
  %109 = call i32 @TEST_ASSERT(i32 %108)
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @jerry_get_value_from_error(i32 %110, i32 1)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i64 @jerry_get_error_type(i32 %112)
  %114 = load i64, i64* @JERRY_ERROR_RANGE, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @TEST_ASSERT(i32 %116)
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @jerry_release_value(i32 %118)
  %120 = call i32 (...) @jerry_get_global_object()
  store i32 %120, i32* %12, align 4
  %121 = call i32 @jerry_create_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %121, i32* %13, align 4
  %122 = call i32 @jerry_create_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @jerry_set_property(i32 %123, i32 %124, i32 %125)
  %127 = call i32 @TEST_ASSERT(i32 %126)
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @jerry_set_property(i32 %128, i32 %129, i32 %130)
  %132 = call i32 @TEST_ASSERT(i32 %131)
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @jerry_release_value(i32 %133)
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @jerry_release_value(i32 %135)
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @jerry_release_value(i32 %137)
  %139 = bitcast [25 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %139, i8* align 16 getelementptr inbounds ([25 x i8], [25 x i8]* @__const.main.set_src, i32 0, i32 0), i64 25, i1 false)
  %140 = getelementptr inbounds [25 x i8], [25 x i8]* %15, i64 0, i64 0
  %141 = load i32, i32* @JERRY_PARSE_NO_OPTS, align 4
  %142 = call i32 @jerry_eval(i8* %140, i32 24, i32 %141)
  %143 = call i32 @jerry_value_is_undefined(i32 %142)
  %144 = call i32 @TEST_ASSERT(i32 %143)
  %145 = bitcast [19 x i8]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %145, i8* align 16 getelementptr inbounds ([19 x i8], [19 x i8]* @__const.main.get_src, i32 0, i32 0), i64 19, i1 false)
  %146 = getelementptr inbounds [19 x i8], [19 x i8]* %16, i64 0, i64 0
  %147 = load i32, i32* @JERRY_PARSE_NO_OPTS, align 4
  %148 = call i32 @jerry_eval(i8* %146, i32 18, i32 %147)
  %149 = call i32 @jerry_get_number_value(i32 %148)
  %150 = icmp eq i32 %149, 255
  %151 = zext i1 %150 to i32
  %152 = call i32 @TEST_ASSERT(i32 %151)
  %153 = bitcast [25 x i8]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %153, i8* align 16 getelementptr inbounds ([25 x i8], [25 x i8]* @__const.main.get_src_little_endian, i32 0, i32 0), i64 25, i1 false)
  %154 = getelementptr inbounds [25 x i8], [25 x i8]* %17, i64 0, i64 0
  %155 = load i32, i32* @JERRY_PARSE_NO_OPTS, align 4
  %156 = call i32 @jerry_eval(i8* %154, i32 24, i32 %155)
  %157 = call i32 @jerry_get_number_value(i32 %156)
  %158 = icmp eq i32 %157, -256
  %159 = zext i1 %158 to i32
  %160 = call i32 @TEST_ASSERT(i32 %159)
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @jerry_release_value(i32 %161)
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @jerry_release_value(i32 %163)
  %165 = load i32, i32* %2, align 4
  %166 = call i32 @jerry_release_value(i32 %165)
  %167 = call i32 (...) @jerry_cleanup()
  store i32 0, i32* %1, align 4
  br label %168

168:                                              ; preds = %24, %21
  %169 = load i32, i32* %1, align 4
  ret i32 %169
}

declare dso_local i32 @jerry_is_feature_enabled(i32) #1

declare dso_local i32 @jerry_port_log(i32, i8*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i32 @jerry_create_arraybuffer(i32) #1

declare dso_local i32 @jerry_create_dataview(i32, i32, i32) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerry_value_is_dataview(i32) #1

declare dso_local i32 @jerry_get_dataview_buffer(i32, i32*, i32*) #1

declare dso_local i32 @jerry_binary_operation(i32, i32, i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_create_object(...) #1

declare dso_local i32 @jerry_get_value_from_error(i32, i32) #1

declare dso_local i64 @jerry_get_error_type(i32) #1

declare dso_local i32 @jerry_get_global_object(...) #1

declare dso_local i32 @jerry_create_string(i8*) #1

declare dso_local i32 @jerry_set_property(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @jerry_value_is_undefined(i32) #1

declare dso_local i32 @jerry_eval(i8*, i32, i32) #1

declare dso_local i32 @jerry_get_number_value(i32) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
