; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c__program_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c__program_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_pll_freq_table = type { i64, i64 }
%struct.tegra_clk_pll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tegra_clk_pll*, %struct.tegra_clk_pll_freq_table*)*, i32, i32 (%struct.tegra_clk_pll*)*, i64 }

@TEGRA_PLL_HAS_CPCON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.tegra_clk_pll_freq_table*, i64)* @_program_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_program_pll(%struct.clk_hw* %0, %struct.tegra_clk_pll_freq_table* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca %struct.tegra_clk_pll_freq_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tegra_clk_pll*, align 8
  %9 = alloca %struct.tegra_clk_pll_freq_table, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store %struct.tegra_clk_pll_freq_table* %1, %struct.tegra_clk_pll_freq_table** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %13 = call %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw* %12)
  store %struct.tegra_clk_pll* %13, %struct.tegra_clk_pll** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %15 = call i32 @clk_pll_is_enabled(%struct.clk_hw* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %17 = call i32 @_get_pll_mnp(%struct.tegra_clk_pll* %16, %struct.tegra_clk_pll_freq_table* %9)
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %3
  %21 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %22 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %61

27:                                               ; preds = %20
  %28 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %29 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.tegra_clk_pll*, %struct.tegra_clk_pll_freq_table*)*, i32 (%struct.tegra_clk_pll*, %struct.tegra_clk_pll_freq_table*)** %31, align 8
  %33 = icmp ne i32 (%struct.tegra_clk_pll*, %struct.tegra_clk_pll_freq_table*)* %32, null
  br i1 %33, label %34, label %61

34:                                               ; preds = %27
  %35 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %6, align 8
  %36 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %9, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %37, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %34
  %42 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %6, align 8
  %43 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %9, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %41
  %49 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %50 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.tegra_clk_pll*, %struct.tegra_clk_pll_freq_table*)*, i32 (%struct.tegra_clk_pll*, %struct.tegra_clk_pll_freq_table*)** %52, align 8
  %54 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %55 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %6, align 8
  %56 = call i32 %53(%struct.tegra_clk_pll* %54, %struct.tegra_clk_pll_freq_table* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %120

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %41, %34, %27, %20, %3
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %66 = call i32 @pll_clk_stop_ss(%struct.tegra_clk_pll* %65)
  %67 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %68 = call i32 @_clk_pll_disable(%struct.clk_hw* %67)
  br label %69

69:                                               ; preds = %64, %61
  %70 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %71 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %69
  %77 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %78 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32 (%struct.tegra_clk_pll*)*, i32 (%struct.tegra_clk_pll*)** %80, align 8
  %82 = icmp ne i32 (%struct.tegra_clk_pll*)* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %85 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32 (%struct.tegra_clk_pll*)*, i32 (%struct.tegra_clk_pll*)** %87, align 8
  %89 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %90 = call i32 %88(%struct.tegra_clk_pll* %89)
  br label %91

91:                                               ; preds = %83, %76, %69
  %92 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %93 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %6, align 8
  %94 = call i32 @_update_pll_mnp(%struct.tegra_clk_pll* %92, %struct.tegra_clk_pll_freq_table* %93)
  %95 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %96 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @TEGRA_PLL_HAS_CPCON, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %91
  %104 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %105 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %6, align 8
  %106 = load i64, i64* %7, align 8
  %107 = call i32 @_update_pll_cpcon(%struct.tegra_clk_pll* %104, %struct.tegra_clk_pll_freq_table* %105, i64 %106)
  br label %108

108:                                              ; preds = %103, %91
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %113 = call i32 @_clk_pll_enable(%struct.clk_hw* %112)
  %114 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %115 = call i32 @clk_pll_wait_for_lock(%struct.tegra_clk_pll* %114)
  store i32 %115, i32* %11, align 4
  %116 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %117 = call i32 @pll_clk_start_ss(%struct.tegra_clk_pll* %116)
  br label %118

118:                                              ; preds = %111, %108
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %59
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @clk_pll_is_enabled(%struct.clk_hw*) #1

declare dso_local i32 @_get_pll_mnp(%struct.tegra_clk_pll*, %struct.tegra_clk_pll_freq_table*) #1

declare dso_local i32 @pll_clk_stop_ss(%struct.tegra_clk_pll*) #1

declare dso_local i32 @_clk_pll_disable(%struct.clk_hw*) #1

declare dso_local i32 @_update_pll_mnp(%struct.tegra_clk_pll*, %struct.tegra_clk_pll_freq_table*) #1

declare dso_local i32 @_update_pll_cpcon(%struct.tegra_clk_pll*, %struct.tegra_clk_pll_freq_table*, i64) #1

declare dso_local i32 @_clk_pll_enable(%struct.clk_hw*) #1

declare dso_local i32 @clk_pll_wait_for_lock(%struct.tegra_clk_pll*) #1

declare dso_local i32 @pll_clk_start_ss(%struct.tegra_clk_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
