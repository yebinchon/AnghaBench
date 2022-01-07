; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-conversion.c_ecma_op_to_integer.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-conversion.c_ecma_op_to_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECMA_NUMBER_ZERO = common dso_local global i32 0, align 4
@ECMA_VALUE_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecma_op_to_integer(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @ECMA_IS_VALUE_ERROR(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %3, align 4
  br label %59

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @ecma_get_number(i32 %15, i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @ECMA_IS_VALUE_ERROR(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %59

23:                                               ; preds = %14
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @ecma_number_is_nan(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @ECMA_NUMBER_ZERO, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @ECMA_VALUE_EMPTY, align 4
  store i32 %32, i32* %3, align 4
  br label %59

33:                                               ; preds = %23
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @ecma_number_is_zero(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @ecma_number_is_infinity(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %33
  %42 = load i32, i32* @ECMA_VALUE_EMPTY, align 4
  store i32 %42, i32* %3, align 4
  br label %59

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @fabs(i32 %44)
  %46 = call i32 @floor(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @ecma_number_is_negative(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 0, %51
  br label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %8, align 4
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i32 [ %52, %50 ], [ %54, %53 ]
  %57 = load i32*, i32** %5, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @ECMA_VALUE_EMPTY, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %41, %29, %21, %12
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @ECMA_IS_VALUE_ERROR(i32) #1

declare dso_local i32 @ecma_get_number(i32, i32*) #1

declare dso_local i64 @ecma_number_is_nan(i32) #1

declare dso_local i64 @ecma_number_is_zero(i32) #1

declare dso_local i64 @ecma_number_is_infinity(i32) #1

declare dso_local i32 @floor(i32) #1

declare dso_local i32 @fabs(i32) #1

declare dso_local i64 @ecma_number_is_negative(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
