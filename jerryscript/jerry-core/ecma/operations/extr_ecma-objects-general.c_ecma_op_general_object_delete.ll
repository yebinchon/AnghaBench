; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-objects-general.c_ecma_op_general_object_delete.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-objects-general.c_ecma_op_general_object_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ECMA_PROPERTY_GET_NO_OPTIONS = common dso_local global i32 0, align 4
@ECMA_PROPERTY_TYPE_NOT_FOUND = common dso_local global i64 0, align 8
@ECMA_PROPERTY_TYPE_NOT_FOUND_AND_STOP = common dso_local global i64 0, align 8
@ECMA_VALUE_TRUE = common dso_local global i32 0, align 4
@ECMA_OBJECT_TYPE_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Expected a configurable property.\00", align 1
@ECMA_VALUE_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecma_op_general_object_delete(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @ecma_is_lexical_environment(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %12, %3
  %18 = phi i1 [ false, %3 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @JERRY_ASSERT(i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @JERRY_ASSERT(i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @ECMA_PROPERTY_GET_NO_OPTIONS, align 4
  %28 = call i64 @ecma_op_object_get_own_property(i32* %25, i32* %26, %struct.TYPE_3__* %8, i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @ECMA_PROPERTY_TYPE_NOT_FOUND, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %17
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @ECMA_PROPERTY_TYPE_NOT_FOUND_AND_STOP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %17
  %37 = load i32, i32* @ECMA_VALUE_TRUE, align 4
  store i32 %37, i32* %4, align 4
  br label %68

38:                                               ; preds = %32
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @ecma_is_property_configurable(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = call i64 @ecma_get_object_type(i32* %43)
  %45 = load i64, i64* @ECMA_OBJECT_TYPE_ARRAY, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ecma_array_object_delete_property(i32* %48, i32* %49, i32 %51)
  br label %58

53:                                               ; preds = %42
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ecma_delete_property(i32* %54, i32 %56)
  br label %58

58:                                               ; preds = %53, %47
  %59 = load i32, i32* @ECMA_VALUE_TRUE, align 4
  store i32 %59, i32* %4, align 4
  br label %68

60:                                               ; preds = %38
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = call i32 @ECMA_ERR_MSG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %65 = call i32 @ecma_raise_type_error(i32 %64)
  store i32 %65, i32* %4, align 4
  br label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @ECMA_VALUE_FALSE, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %63, %58, %36
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i32 @ecma_is_lexical_environment(i32*) #1

declare dso_local i64 @ecma_op_object_get_own_property(i32*, i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @ecma_is_property_configurable(i64) #1

declare dso_local i64 @ecma_get_object_type(i32*) #1

declare dso_local i32 @ecma_array_object_delete_property(i32*, i32*, i32) #1

declare dso_local i32 @ecma_delete_property(i32*, i32) #1

declare dso_local i32 @ecma_raise_type_error(i32) #1

declare dso_local i32 @ECMA_ERR_MSG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
