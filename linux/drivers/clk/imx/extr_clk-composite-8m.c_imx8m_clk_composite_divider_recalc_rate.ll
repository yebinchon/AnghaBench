; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-composite-8m.c_imx8m_clk_composite_divider_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-composite-8m.c_imx8m_clk_composite_divider_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_divider = type { i32, i32, i32, i32 }

@PCG_DIV_SHIFT = common dso_local global i32 0, align 4
@PCG_DIV_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @imx8m_clk_composite_divider_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @imx8m_clk_composite_divider_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_divider*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.clk_divider* @to_clk_divider(%struct.clk_hw* %9)
  store %struct.clk_divider* %10, %struct.clk_divider** %5, align 8
  %11 = load %struct.clk_divider*, %struct.clk_divider** %5, align 8
  %12 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @readl(i32 %13)
  %15 = load %struct.clk_divider*, %struct.clk_divider** %5, align 8
  %16 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = lshr i32 %14, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.clk_divider*, %struct.clk_divider** %5, align 8
  %20 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_div_mask(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.clk_divider*, %struct.clk_divider** %5, align 8
  %29 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.clk_divider*, %struct.clk_divider** %5, align 8
  %32 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @divider_recalc_rate(%struct.clk_hw* %25, i64 %26, i32 %27, i32* null, i32 %30, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load %struct.clk_divider*, %struct.clk_divider** %5, align 8
  %36 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @readl(i32 %37)
  %39 = load i32, i32* @PCG_DIV_SHIFT, align 4
  %40 = lshr i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @PCG_DIV_WIDTH, align 4
  %42 = call i32 @clk_div_mask(i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.clk_divider*, %struct.clk_divider** %5, align 8
  %49 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PCG_DIV_WIDTH, align 4
  %52 = call i64 @divider_recalc_rate(%struct.clk_hw* %45, i64 %46, i32 %47, i32* null, i32 %50, i32 %51)
  ret i64 %52
}

declare dso_local %struct.clk_divider* @to_clk_divider(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @clk_div_mask(i32) #1

declare dso_local i64 @divider_recalc_rate(%struct.clk_hw*, i64, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
