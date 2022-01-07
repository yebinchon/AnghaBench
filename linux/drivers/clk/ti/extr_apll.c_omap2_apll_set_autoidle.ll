; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_apll.c_omap2_apll_set_autoidle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_apll.c_omap2_apll_set_autoidle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)*, i32 (i32, i32*)* }
%struct.clk_hw_omap = type { %struct.dpll_data* }
%struct.dpll_data = type { i32, i32, i32 }

@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw_omap*, i32)* @omap2_apll_set_autoidle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap2_apll_set_autoidle(%struct.clk_hw_omap* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw_omap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpll_data*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw_omap* %0, %struct.clk_hw_omap** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %8 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %7, i32 0, i32 0
  %9 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  store %struct.dpll_data* %9, %struct.dpll_data** %5, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (i32*)*, i32 (i32*)** %11, align 8
  %13 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %14 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %13, i32 0, i32 2
  %15 = call i32 %12(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %17 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %24 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @__ffs(i32 %25)
  %27 = shl i32 %22, %26
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32 (i32, i32*)*, i32 (i32, i32*)** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.dpll_data*, %struct.dpll_data** %5, align 8
  %35 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %34, i32 0, i32 1
  %36 = call i32 %32(i32 %33, i32* %35)
  ret void
}

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
