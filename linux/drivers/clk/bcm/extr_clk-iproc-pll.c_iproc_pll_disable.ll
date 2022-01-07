; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_pll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_pll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.iproc_clk = type { %struct.iproc_pll* }
%struct.iproc_pll = type { %struct.iproc_pll_ctrl* }
%struct.iproc_pll_ctrl = type { i32 }

@IPROC_CLK_AON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @iproc_pll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iproc_pll_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.iproc_clk*, align 8
  %4 = alloca %struct.iproc_pll*, align 8
  %5 = alloca %struct.iproc_pll_ctrl*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.iproc_clk* @to_iproc_clk(%struct.clk_hw* %6)
  store %struct.iproc_clk* %7, %struct.iproc_clk** %3, align 8
  %8 = load %struct.iproc_clk*, %struct.iproc_clk** %3, align 8
  %9 = getelementptr inbounds %struct.iproc_clk, %struct.iproc_clk* %8, i32 0, i32 0
  %10 = load %struct.iproc_pll*, %struct.iproc_pll** %9, align 8
  store %struct.iproc_pll* %10, %struct.iproc_pll** %4, align 8
  %11 = load %struct.iproc_pll*, %struct.iproc_pll** %4, align 8
  %12 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %11, i32 0, i32 0
  %13 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %12, align 8
  store %struct.iproc_pll_ctrl* %13, %struct.iproc_pll_ctrl** %5, align 8
  %14 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %5, align 8
  %15 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IPROC_CLK_AON, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %24

21:                                               ; preds = %1
  %22 = load %struct.iproc_pll*, %struct.iproc_pll** %4, align 8
  %23 = call i32 @__pll_disable(%struct.iproc_pll* %22)
  br label %24

24:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.iproc_clk* @to_iproc_clk(%struct.clk_hw*) #1

declare dso_local i32 @__pll_disable(%struct.iproc_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
