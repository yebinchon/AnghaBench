; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_noncore_dpll_save_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_noncore_dpll_save_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)* }
%struct.clk_hw = type { i32 }
%struct.clk_hw_omap = type { i32, %struct.dpll_data* }
%struct.dpll_data = type { i32, i32, i32, i32, i32, i32, i32 }

@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@DPLL_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap3_noncore_dpll_save_context(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_hw_omap*, align 8
  %4 = alloca %struct.dpll_data*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw* %6)
  store %struct.clk_hw_omap* %7, %struct.clk_hw_omap** %3, align 8
  %8 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %9 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %8, i32 0, i32 1
  %10 = load %struct.dpll_data*, %struct.dpll_data** %9, align 8
  store %struct.dpll_data* %10, %struct.dpll_data** %4, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (i32*)*, i32 (i32*)** %12, align 8
  %14 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %15 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %14, i32 0, i32 6
  %16 = call i32 %13(i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %19 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %17, %20
  %22 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %23 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__ffs(i32 %24)
  %26 = ashr i32 %21, %25
  %27 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %28 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %30 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @DPLL_LOCKED, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (i32*)*, i32 (i32*)** %36, align 8
  %38 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %39 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %38, i32 0, i32 5
  %40 = call i32 %37(i32* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %43 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %41, %44
  %46 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %47 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @__ffs(i32 %48)
  %50 = ashr i32 %45, %49
  %51 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %52 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %55 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %53, %56
  %58 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %59 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @__ffs(i32 %60)
  %62 = ashr i32 %57, %61
  %63 = add nsw i32 %62, 1
  %64 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %65 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %34, %1
  ret i32 0
}

declare dso_local %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw*) #1

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
