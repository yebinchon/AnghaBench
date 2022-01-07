; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-module-canonical.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-ext/extr_test-ext-module-canonical.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@canonical_test = common dso_local global i32 0, align 4
@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@ACTUAL_NAME = common dso_local global i64 0, align 8
@ALIAS_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"something\00", align 1
@TEST_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  store i32* @canonical_test, i32** %6, align 8
  %15 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %16 = call i32 @jerry_init(i32 %15)
  %17 = load i64, i64* @ACTUAL_NAME, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = call i32 @jerry_create_string(i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i64, i64* @ALIAS_NAME, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = call i32 @jerry_create_string(i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @jerryx_module_resolve(i32 %23, i32** %6, i32 1)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @jerryx_module_resolve(i32 %25, i32** %6, i32 1)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @jerry_release_value(i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @jerry_release_value(i32 %29)
  %31 = call i32 @jerry_create_string(i32* bitcast ([10 x i8]* @.str to i32*))
  store i32 %31, i32* %11, align 4
  %32 = load i64, i64* @TEST_VALUE, align 8
  %33 = call i32 @jerry_create_number(i64 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @jerry_set_property(i32 %34, i32 %35, i32 %36)
  %38 = call i32 @jerry_release_value(i32 %37)
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @jerry_release_value(i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @jerry_get_property(i32 %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i64 @jerry_get_number_value(i32 %44)
  %46 = load i64, i64* @TEST_VALUE, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @TEST_ASSERT(i32 %48)
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @jerry_release_value(i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @jerry_release_value(i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @jerry_release_value(i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @jerry_release_value(i32 %56)
  %58 = call i32 (...) @jerry_cleanup()
  ret i32 0
}

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i32 @jerry_create_string(i32*) #1

declare dso_local i32 @jerryx_module_resolve(i32, i32**, i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_create_number(i64) #1

declare dso_local i32 @jerry_set_property(i32, i32, i32) #1

declare dso_local i32 @jerry_get_property(i32, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i64 @jerry_get_number_value(i32) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
