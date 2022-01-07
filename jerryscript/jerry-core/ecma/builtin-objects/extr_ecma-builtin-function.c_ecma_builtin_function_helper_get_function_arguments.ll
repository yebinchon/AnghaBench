; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-function.c_ecma_builtin_function_helper_get_function_arguments.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-function.c_ecma_builtin_function_helper_get_function_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIT_MAGIC_STRING__EMPTY = common dso_local global i32 0, align 4
@ECMA_VALUE_ERROR = common dso_local global i32 0, align 4
@LIT_MAGIC_STRING_COMMA_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @ecma_builtin_function_helper_get_function_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecma_builtin_function_helper_get_function_arguments(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i1 [ true, %2 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @JERRY_ASSERT(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp sle i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @LIT_MAGIC_STRING__EMPTY, align 4
  %22 = call i32 @ecma_make_magic_string_value(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %78

23:                                               ; preds = %14
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @ecma_op_to_string(i32 %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp eq i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i64 @JERRY_UNLIKELY(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @ECMA_VALUE_ERROR, align 4
  store i32 %34, i32* %3, align 4
  br label %78

35:                                               ; preds = %23
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @ecma_make_string_value(i32* %39)
  store i32 %40, i32* %3, align 4
  br label %78

41:                                               ; preds = %35
  store i32 1, i32* %7, align 4
  br label %42

42:                                               ; preds = %72, %41
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 1
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %42
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @ecma_op_to_string(i32 %52)
  store i32* %53, i32** %8, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = icmp eq i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i64 @JERRY_UNLIKELY(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %47
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @ecma_deref_ecma_string(i32* %60)
  %62 = load i32, i32* @ECMA_VALUE_ERROR, align 4
  store i32 %62, i32* %3, align 4
  br label %78

63:                                               ; preds = %47
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* @LIT_MAGIC_STRING_COMMA_CHAR, align 4
  %66 = call i32* @ecma_append_magic_string_to_string(i32* %64, i32 %65)
  store i32* %66, i32** %6, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = call i32* @ecma_concat_ecma_strings(i32* %67, i32* %68)
  store i32* %69, i32** %6, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @ecma_deref_ecma_string(i32* %70)
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %42

75:                                               ; preds = %42
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @ecma_make_string_value(i32* %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %75, %59, %38, %33, %20
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i32 @ecma_make_magic_string_value(i32) #1

declare dso_local i32* @ecma_op_to_string(i32) #1

declare dso_local i64 @JERRY_UNLIKELY(i32) #1

declare dso_local i32 @ecma_make_string_value(i32*) #1

declare dso_local i32 @ecma_deref_ecma_string(i32*) #1

declare dso_local i32* @ecma_append_magic_string_to_string(i32*, i32) #1

declare dso_local i32* @ecma_concat_ecma_strings(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
