; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-vt8500.c_vtwm_pll_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-vt8500.c_vtwm_pll_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pll = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @vtwm_pll_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vtwm_pll_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.clk_pll*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %16 = call %struct.clk_pll* @to_clk_pll(%struct.clk_hw* %15)
  store %struct.clk_pll* %16, %struct.clk_pll** %8, align 8
  %17 = load %struct.clk_pll*, %struct.clk_pll** %8, align 8
  %18 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %79 [
    i32 131, label %20
    i32 130, label %34
    i32 129, label %49
    i32 128, label %64
  ]

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @vt8500_find_pll_bits(i64 %21, i64 %23, i32* %10, i32* %11)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = load i64*, i64** %7, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @VT8500_BITS_TO_FREQ(i64 %29, i32 %30, i32 %31)
  store i64 %32, i64* %13, align 8
  br label %33

33:                                               ; preds = %27, %20
  br label %82

34:                                               ; preds = %3
  %35 = load i64, i64* %6, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @wm8650_find_pll_bits(i64 %35, i64 %37, i32* %10, i32* %11, i32* %12)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i64 @WM8650_BITS_TO_FREQ(i64 %43, i32 %44, i32 %45, i32 %46)
  store i64 %47, i64* %13, align 8
  br label %48

48:                                               ; preds = %41, %34
  br label %82

49:                                               ; preds = %3
  %50 = load i64, i64* %6, align 8
  %51 = load i64*, i64** %7, align 8
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @wm8750_find_pll_bits(i64 %50, i64 %52, i32* %9, i32* %10, i32* %11, i32* %12)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load i64*, i64** %7, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @WM8750_BITS_TO_FREQ(i64 %58, i32 %59, i32 %60, i32 %61)
  store i64 %62, i64* %13, align 8
  br label %63

63:                                               ; preds = %56, %49
  br label %82

64:                                               ; preds = %3
  %65 = load i64, i64* %6, align 8
  %66 = load i64*, i64** %7, align 8
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @wm8850_find_pll_bits(i64 %65, i64 %67, i32* %10, i32* %11, i32* %12)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load i64*, i64** %7, align 8
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i64 @WM8850_BITS_TO_FREQ(i64 %73, i32 %74, i32 %75, i32 %76)
  store i64 %77, i64* %13, align 8
  br label %78

78:                                               ; preds = %71, %64
  br label %82

79:                                               ; preds = %3
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %79, %78, %63, %48, %33
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %4, align 8
  br label %90

88:                                               ; preds = %82
  %89 = load i64, i64* %13, align 8
  store i64 %89, i64* %4, align 8
  br label %90

90:                                               ; preds = %88, %85
  %91 = load i64, i64* %4, align 8
  ret i64 %91
}

declare dso_local %struct.clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @vt8500_find_pll_bits(i64, i64, i32*, i32*) #1

declare dso_local i64 @VT8500_BITS_TO_FREQ(i64, i32, i32) #1

declare dso_local i32 @wm8650_find_pll_bits(i64, i64, i32*, i32*, i32*) #1

declare dso_local i64 @WM8650_BITS_TO_FREQ(i64, i32, i32, i32) #1

declare dso_local i32 @wm8750_find_pll_bits(i64, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @WM8750_BITS_TO_FREQ(i64, i32, i32, i32) #1

declare dso_local i32 @wm8850_find_pll_bits(i64, i64, i32*, i32*, i32*) #1

declare dso_local i64 @WM8850_BITS_TO_FREQ(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
