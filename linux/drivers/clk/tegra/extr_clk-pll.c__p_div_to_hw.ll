; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c__p_div_to_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c__p_div_to_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_pll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pdiv_map* }
%struct.pdiv_map = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64)* @_p_div_to_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_p_div_to_hw(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tegra_clk_pll*, align 8
  %7 = alloca %struct.pdiv_map*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %9 = call %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw* %8)
  store %struct.tegra_clk_pll* %9, %struct.tegra_clk_pll** %6, align 8
  %10 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %6, align 8
  %11 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.pdiv_map*, %struct.pdiv_map** %13, align 8
  store %struct.pdiv_map* %14, %struct.pdiv_map** %7, align 8
  %15 = load %struct.pdiv_map*, %struct.pdiv_map** %7, align 8
  %16 = icmp ne %struct.pdiv_map* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %33, %17
  %19 = load %struct.pdiv_map*, %struct.pdiv_map** %7, align 8
  %20 = getelementptr inbounds %struct.pdiv_map, %struct.pdiv_map* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.pdiv_map*, %struct.pdiv_map** %7, align 8
  %26 = getelementptr inbounds %struct.pdiv_map, %struct.pdiv_map* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.pdiv_map*, %struct.pdiv_map** %7, align 8
  %31 = getelementptr inbounds %struct.pdiv_map, %struct.pdiv_map* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %3, align 4
  br label %42

33:                                               ; preds = %23
  %34 = load %struct.pdiv_map*, %struct.pdiv_map** %7, align 8
  %35 = getelementptr inbounds %struct.pdiv_map, %struct.pdiv_map* %34, i32 1
  store %struct.pdiv_map* %35, %struct.pdiv_map** %7, align 8
  br label %18

36:                                               ; preds = %18
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %36, %29
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
