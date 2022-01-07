; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gcc-msm8974.c_msm8974_pro_clock_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gcc-msm8974.c_msm8974_pro_clock_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@gcc_xo_gpll0_gpll4 = common dso_local global i32 0, align 4
@sdcc1_apps_clk_src_init = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ftbl_gcc_sdcc1_apps_clk_pro = common dso_local global i32 0, align 4
@sdcc1_apps_clk_src = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@gcc_xo_gpll0_gpll4_map = common dso_local global i32 0, align 4
@gpll4 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@gcc_msm8974_clocks = common dso_local global i32** null, align 8
@GPLL4 = common dso_local global i64 0, align 8
@gpll4_vote = common dso_local global i32 0, align 4
@GPLL4_VOTE = common dso_local global i64 0, align 8
@gcc_sdcc1_cdccal_sleep_clk = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@GCC_SDCC1_CDCCAL_SLEEP_CLK = common dso_local global i64 0, align 8
@gcc_sdcc1_cdccal_ff_clk = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GCC_SDCC1_CDCCAL_FF_CLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @msm8974_pro_clock_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm8974_pro_clock_override() #0 {
  %1 = load i32, i32* @gcc_xo_gpll0_gpll4, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdcc1_apps_clk_src_init, i32 0, i32 1), align 4
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sdcc1_apps_clk_src_init, i32 0, i32 0), align 4
  %2 = load i32, i32* @ftbl_gcc_sdcc1_apps_clk_pro, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdcc1_apps_clk_src, i32 0, i32 1), align 4
  %3 = load i32, i32* @gcc_xo_gpll0_gpll4_map, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sdcc1_apps_clk_src, i32 0, i32 0), align 4
  %4 = load i32**, i32*** @gcc_msm8974_clocks, align 8
  %5 = load i64, i64* @GPLL4, align 8
  %6 = getelementptr inbounds i32*, i32** %4, i64 %5
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gpll4, i32 0, i32 0), i32** %6, align 8
  %7 = load i32**, i32*** @gcc_msm8974_clocks, align 8
  %8 = load i64, i64* @GPLL4_VOTE, align 8
  %9 = getelementptr inbounds i32*, i32** %7, i64 %8
  store i32* @gpll4_vote, i32** %9, align 8
  %10 = load i32**, i32*** @gcc_msm8974_clocks, align 8
  %11 = load i64, i64* @GCC_SDCC1_CDCCAL_SLEEP_CLK, align 8
  %12 = getelementptr inbounds i32*, i32** %10, i64 %11
  store i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @gcc_sdcc1_cdccal_sleep_clk, i32 0, i32 0), i32** %12, align 8
  %13 = load i32**, i32*** @gcc_msm8974_clocks, align 8
  %14 = load i64, i64* @GCC_SDCC1_CDCCAL_FF_CLK, align 8
  %15 = getelementptr inbounds i32*, i32** %13, i64 %14
  store i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gcc_sdcc1_cdccal_ff_clk, i32 0, i32 0), i32** %15, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
