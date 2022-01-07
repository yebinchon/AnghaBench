; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cdce925.c_cdce925_pll_find_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cdce925.c_cdce925_pll_find_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CDCE925_PLL_FREQUENCY_MIN = common dso_local global i64 0, align 8
@CDCE925_PLL_FREQUENCY_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64*, i64*)* @cdce925_pll_find_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdce925_pll_find_rate(i64 %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ule i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %5, align 8
  %17 = load i64*, i64** %7, align 8
  store i64 0, i64* %17, align 8
  %18 = load i64*, i64** %8, align 8
  store i64 0, i64* %18, align 8
  br label %68

19:                                               ; preds = %4
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @CDCE925_PLL_FREQUENCY_MIN, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* @CDCE925_PLL_FREQUENCY_MIN, align 8
  store i64 %24, i64* %5, align 8
  br label %32

25:                                               ; preds = %19
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @CDCE925_PLL_FREQUENCY_MAX, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i64, i64* @CDCE925_PLL_FREQUENCY_MAX, align 8
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %29, %25
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @gcd(i64 %33, i64 %34)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %11, align 8
  %38 = udiv i64 %36, %37
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %11, align 8
  %41 = udiv i64 %39, %40
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %50, %32
  %43 = load i64, i64* %9, align 8
  %44 = icmp ugt i64 %43, 4095
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %10, align 8
  %47 = icmp ugt i64 %46, 511
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ true, %42 ], [ %47, %45 ]
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = load i64, i64* %9, align 8
  %52 = lshr i64 %51, 1
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = lshr i64 %53, 1
  store i64 %54, i64* %10, align 8
  br label %42

55:                                               ; preds = %48
  %56 = load i64, i64* %9, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i64 1, i64* %9, align 8
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i64, i64* %10, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i64 1, i64* %10, align 8
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i64, i64* %9, align 8
  %65 = load i64*, i64** %7, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64*, i64** %8, align 8
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %63, %15
  ret void
}

declare dso_local i64 @gcd(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
