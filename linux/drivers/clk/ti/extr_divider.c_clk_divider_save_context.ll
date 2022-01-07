; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_divider.c_clk_divider_save_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_divider.c_clk_divider_save_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)* }
%struct.clk_hw = type { i32 }
%struct.clk_omap_divider = type { i32, i32, i32 }

@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_divider_save_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_divider_save_context(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_omap_divider*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.clk_omap_divider* @to_clk_omap_divider(%struct.clk_hw* %5)
  store %struct.clk_omap_divider* %6, %struct.clk_omap_divider** %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (i32*)*, i32 (i32*)** %8, align 8
  %10 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %3, align 8
  %11 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %10, i32 0, i32 2
  %12 = call i32 %9(i32* %11)
  %13 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %3, align 8
  %14 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %12, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %3, align 8
  %19 = call i32 @div_mask(%struct.clk_omap_divider* %18)
  %20 = and i32 %17, %19
  %21 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %3, align 8
  %22 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  ret i32 0
}

declare dso_local %struct.clk_omap_divider* @to_clk_omap_divider(%struct.clk_hw*) #1

declare dso_local i32 @div_mask(%struct.clk_omap_divider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
