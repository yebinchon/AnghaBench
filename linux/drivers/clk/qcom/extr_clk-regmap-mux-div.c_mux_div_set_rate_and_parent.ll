; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap-mux-div.c_mux_div_set_rate_and_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap-mux-div.c_mux_div_set_rate_and_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap_mux_div = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64, i64)* @mux_div_set_rate_and_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mux_div_set_rate_and_parent(%struct.clk_hw* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.clk_regmap_mux_div*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %11 = call %struct.clk_regmap_mux_div* @to_clk_regmap_mux_div(%struct.clk_hw* %10)
  store %struct.clk_regmap_mux_div* %11, %struct.clk_regmap_mux_div** %9, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %9, align 8
  %16 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__mux_div_set_rate_and_parent(%struct.clk_hw* %12, i64 %13, i64 %14, i32 %20)
  ret i32 %21
}

declare dso_local %struct.clk_regmap_mux_div* @to_clk_regmap_mux_div(%struct.clk_hw*) #1

declare dso_local i32 @__mux_div_set_rate_and_parent(%struct.clk_hw*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
