; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_pll_sw_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_pll_sw_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_pll = type { i64, %struct.iproc_pll_ctrl* }
%struct.iproc_pll_ctrl = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@IPROC_CLK_PLL_NEEDS_SW_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iproc_pll*)* @iproc_pll_sw_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iproc_pll_sw_cfg(%struct.iproc_pll* %0) #0 {
  %2 = alloca %struct.iproc_pll*, align 8
  %3 = alloca %struct.iproc_pll_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.iproc_pll* %0, %struct.iproc_pll** %2, align 8
  %5 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %6 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %5, i32 0, i32 1
  %7 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %6, align 8
  store %struct.iproc_pll_ctrl* %7, %struct.iproc_pll_ctrl** %3, align 8
  %8 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %9 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IPROC_CLK_PLL_NEEDS_SW_CFG, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %1
  %15 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %16 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %19 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %17, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %25 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @BIT(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %32 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %33 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %36 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @iproc_pll_write(%struct.iproc_pll* %31, i64 %34, i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iproc_pll_write(%struct.iproc_pll*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
