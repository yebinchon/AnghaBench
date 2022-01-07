; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c__calc_dynamic_ramp_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c__calc_dynamic_ramp_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_pll_freq_table = type { i64, i64, i64, i64, i32 }
%struct.tegra_clk_pll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.tegra_clk_pll_freq_table*, i64, i64)* @_calc_dynamic_ramp_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_calc_dynamic_ramp_rate(%struct.clk_hw* %0, %struct.tegra_clk_pll_freq_table* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca %struct.tegra_clk_pll_freq_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tegra_clk_pll*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %6, align 8
  store %struct.tegra_clk_pll_freq_table* %1, %struct.tegra_clk_pll_freq_table** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %14 = call %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw* %13)
  store %struct.tegra_clk_pll* %14, %struct.tegra_clk_pll** %10, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %86

20:                                               ; preds = %4
  %21 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %10, align 8
  %22 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @DIV_ROUND_UP(i32 %25, i64 %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %10, align 8
  %29 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @_pll_fixed_mdiv(%struct.TYPE_2__* %30, i64 %31)
  %33 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %34 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* %11, align 4
  %37 = zext i32 %36 to i64
  %38 = mul i64 %35, %37
  %39 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %40 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %42 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %45 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = mul i64 %43, %46
  %48 = load i64, i64* %9, align 8
  %49 = udiv i64 %47, %48
  %50 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %51 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %54 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @_p_div_to_hw(%struct.clk_hw* %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %20
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %5, align 4
  br label %86

62:                                               ; preds = %20
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %65 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %67 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %10, align 8
  %70 = call i64 @divn_max(%struct.tegra_clk_pll* %69)
  %71 = icmp ugt i64 %68, %70
  br i1 %71, label %82, label %72

72:                                               ; preds = %62
  %73 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %74 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %10, align 8
  %77 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ugt i64 %75, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %72, %62
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %86

85:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %82, %60, %17
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i64) #1

declare dso_local i64 @_pll_fixed_mdiv(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @_p_div_to_hw(%struct.clk_hw*, i32) #1

declare dso_local i64 @divn_max(%struct.tegra_clk_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
