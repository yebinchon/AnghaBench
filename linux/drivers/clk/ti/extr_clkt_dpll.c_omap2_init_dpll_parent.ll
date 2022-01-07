; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clkt_dpll.c_omap2_init_dpll_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clkt_dpll.c_omap2_init_dpll_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)* }
%struct.clk_hw = type { i32 }
%struct.clk_hw_omap = type { %struct.dpll_data* }
%struct.dpll_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap2_init_dpll_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_hw_omap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpll_data*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw* %7)
  store %struct.clk_hw_omap* %8, %struct.clk_hw_omap** %4, align 8
  %9 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %4, align 8
  %10 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %9, i32 0, i32 0
  %11 = load %struct.dpll_data*, %struct.dpll_data** %10, align 8
  store %struct.dpll_data* %11, %struct.dpll_data** %6, align 8
  %12 = load %struct.dpll_data*, %struct.dpll_data** %6, align 8
  %13 = icmp ne %struct.dpll_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %40

17:                                               ; preds = %1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32*)*, i32 (i32*)** %19, align 8
  %21 = load %struct.dpll_data*, %struct.dpll_data** %6, align 8
  %22 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %21, i32 0, i32 1
  %23 = call i32 %20(i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.dpll_data*, %struct.dpll_data** %6, align 8
  %25 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.dpll_data*, %struct.dpll_data** %6, align 8
  %30 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @__ffs(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = ashr i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @_omap2_dpll_is_in_bypass(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %40

39:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %38, %14
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i64 @_omap2_dpll_is_in_bypass(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
