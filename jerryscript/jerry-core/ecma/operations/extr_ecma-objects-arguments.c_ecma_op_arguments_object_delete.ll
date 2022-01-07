; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-objects-arguments.c_ecma_op_arguments_object_delete.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-objects-arguments.c_ecma_op_arguments_object_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@ECMA_STRING_NOT_ARRAY_INDEX = common dso_local global i64 0, align 8
@ECMA_VALUE_EMPTY = common dso_local global i64 0, align 8
@ECMA_VALUE_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ecma_op_arguments_object_delete(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @ecma_op_general_object_delete(i32* %13, i32* %14, i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i64 @ECMA_IS_VALUE_ERROR(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* %8, align 8
  store i64 %21, i64* %4, align 8
  br label %74

22:                                               ; preds = %3
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @ecma_is_value_boolean(i64 %23)
  %25 = call i32 @JERRY_ASSERT(i32 %24)
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @ecma_is_value_true(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %72

29:                                               ; preds = %22
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @ecma_string_get_array_index(i32* %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @ECMA_STRING_NOT_ARRAY_INDEX, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %29
  %36 = load i32*, i32** %5, align 8
  %37 = bitcast i32* %36 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %38, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %35
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 1
  %49 = bitcast %struct.TYPE_8__* %48 to i64*
  store i64* %49, i64** %11, align 8
  %50 = load i64*, i64** %11, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ECMA_VALUE_EMPTY, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %46
  %57 = load i64*, i64** %11, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32* @ecma_get_string_from_value(i64 %60)
  store i32* %61, i32** %12, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @ecma_deref_ecma_string(i32* %62)
  %64 = load i64, i64* @ECMA_VALUE_EMPTY, align 8
  %65 = load i64*, i64** %11, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64 %64, i64* %67, align 8
  br label %68

68:                                               ; preds = %56, %46
  br label %69

69:                                               ; preds = %68, %35
  br label %70

70:                                               ; preds = %69, %29
  %71 = load i64, i64* @ECMA_VALUE_TRUE, align 8
  store i64 %71, i64* %8, align 8
  br label %72

72:                                               ; preds = %70, %22
  %73 = load i64, i64* %8, align 8
  store i64 %73, i64* %4, align 8
  br label %74

74:                                               ; preds = %72, %20
  %75 = load i64, i64* %4, align 8
  ret i64 %75
}

declare dso_local i64 @ecma_op_general_object_delete(i32*, i32*, i32) #1

declare dso_local i64 @ECMA_IS_VALUE_ERROR(i64) #1

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i32 @ecma_is_value_boolean(i64) #1

declare dso_local i64 @ecma_is_value_true(i64) #1

declare dso_local i64 @ecma_string_get_array_index(i32*) #1

declare dso_local i32* @ecma_get_string_from_value(i64) #1

declare dso_local i32 @ecma_deref_ecma_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
