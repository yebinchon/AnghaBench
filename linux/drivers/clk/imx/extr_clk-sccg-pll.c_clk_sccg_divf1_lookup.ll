; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-sccg-pll.c_clk_sccg_divf1_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-sccg-pll.c_clk_sccg_divf1_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_sccg_pll_setup = type { i64, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@PLL_DIVF1_MAX = common dso_local global i64 0, align 8
@PLL_BYPASS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup*)* @clk_sccg_divf1_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_sccg_divf1_lookup(%struct.clk_sccg_pll_setup* %0, %struct.clk_sccg_pll_setup* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_sccg_pll_setup*, align 8
  %5 = alloca %struct.clk_sccg_pll_setup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_sccg_pll_setup* %0, %struct.clk_sccg_pll_setup** %4, align 8
  store %struct.clk_sccg_pll_setup* %1, %struct.clk_sccg_pll_setup** %5, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %11 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %50, %2
  %13 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %14 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PLL_DIVF1_MAX, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %12
  %19 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %20 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %24 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  %27 = call i32 @do_div(i32 %22, i64 %26)
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 %28, 2
  store i32 %29, i32* %7, align 4
  %30 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %31 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %4, align 8
  %39 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @clk_sccg_pll2_find_setup(%struct.clk_sccg_pll_setup* %38, %struct.clk_sccg_pll_setup* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %18
  %45 = load i32, i32* @PLL_BYPASS_NONE, align 4
  %46 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %47 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %57

49:                                               ; preds = %18
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %52 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  br label %12

55:                                               ; preds = %12
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %44
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @do_div(i32, i64) #1

declare dso_local i32 @clk_sccg_pll2_find_setup(%struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
