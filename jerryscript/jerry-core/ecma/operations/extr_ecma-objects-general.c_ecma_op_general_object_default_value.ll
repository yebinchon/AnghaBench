; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-objects-general.c_ecma_op_general_object_default_value.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-objects-general.c_ecma_op_general_object_default_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECMA_PREFERRED_TYPE_NO = common dso_local global i64 0, align 8
@LIT_MAGIC_STRING_DATE_UL = common dso_local global i32 0, align 4
@ECMA_PREFERRED_TYPE_STRING = common dso_local global i64 0, align 8
@ECMA_PREFERRED_TYPE_NUMBER = common dso_local global i64 0, align 8
@LIT_MAGIC_STRING_TO_STRING_UL = common dso_local global i32 0, align 4
@LIT_MAGIC_STRING_VALUE_OF_UL = common dso_local global i32 0, align 4
@ECMA_VALUE_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Invalid argument type in [[DefaultValue]].\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecma_op_general_object_default_value(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @ecma_is_lexical_environment(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %13, %2
  %19 = phi i1 [ false, %2 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @JERRY_ASSERT(i32 %20)
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @ECMA_PREFERRED_TYPE_NO, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @LIT_MAGIC_STRING_DATE_UL, align 4
  %28 = call i64 @ecma_object_class_is(i32* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i64, i64* @ECMA_PREFERRED_TYPE_STRING, align 8
  store i64 %31, i64* %5, align 8
  br label %34

32:                                               ; preds = %25
  %33 = load i64, i64* @ECMA_PREFERRED_TYPE_NUMBER, align 8
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %32, %30
  br label %35

35:                                               ; preds = %34, %18
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %97, %35
  %37 = load i32, i32* %6, align 4
  %38 = icmp sle i32 %37, 2
  br i1 %38, label %39, label %100

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @ECMA_PREFERRED_TYPE_STRING, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @ECMA_PREFERRED_TYPE_NUMBER, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49, %42
  %54 = load i32, i32* @LIT_MAGIC_STRING_TO_STRING_UL, align 4
  store i32 %54, i32* %7, align 4
  br label %57

55:                                               ; preds = %49, %46
  %56 = load i32, i32* @LIT_MAGIC_STRING_VALUE_OF_UL, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @ecma_op_object_get_by_magic_id(i32* %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @ECMA_IS_VALUE_ERROR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %103

66:                                               ; preds = %57
  %67 = load i32, i32* @ECMA_VALUE_EMPTY, align 4
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @ecma_op_is_callable(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  %73 = call i32* @ecma_get_object_from_value(i32 %72)
  store i32* %73, i32** %10, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @ecma_make_object_value(i32* %75)
  %77 = call i32 @ecma_op_function_call(i32* %74, i32 %76, i32* null, i32 0)
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %71, %66
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @ecma_free_value(i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = call i64 @ECMA_IS_VALUE_ERROR(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @ecma_is_value_empty(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @ecma_is_value_object(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88, %78
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %3, align 4
  br label %103

94:                                               ; preds = %88, %84
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @ecma_free_value(i32 %95)
  br label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %36

100:                                              ; preds = %36
  %101 = call i32 @ECMA_ERR_MSG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %102 = call i32 @ecma_raise_type_error(i32 %101)
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %100, %92, %64
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i32 @ecma_is_lexical_environment(i32*) #1

declare dso_local i64 @ecma_object_class_is(i32*, i32) #1

declare dso_local i32 @ecma_op_object_get_by_magic_id(i32*, i32) #1

declare dso_local i64 @ECMA_IS_VALUE_ERROR(i32) #1

declare dso_local i64 @ecma_op_is_callable(i32) #1

declare dso_local i32* @ecma_get_object_from_value(i32) #1

declare dso_local i32 @ecma_op_function_call(i32*, i32, i32*, i32) #1

declare dso_local i32 @ecma_make_object_value(i32*) #1

declare dso_local i32 @ecma_free_value(i32) #1

declare dso_local i32 @ecma_is_value_empty(i32) #1

declare dso_local i32 @ecma_is_value_object(i32) #1

declare dso_local i32 @ecma_raise_type_error(i32) #1

declare dso_local i32 @ECMA_ERR_MSG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
