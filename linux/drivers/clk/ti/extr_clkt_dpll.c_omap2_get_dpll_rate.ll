; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clkt_dpll.c_omap2_get_dpll_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clkt_dpll.c_omap2_get_dpll_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)* }
%struct.clk_hw_omap = type { %struct.dpll_data* }
%struct.dpll_data = type { i32, i32, i32, i32, i32, i32, i32 }

@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @omap2_get_dpll_rate(%struct.clk_hw_omap* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.clk_hw_omap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpll_data*, align 8
  store %struct.clk_hw_omap* %0, %struct.clk_hw_omap** %3, align 8
  %9 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %10 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %9, i32 0, i32 0
  %11 = load %struct.dpll_data*, %struct.dpll_data** %10, align 8
  store %struct.dpll_data* %11, %struct.dpll_data** %8, align 8
  %12 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %13 = icmp ne %struct.dpll_data* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %83

15:                                               ; preds = %1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32*)*, i32 (i32*)** %17, align 8
  %19 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %20 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %19, i32 0, i32 6
  %21 = call i32 %18(i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %23 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %28 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__ffs(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @_omap2_dpll_is_in_bypass(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %15
  %37 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %38 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @clk_hw_get_rate(i32 %39)
  store i64 %40, i64* %2, align 8
  br label %83

41:                                               ; preds = %15
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (i32*)*, i32 (i32*)** %43, align 8
  %45 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %46 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %45, i32 0, i32 4
  %47 = call i32 %44(i32* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %50 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %48, %51
  store i32 %52, i32* %5, align 4
  %53 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %54 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @__ffs(i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = ashr i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %61 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %59, %62
  store i32 %63, i32* %6, align 4
  %64 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %65 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @__ffs(i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = ashr i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load %struct.dpll_data*, %struct.dpll_data** %8, align 8
  %71 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @clk_hw_get_rate(i32 %72)
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* %5, align 4
  %76 = mul nsw i32 %74, %75
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i32 @do_div(i32 %77, i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %2, align 8
  br label %83

83:                                               ; preds = %41, %36, %14
  %84 = load i64, i64* %2, align 8
  ret i64 %84
}

declare dso_local i32 @__ffs(i32) #1

declare dso_local i64 @_omap2_dpll_is_in_bypass(i32) #1

declare dso_local i64 @clk_hw_get_rate(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
