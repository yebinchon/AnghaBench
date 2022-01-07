; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-pll.c_mtk_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-pll.c_mtk_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mtk_clk_pll = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@POSTDIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @mtk_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mtk_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mtk_clk_pll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.mtk_clk_pll* @to_mtk_clk_pll(%struct.clk_hw* %8)
  store %struct.mtk_clk_pll* %9, %struct.mtk_clk_pll** %5, align 8
  %10 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %5, align 8
  %11 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @readl(i32 %12)
  %14 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %5, align 8
  %15 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = ashr i32 %13, %18
  %20 = load i32, i32* @POSTDIV_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 1, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %5, align 8
  %25 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @readl(i32 %26)
  %28 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %5, align 8
  %29 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %27, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %5, align 8
  %35 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, 1
  %40 = call i32 @GENMASK(i64 %39, i32 0)
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %5, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @__mtk_pll_recalc_rate(%struct.mtk_clk_pll* %43, i64 %44, i32 %45, i32 %46)
  ret i64 %47
}

declare dso_local %struct.mtk_clk_pll* @to_mtk_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i64 @__mtk_pll_recalc_rate(%struct.mtk_clk_pll*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
