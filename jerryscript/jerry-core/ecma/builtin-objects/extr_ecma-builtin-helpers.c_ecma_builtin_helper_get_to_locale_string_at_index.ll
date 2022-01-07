; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-helpers.c_ecma_builtin_helper_get_to_locale_string_at_index.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-helpers.c_ecma_builtin_helper_get_to_locale_string_at_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIT_MAGIC_STRING__EMPTY = common dso_local global i32 0, align 4
@LIT_MAGIC_STRING_TO_LOCALE_STRING_UL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"'toLocaleString' is missing or not a function.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ecma_builtin_helper_get_to_locale_string_at_index(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ecma_op_object_get_by_uint32_index(i32* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @ECMA_IS_VALUE_ERROR(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %82

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @ecma_is_value_undefined(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @ecma_is_value_null(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @LIT_MAGIC_STRING__EMPTY, align 4
  %30 = call i32* @ecma_get_magic_string(i32 %29)
  store i32* %30, i32** %3, align 8
  br label %82

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ecma_op_to_object(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @ECMA_IS_VALUE_ERROR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ecma_free_value(i32 %38)
  store i32* null, i32** %3, align 8
  br label %82

40:                                               ; preds = %31
  store i32* null, i32** %8, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32* @ecma_get_object_from_value(i32 %41)
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* @LIT_MAGIC_STRING_TO_LOCALE_STRING_UL, align 4
  %45 = call i32 @ecma_op_object_get_by_magic_id(i32* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @ECMA_IS_VALUE_ERROR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %76

50:                                               ; preds = %40
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @ecma_op_is_callable(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @ecma_free_value(i32 %55)
  %57 = call i32 @ECMA_ERR_MSG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %58 = call i32 @ecma_raise_type_error(i32 %57)
  br label %76

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = call i32* @ecma_get_object_from_value(i32 %60)
  store i32* %61, i32** %11, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @ecma_op_function_call(i32* %62, i32 %63, i32* null, i32 0)
  store i32 %64, i32* %12, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @ecma_deref_object(i32* %65)
  %67 = load i32, i32* %12, align 4
  %68 = call i64 @ECMA_IS_VALUE_ERROR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %76

71:                                               ; preds = %59
  %72 = load i32, i32* %12, align 4
  %73 = call i32* @ecma_op_to_string(i32 %72)
  store i32* %73, i32** %8, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @ecma_free_value(i32 %74)
  br label %76

76:                                               ; preds = %71, %70, %54, %49
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @ecma_deref_object(i32* %77)
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @ecma_free_value(i32 %79)
  %81 = load i32*, i32** %8, align 8
  store i32* %81, i32** %3, align 8
  br label %82

82:                                               ; preds = %76, %37, %28, %19
  %83 = load i32*, i32** %3, align 8
  ret i32* %83
}

declare dso_local i32 @ecma_op_object_get_by_uint32_index(i32*, i32) #1

declare dso_local i64 @ECMA_IS_VALUE_ERROR(i32) #1

declare dso_local i64 @ecma_is_value_undefined(i32) #1

declare dso_local i64 @ecma_is_value_null(i32) #1

declare dso_local i32* @ecma_get_magic_string(i32) #1

declare dso_local i32 @ecma_op_to_object(i32) #1

declare dso_local i32 @ecma_free_value(i32) #1

declare dso_local i32* @ecma_get_object_from_value(i32) #1

declare dso_local i32 @ecma_op_object_get_by_magic_id(i32*, i32) #1

declare dso_local i32 @ecma_op_is_callable(i32) #1

declare dso_local i32 @ecma_raise_type_error(i32) #1

declare dso_local i32 @ECMA_ERR_MSG(i8*) #1

declare dso_local i32 @ecma_op_function_call(i32*, i32, i32*, i32) #1

declare dso_local i32 @ecma_deref_object(i32*) #1

declare dso_local i32* @ecma_op_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
