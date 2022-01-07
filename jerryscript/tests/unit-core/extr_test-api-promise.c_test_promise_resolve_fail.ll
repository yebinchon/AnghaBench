; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-promise.c_test_promise_resolve_fail.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-promise.c_test_promise_resolve_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRY_PROMISE_STATE_PENDING = common dso_local global i64 0, align 8
@JERRY_ERROR_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"resolve_fail\00", align 1
@JERRY_PROMISE_STATE_REJECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_promise_resolve_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_promise_resolve_fail() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = call i32 (...) @jerry_create_promise()
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @jerry_get_promise_result(i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @jerry_value_is_undefined(i32 %15)
  %17 = call i32 @TEST_ASSERT(i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = call i64 @jerry_get_promise_state(i32 %18)
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @JERRY_PROMISE_STATE_PENDING, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @TEST_ASSERT(i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @jerry_release_value(i32 %25)
  %27 = load i64, i64* @JERRY_ERROR_TYPE, align 8
  %28 = call i32 @jerry_create_error(i64 %27, i32* bitcast ([13 x i8]* @.str to i32*))
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @jerry_get_value_from_error(i32 %29, i32 1)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @jerry_resolve_or_reject_promise(i32 %31, i32 %32, i32 0)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @jerry_release_value(i32 %34)
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @jerry_get_promise_result(i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @jerry_value_is_object(i32 %38)
  %40 = call i32 @TEST_ASSERT(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @jerry_get_error_type(i32 %41)
  %43 = load i64, i64* @JERRY_ERROR_TYPE, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @TEST_ASSERT(i32 %45)
  %47 = load i32, i32* %1, align 4
  %48 = call i64 @jerry_get_promise_state(i32 %47)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @JERRY_PROMISE_STATE_REJECTED, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @TEST_ASSERT(i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @jerry_release_value(i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @jerry_release_value(i32 %56)
  %58 = load i32, i32* %1, align 4
  %59 = call i32 @jerry_create_number(i32 50)
  %60 = call i32 @jerry_resolve_or_reject_promise(i32 %58, i32 %59, i32 1)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %1, align 4
  %62 = call i32 @jerry_get_promise_result(i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @jerry_value_is_object(i32 %63)
  %65 = call i32 @TEST_ASSERT(i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = call i64 @jerry_get_error_type(i32 %66)
  %68 = load i64, i64* @JERRY_ERROR_TYPE, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @TEST_ASSERT(i32 %70)
  %72 = load i32, i32* %1, align 4
  %73 = call i64 @jerry_get_promise_state(i32 %72)
  store i64 %73, i64* %11, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* @JERRY_PROMISE_STATE_REJECTED, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @TEST_ASSERT(i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @jerry_release_value(i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @jerry_release_value(i32 %81)
  %83 = load i32, i32* %1, align 4
  %84 = call i32 @jerry_release_value(i32 %83)
  ret void
}

declare dso_local i32 @jerry_create_promise(...) #1

declare dso_local i32 @jerry_get_promise_result(i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_value_is_undefined(i32) #1

declare dso_local i64 @jerry_get_promise_state(i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_create_error(i64, i32*) #1

declare dso_local i32 @jerry_get_value_from_error(i32, i32) #1

declare dso_local i32 @jerry_resolve_or_reject_promise(i32, i32, i32) #1

declare dso_local i32 @jerry_value_is_object(i32) #1

declare dso_local i64 @jerry_get_error_type(i32) #1

declare dso_local i32 @jerry_create_number(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
