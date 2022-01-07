; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-resource-name.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-resource-name.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRY_FEATURE_LINE_INFO = common dso_local global i32 0, align 4
@JERRY_LOG_LEVEL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Line info support is disabled!\0A\00", align 1
@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@resource_name_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"resourceName\00", align 1
@.str.2 = private unnamed_addr constant [202 x i8] c"function f1 () {\0A  if (resourceName() !== 'demo1.js') return false; \0A  if (resourceName(f1) !== 'demo1.js') return false; \0A  if (resourceName(5) !== '<anonymous>') return false; \0A  return f1; \0A} \0Af1();\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"demo1.js\00", align 1
@JERRY_PARSE_NO_OPTS = common dso_local global i32 0, align 4
@JERRY_BIN_OP_STRICT_EQUAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [337 x i8] c"function f2 () { \0A  if (resourceName() !== 'demo2.js') return false; \0A  if (resourceName(f2) !== 'demo2.js') return false; \0A  if (resourceName(f1) !== 'demo1.js') return false; \0A  if (resourceName(Object.prototype) !== '<anonymous>') return false; \0A  if (resourceName(Function) !== '<anonymous>') return false; \0A  return f2; \0A} \0Af2(); \0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"demo2.js\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %15 = call i32 (...) @TEST_INIT()
  %16 = load i32, i32* @JERRY_FEATURE_LINE_INFO, align 4
  %17 = call i32 @jerry_is_feature_enabled(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %0
  %20 = load i32, i32* @JERRY_LOG_LEVEL_ERROR, align 4
  %21 = call i32 @jerry_port_log(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %132

22:                                               ; preds = %0
  %23 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %24 = call i32 @jerry_init(i32 %23)
  %25 = call i32 (...) @jerry_get_global_object()
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* @resource_name_handler, align 4
  %27 = call i32 @jerry_create_external_function(i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = call i32 @jerry_create_string(i32* bitcast ([13 x i8]* @.str.1 to i32*))
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @jerry_set_property(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @jerry_release_value(i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @jerry_release_value(i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @jerry_release_value(i32 %37)
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @jerry_release_value(i32 %39)
  store i8* getelementptr inbounds ([202 x i8], [202 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = load i8*, i8** %6, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = load i32, i32* @JERRY_PARSE_NO_OPTS, align 4
  %50 = call i32 @jerry_parse(i32* %42, i32 %44, i32* %46, i32 %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @jerry_value_is_error(i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @TEST_ASSERT(i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @jerry_run(i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @jerry_value_is_error(i32 %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @TEST_ASSERT(i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @jerry_value_is_object(i32 %65)
  %67 = call i32 @TEST_ASSERT(i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @jerry_get_resource_name(i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = call i32 @jerry_create_string(i32* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* @JERRY_BIN_OP_STRICT_EQUAL, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @jerry_binary_operation(i32 %73, i32 %74, i32 %75)
  %77 = call i32 @TEST_ASSERT(i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @jerry_release_value(i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @jerry_release_value(i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @jerry_release_value(i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @jerry_release_value(i32 %84)
  store i8* getelementptr inbounds ([337 x i8], [337 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = bitcast i8* %86 to i32*
  %88 = load i8*, i8** %13, align 8
  %89 = call i32 @strlen(i8* %88)
  %90 = load i8*, i8** %12, align 8
  %91 = bitcast i8* %90 to i32*
  %92 = load i8*, i8** %12, align 8
  %93 = call i32 @strlen(i8* %92)
  %94 = load i32, i32* @JERRY_PARSE_NO_OPTS, align 4
  %95 = call i32 @jerry_parse(i32* %87, i32 %89, i32* %91, i32 %93, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @jerry_value_is_error(i32 %96)
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 @TEST_ASSERT(i32 %100)
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @jerry_run(i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @jerry_value_is_error(i32 %104)
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 @TEST_ASSERT(i32 %108)
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @jerry_value_is_object(i32 %110)
  %112 = call i32 @TEST_ASSERT(i32 %111)
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @jerry_get_resource_name(i32 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i8*, i8** %13, align 8
  %116 = bitcast i8* %115 to i32*
  %117 = call i32 @jerry_create_string(i32* %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* @JERRY_BIN_OP_STRICT_EQUAL, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @jerry_binary_operation(i32 %118, i32 %119, i32 %120)
  %122 = call i32 @TEST_ASSERT(i32 %121)
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @jerry_release_value(i32 %123)
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @jerry_release_value(i32 %125)
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @jerry_release_value(i32 %127)
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @jerry_release_value(i32 %129)
  %131 = call i32 (...) @jerry_cleanup()
  store i32 0, i32* %1, align 4
  br label %132

132:                                              ; preds = %22, %19
  %133 = load i32, i32* %1, align 4
  ret i32 %133
}

declare dso_local i32 @TEST_INIT(...) #1

declare dso_local i32 @jerry_is_feature_enabled(i32) #1

declare dso_local i32 @jerry_port_log(i32, i8*) #1

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i32 @jerry_get_global_object(...) #1

declare dso_local i32 @jerry_create_external_function(i32) #1

declare dso_local i32 @jerry_create_string(i32*) #1

declare dso_local i32 @jerry_set_property(i32, i32, i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_parse(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerry_run(i32) #1

declare dso_local i32 @jerry_value_is_object(i32) #1

declare dso_local i32 @jerry_get_resource_name(i32) #1

declare dso_local i32 @jerry_binary_operation(i32, i32, i32) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
