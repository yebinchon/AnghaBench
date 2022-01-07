; ModuleID = '/home/carl/AnghaBench/jerryscript/tests/unit-ext/module/extr_jerry-module-test.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/tests/unit-ext/module/extr_jerry-module-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JERRY_INIT_EMPTY = common dso_local global i32 0, align 4
@handle_require = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"require\00", align 1
@handle_clear_require_cache = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"clear_require_cache\00", align 1
@eval_string1 = common dso_local global i32 0, align 4
@eval_string2 = common dso_local global i32 0, align 4
@eval_string3 = common dso_local global i32 0, align 4
@eval_string4 = common dso_local global i32 0, align 4
@eval_string5 = common dso_local global i32 0, align 4
@eval_string6 = common dso_local global i32 0, align 4
@eval_string7 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = call i32 (...) @my_broken_module_register()
  %13 = call i32 (...) @my_custom_module_register()
  %14 = load i32, i32* @JERRY_INIT_EMPTY, align 4
  %15 = call i32 @jerry_init(i32 %14)
  %16 = call i32 (...) @jerry_get_global_object()
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @handle_require, align 4
  %18 = call i32 @jerry_create_external_function(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = call i32 @jerry_create_string(i32* bitcast ([8 x i8]* @.str to i32*))
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @jerry_set_property(i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @jerry_value_is_error(i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @TEST_ASSERT(i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @jerry_value_is_boolean(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @jerry_get_boolean_value(i32 %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %33, %2
  %38 = phi i1 [ false, %2 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @TEST_ASSERT(i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @jerry_release_value(i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @jerry_release_value(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @jerry_release_value(i32 %45)
  %47 = load i32, i32* @handle_clear_require_cache, align 4
  %48 = call i32 @jerry_create_external_function(i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = call i32 @jerry_create_string(i32* bitcast ([20 x i8]* @.str.1 to i32*))
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @jerry_set_property(i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @jerry_value_is_error(i32 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @TEST_ASSERT(i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @jerry_value_is_boolean(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %37
  %64 = load i32, i32* %9, align 4
  %65 = call i64 @jerry_get_boolean_value(i32 %64)
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %63, %37
  %68 = phi i1 [ false, %37 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @TEST_ASSERT(i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @jerry_release_value(i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @jerry_release_value(i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @jerry_release_value(i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @jerry_release_value(i32 %77)
  %79 = load i32, i32* @eval_string1, align 4
  %80 = call i32 @eval_one(i32 %79, i32 42)
  %81 = load i32, i32* @eval_string2, align 4
  %82 = call i32 @eval_one(i32 %81, i32 29)
  %83 = load i32, i32* @eval_string3, align 4
  %84 = call i32 @eval_one(i32 %83, i32 1)
  %85 = load i32, i32* @eval_string4, align 4
  %86 = call i32 @eval_one(i32 %85, i32 1)
  %87 = load i32, i32* @eval_string5, align 4
  %88 = call i32 @eval_one(i32 %87, i32 1)
  %89 = load i32, i32* @eval_string6, align 4
  %90 = call i32 @eval_one(i32 %89, i32 1)
  %91 = load i32, i32* @eval_string7, align 4
  %92 = call i32 @eval_one(i32 %91, i32 1)
  %93 = call i32 (...) @jerry_cleanup()
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @my_broken_module_register(...) #1

declare dso_local i32 @my_custom_module_register(...) #1

declare dso_local i32 @jerry_init(i32) #1

declare dso_local i32 @jerry_get_global_object(...) #1

declare dso_local i32 @jerry_create_external_function(i32) #1

declare dso_local i32 @jerry_create_string(i32*) #1

declare dso_local i32 @jerry_set_property(i32, i32, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @jerry_value_is_error(i32) #1

declare dso_local i64 @jerry_value_is_boolean(i32) #1

declare dso_local i64 @jerry_get_boolean_value(i32) #1

declare dso_local i32 @jerry_release_value(i32) #1

declare dso_local i32 @eval_one(i32, i32) #1

declare dso_local i32 @jerry_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
