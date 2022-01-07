; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_clock.c_alchemy_calc_div.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_clock.c_alchemy_calc_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i32, i64*)* @alchemy_calc_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alchemy_calc_div(i64 %0, i64 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = udiv i64 %13, %14
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %11, align 8
  %18 = udiv i64 %16, %17
  %19 = load i64, i64* %6, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i64, i64* %11, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %11, align 8
  br label %24

24:                                               ; preds = %21, %5
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i64, i64* %11, align 8
  %29 = and i64 %28, 1
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* %11, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %11, align 8
  br label %34

34:                                               ; preds = %31, %27
  br label %35

35:                                               ; preds = %34, %24
  %36 = load i64, i64* %11, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = sdiv i64 %36, %38
  %40 = sub nsw i64 %39, 1
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp sgt i64 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %12, align 8
  br label %48

48:                                               ; preds = %45, %35
  %49 = load i64*, i64** %10, align 8
  %50 = icmp ne i64* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i64, i64* %12, align 8
  %53 = load i64*, i64** %10, align 8
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i64, i64* %12, align 8
  %56 = add nsw i64 %55, 1
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = mul nsw i64 %56, %58
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  ret i64 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
