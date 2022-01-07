; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-backtrace.c_test_get_backtrace_api_call.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-backtrace.c_test_get_backtrace_api_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@backtrace_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"backtrace\00", align 1
@.str.1 = private unnamed_addr constant [111 x i8] c"function f() {\0A  return backtrace(0);\0A}\0A\0Afunction g() {\0A  return f();\0A}\0A\0Afunction h() {\0A  return g();\0A}\0A\0Ah();\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"something.js\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"something.js:2\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"something.js:6\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"something.js:10\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"something.js:13\00", align 1
@.str.7 = private unnamed_addr constant [111 x i8] c"function f() {\0A  return backtrace(2);\0A}\0A\0Afunction g() {\0A  return f();\0A}\0A\0Afunction h() {\0A  return g();\0A}\0A\0Ah();\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"something_else.js\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"something_else.js:2\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"something_else.js:6\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_backtrace_api_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_backtrace_api_call() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %8 = call i32 @jerry_init(i32 %7)
  %9 = call i32 (...) @jerry_get_global_object()
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @backtrace_handler, align 4
  %11 = call i32 @jerry_create_external_function(i32 %10)
  store i32 %11, i32* %2, align 4
  %12 = call i32 @jerry_create_string(i32* bitcast ([10 x i8]* @.str to i32*))
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @jerry_set_property(i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @jerry_value_is_error(i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @TEST_ASSERT(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @jerry_release_value(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @jerry_release_value(i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @jerry_release_value(i32 %27)
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @jerry_release_value(i32 %29)
  store i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @run(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @jerry_value_is_error(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %0
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @jerry_value_is_array(i32 %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %36, %0
  %41 = phi i1 [ false, %0 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @TEST_ASSERT(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @jerry_get_array_length(i32 %44)
  %46 = icmp eq i32 %45, 4
  %47 = zext i1 %46 to i32
  %48 = call i32 @TEST_ASSERT(i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @compare(i32 %49, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @compare(i32 %51, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @compare(i32 %53, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @compare(i32 %55, i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @jerry_release_value(i32 %57)
  store i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @run(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @jerry_value_is_error(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %40
  %65 = load i32, i32* %6, align 4
  %66 = call i64 @jerry_value_is_array(i32 %65)
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %64, %40
  %69 = phi i1 [ false, %40 ], [ %67, %64 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @TEST_ASSERT(i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @jerry_get_array_length(i32 %72)
  %74 = icmp eq i32 %73, 2
  %75 = zext i1 %74 to i32
  %76 = call i32 @TEST_ASSERT(i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @compare(i32 %77, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @compare(i32 %79, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @jerry_release_value(i32 %81)
  %83 = call i32 (...) @jerry_cleanup()
  ret void
}

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i32 @jerry_get_global_object(...) #1

declare dso_local i32 @jerry_create_external_function(i32) #1

declare dso_local i32 @jerry_create_string(i32*) #1

declare dso_local i32 @jerry_set_property(i32, i32, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @run(i8*, i8*) #1

declare dso_local i64 @jerry_value_is_array(i32) #1

declare dso_local i32 @jerry_get_array_length(i32) #1

declare dso_local i32 @compare(i32, i32, i8*) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
