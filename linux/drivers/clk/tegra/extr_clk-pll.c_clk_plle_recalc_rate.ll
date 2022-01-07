; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c_clk_plle_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c_clk_plle_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_pll = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_plle_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_plle_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tegra_clk_pll*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %12 = call %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw* %11)
  store %struct.tegra_clk_pll* %12, %struct.tegra_clk_pll** %5, align 8
  %13 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %5, align 8
  %14 = call i64 @pll_readl_base(%struct.tegra_clk_pll* %13)
  store i64 %14, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %15 = load i64, i64* %4, align 8
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %5, align 8
  %18 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = lshr i64 %16, %23
  %25 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %5, align 8
  %26 = call i64 @divp_mask(%struct.tegra_clk_pll* %25)
  %27 = and i64 %24, %26
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %5, align 8
  %30 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = lshr i64 %28, %35
  %37 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %5, align 8
  %38 = call i64 @divn_mask(%struct.tegra_clk_pll* %37)
  %39 = and i64 %36, %38
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %5, align 8
  %42 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = lshr i64 %40, %47
  %49 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %5, align 8
  %50 = call i64 @divm_mask(%struct.tegra_clk_pll* %49)
  %51 = and i64 %48, %50
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %8, align 8
  %54 = mul i64 %53, %52
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %10, align 8
  %57 = mul i64 %56, %55
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @do_div(i64 %58, i64 %59)
  %61 = load i64, i64* %10, align 8
  ret i64 %61
}

declare dso_local %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i64 @pll_readl_base(%struct.tegra_clk_pll*) #1

declare dso_local i64 @divp_mask(%struct.tegra_clk_pll*) #1

declare dso_local i64 @divn_mask(%struct.tegra_clk_pll*) #1

declare dso_local i64 @divm_mask(%struct.tegra_clk_pll*) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
