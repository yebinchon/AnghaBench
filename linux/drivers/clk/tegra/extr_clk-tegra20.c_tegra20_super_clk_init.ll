; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra20.c_tegra20_super_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra20.c_tegra20_super_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"cclk\00", align 1
@cclk_parents = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@clk_base = common dso_local global i64 0, align 8
@CCLK_BURST_POLICY = common dso_local global i64 0, align 8
@clks = common dso_local global %struct.clk** null, align 8
@TEGRA20_CLK_CCLK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@sclk_parents = common dso_local global i32 0, align 4
@CLK_IS_CRITICAL = common dso_local global i32 0, align 4
@SCLK_BURST_POLICY = common dso_local global i64 0, align 8
@TEGRA20_CLK_SCLK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"twd\00", align 1
@TEGRA20_CLK_TWD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tegra20_super_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra20_super_clk_init() #0 {
  %1 = alloca %struct.clk*, align 8
  %2 = load i32, i32* @cclk_parents, align 4
  %3 = load i32, i32* @cclk_parents, align 4
  %4 = call i32 @ARRAY_SIZE(i32 %3)
  %5 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %6 = load i64, i64* @clk_base, align 8
  %7 = load i64, i64* @CCLK_BURST_POLICY, align 8
  %8 = add nsw i64 %6, %7
  %9 = call %struct.clk* @tegra_clk_register_super_mux(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %4, i32 %5, i64 %8, i32 0, i32 4, i32 0, i32 0, i32* null)
  store %struct.clk* %9, %struct.clk** %1, align 8
  %10 = load %struct.clk*, %struct.clk** %1, align 8
  %11 = load %struct.clk**, %struct.clk*** @clks, align 8
  %12 = load i64, i64* @TEGRA20_CLK_CCLK, align 8
  %13 = getelementptr inbounds %struct.clk*, %struct.clk** %11, i64 %12
  store %struct.clk* %10, %struct.clk** %13, align 8
  %14 = load i32, i32* @sclk_parents, align 4
  %15 = load i32, i32* @sclk_parents, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %18 = load i32, i32* @CLK_IS_CRITICAL, align 4
  %19 = or i32 %17, %18
  %20 = load i64, i64* @clk_base, align 8
  %21 = load i64, i64* @SCLK_BURST_POLICY, align 8
  %22 = add nsw i64 %20, %21
  %23 = call %struct.clk* @tegra_clk_register_super_mux(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %16, i32 %19, i64 %22, i32 0, i32 4, i32 0, i32 0, i32* null)
  store %struct.clk* %23, %struct.clk** %1, align 8
  %24 = load %struct.clk*, %struct.clk** %1, align 8
  %25 = load %struct.clk**, %struct.clk*** @clks, align 8
  %26 = load i64, i64* @TEGRA20_CLK_SCLK, align 8
  %27 = getelementptr inbounds %struct.clk*, %struct.clk** %25, i64 %26
  store %struct.clk* %24, %struct.clk** %27, align 8
  %28 = call %struct.clk* @clk_register_fixed_factor(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 1, i32 4)
  store %struct.clk* %28, %struct.clk** %1, align 8
  %29 = load %struct.clk*, %struct.clk** %1, align 8
  %30 = load %struct.clk**, %struct.clk*** @clks, align 8
  %31 = load i64, i64* @TEGRA20_CLK_TWD, align 8
  %32 = getelementptr inbounds %struct.clk*, %struct.clk** %30, i64 %31
  store %struct.clk* %29, %struct.clk** %32, align 8
  ret void
}

declare dso_local %struct.clk* @tegra_clk_register_super_mux(i8*, i32, i32, i32, i64, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.clk* @clk_register_fixed_factor(i32*, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
