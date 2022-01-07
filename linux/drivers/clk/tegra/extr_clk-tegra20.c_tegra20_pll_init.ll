; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra20.c_tegra20_pll_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra20.c_tegra20_pll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"pll_c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pll_ref\00", align 1
@clk_base = common dso_local global i64 0, align 8
@pll_c_params = common dso_local global i32 0, align 4
@clks = common dso_local global %struct.clk** null, align 8
@TEGRA20_CLK_PLL_C = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"pll_c_out1_div\00", align 1
@PLLC_OUT = common dso_local global i64 0, align 8
@TEGRA_DIVIDER_ROUND_UP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"pll_c_out1\00", align 1
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@TEGRA20_CLK_PLL_C_OUT1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"pll_m\00", align 1
@CLK_SET_RATE_GATE = common dso_local global i32 0, align 4
@pll_m_params = common dso_local global i32 0, align 4
@TEGRA20_CLK_PLL_M = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"pll_m_out1_div\00", align 1
@PLLM_OUT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"pll_m_out1\00", align 1
@TEGRA20_CLK_PLL_M_OUT1 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"pll_x\00", align 1
@pll_x_params = common dso_local global i32 0, align 4
@TEGRA20_CLK_PLL_X = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"pll_u\00", align 1
@pll_u_params = common dso_local global i32 0, align 4
@TEGRA20_CLK_PLL_U = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"pll_d\00", align 1
@pll_d_params = common dso_local global i32 0, align 4
@TEGRA20_CLK_PLL_D = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"pll_d_out0\00", align 1
@TEGRA20_CLK_PLL_D_OUT0 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"pll_a\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"pll_p_out1\00", align 1
@pll_a_params = common dso_local global i32 0, align 4
@TEGRA20_CLK_PLL_A = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [15 x i8] c"pll_a_out0_div\00", align 1
@PLLA_OUT = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [11 x i8] c"pll_a_out0\00", align 1
@CLK_IGNORE_UNUSED = common dso_local global i32 0, align 4
@TEGRA20_CLK_PLL_A_OUT0 = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"pll_e\00", align 1
@pmc_base = common dso_local global i32 0, align 4
@pll_e_params = common dso_local global i32 0, align 4
@TEGRA20_CLK_PLL_E = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tegra20_pll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra20_pll_init() #0 {
  %1 = alloca %struct.clk*, align 8
  %2 = load i64, i64* @clk_base, align 8
  %3 = call %struct.clk* @tegra_clk_register_pll(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %2, i32* null, i32 0, i32* @pll_c_params, i32* null)
  store %struct.clk* %3, %struct.clk** %1, align 8
  %4 = load %struct.clk*, %struct.clk** %1, align 8
  %5 = load %struct.clk**, %struct.clk*** @clks, align 8
  %6 = load i64, i64* @TEGRA20_CLK_PLL_C, align 8
  %7 = getelementptr inbounds %struct.clk*, %struct.clk** %5, i64 %6
  store %struct.clk* %4, %struct.clk** %7, align 8
  %8 = load i64, i64* @clk_base, align 8
  %9 = load i64, i64* @PLLC_OUT, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i32, i32* @TEGRA_DIVIDER_ROUND_UP, align 4
  %12 = call %struct.clk* @tegra_clk_register_divider(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %10, i32 0, i32 %11, i32 8, i32 8, i32 1, i32* null)
  store %struct.clk* %12, %struct.clk** %1, align 8
  %13 = load i64, i64* @clk_base, align 8
  %14 = load i64, i64* @PLLC_OUT, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %17 = call %struct.clk* @tegra_clk_register_pll_out(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %15, i32 1, i32 0, i32 %16, i32 0, i32* null)
  store %struct.clk* %17, %struct.clk** %1, align 8
  %18 = load %struct.clk*, %struct.clk** %1, align 8
  %19 = load %struct.clk**, %struct.clk*** @clks, align 8
  %20 = load i64, i64* @TEGRA20_CLK_PLL_C_OUT1, align 8
  %21 = getelementptr inbounds %struct.clk*, %struct.clk** %19, i64 %20
  store %struct.clk* %18, %struct.clk** %21, align 8
  %22 = load i64, i64* @clk_base, align 8
  %23 = load i32, i32* @CLK_SET_RATE_GATE, align 4
  %24 = call %struct.clk* @tegra_clk_register_pll(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %22, i32* null, i32 %23, i32* @pll_m_params, i32* null)
  store %struct.clk* %24, %struct.clk** %1, align 8
  %25 = load %struct.clk*, %struct.clk** %1, align 8
  %26 = load %struct.clk**, %struct.clk*** @clks, align 8
  %27 = load i64, i64* @TEGRA20_CLK_PLL_M, align 8
  %28 = getelementptr inbounds %struct.clk*, %struct.clk** %26, i64 %27
  store %struct.clk* %25, %struct.clk** %28, align 8
  %29 = load i64, i64* @clk_base, align 8
  %30 = load i64, i64* @PLLM_OUT, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* @TEGRA_DIVIDER_ROUND_UP, align 4
  %33 = call %struct.clk* @tegra_clk_register_divider(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %31, i32 0, i32 %32, i32 8, i32 8, i32 1, i32* null)
  store %struct.clk* %33, %struct.clk** %1, align 8
  %34 = load i64, i64* @clk_base, align 8
  %35 = load i64, i64* @PLLM_OUT, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %38 = call %struct.clk* @tegra_clk_register_pll_out(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64 %36, i32 1, i32 0, i32 %37, i32 0, i32* null)
  store %struct.clk* %38, %struct.clk** %1, align 8
  %39 = load %struct.clk*, %struct.clk** %1, align 8
  %40 = load %struct.clk**, %struct.clk*** @clks, align 8
  %41 = load i64, i64* @TEGRA20_CLK_PLL_M_OUT1, align 8
  %42 = getelementptr inbounds %struct.clk*, %struct.clk** %40, i64 %41
  store %struct.clk* %39, %struct.clk** %42, align 8
  %43 = load i64, i64* @clk_base, align 8
  %44 = call %struct.clk* @tegra_clk_register_pll(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %43, i32* null, i32 0, i32* @pll_x_params, i32* null)
  store %struct.clk* %44, %struct.clk** %1, align 8
  %45 = load %struct.clk*, %struct.clk** %1, align 8
  %46 = load %struct.clk**, %struct.clk*** @clks, align 8
  %47 = load i64, i64* @TEGRA20_CLK_PLL_X, align 8
  %48 = getelementptr inbounds %struct.clk*, %struct.clk** %46, i64 %47
  store %struct.clk* %45, %struct.clk** %48, align 8
  %49 = load i64, i64* @clk_base, align 8
  %50 = call %struct.clk* @tegra_clk_register_pll(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %49, i32* null, i32 0, i32* @pll_u_params, i32* null)
  store %struct.clk* %50, %struct.clk** %1, align 8
  %51 = load %struct.clk*, %struct.clk** %1, align 8
  %52 = load %struct.clk**, %struct.clk*** @clks, align 8
  %53 = load i64, i64* @TEGRA20_CLK_PLL_U, align 8
  %54 = getelementptr inbounds %struct.clk*, %struct.clk** %52, i64 %53
  store %struct.clk* %51, %struct.clk** %54, align 8
  %55 = load i64, i64* @clk_base, align 8
  %56 = call %struct.clk* @tegra_clk_register_pll(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %55, i32* null, i32 0, i32* @pll_d_params, i32* null)
  store %struct.clk* %56, %struct.clk** %1, align 8
  %57 = load %struct.clk*, %struct.clk** %1, align 8
  %58 = load %struct.clk**, %struct.clk*** @clks, align 8
  %59 = load i64, i64* @TEGRA20_CLK_PLL_D, align 8
  %60 = getelementptr inbounds %struct.clk*, %struct.clk** %58, i64 %59
  store %struct.clk* %57, %struct.clk** %60, align 8
  %61 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %62 = call %struct.clk* @clk_register_fixed_factor(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %61, i32 1, i32 2)
  store %struct.clk* %62, %struct.clk** %1, align 8
  %63 = load %struct.clk*, %struct.clk** %1, align 8
  %64 = load %struct.clk**, %struct.clk*** @clks, align 8
  %65 = load i64, i64* @TEGRA20_CLK_PLL_D_OUT0, align 8
  %66 = getelementptr inbounds %struct.clk*, %struct.clk** %64, i64 %65
  store %struct.clk* %63, %struct.clk** %66, align 8
  %67 = load i64, i64* @clk_base, align 8
  %68 = call %struct.clk* @tegra_clk_register_pll(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i64 %67, i32* null, i32 0, i32* @pll_a_params, i32* null)
  store %struct.clk* %68, %struct.clk** %1, align 8
  %69 = load %struct.clk*, %struct.clk** %1, align 8
  %70 = load %struct.clk**, %struct.clk*** @clks, align 8
  %71 = load i64, i64* @TEGRA20_CLK_PLL_A, align 8
  %72 = getelementptr inbounds %struct.clk*, %struct.clk** %70, i64 %71
  store %struct.clk* %69, %struct.clk** %72, align 8
  %73 = load i64, i64* @clk_base, align 8
  %74 = load i64, i64* @PLLA_OUT, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i32, i32* @TEGRA_DIVIDER_ROUND_UP, align 4
  %77 = call %struct.clk* @tegra_clk_register_divider(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i64 %75, i32 0, i32 %76, i32 8, i32 8, i32 1, i32* null)
  store %struct.clk* %77, %struct.clk** %1, align 8
  %78 = load i64, i64* @clk_base, align 8
  %79 = load i64, i64* @PLLA_OUT, align 8
  %80 = add nsw i64 %78, %79
  %81 = load i32, i32* @CLK_IGNORE_UNUSED, align 4
  %82 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %83 = or i32 %81, %82
  %84 = call %struct.clk* @tegra_clk_register_pll_out(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i64 %80, i32 1, i32 0, i32 %83, i32 0, i32* null)
  store %struct.clk* %84, %struct.clk** %1, align 8
  %85 = load %struct.clk*, %struct.clk** %1, align 8
  %86 = load %struct.clk**, %struct.clk*** @clks, align 8
  %87 = load i64, i64* @TEGRA20_CLK_PLL_A_OUT0, align 8
  %88 = getelementptr inbounds %struct.clk*, %struct.clk** %86, i64 %87
  store %struct.clk* %85, %struct.clk** %88, align 8
  %89 = load i64, i64* @clk_base, align 8
  %90 = load i32, i32* @pmc_base, align 4
  %91 = call %struct.clk* @tegra_clk_register_plle(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %89, i32 %90, i32 0, i32* @pll_e_params, i32* null)
  store %struct.clk* %91, %struct.clk** %1, align 8
  %92 = load %struct.clk*, %struct.clk** %1, align 8
  %93 = load %struct.clk**, %struct.clk*** @clks, align 8
  %94 = load i64, i64* @TEGRA20_CLK_PLL_E, align 8
  %95 = getelementptr inbounds %struct.clk*, %struct.clk** %93, i64 %94
  store %struct.clk* %92, %struct.clk** %95, align 8
  ret void
}

declare dso_local %struct.clk* @tegra_clk_register_pll(i8*, i8*, i64, i32*, i32, i32*, i32*) #1

declare dso_local %struct.clk* @tegra_clk_register_divider(i8*, i8*, i64, i32, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.clk* @tegra_clk_register_pll_out(i8*, i8*, i64, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.clk* @clk_register_fixed_factor(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local %struct.clk* @tegra_clk_register_plle(i8*, i8*, i64, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
