; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-lex-env.c_ecma_op_set_mutable_binding.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-lex-env.c_ecma_op_set_mutable_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE = common dso_local global i64 0, align 8
@ECMA_PROPERTY_TYPE_NAMEDDATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Binding cannot be set.\00", align 1
@ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND = common dso_local global i64 0, align 8
@ECMA_VALUE_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecma_op_set_mutable_binding(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @ecma_is_lexical_environment(i32* %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %4
  %20 = phi i1 [ false, %4 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @JERRY_ASSERT(i32 %21)
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @JERRY_ASSERT(i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @ecma_get_lex_env_type(i32* %27)
  %29 = load i64, i64* @ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %19
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32* @ecma_find_named_property(i32* %32, i32* %33)
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @ECMA_PROPERTY_GET_TYPE(i32 %39)
  %41 = load i64, i64* @ECMA_PROPERTY_TYPE_NAMEDDATA, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %37, %31
  %44 = phi i1 [ false, %31 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @JERRY_ASSERT(i32 %45)
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @ecma_is_property_writable(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @ECMA_PROPERTY_VALUE_PTR(i32* %53)
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @ecma_named_data_property_assign_value(i32* %52, i32 %54, i32 %55)
  br label %64

57:                                               ; preds = %43
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = call i32 @ECMA_ERR_MSG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %62 = call i32 @ecma_raise_type_error(i32 %61)
  store i32 %62, i32* %5, align 4
  br label %90

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %51
  br label %88

65:                                               ; preds = %19
  %66 = load i32*, i32** %6, align 8
  %67 = call i64 @ecma_get_lex_env_type(i32* %66)
  %68 = load i64, i64* @ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @JERRY_ASSERT(i32 %70)
  %72 = load i32*, i32** %6, align 8
  %73 = call i32* @ecma_get_lex_env_binding_object(i32* %72)
  store i32* %73, i32** %11, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @ecma_op_object_put(i32* %74, i32* %75, i32 %76, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i64 @ECMA_IS_VALUE_ERROR(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %65
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %5, align 4
  br label %90

84:                                               ; preds = %65
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @ecma_is_value_boolean(i32 %85)
  %87 = call i32 @JERRY_ASSERT(i32 %86)
  br label %88

88:                                               ; preds = %84, %64
  %89 = load i32, i32* @ECMA_VALUE_EMPTY, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %88, %82, %60
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i64 @ecma_is_lexical_environment(i32*) #1

declare dso_local i64 @ecma_get_lex_env_type(i32*) #1

declare dso_local i32* @ecma_find_named_property(i32*, i32*) #1

declare dso_local i64 @ECMA_PROPERTY_GET_TYPE(i32) #1

declare dso_local i64 @ecma_is_property_writable(i32) #1

declare dso_local i32 @ecma_named_data_property_assign_value(i32*, i32, i32) #1

declare dso_local i32 @ECMA_PROPERTY_VALUE_PTR(i32*) #1

declare dso_local i32 @ecma_raise_type_error(i32) #1

declare dso_local i32 @ECMA_ERR_MSG(i8*) #1

declare dso_local i32* @ecma_get_lex_env_binding_object(i32*) #1

declare dso_local i32 @ecma_op_object_put(i32*, i32*, i32, i32) #1

declare dso_local i64 @ECMA_IS_VALUE_ERROR(i32) #1

declare dso_local i32 @ecma_is_value_boolean(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
