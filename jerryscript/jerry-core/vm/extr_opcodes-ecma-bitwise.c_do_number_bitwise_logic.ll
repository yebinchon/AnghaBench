; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/vm/extr_opcodes-ecma-bitwise.c_do_number_bitwise_logic.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/vm/extr_opcodes-ecma-bitwise.c_do_number_bitwise_logic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECMA_VALUE_EMPTY = common dso_local global i32 0, align 4
@num_left = common dso_local global i32 0, align 4
@num_right = common dso_local global i32 0, align 4
@ECMA_NUMBER_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_number_bitwise_logic(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ECMA_IS_VALUE_ERROR(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @ECMA_IS_VALUE_ERROR(i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %17, %3
  %23 = phi i1 [ false, %3 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @JERRY_ASSERT(i32 %24)
  %26 = load i32, i32* @ECMA_VALUE_EMPTY, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @num_left, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ECMA_OP_TO_NUMBER_TRY_CATCH(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* @num_right, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ECMA_OP_TO_NUMBER_TRY_CATCH(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @ECMA_NUMBER_ZERO, align 4
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @num_right, align 4
  %37 = call i32 @ecma_number_to_uint32(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %4, align 4
  switch i32 %38, label %79 [
    i32 134, label %39
    i32 133, label %45
    i32 132, label %51
    i32 130, label %57
    i32 129, label %63
    i32 128, label %69
    i32 131, label %76
  ]

39:                                               ; preds = %22
  %40 = load i32, i32* @num_left, align 4
  %41 = call i32 @ecma_number_to_uint32(i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %8, align 4
  br label %79

45:                                               ; preds = %22
  %46 = load i32, i32* @num_left, align 4
  %47 = call i32 @ecma_number_to_uint32(i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %8, align 4
  br label %79

51:                                               ; preds = %22
  %52 = load i32, i32* @num_left, align 4
  %53 = call i32 @ecma_number_to_uint32(i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %9, align 4
  %56 = xor i32 %54, %55
  store i32 %56, i32* %8, align 4
  br label %79

57:                                               ; preds = %22
  %58 = load i32, i32* @num_left, align 4
  %59 = call i32 @ecma_number_to_int32(i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, 31
  %62 = shl i32 %59, %61
  store i32 %62, i32* %8, align 4
  br label %79

63:                                               ; preds = %22
  %64 = load i32, i32* @num_left, align 4
  %65 = call i32 @ecma_number_to_int32(i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, 31
  %68 = ashr i32 %65, %67
  store i32 %68, i32* %8, align 4
  br label %79

69:                                               ; preds = %22
  %70 = load i32, i32* @num_left, align 4
  %71 = call i32 @ecma_number_to_uint32(i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, 31
  %75 = ashr i32 %72, %74
  store i32 %75, i32* %8, align 4
  br label %79

76:                                               ; preds = %22
  %77 = load i32, i32* %9, align 4
  %78 = xor i32 %77, -1
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %22, %76, %69, %63, %57, %51, %45, %39
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @ecma_make_number_value(i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* @num_right, align 4
  %83 = call i32 @ECMA_OP_TO_NUMBER_FINALIZE(i32 %82)
  %84 = load i32, i32* @num_left, align 4
  %85 = call i32 @ECMA_OP_TO_NUMBER_FINALIZE(i32 %84)
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i32 @ECMA_IS_VALUE_ERROR(i32) #1

declare dso_local i32 @ECMA_OP_TO_NUMBER_TRY_CATCH(i32, i32, i32) #1

declare dso_local i32 @ecma_number_to_uint32(i32) #1

declare dso_local i32 @ecma_number_to_int32(i32) #1

declare dso_local i32 @ecma_make_number_value(i32) #1

declare dso_local i32 @ECMA_OP_TO_NUMBER_FINALIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
