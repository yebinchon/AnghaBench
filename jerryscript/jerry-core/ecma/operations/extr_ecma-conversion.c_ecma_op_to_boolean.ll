; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-conversion.c_ecma_op_to_boolean.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-conversion.c_ecma_op_to_boolean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecma_op_to_boolean(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @ecma_check_value_type_is_spec_defined(i64 %6)
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @ecma_is_value_simple(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @ecma_is_value_boolean(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @ecma_is_value_undefined(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @ecma_is_value_null(i64 %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %19, %15, %11
  %24 = phi i1 [ true, %15 ], [ true, %11 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @JERRY_ASSERT(i32 %25)
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @ecma_is_value_true(i64 %27)
  store i32 %28, i32* %2, align 4
  br label %80

29:                                               ; preds = %1
  %30 = load i64, i64* %3, align 8
  %31 = call i64 @ecma_is_value_integer_number(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @ecma_make_integer_value(i32 0)
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %2, align 4
  br label %80

38:                                               ; preds = %29
  %39 = load i64, i64* %3, align 8
  %40 = call i64 @ecma_is_value_float_number(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @ecma_get_float_from_value(i64 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @ecma_number_is_nan(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @ecma_number_is_zero(i32 %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %48, %42
  %54 = phi i1 [ false, %42 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %2, align 4
  br label %80

56:                                               ; preds = %38
  %57 = load i64, i64* %3, align 8
  %58 = call i64 @ecma_is_value_string(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i64, i64* %3, align 8
  %62 = call i32* @ecma_get_string_from_value(i64 %61)
  store i32* %62, i32** %5, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @ecma_string_is_empty(i32* %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %2, align 4
  br label %80

68:                                               ; preds = %56
  %69 = load i64, i64* %3, align 8
  %70 = call i64 @ecma_is_value_object(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %3, align 8
  %74 = call i64 @ECMA_ASSERT_VALUE_IS_SYMBOL(i64 %73)
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i1 [ true, %68 ], [ %75, %72 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @JERRY_ASSERT(i32 %78)
  store i32 1, i32* %2, align 4
  br label %80

80:                                               ; preds = %76, %60, %53, %33, %23
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @ecma_check_value_type_is_spec_defined(i64) #1

declare dso_local i64 @ecma_is_value_simple(i64) #1

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i64 @ecma_is_value_boolean(i64) #1

declare dso_local i64 @ecma_is_value_undefined(i64) #1

declare dso_local i64 @ecma_is_value_null(i64) #1

declare dso_local i32 @ecma_is_value_true(i64) #1

declare dso_local i64 @ecma_is_value_integer_number(i64) #1

declare dso_local i64 @ecma_make_integer_value(i32) #1

declare dso_local i64 @ecma_is_value_float_number(i64) #1

declare dso_local i32 @ecma_get_float_from_value(i64) #1

declare dso_local i32 @ecma_number_is_nan(i32) #1

declare dso_local i32 @ecma_number_is_zero(i32) #1

declare dso_local i64 @ecma_is_value_string(i64) #1

declare dso_local i32* @ecma_get_string_from_value(i64) #1

declare dso_local i32 @ecma_string_is_empty(i32*) #1

declare dso_local i64 @ecma_is_value_object(i64) #1

declare dso_local i64 @ECMA_ASSERT_VALUE_IS_SYMBOL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
