; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll44xx.c_omap4_dpll_regm4xen_recalc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll44xx.c_omap4_dpll_regm4xen_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)* }
%struct.clk_hw = type { i32 }
%struct.clk_hw_omap = type { %struct.dpll_data* }
%struct.dpll_data = type { i32 }

@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@OMAP4430_DPLL_REGM4XEN_MASK = common dso_local global i32 0, align 4
@OMAP4430_REGM4XEN_MULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @omap4_dpll_regm4xen_recalc(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_hw_omap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.dpll_data*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw* %10)
  store %struct.clk_hw_omap* %11, %struct.clk_hw_omap** %6, align 8
  %12 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %6, align 8
  %13 = icmp ne %struct.clk_hw_omap* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %6, align 8
  %16 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %15, i32 0, i32 0
  %17 = load %struct.dpll_data*, %struct.dpll_data** %16, align 8
  %18 = icmp ne %struct.dpll_data* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %2
  store i64 0, i64* %3, align 8
  br label %42

20:                                               ; preds = %14
  %21 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %6, align 8
  %22 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %21, i32 0, i32 0
  %23 = load %struct.dpll_data*, %struct.dpll_data** %22, align 8
  store %struct.dpll_data* %23, %struct.dpll_data** %9, align 8
  %24 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %6, align 8
  %25 = call i64 @omap2_get_dpll_rate(%struct.clk_hw_omap* %24)
  store i64 %25, i64* %8, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (i32*)*, i32 (i32*)** %27, align 8
  %29 = load %struct.dpll_data*, %struct.dpll_data** %9, align 8
  %30 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %29, i32 0, i32 0
  %31 = call i32 %28(i32* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @OMAP4430_DPLL_REGM4XEN_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %20
  %37 = load i64, i64* @OMAP4430_REGM4XEN_MULT, align 8
  %38 = load i64, i64* %8, align 8
  %39 = mul i64 %38, %37
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %36, %20
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %40, %19
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw*) #1

declare dso_local i64 @omap2_get_dpll_rate(%struct.clk_hw_omap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
