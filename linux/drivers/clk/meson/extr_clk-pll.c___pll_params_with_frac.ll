; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-pll.c___pll_params_with_frac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-pll.c___pll_params_with_frac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_clk_pll_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CLK_MESON_PLL_ROUND_CLOSEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32, %struct.meson_clk_pll_data*)* @__pll_params_with_frac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pll_params_with_frac(i64 %0, i64 %1, i32 %2, i32 %3, %struct.meson_clk_pll_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.meson_clk_pll_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.meson_clk_pll_data* %4, %struct.meson_clk_pll_data** %11, align 8
  %14 = load %struct.meson_clk_pll_data*, %struct.meson_clk_pll_data** %11, align 8
  %15 = getelementptr inbounds %struct.meson_clk_pll_data, %struct.meson_clk_pll_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 1, %17
  store i32 %18, i32* %12, align 4
  %19 = load i64, i64* %7, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* %10, align 4
  %22 = mul i32 %20, %21
  store i32 %22, i32* %13, align 4
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = mul i64 %24, %26
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = udiv i64 %27, %29
  %31 = icmp ult i64 %23, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %62

33:                                               ; preds = %5
  %34 = load %struct.meson_clk_pll_data*, %struct.meson_clk_pll_data** %11, align 8
  %35 = getelementptr inbounds %struct.meson_clk_pll_data, %struct.meson_clk_pll_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CLK_MESON_PLL_ROUND_CLOSEST, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = mul i32 %41, %42
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %43, i64 %44)
  store i32 %45, i32* %13, align 4
  br label %52

46:                                               ; preds = %33
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %12, align 4
  %49 = mul i32 %47, %48
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @div_u64(i32 %49, i64 %50)
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %46, %40
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %12, align 4
  %55 = mul i32 %53, %54
  %56 = load i32, i32* %13, align 4
  %57 = sub i32 %56, %55
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %12, align 4
  %60 = sub i32 %59, 1
  %61 = call i32 @min(i32 %58, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %52, %32
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i64) #1

declare dso_local i32 @div_u64(i32, i64) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
