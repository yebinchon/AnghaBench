; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/base/extr_ecma-helpers-conversion.c_ecma_number_to_uint32.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/base/extr_ecma-helpers-conversion.c_ecma_number_to_uint32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ecma_number_to_uint32(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @ecma_number_is_nan(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @ecma_number_is_zero(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @ecma_number_is_infinity(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14, %1
  store i64 0, i64* %2, align 8
  br label %77

23:                                               ; preds = %18
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @ecma_number_is_negative(i64 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i64, i64* %3, align 8
  %30 = sub nsw i64 0, %29
  br label %33

31:                                               ; preds = %23
  %32 = load i64, i64* %3, align 8
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i64 [ %30, %28 ], [ %32, %31 ]
  store i64 %34, i64* %5, align 8
  store i64 4294967296, i64* %6, align 8
  store i64 4294967296, i64* %7, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp sge i64 %35, 4294967296
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @ecma_number_calc_remainder(i64 %38, i64 4294967296)
  store i64 %39, i64* %8, align 8
  br label %42

40:                                               ; preds = %33
  %41 = load i64, i64* %5, align 8
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i64, i64* %8, align 8
  %44 = icmp slt i64 %43, 4294967296
  %45 = zext i1 %44 to i32
  %46 = call i32 @JERRY_ASSERT(i32 %45)
  %47 = load i64, i64* %8, align 8
  store i64 %47, i64* %9, align 8
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i64, i64* %9, align 8
  %52 = sub nsw i64 0, %51
  br label %55

53:                                               ; preds = %42
  %54 = load i64, i64* %9, align 8
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i64 [ %52, %50 ], [ %54, %53 ]
  store i64 %56, i64* %10, align 8
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %9, align 8
  %65 = sub nsw i64 4294967296, %64
  %66 = icmp eq i64 %63, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @JERRY_ASSERT(i32 %67)
  br label %75

69:                                               ; preds = %59, %55
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @JERRY_ASSERT(i32 %73)
  br label %75

75:                                               ; preds = %69, %62
  %76 = load i64, i64* %10, align 8
  store i64 %76, i64* %2, align 8
  br label %77

77:                                               ; preds = %75, %22
  %78 = load i64, i64* %2, align 8
  ret i64 %78
}

declare dso_local i64 @ecma_number_is_nan(i64) #1

declare dso_local i64 @ecma_number_is_zero(i64) #1

declare dso_local i64 @ecma_number_is_infinity(i64) #1

declare dso_local i32 @ecma_number_is_negative(i64) #1

declare dso_local i64 @ecma_number_calc_remainder(i64, i64) #1

declare dso_local i32 @JERRY_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
