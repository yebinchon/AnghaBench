; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-lex-env.c_ecma_op_has_binding.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-lex-env.c_ecma_op_has_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE = common dso_local global i64 0, align 8
@ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecma_op_has_binding(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
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
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @ecma_get_lex_env_type(i32* %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32* @ecma_find_named_property(i32* %25, i32* %26)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %42

31:                                               ; preds = %15
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @JERRY_ASSERT(i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32* @ecma_get_lex_env_binding_object(i32* %37)
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @ecma_op_object_has_property(i32* %39, i32* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %31, %24
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i64 @ecma_is_lexical_environment(i32*) #1

declare dso_local i64 @ecma_get_lex_env_type(i32*) #1

declare dso_local i32* @ecma_find_named_property(i32*, i32*) #1

declare dso_local i32* @ecma_get_lex_env_binding_object(i32*) #1

declare dso_local i32 @ecma_op_object_has_property(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
