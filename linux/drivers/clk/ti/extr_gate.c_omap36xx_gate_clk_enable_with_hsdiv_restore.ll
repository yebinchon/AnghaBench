; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_gate.c_omap36xx_gate_clk_enable_with_hsdiv_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_gate.c_omap36xx_gate_clk_enable_with_hsdiv_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)*, i32 (i32, i32*)* }
%struct.clk_hw = type { i32 }
%struct.clk_omap_divider = type { i32, i32 }

@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @omap36xx_gate_clk_enable_with_hsdiv_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap36xx_gate_clk_enable_with_hsdiv_restore(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_omap_divider*, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %9 = call i32 @omap2_dflt_clk_enable(%struct.clk_hw* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %11 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %10)
  %12 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %11)
  store %struct.clk_hw* %12, %struct.clk_hw** %4, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %14 = call %struct.clk_omap_divider* @to_clk_omap_divider(%struct.clk_hw* %13)
  store %struct.clk_omap_divider* %14, %struct.clk_omap_divider** %3, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32*)*, i32 (i32*)** %19, align 8
  %21 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %3, align 8
  %22 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %21, i32 0, i32 1
  %23 = call i32 %20(i32* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %5, align 4
  %25 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %3, align 8
  %26 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 1, %27
  %29 = load i32, i32* %5, align 4
  %30 = xor i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32 (i32, i32*)*, i32 (i32, i32*)** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %3, align 8
  %36 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %35, i32 0, i32 1
  %37 = call i32 %33(i32 %34, i32* %36)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32 (i32, i32*)*, i32 (i32, i32*)** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %3, align 8
  %43 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %42, i32 0, i32 1
  %44 = call i32 %40(i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %17, %1
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @omap2_dflt_clk_enable(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw*) #1

declare dso_local %struct.clk_omap_divider* @to_clk_omap_divider(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
