; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c__update_pll_mnp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c__update_pll_mnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_clk_pll = type { i32, %struct.tegra_clk_pll_params* }
%struct.tegra_clk_pll_params = type { i32, i32, i32, %struct.div_nmp* }
%struct.div_nmp = type { i32, i32, i32 }
%struct.tegra_clk_pll_freq_table = type { i32, i32, i32 }

@TEGRA_PLLM = common dso_local global i32 0, align 4
@TEGRA_PLLMB = common dso_local global i32 0, align 4
@PMC_PLLP_WB0_OVERRIDE = common dso_local global i32 0, align 4
@PMC_PLLP_WB0_OVERRIDE_PLLM_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_clk_pll*, %struct.tegra_clk_pll_freq_table*)* @_update_pll_mnp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_update_pll_mnp(%struct.tegra_clk_pll* %0, %struct.tegra_clk_pll_freq_table* %1) #0 {
  %3 = alloca %struct.tegra_clk_pll*, align 8
  %4 = alloca %struct.tegra_clk_pll_freq_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_clk_pll_params*, align 8
  %7 = alloca %struct.div_nmp*, align 8
  store %struct.tegra_clk_pll* %0, %struct.tegra_clk_pll** %3, align 8
  store %struct.tegra_clk_pll_freq_table* %1, %struct.tegra_clk_pll_freq_table** %4, align 8
  %8 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %8, i32 0, i32 1
  %10 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %9, align 8
  store %struct.tegra_clk_pll_params* %10, %struct.tegra_clk_pll_params** %6, align 8
  %11 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %6, align 8
  %12 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %11, i32 0, i32 3
  %13 = load %struct.div_nmp*, %struct.div_nmp** %12, align 8
  store %struct.div_nmp* %13, %struct.div_nmp** %7, align 8
  %14 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %6, align 8
  %15 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @TEGRA_PLLM, align 4
  %18 = load i32, i32* @TEGRA_PLLMB, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %103

22:                                               ; preds = %2
  %23 = load i32, i32* @PMC_PLLP_WB0_OVERRIDE, align 4
  %24 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %25 = call i32 @pll_override_readl(i32 %23, %struct.tegra_clk_pll* %24)
  %26 = load i32, i32* @PMC_PLLP_WB0_OVERRIDE_PLLM_OVERRIDE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %103

29:                                               ; preds = %22
  %30 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %6, align 8
  %31 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %34 = call i32 @pll_override_readl(i32 %32, %struct.tegra_clk_pll* %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %36 = call i32 @divp_mask(%struct.tegra_clk_pll* %35)
  %37 = load %struct.div_nmp*, %struct.div_nmp** %7, align 8
  %38 = getelementptr inbounds %struct.div_nmp, %struct.div_nmp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %36, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %4, align 8
  %45 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.div_nmp*, %struct.div_nmp** %7, align 8
  %48 = getelementptr inbounds %struct.div_nmp, %struct.div_nmp* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %46, %49
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %6, align 8
  %55 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %58 = call i32 @pll_override_writel(i32 %53, i32 %56, %struct.tegra_clk_pll* %57)
  %59 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %6, align 8
  %60 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %63 = call i32 @pll_override_readl(i32 %61, %struct.tegra_clk_pll* %62)
  store i32 %63, i32* %5, align 4
  %64 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %65 = call i32 @divm_mask(%struct.tegra_clk_pll* %64)
  %66 = load %struct.div_nmp*, %struct.div_nmp** %7, align 8
  %67 = getelementptr inbounds %struct.div_nmp, %struct.div_nmp* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %65, %68
  %70 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %71 = call i32 @divn_mask(%struct.tegra_clk_pll* %70)
  %72 = load %struct.div_nmp*, %struct.div_nmp** %7, align 8
  %73 = getelementptr inbounds %struct.div_nmp, %struct.div_nmp* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %71, %74
  %76 = or i32 %69, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %5, align 4
  %80 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %4, align 8
  %81 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.div_nmp*, %struct.div_nmp** %7, align 8
  %84 = getelementptr inbounds %struct.div_nmp, %struct.div_nmp* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %82, %85
  %87 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %4, align 8
  %88 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.div_nmp*, %struct.div_nmp** %7, align 8
  %91 = getelementptr inbounds %struct.div_nmp, %struct.div_nmp* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %89, %92
  %94 = or i32 %86, %93
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.tegra_clk_pll_params*, %struct.tegra_clk_pll_params** %6, align 8
  %99 = getelementptr inbounds %struct.tegra_clk_pll_params, %struct.tegra_clk_pll_params* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %102 = call i32 @pll_override_writel(i32 %97, i32 %100, %struct.tegra_clk_pll* %101)
  br label %146

103:                                              ; preds = %22, %2
  %104 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %105 = call i32 @pll_readl_base(%struct.tegra_clk_pll* %104)
  store i32 %105, i32* %5, align 4
  %106 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %107 = call i32 @divm_mask_shifted(%struct.tegra_clk_pll* %106)
  %108 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %109 = call i32 @divn_mask_shifted(%struct.tegra_clk_pll* %108)
  %110 = or i32 %107, %109
  %111 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %112 = call i32 @divp_mask_shifted(%struct.tegra_clk_pll* %111)
  %113 = or i32 %110, %112
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %5, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %5, align 4
  %117 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %4, align 8
  %118 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %121 = call i32 @divm_shift(%struct.tegra_clk_pll* %120)
  %122 = shl i32 %119, %121
  %123 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %4, align 8
  %124 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %127 = call i32 @divn_shift(%struct.tegra_clk_pll* %126)
  %128 = shl i32 %125, %127
  %129 = or i32 %122, %128
  %130 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %4, align 8
  %131 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %134 = call i32 @divp_shift(%struct.tegra_clk_pll* %133)
  %135 = shl i32 %132, %134
  %136 = or i32 %129, %135
  %137 = load i32, i32* %5, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %141 = call i32 @pll_writel_base(i32 %139, %struct.tegra_clk_pll* %140)
  %142 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %3, align 8
  %143 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %142, i32 0, i32 0
  %144 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %4, align 8
  %145 = call i32 @clk_pll_set_sdm_data(i32* %143, %struct.tegra_clk_pll_freq_table* %144)
  br label %146

146:                                              ; preds = %103, %29
  ret void
}

declare dso_local i32 @pll_override_readl(i32, %struct.tegra_clk_pll*) #1

declare dso_local i32 @divp_mask(%struct.tegra_clk_pll*) #1

declare dso_local i32 @pll_override_writel(i32, i32, %struct.tegra_clk_pll*) #1

declare dso_local i32 @divm_mask(%struct.tegra_clk_pll*) #1

declare dso_local i32 @divn_mask(%struct.tegra_clk_pll*) #1

declare dso_local i32 @pll_readl_base(%struct.tegra_clk_pll*) #1

declare dso_local i32 @divm_mask_shifted(%struct.tegra_clk_pll*) #1

declare dso_local i32 @divn_mask_shifted(%struct.tegra_clk_pll*) #1

declare dso_local i32 @divp_mask_shifted(%struct.tegra_clk_pll*) #1

declare dso_local i32 @divm_shift(%struct.tegra_clk_pll*) #1

declare dso_local i32 @divn_shift(%struct.tegra_clk_pll*) #1

declare dso_local i32 @divp_shift(%struct.tegra_clk_pll*) #1

declare dso_local i32 @pll_writel_base(i32, %struct.tegra_clk_pll*) #1

declare dso_local i32 @clk_pll_set_sdm_data(i32*, %struct.tegra_clk_pll_freq_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
