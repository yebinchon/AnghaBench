; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_noncore_dpll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_noncore_dpll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i32)* }
%struct.clk_hw = type { i32 }
%struct.clk_hw_omap = type { i64 }

@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap3_noncore_dpll_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_hw_omap*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %4 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %5 = call %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw* %4)
  store %struct.clk_hw_omap* %5, %struct.clk_hw_omap** %3, align 8
  %6 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %7 = call i32 @_omap3_noncore_dpll_stop(%struct.clk_hw_omap* %6)
  %8 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %9 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i64, i32)*, i32 (i64, i32)** %14, align 8
  %16 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %17 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %20 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 %15(i64 %18, i32 %21)
  br label %23

23:                                               ; preds = %12, %1
  ret void
}

declare dso_local %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw*) #1

declare dso_local i32 @_omap3_noncore_dpll_stop(%struct.clk_hw_omap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
