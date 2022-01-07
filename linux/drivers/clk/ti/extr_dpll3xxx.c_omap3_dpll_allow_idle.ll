; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_dpll_allow_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_dpll_allow_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)*, i32 (i32, i32*)* }
%struct.clk_hw_omap = type { %struct.dpll_data* }
%struct.dpll_data = type { i32, i32 }

@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@DPLL_AUTOIDLE_LOW_POWER_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw_omap*)* @omap3_dpll_allow_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap3_dpll_allow_idle(%struct.clk_hw_omap* %0) #0 {
  %2 = alloca %struct.clk_hw_omap*, align 8
  %3 = alloca %struct.dpll_data*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw_omap* %0, %struct.clk_hw_omap** %2, align 8
  %5 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %6 = icmp ne %struct.clk_hw_omap* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %9 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %8, i32 0, i32 0
  %10 = load %struct.dpll_data*, %struct.dpll_data** %9, align 8
  %11 = icmp ne %struct.dpll_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %1
  br label %50

13:                                               ; preds = %7
  %14 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %15 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %14, i32 0, i32 0
  %16 = load %struct.dpll_data*, %struct.dpll_data** %15, align 8
  store %struct.dpll_data* %16, %struct.dpll_data** %3, align 8
  %17 = load %struct.dpll_data*, %struct.dpll_data** %3, align 8
  %18 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %50

22:                                               ; preds = %13
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32*)*, i32 (i32*)** %24, align 8
  %26 = load %struct.dpll_data*, %struct.dpll_data** %3, align 8
  %27 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %26, i32 0, i32 1
  %28 = call i32 %25(i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.dpll_data*, %struct.dpll_data** %3, align 8
  %30 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @DPLL_AUTOIDLE_LOW_POWER_STOP, align 4
  %36 = load %struct.dpll_data*, %struct.dpll_data** %3, align 8
  %37 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @__ffs(i32 %38)
  %40 = shl i32 %35, %39
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32 (i32, i32*)*, i32 (i32, i32*)** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.dpll_data*, %struct.dpll_data** %3, align 8
  %48 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %47, i32 0, i32 1
  %49 = call i32 %45(i32 %46, i32* %48)
  br label %50

50:                                               ; preds = %22, %21, %12
  ret void
}

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
