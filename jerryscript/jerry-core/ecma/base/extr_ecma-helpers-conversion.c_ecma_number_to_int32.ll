; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/base/extr_ecma-helpers-conversion.c_ecma_number_to_int32.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/base/extr_ecma-helpers-conversion.c_ecma_number_to_int32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ecma_number_to_int32(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @ecma_number_to_uint32(i32 %8)
  store i64 %9, i64* %3, align 8
  store i64 4294967296, i64* %4, align 8
  store i64 2147483648, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp sge i64 %10, 2147483648
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = sub nsw i64 %13, 4294967296
  store i64 %14, i64* %6, align 8
  br label %17

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  store i64 %16, i64* %6, align 8
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i64, i64* %3, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp sge i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @JERRY_ASSERT(i32 %21)
  %23 = load i64, i64* %7, align 8
  %24 = icmp sge i64 %23, 2147483648
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sub nsw i64 %27, 4294967296
  %29 = icmp eq i64 %26, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @JERRY_ASSERT(i32 %30)
  br label %38

32:                                               ; preds = %17
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @JERRY_ASSERT(i32 %36)
  br label %38

38:                                               ; preds = %32, %25
  %39 = load i64, i64* %6, align 8
  ret i64 %39
}

declare dso_local i64 @ecma_number_to_uint32(i32) #1

declare dso_local i32 @JERRY_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
