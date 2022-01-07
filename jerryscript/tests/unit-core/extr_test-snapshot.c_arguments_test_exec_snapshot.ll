; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-snapshot.c_arguments_test_exec_snapshot.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-snapshot.c_arguments_test_exec_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32)* @arguments_test_exec_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arguments_test_exec_snapshot(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %10 = call i32 @jerry_init(i32 %9)
  %11 = load i32*, i32** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @jerry_exec_snapshot(i32* %11, i64 %12, i32 0, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @jerry_value_is_error(i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @TEST_ASSERT(i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @jerry_value_is_number(i32 %21)
  %23 = call i32 @TEST_ASSERT(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = call double @jerry_get_number_value(i32 %24)
  store double %25, double* %8, align 8
  %26 = load double, double* %8, align 8
  %27 = fcmp oeq double %26, 1.500000e+01
  %28 = zext i1 %27 to i32
  %29 = call i32 @TEST_ASSERT(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @jerry_release_value(i32 %30)
  %32 = call i32 (...) @jerry_cleanup()
  ret void
}

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i32 @jerry_exec_snapshot(i32*, i64, i32, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerry_value_is_number(i32) #1

declare dso_local double @jerry_get_number_value(i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
