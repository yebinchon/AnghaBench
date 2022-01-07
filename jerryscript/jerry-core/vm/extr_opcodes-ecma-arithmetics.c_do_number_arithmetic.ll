; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/vm/extr_opcodes-ecma-arithmetics.c_do_number_arithmetic.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/vm/extr_opcodes-ecma-arithmetics.c_do_number_arithmetic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECMA_VALUE_EMPTY = common dso_local global i32 0, align 4
@num_left = common dso_local global i32 0, align 4
@num_right = common dso_local global i32 0, align 4
@ECMA_NUMBER_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_number_arithmetic(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @ECMA_VALUE_EMPTY, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @num_left, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @ECMA_OP_TO_NUMBER_TRY_CATCH(i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* @num_right, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @ECMA_OP_TO_NUMBER_TRY_CATCH(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @ECMA_NUMBER_ZERO, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %36 [
    i32 128, label %20
    i32 130, label %24
    i32 131, label %28
    i32 129, label %32
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @num_left, align 4
  %22 = load i32, i32* @num_right, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %8, align 4
  br label %36

24:                                               ; preds = %3
  %25 = load i32, i32* @num_left, align 4
  %26 = load i32, i32* @num_right, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %8, align 4
  br label %36

28:                                               ; preds = %3
  %29 = load i32, i32* @num_left, align 4
  %30 = load i32, i32* @num_right, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %8, align 4
  br label %36

32:                                               ; preds = %3
  %33 = load i32, i32* @num_left, align 4
  %34 = load i32, i32* @num_right, align 4
  %35 = call i32 @ecma_op_number_remainder(i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %3, %32, %28, %24, %20
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @ecma_make_number_value(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @num_right, align 4
  %40 = call i32 @ECMA_OP_TO_NUMBER_FINALIZE(i32 %39)
  %41 = load i32, i32* @num_left, align 4
  %42 = call i32 @ECMA_OP_TO_NUMBER_FINALIZE(i32 %41)
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @ECMA_OP_TO_NUMBER_TRY_CATCH(i32, i32, i32) #1

declare dso_local i32 @ecma_op_number_remainder(i32, i32) #1

declare dso_local i32 @ecma_make_number_value(i32) #1

declare dso_local i32 @ECMA_OP_TO_NUMBER_FINALIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
