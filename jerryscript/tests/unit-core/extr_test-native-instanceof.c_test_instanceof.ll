; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-native-instanceof.c_test_instanceof.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-native-instanceof.c_test_instanceof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @test_instanceof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_instanceof(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @jerry_construct_object(i32 %9, i32* null, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %13, align 4
  %15 = call i32 (...) @jerry_create_undefined()
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %7, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %19 = call i32 @jerry_call_function(i32 %16, i32 %17, i32* %18, i32 2)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @jerry_release_value(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @jerry_value_is_error(i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @TEST_ASSERT(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @jerry_value_is_boolean(i32 %28)
  %30 = call i32 @TEST_ASSERT(i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @jerry_get_boolean_value(i32 %31)
  %33 = call i32 @TEST_ASSERT(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @jerry_release_value(i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @jerry_release_value(i32 %36)
  ret void
}

declare dso_local i32 @jerry_construct_object(i32, i32*, i32) #1

declare dso_local i32 @jerry_create_undefined(...) #1

declare dso_local i32 @jerry_call_function(i32, i32, i32*, i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerry_value_is_boolean(i32) #1

declare dso_local i32 @jerry_get_boolean_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
