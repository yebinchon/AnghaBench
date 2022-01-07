; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_clkoutx2_recalc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_clkoutx2_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)* }
%struct.clk_hw = type { i32 }
%struct.dpll_data = type { i32, i32, i32 }
%struct.clk_hw_omap = type { %struct.dpll_data* }

@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@OMAP3XXX_EN_DPLL_LOCKED = common dso_local global i32 0, align 4
@DPLL_J_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @omap3_clkoutx2_recalc(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dpll_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.clk_hw_omap*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.clk_hw_omap* null, %struct.clk_hw_omap** %9, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %63

13:                                               ; preds = %2
  %14 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %15 = call %struct.clk_hw_omap* @omap3_find_clkoutx2_dpll(%struct.clk_hw* %14)
  store %struct.clk_hw_omap* %15, %struct.clk_hw_omap** %9, align 8
  %16 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %9, align 8
  %17 = icmp ne %struct.clk_hw_omap* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i64 0, i64* %3, align 8
  br label %63

19:                                               ; preds = %13
  %20 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %9, align 8
  %21 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %20, i32 0, i32 0
  %22 = load %struct.dpll_data*, %struct.dpll_data** %21, align 8
  store %struct.dpll_data* %22, %struct.dpll_data** %6, align 8
  %23 = load %struct.dpll_data*, %struct.dpll_data** %6, align 8
  %24 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (i32*)*, i32 (i32*)** %31, align 8
  %33 = load %struct.dpll_data*, %struct.dpll_data** %6, align 8
  %34 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %33, i32 0, i32 2
  %35 = call i32 %32(i32* %34)
  %36 = load %struct.dpll_data*, %struct.dpll_data** %6, align 8
  %37 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %35, %38
  store i32 %39, i32* %8, align 4
  %40 = load %struct.dpll_data*, %struct.dpll_data** %6, align 8
  %41 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__ffs(i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = ashr i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @OMAP3XXX_EN_DPLL_LOCKED, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %19
  %50 = load %struct.dpll_data*, %struct.dpll_data** %6, align 8
  %51 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DPLL_J_TYPE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49, %19
  %57 = load i64, i64* %5, align 8
  store i64 %57, i64* %7, align 8
  br label %61

58:                                               ; preds = %49
  %59 = load i64, i64* %5, align 8
  %60 = mul i64 %59, 2
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %58, %56
  %62 = load i64, i64* %7, align 8
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %61, %18, %12
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

declare dso_local %struct.clk_hw_omap* @omap3_find_clkoutx2_dpll(%struct.clk_hw*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
