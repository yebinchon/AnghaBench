; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-lex-env.c_ecma_op_get_binding_value.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-lex-env.c_ecma_op_get_binding_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE = common dso_local global i64 0, align 8
@ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Binding does not exist or is uninitialised.\00", align 1
@ECMA_VALUE_UNDEFINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecma_op_get_binding_value(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @ecma_is_lexical_environment(i32* %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i1 [ false, %3 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @JERRY_ASSERT(i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @JERRY_ASSERT(i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @ecma_get_lex_env_type(i32* %25)
  %27 = load i64, i64* @ECMA_LEXICAL_ENVIRONMENT_DECLARATIVE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %17
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call %struct.TYPE_3__* @ecma_get_named_data_property(i32* %30, i32* %31)
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %8, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ecma_copy_value(i32 %35)
  store i32 %36, i32* %4, align 4
  br label %63

37:                                               ; preds = %17
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @ecma_get_lex_env_type(i32* %38)
  %40 = load i64, i64* @ECMA_LEXICAL_ENVIRONMENT_THIS_OBJECT_BOUND, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @JERRY_ASSERT(i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32* @ecma_get_lex_env_binding_object(i32* %44)
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @ecma_op_object_find(i32* %46, i32* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @ecma_is_value_found(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = call i32 @ECMA_ERR_MSG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %57 = call i32 @ecma_raise_reference_error(i32 %56)
  store i32 %57, i32* %10, align 4
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @ECMA_VALUE_UNDEFINED, align 4
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %58, %55
  br label %61

61:                                               ; preds = %60, %37
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %29
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i64 @ecma_is_lexical_environment(i32*) #1

declare dso_local i64 @ecma_get_lex_env_type(i32*) #1

declare dso_local %struct.TYPE_3__* @ecma_get_named_data_property(i32*, i32*) #1

declare dso_local i32 @ecma_copy_value(i32) #1

declare dso_local i32* @ecma_get_lex_env_binding_object(i32*) #1

declare dso_local i32 @ecma_op_object_find(i32*, i32*) #1

declare dso_local i32 @ecma_is_value_found(i32) #1

declare dso_local i32 @ecma_raise_reference_error(i32) #1

declare dso_local i32 @ECMA_ERR_MSG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
