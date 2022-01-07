; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-highbank.c_clk_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-highbank.c_clk_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.hb_clk = type { i32 }

@HB_PLL_EXT_BYPASS = common dso_local global i64 0, align 8
@HB_PLL_DIVF_MASK = common dso_local global i64 0, align 8
@HB_PLL_DIVF_SHIFT = common dso_local global i64 0, align 8
@HB_PLL_DIVQ_MASK = common dso_local global i64 0, align 8
@HB_PLL_DIVQ_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hb_clk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call %struct.hb_clk* @to_hb_clk(%struct.clk_hw* %11)
  store %struct.hb_clk* %12, %struct.hb_clk** %6, align 8
  %13 = load %struct.hb_clk*, %struct.hb_clk** %6, align 8
  %14 = getelementptr inbounds %struct.hb_clk, %struct.hb_clk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @readl(i32 %15)
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @HB_PLL_EXT_BYPASS, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %3, align 8
  br label %44

23:                                               ; preds = %2
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @HB_PLL_DIVF_MASK, align 8
  %26 = and i64 %24, %25
  %27 = load i64, i64* @HB_PLL_DIVF_SHIFT, align 8
  %28 = lshr i64 %26, %27
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @HB_PLL_DIVQ_MASK, align 8
  %31 = and i64 %29, %30
  %32 = load i64, i64* @HB_PLL_DIVQ_SHIFT, align 8
  %33 = lshr i64 %31, %32
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  %37 = mul i64 %34, %36
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %8, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 1, %40
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %38, %42
  store i64 %43, i64* %3, align 8
  br label %44

44:                                               ; preds = %23, %21
  %45 = load i64, i64* %3, align 8
  ret i64 %45
}

declare dso_local %struct.hb_clk* @to_hb_clk(%struct.clk_hw*) #1

declare dso_local i64 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
