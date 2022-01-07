; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-strings.c_strict_equals.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-strings.c_strict_equals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.strict_equals.is_equal_src = private unnamed_addr constant [60 x i8] c"var isEqual = function(a, b) { return (a === b); }; isEqual\00", align 16
@JERRY_PARSE_NO_OPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @strict_equals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strict_equals(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [60 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = bitcast [60 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 getelementptr inbounds ([60 x i8], [60 x i8]* @__const.strict_equals.is_equal_src, i32 0, i32 0), i64 60, i1 false)
  %11 = getelementptr inbounds [60 x i8], [60 x i8]* %5, i64 0, i64 0
  %12 = load i32, i32* @JERRY_PARSE_NO_OPTS, align 4
  %13 = call i32 @jerry_eval(i8* %11, i32 59, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @jerry_value_is_error(i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @TEST_ASSERT(i32 %18)
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (...) @jerry_create_undefined()
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %27 = call i32 @jerry_call_function(i32 %24, i32 %25, i32* %26, i32 2)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @jerry_value_is_error(i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @TEST_ASSERT(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @jerry_value_is_boolean(i32 %34)
  %36 = call i32 @TEST_ASSERT(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @jerry_get_boolean_value(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @jerry_release_value(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @jerry_release_value(i32 %41)
  %43 = load i32, i32* %9, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @jerry_eval(i8*, i32, i32) #2

declare dso_local i32 @TEST_ASSERT(i32) #2

declare dso_local i32 @jerry_value_is_error(i32) #2

declare dso_local i32 @jerry_call_function(i32, i32, i32*, i32) #2

declare dso_local i32 @jerry_create_undefined(...) #2

declare dso_local i32 @jerry_value_is_boolean(i32) #2

declare dso_local i32 @jerry_get_boolean_value(i32) #2

declare dso_local i32 @jerry_release_value(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
