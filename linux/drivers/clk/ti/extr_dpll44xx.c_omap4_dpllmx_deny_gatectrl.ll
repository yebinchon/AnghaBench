; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll44xx.c_omap4_dpllmx_deny_gatectrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll44xx.c_omap4_dpllmx_deny_gatectrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32*)*, i32 (i32*)* }
%struct.clk_hw_omap = type { i32, i32 }

@CLOCK_CLKOUTX2 = common dso_local global i32 0, align 4
@OMAP4430_DPLL_CLKOUTX2_GATE_CTRL_MASK = common dso_local global i32 0, align 4
@OMAP4430_DPLL_CLKOUT_GATE_CTRL_MASK = common dso_local global i32 0, align 4
@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw_omap*)* @omap4_dpllmx_deny_gatectrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap4_dpllmx_deny_gatectrl(%struct.clk_hw_omap* %0) #0 {
  %2 = alloca %struct.clk_hw_omap*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.clk_hw_omap* %0, %struct.clk_hw_omap** %2, align 8
  %5 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %6 = icmp ne %struct.clk_hw_omap* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %37

8:                                                ; preds = %1
  %9 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %10 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CLOCK_CLKOUTX2, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = load i32, i32* @OMAP4430_DPLL_CLKOUTX2_GATE_CTRL_MASK, align 4
  br label %19

17:                                               ; preds = %8
  %18 = load i32, i32* @OMAP4430_DPLL_CLKOUT_GATE_CTRL_MASK, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %4, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32 (i32*)*, i32 (i32*)** %22, align 8
  %24 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %25 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %24, i32 0, i32 1
  %26 = call i32 %23(i32* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (i32, i32*)*, i32 (i32, i32*)** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %35 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %34, i32 0, i32 1
  %36 = call i32 %32(i32 %33, i32* %35)
  br label %37

37:                                               ; preds = %19, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
