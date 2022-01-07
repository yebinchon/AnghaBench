; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clkt_iclk.c_omap2_clkt_iclk_allow_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clkt_iclk.c_omap2_clkt_iclk_allow_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.clk_omap_reg*)*, i32 (i32, %struct.clk_omap_reg*)* }
%struct.clk_omap_reg = type { i32 }
%struct.clk_hw_omap = type { i32, i32 }

@CM_AUTOIDLE = common dso_local global i32 0, align 4
@CM_ICLKEN = common dso_local global i32 0, align 4
@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap2_clkt_iclk_allow_idle(%struct.clk_hw_omap* %0) #0 {
  %2 = alloca %struct.clk_hw_omap*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_omap_reg, align 4
  store %struct.clk_hw_omap* %0, %struct.clk_hw_omap** %2, align 8
  %5 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %6 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %5, i32 0, i32 1
  %7 = call i32 @memcpy(%struct.clk_omap_reg* %4, i32* %6, i32 4)
  %8 = load i32, i32* @CM_AUTOIDLE, align 4
  %9 = load i32, i32* @CM_ICLKEN, align 4
  %10 = xor i32 %8, %9
  %11 = getelementptr inbounds %struct.clk_omap_reg, %struct.clk_omap_reg* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %12, %10
  store i32 %13, i32* %11, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.clk_omap_reg*)*, i32 (%struct.clk_omap_reg*)** %15, align 8
  %17 = call i32 %16(%struct.clk_omap_reg* %4)
  store i32 %17, i32* %3, align 4
  %18 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  %19 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 1, %20
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32 (i32, %struct.clk_omap_reg*)*, i32 (i32, %struct.clk_omap_reg*)** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 %26(i32 %27, %struct.clk_omap_reg* %4)
  ret void
}

declare dso_local i32 @memcpy(%struct.clk_omap_reg*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
