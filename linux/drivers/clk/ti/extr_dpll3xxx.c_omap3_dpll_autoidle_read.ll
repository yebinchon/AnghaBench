; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_dpll_autoidle_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_dpll_autoidle_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)* }
%struct.clk_hw_omap = type { %struct.dpll_data* }
%struct.dpll_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw_omap*)* @omap3_dpll_autoidle_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3_dpll_autoidle_read(%struct.clk_hw_omap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw_omap*, align 8
  %4 = alloca %struct.dpll_data*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw_omap* %0, %struct.clk_hw_omap** %3, align 8
  %6 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %7 = icmp ne %struct.clk_hw_omap* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %10 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %9, i32 0, i32 0
  %11 = load %struct.dpll_data*, %struct.dpll_data** %10, align 8
  %12 = icmp ne %struct.dpll_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %46

16:                                               ; preds = %8
  %17 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %18 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %17, i32 0, i32 0
  %19 = load %struct.dpll_data*, %struct.dpll_data** %18, align 8
  store %struct.dpll_data* %19, %struct.dpll_data** %4, align 8
  %20 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %21 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %46

27:                                               ; preds = %16
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (i32*)*, i32 (i32*)** %29, align 8
  %31 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %32 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %31, i32 0, i32 1
  %33 = call i32 %30(i32* %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %35 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.dpll_data*, %struct.dpll_data** %4, align 8
  %40 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__ffs(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = ashr i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %27, %24, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
