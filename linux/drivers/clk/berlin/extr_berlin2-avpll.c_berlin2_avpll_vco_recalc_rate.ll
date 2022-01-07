; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/berlin/extr_berlin2-avpll.c_berlin2_avpll_vco_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/berlin/extr_berlin2-avpll.c_berlin2_avpll_vco_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.berlin2_avpll_vco = type { i64 }

@VCO_CTRL1 = common dso_local global i64 0, align 8
@VCO_REFDIV_MASK = common dso_local global i64 0, align 8
@VCO_REFDIV_SHIFT = common dso_local global i64 0, align 8
@vco_refdiv = common dso_local global i64* null, align 8
@VCO_FBDIV_MASK = common dso_local global i64 0, align 8
@VCO_FBDIV_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @berlin2_avpll_vco_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @berlin2_avpll_vco_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.berlin2_avpll_vco*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call %struct.berlin2_avpll_vco* @to_avpll_vco(%struct.clk_hw* %10)
  store %struct.berlin2_avpll_vco* %11, %struct.berlin2_avpll_vco** %5, align 8
  %12 = load i64, i64* %4, align 8
  store i64 %12, i64* %9, align 8
  %13 = load %struct.berlin2_avpll_vco*, %struct.berlin2_avpll_vco** %5, align 8
  %14 = getelementptr inbounds %struct.berlin2_avpll_vco, %struct.berlin2_avpll_vco* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VCO_CTRL1, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i64 @readl_relaxed(i64 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @VCO_REFDIV_MASK, align 8
  %21 = and i64 %19, %20
  %22 = load i64, i64* @VCO_REFDIV_SHIFT, align 8
  %23 = lshr i64 %21, %22
  store i64 %23, i64* %7, align 8
  %24 = load i64*, i64** @vco_refdiv, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @VCO_FBDIV_MASK, align 8
  %30 = and i64 %28, %29
  %31 = load i64, i64* @VCO_FBDIV_SHIFT, align 8
  %32 = lshr i64 %30, %31
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = mul i64 %34, %33
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @do_div(i64 %36, i64 %37)
  %39 = load i64, i64* %9, align 8
  ret i64 %39
}

declare dso_local %struct.berlin2_avpll_vco* @to_avpll_vco(%struct.clk_hw*) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
