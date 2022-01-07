; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-lex-env.c_ecma_op_delete_binding.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-lex-env.c_ecma_op_delete_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE = common dso_local global i64 0, align 8
@ECMA_VALUE_TRUE = common dso_local global i32 0, align 4
@ECMA_PROPERTY_TYPE_NAMEDDATA = common dso_local global i64 0, align 8
@ECMA_VALUE_FALSE = common dso_local global i32 0, align 4
@ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecma_op_delete_binding(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @ecma_is_lexical_environment(i32* %12)
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ false, %2 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @JERRY_ASSERT(i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @JERRY_ASSERT(i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i64 @ecma_get_lex_env_type(i32* %23)
  %25 = load i64, i64* @ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %15
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32* @ecma_find_named_property(i32* %28, i32* %29)
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @ECMA_VALUE_TRUE, align 4
  store i32 %34, i32* %7, align 4
  br label %56

35:                                               ; preds = %27
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @ECMA_PROPERTY_GET_TYPE(i32 %37)
  %39 = load i64, i64* @ECMA_PROPERTY_TYPE_NAMEDDATA, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @JERRY_ASSERT(i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ecma_is_property_configurable(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %35
  %48 = load i32, i32* @ECMA_VALUE_FALSE, align 4
  store i32 %48, i32* %7, align 4
  br label %55

49:                                               ; preds = %35
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @ECMA_PROPERTY_VALUE_PTR(i32* %51)
  %53 = call i32 @ecma_delete_property(i32* %50, i32 %52)
  %54 = load i32, i32* @ECMA_VALUE_TRUE, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %49, %47
  br label %56

56:                                               ; preds = %55, %33
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %70

58:                                               ; preds = %15
  %59 = load i32*, i32** %4, align 8
  %60 = call i64 @ecma_get_lex_env_type(i32* %59)
  %61 = load i64, i64* @ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @JERRY_ASSERT(i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = call i32* @ecma_get_lex_env_binding_object(i32* %65)
  store i32* %66, i32** %8, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @ecma_op_object_delete(i32* %67, i32* %68, i32 0)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %58, %56
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i64 @ecma_is_lexical_environment(i32*) #1

declare dso_local i64 @ecma_get_lex_env_type(i32*) #1

declare dso_local i32* @ecma_find_named_property(i32*, i32*) #1

declare dso_local i64 @ECMA_PROPERTY_GET_TYPE(i32) #1

declare dso_local i32 @ecma_is_property_configurable(i32) #1

declare dso_local i32 @ecma_delete_property(i32*, i32) #1

declare dso_local i32 @ECMA_PROPERTY_VALUE_PTR(i32*) #1

declare dso_local i32* @ecma_get_lex_env_binding_object(i32*) #1

declare dso_local i32 @ecma_op_object_delete(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
