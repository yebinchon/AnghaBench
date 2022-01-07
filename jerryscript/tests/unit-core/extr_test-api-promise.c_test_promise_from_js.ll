; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-promise.c_test_promise_from_js.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-api-promise.c_test_promise_from_js.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_promise_from_js.test_source = private unnamed_addr constant [80 x i8] c"(new Promise(function(rs, rj) { rs(30); })).then(function(v) { return v + 1; })\00", align 16
@JERRY_PARSE_NO_OPTS = common dso_local global i32 0, align 4
@JERRY_PROMISE_STATE_PENDING = common dso_local global i64 0, align 8
@JERRY_PROMISE_STATE_FULFILLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_promise_from_js to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_promise_from_js() #0 {
  %1 = alloca [80 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast [80 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([80 x i8], [80 x i8]* @__const.test_promise_from_js.test_source, i32 0, i32 0), i64 80, i1 false)
  %7 = getelementptr inbounds [80 x i8], [80 x i8]* %1, i64 0, i64 0
  %8 = load i32, i32* @JERRY_PARSE_NO_OPTS, align 4
  %9 = call i32 @jerry_parse(i32* null, i32 0, i8* %7, i32 79, i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @jerry_value_is_error(i32 %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @TEST_ASSERT(i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @jerry_run(i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @jerry_value_is_promise(i32 %18)
  %20 = call i32 @TEST_ASSERT(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @jerry_get_promise_state(i32 %21)
  %23 = load i64, i64* @JERRY_PROMISE_STATE_PENDING, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @TEST_ASSERT(i32 %25)
  %27 = call i32 (...) @jerry_run_all_enqueued_jobs()
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @jerry_value_is_undefined(i32 %28)
  %30 = call i32 @TEST_ASSERT(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @jerry_release_value(i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @jerry_get_promise_state(i32 %33)
  %35 = load i64, i64* @JERRY_PROMISE_STATE_FULFILLED, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @TEST_ASSERT(i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @jerry_get_promise_result(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @jerry_value_is_number(i32 %41)
  %43 = call i32 @TEST_ASSERT(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call double @jerry_get_number_value(i32 %44)
  %46 = fcmp oeq double %45, 3.100000e+01
  %47 = zext i1 %46 to i32
  %48 = call i32 @TEST_ASSERT(i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @jerry_release_value(i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @jerry_release_value(i32 %51)
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @jerry_release_value(i32 %53)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @jerry_parse(i32*, i32, i8*, i32, i32) #2

declare dso_local i32 @TEST_ASSERT(i32) #2

declare dso_local i32 @jerry_value_is_error(i32) #2

declare dso_local i32 @jerry_run(i32) #2

declare dso_local i32 @jerry_value_is_promise(i32) #2

declare dso_local i64 @jerry_get_promise_state(i32) #2

declare dso_local i32 @jerry_run_all_enqueued_jobs(...) #2

declare dso_local i32 @jerry_value_is_undefined(i32) #2

declare dso_local i32 @jerry_release_value(i32) #2

declare dso_local i32 @jerry_get_promise_result(i32) #2

declare dso_local i32 @jerry_value_is_number(i32) #2

declare dso_local double @jerry_get_number_value(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
