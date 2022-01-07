; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-helpers.c_ecma_builtin_helper_array_concat_value.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-helpers.c_ecma_builtin_helper_array_concat_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECMA_OBJECT_TYPE_ARRAY = common dso_local global i64 0, align 8
@ECMA_PROPERTY_CONFIGURABLE_ENUMERABLE_WRITABLE = common dso_local global i32 0, align 4
@ECMA_VALUE_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecma_builtin_helper_array_concat_value(i32* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @ecma_is_value_object(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %69

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = call i32* @ecma_get_object_from_value(i32 %18)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i64 @ecma_get_object_type(i32* %20)
  %22 = load i64, i64* @ECMA_OBJECT_TYPE_ARRAY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %68

24:                                               ; preds = %17
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @ecma_array_get_length(i32* %25)
  store i64 %26, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %59, %24
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @ecma_op_object_find_by_uint32_index(i32* %32, i64 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @ECMA_IS_VALUE_ERROR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %4, align 4
  br label %81

40:                                               ; preds = %31
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @ecma_is_value_found(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %59

45:                                               ; preds = %40
  %46 = load i32*, i32** %5, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @ECMA_PROPERTY_CONFIGURABLE_ENUMERABLE_WRITABLE, align 4
  %53 = call i32 @ecma_builtin_helper_def_prop_by_index(i32* %46, i64 %50, i32 %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @ecma_is_value_true(i32 %54)
  %56 = call i32 @JERRY_ASSERT(i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @ecma_free_value(i32 %57)
  br label %59

59:                                               ; preds = %45, %44
  %60 = load i64, i64* %10, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %10, align 8
  br label %27

62:                                               ; preds = %27
  %63 = load i64, i64* %9, align 8
  %64 = load i64*, i64** %6, align 8
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, %63
  store i64 %66, i64* %64, align 8
  %67 = load i32, i32* @ECMA_VALUE_EMPTY, align 4
  store i32 %67, i32* %4, align 4
  br label %81

68:                                               ; preds = %17
  br label %69

69:                                               ; preds = %68, %3
  %70 = load i32*, i32** %5, align 8
  %71 = load i64*, i64** %6, align 8
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @ECMA_PROPERTY_CONFIGURABLE_ENUMERABLE_WRITABLE, align 4
  %76 = call i32 @ecma_builtin_helper_def_prop_by_index(i32* %70, i64 %72, i32 %74, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @ecma_is_value_true(i32 %77)
  %79 = call i32 @JERRY_ASSERT(i32 %78)
  %80 = load i32, i32* @ECMA_VALUE_EMPTY, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %69, %62, %38
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @ecma_is_value_object(i32) #1

declare dso_local i32* @ecma_get_object_from_value(i32) #1

declare dso_local i64 @ecma_get_object_type(i32*) #1

declare dso_local i64 @ecma_array_get_length(i32*) #1

declare dso_local i32 @ecma_op_object_find_by_uint32_index(i32*, i64) #1

declare dso_local i64 @ECMA_IS_VALUE_ERROR(i32) #1

declare dso_local i32 @ecma_is_value_found(i32) #1

declare dso_local i32 @ecma_builtin_helper_def_prop_by_index(i32*, i64, i32, i32) #1

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i32 @ecma_is_value_true(i32) #1

declare dso_local i32 @ecma_free_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
