; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-promise.c_test_promise_resolve_success.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-promise.c_test_promise_resolve_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRY_PROMISE_STATE_PENDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"key_one\00", align 1
@JERRY_PROMISE_STATE_FULFILLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_promise_resolve_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_promise_resolve_success() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = call i32 (...) @jerry_create_promise()
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @jerry_get_promise_result(i32 %18)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @jerry_value_is_undefined(i32 %20)
  %22 = call i32 @TEST_ASSERT(i32 %21)
  %23 = load i32, i32* %1, align 4
  %24 = call i64 @jerry_get_promise_state(i32 %23)
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @JERRY_PROMISE_STATE_PENDING, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @TEST_ASSERT(i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @jerry_release_value(i32 %30)
  %32 = call i32 (...) @jerry_create_object()
  store i32 %32, i32* %4, align 4
  %33 = call i32 @jerry_create_string(i32* bitcast ([8 x i8]* @.str to i32*))
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @jerry_create_number(i32 3)
  %37 = call i32 @jerry_set_property(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @jerry_value_is_boolean(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %0
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @jerry_get_boolean_value(i32 %42)
  %44 = icmp eq i32 %43, 1
  br label %45

45:                                               ; preds = %41, %0
  %46 = phi i1 [ false, %0 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @TEST_ASSERT(i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @jerry_release_value(i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @jerry_release_value(i32 %51)
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @jerry_resolve_or_reject_promise(i32 %53, i32 %54, i32 1)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @jerry_release_value(i32 %56)
  %58 = load i32, i32* %1, align 4
  %59 = call i32 @jerry_get_promise_result(i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @jerry_value_is_object(i32 %60)
  %62 = call i32 @TEST_ASSERT(i32 %61)
  %63 = call i32 @jerry_create_string(i32* bitcast ([8 x i8]* @.str to i32*))
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @jerry_get_property(i32 %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @jerry_value_is_number(i32 %67)
  %69 = call i32 @TEST_ASSERT(i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = call double @jerry_get_number_value(i32 %70)
  %72 = fcmp oeq double %71, 3.000000e+00
  %73 = zext i1 %72 to i32
  %74 = call i32 @TEST_ASSERT(i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @jerry_release_value(i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @jerry_release_value(i32 %77)
  %79 = load i32, i32* %1, align 4
  %80 = call i64 @jerry_get_promise_state(i32 %79)
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* @JERRY_PROMISE_STATE_FULFILLED, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @TEST_ASSERT(i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @jerry_release_value(i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @jerry_release_value(i32 %88)
  %90 = load i32, i32* %1, align 4
  %91 = call i32 @jerry_create_number(i32 50)
  %92 = call i32 @jerry_resolve_or_reject_promise(i32 %90, i32 %91, i32 0)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %1, align 4
  %94 = call i32 @jerry_get_promise_result(i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @jerry_value_is_object(i32 %95)
  %97 = call i32 @TEST_ASSERT(i32 %96)
  %98 = call i32 @jerry_create_string(i32* bitcast ([8 x i8]* @.str to i32*))
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @jerry_get_property(i32 %99, i32 %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @jerry_value_is_number(i32 %102)
  %104 = call i32 @TEST_ASSERT(i32 %103)
  %105 = load i32, i32* %15, align 4
  %106 = call double @jerry_get_number_value(i32 %105)
  %107 = fcmp oeq double %106, 3.000000e+00
  %108 = zext i1 %107 to i32
  %109 = call i32 @TEST_ASSERT(i32 %108)
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @jerry_release_value(i32 %110)
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @jerry_release_value(i32 %112)
  %114 = load i32, i32* %1, align 4
  %115 = call i64 @jerry_get_promise_state(i32 %114)
  store i64 %115, i64* %16, align 8
  %116 = load i64, i64* %16, align 8
  %117 = load i64, i64* @JERRY_PROMISE_STATE_FULFILLED, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @TEST_ASSERT(i32 %119)
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @jerry_release_value(i32 %121)
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @jerry_release_value(i32 %123)
  %125 = load i32, i32* %1, align 4
  %126 = call i32 @jerry_release_value(i32 %125)
  ret void
}

declare dso_local i32 @jerry_create_promise(...) #1

declare dso_local i32 @jerry_get_promise_result(i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_value_is_undefined(i32) #1

declare dso_local i64 @jerry_get_promise_state(i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_create_object(...) #1

declare dso_local i32 @jerry_create_string(i32*) #1

declare dso_local i32 @jerry_set_property(i32, i32, i32) #1

declare dso_local i32 @jerry_create_number(i32) #1

declare dso_local i64 @jerry_value_is_boolean(i32) #1

declare dso_local i32 @jerry_get_boolean_value(i32) #1

declare dso_local i32 @jerry_resolve_or_reject_promise(i32, i32, i32) #1

declare dso_local i32 @jerry_value_is_object(i32) #1

declare dso_local i32 @jerry_get_property(i32, i32) #1

declare dso_local i32 @jerry_value_is_number(i32) #1

declare dso_local double @jerry_get_number_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
