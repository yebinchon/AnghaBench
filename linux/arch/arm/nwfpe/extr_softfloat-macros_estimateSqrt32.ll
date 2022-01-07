; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat-macros_estimateSqrt32.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat-macros_estimateSqrt32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@estimateSqrt32.sqrtOddAdjustments = internal constant [16 x i32] [i32 4, i32 34, i32 93, i32 177, i32 285, i32 415, i32 566, i32 736, i32 924, i32 1128, i32 1349, i32 1585, i32 1835, i32 2098, i32 2374, i32 2663], align 16
@estimateSqrt32.sqrtEvenAdjustments = internal constant [16 x i32] [i32 2605, i32 2223, i32 1882, i32 1577, i32 1306, i32 1065, i32 854, i32 670, i32 512, i32 377, i32 265, i32 175, i32 104, i32 52, i32 18, i32 2], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @estimateSqrt32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @estimateSqrt32(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = ashr i32 %9, 27
  %11 = and i32 %10, 15
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 17
  %19 = add nsw i32 16384, %18
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* @estimateSqrt32.sqrtOddAdjustments, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sdiv i32 %24, %25
  %27 = shl i32 %26, 14
  %28 = load i32, i32* %7, align 4
  %29 = shl i32 %28, 15
  %30 = add nsw i32 %27, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %61

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 17
  %36 = add nsw i32 32768, %35
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* @estimateSqrt32.sqrtEvenAdjustments, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sdiv i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp sle i32 131072, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  br label %52

49:                                               ; preds = %33
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 %50, 15
  br label %52

52:                                               ; preds = %49, %48
  %53 = phi i32 [ -32768, %48 ], [ %51, %49 ]
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = ashr i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %71

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %16
  %62 = load i32, i32* %5, align 4
  %63 = shl i32 %62, 31
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @do_div(i32 %64, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = ashr i32 %68, 1
  %70 = add nsw i32 %67, %69
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %61, %57
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
