; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-pll.c_meson_clk_get_pll_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-pll.c_meson_clk_get_pll_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_clk_pll_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32*, i32*, %struct.meson_clk_pll_data*)* @meson_clk_get_pll_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_clk_get_pll_settings(i64 %0, i64 %1, i32* %2, i32* %3, %struct.meson_clk_pll_data* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.meson_clk_pll_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.meson_clk_pll_data* %4, %struct.meson_clk_pll_data** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %56, %5
  %18 = load i32, i32* %16, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %59

21:                                               ; preds = %17
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.meson_clk_pll_data*, %struct.meson_clk_pll_data** %10, align 8
  %26 = call i32 @meson_clk_get_pll_get_index(i64 %22, i64 %23, i32 %24, i32* %14, i32* %15, %struct.meson_clk_pll_data* %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %59

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load %struct.meson_clk_pll_data*, %struct.meson_clk_pll_data** %10, align 8
  %37 = call i64 @__pll_params_to_rate(i64 %33, i32 %34, i32 %35, i32 0, %struct.meson_clk_pll_data* %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load %struct.meson_clk_pll_data*, %struct.meson_clk_pll_data** %10, align 8
  %42 = call i64 @meson_clk_pll_is_better(i64 %38, i64 %39, i64 %40, %struct.meson_clk_pll_data* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %32
  %45 = load i64, i64* %12, align 8
  store i64 %45, i64* %11, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %59

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %32
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %13, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %17

59:                                               ; preds = %53, %31, %17
  %60 = load i64, i64* %11, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  br label %66

66:                                               ; preds = %63, %62
  %67 = phi i32 [ 0, %62 ], [ %65, %63 ]
  ret i32 %67
}

declare dso_local i32 @meson_clk_get_pll_get_index(i64, i64, i32, i32*, i32*, %struct.meson_clk_pll_data*) #1

declare dso_local i64 @__pll_params_to_rate(i64, i32, i32, i32, %struct.meson_clk_pll_data*) #1

declare dso_local i64 @meson_clk_pll_is_better(i64, i64, i64, %struct.meson_clk_pll_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
