; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_apll.c_dra7_apll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_apll.c_dra7_apll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)*, i32 (i32, i32*)* }
%struct.clk_hw = type { i32 }
%struct.clk_hw_omap = type { %struct.dpll_data* }
%struct.dpll_data = type { i32, i32, i32 }

@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@APLL_AUTO_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @dra7_apll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dra7_apll_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_hw_omap*, align 8
  %4 = alloca %struct.dpll_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw* %7)
  store %struct.clk_hw_omap* %8, %struct.clk_hw_omap** %3, align 8
  store i32 1, i32* %5, align 4
  %9 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %10 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %9, i32 0, i32 0
  %11 = load %struct.dpll_data*, %struct.dpll_data** %10, align 8
  store %struct.dpll_data* %11, %struct.dpll_data** %4, align 8
  %12 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %13 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @__ffs(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32*)*, i32 (i32*)** %19, align 8
  %21 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %22 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %21, i32 0, i32 2
  %23 = call i32 %20(i32* %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %25 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @APLL_AUTO_IDLE, align 4
  %31 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %32 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @__ffs(i32 %33)
  %35 = shl i32 %30, %34
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32 (i32, i32*)*, i32 (i32, i32*)** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %43 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %42, i32 0, i32 2
  %44 = call i32 %40(i32 %41, i32* %43)
  ret void
}

declare dso_local %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw*) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
