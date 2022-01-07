; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-has-property.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-core/extr_test-has-property.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"something\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = call i32 (...) @TEST_INIT()
  %7 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %8 = call i32 @jerry_init(i32 %7)
  %9 = call i32 (...) @jerry_create_object()
  store i32 %9, i32* %2, align 4
  %10 = call i32 @jerry_create_string_from_utf8(i32* bitcast ([10 x i8]* @.str to i32*))
  store i32 %10, i32* %3, align 4
  %11 = call i32 @jerry_create_boolean(i32 1)
  store i32 %11, i32* %4, align 4
  %12 = call i32 (...) @jerry_create_object()
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @jerry_has_property(i32 %13, i32 %14)
  %16 = call i32 @assert_boolean_and_release(i32 %15, i32 0)
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @jerry_has_own_property(i32 %17, i32 %18)
  %20 = call i32 @assert_boolean_and_release(i32 %19, i32 0)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @jerry_set_prototype(i32 %21, i32 %22)
  %24 = call i32 @assert_boolean_and_release(i32 %23, i32 1)
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @jerry_has_property(i32 %25, i32 %26)
  %28 = call i32 @assert_boolean_and_release(i32 %27, i32 0)
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @jerry_has_own_property(i32 %29, i32 %30)
  %32 = call i32 @assert_boolean_and_release(i32 %31, i32 0)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @jerry_set_property(i32 %33, i32 %34, i32 %35)
  %37 = call i32 @assert_boolean_and_release(i32 %36, i32 1)
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @jerry_has_property(i32 %38, i32 %39)
  %41 = call i32 @assert_boolean_and_release(i32 %40, i32 1)
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @jerry_has_own_property(i32 %42, i32 %43)
  %45 = call i32 @assert_boolean_and_release(i32 %44, i32 0)
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @jerry_delete_property(i32 %46, i32 %47)
  %49 = call i32 @TEST_ASSERT(i32 %48)
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @jerry_set_property(i32 %50, i32 %51, i32 %52)
  %54 = call i32 @assert_boolean_and_release(i32 %53, i32 1)
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @jerry_has_property(i32 %55, i32 %56)
  %58 = call i32 @assert_boolean_and_release(i32 %57, i32 1)
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @jerry_has_own_property(i32 %59, i32 %60)
  %62 = call i32 @assert_boolean_and_release(i32 %61, i32 1)
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @jerry_release_value(i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @jerry_release_value(i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @jerry_release_value(i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @jerry_release_value(i32 %69)
  %71 = call i32 (...) @jerry_cleanup()
  ret i32 0
}

declare dso_local i32 @TEST_INIT(...) #1

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i32 @jerry_create_object(...) #1

declare dso_local i32 @jerry_create_string_from_utf8(i32*) #1

declare dso_local i32 @jerry_create_boolean(i32) #1

declare dso_local i32 @assert_boolean_and_release(i32, i32) #1

declare dso_local i32 @jerry_has_property(i32, i32) #1

declare dso_local i32 @jerry_has_own_property(i32, i32) #1

declare dso_local i32 @jerry_set_prototype(i32, i32) #1

declare dso_local i32 @jerry_set_property(i32, i32, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_delete_property(i32, i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
