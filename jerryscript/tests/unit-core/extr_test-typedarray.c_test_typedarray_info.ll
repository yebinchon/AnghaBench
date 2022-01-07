; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-typedarray.c_test_typedarray_info.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-typedarray.c_test_typedarray_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64)* @test_typedarray_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_typedarray_info(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @jerry_value_is_error(i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @TEST_ASSERT(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @jerry_value_is_typedarray(i32 %18)
  %20 = call i32 @TEST_ASSERT(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @jerry_get_typedarray_type(i32 %21)
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @TEST_ASSERT(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @jerry_get_typedarray_length(i32 %27)
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @TEST_ASSERT(i32 %31)
  store i64 -1, i64* %9, align 8
  store i64 -1, i64* %10, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @jerry_get_typedarray_buffer(i32 %33, i64* %10, i64* %9)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @jerry_value_is_arraybuffer(i32 %35)
  %37 = call i32 @TEST_ASSERT(i32 %36)
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = mul nsw i64 %39, %40
  %42 = icmp eq i64 %38, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @TEST_ASSERT(i32 %43)
  %45 = load i64, i64* %10, align 8
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @TEST_ASSERT(i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @jerry_release_value(i32 %49)
  ret void
}

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i32 @jerry_value_is_typedarray(i32) #1

declare dso_local i64 @jerry_get_typedarray_type(i32) #1

declare dso_local i64 @jerry_get_typedarray_length(i32) #1

declare dso_local i32 @jerry_get_typedarray_buffer(i32, i64*, i64*) #1

declare dso_local i32 @jerry_value_is_arraybuffer(i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
