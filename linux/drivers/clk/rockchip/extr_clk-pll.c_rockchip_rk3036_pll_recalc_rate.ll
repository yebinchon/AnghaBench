; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-pll.c_rockchip_rk3036_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-pll.c_rockchip_rk3036_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.rockchip_clk_pll = type { i32 }
%struct.rockchip_pll_rate_table = type { i32, i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @rockchip_rk3036_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rockchip_rk3036_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rockchip_clk_pll*, align 8
  %6 = alloca %struct.rockchip_pll_rate_table, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.rockchip_clk_pll* @to_rockchip_clk_pll(%struct.clk_hw* %9)
  store %struct.rockchip_clk_pll* %10, %struct.rockchip_clk_pll** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = load %struct.rockchip_clk_pll*, %struct.rockchip_clk_pll** %5, align 8
  %14 = call i32 @rockchip_rk3036_pll_get_params(%struct.rockchip_clk_pll* %13, %struct.rockchip_pll_rate_table* %6)
  %15 = getelementptr inbounds %struct.rockchip_pll_rate_table, %struct.rockchip_pll_rate_table* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = mul nsw i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.rockchip_pll_rate_table, %struct.rockchip_pll_rate_table* %6, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @do_div(i32 %19, i32 %21)
  %23 = getelementptr inbounds %struct.rockchip_pll_rate_table, %struct.rockchip_pll_rate_table* %6, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %2
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds %struct.rockchip_pll_rate_table, %struct.rockchip_pll_rate_table* %6, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = mul i64 %27, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = getelementptr inbounds %struct.rockchip_pll_rate_table, %struct.rockchip_pll_rate_table* %6, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @do_div(i32 %32, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 24
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %26, %2
  %41 = load i32, i32* %7, align 4
  %42 = getelementptr inbounds %struct.rockchip_pll_rate_table, %struct.rockchip_pll_rate_table* %6, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @do_div(i32 %41, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = getelementptr inbounds %struct.rockchip_pll_rate_table, %struct.rockchip_pll_rate_table* %6, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @do_div(i32 %45, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  ret i64 %50
}

declare dso_local %struct.rockchip_clk_pll* @to_rockchip_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @rockchip_rk3036_pll_get_params(%struct.rockchip_clk_pll*, %struct.rockchip_pll_rate_table*) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
