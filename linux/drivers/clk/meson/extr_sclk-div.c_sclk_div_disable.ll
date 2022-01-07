; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_sclk-div.c_sclk_div_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_sclk-div.c_sclk_div_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap = type { i32 }
%struct.meson_sclk_div_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @sclk_div_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclk_div_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_regmap*, align 8
  %4 = alloca %struct.meson_sclk_div_data*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %5)
  store %struct.clk_regmap* %6, %struct.clk_regmap** %3, align 8
  %7 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %8 = call %struct.meson_sclk_div_data* @meson_sclk_div_data(%struct.clk_regmap* %7)
  store %struct.meson_sclk_div_data* %8, %struct.meson_sclk_div_data** %4, align 8
  %9 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %10 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.meson_sclk_div_data*, %struct.meson_sclk_div_data** %4, align 8
  %13 = getelementptr inbounds %struct.meson_sclk_div_data, %struct.meson_sclk_div_data* %12, i32 0, i32 0
  %14 = call i32 @meson_parm_write(i32 %11, i32* %13, i32 0)
  ret void
}

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local %struct.meson_sclk_div_data* @meson_sclk_div_data(%struct.clk_regmap*) #1

declare dso_local i32 @meson_parm_write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
