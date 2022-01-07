; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-pll.c_meson_clk_pll_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-pll.c_meson_clk_pll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap = type { i32 }
%struct.meson_clk_pll_data = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @meson_clk_pll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_clk_pll_init(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_regmap*, align 8
  %4 = alloca %struct.meson_clk_pll_data*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %5)
  store %struct.clk_regmap* %6, %struct.clk_regmap** %3, align 8
  %7 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %8 = call %struct.meson_clk_pll_data* @meson_clk_pll_data(%struct.clk_regmap* %7)
  store %struct.meson_clk_pll_data* %8, %struct.meson_clk_pll_data** %4, align 8
  %9 = load %struct.meson_clk_pll_data*, %struct.meson_clk_pll_data** %4, align 8
  %10 = getelementptr inbounds %struct.meson_clk_pll_data, %struct.meson_clk_pll_data* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %15 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.meson_clk_pll_data*, %struct.meson_clk_pll_data** %4, align 8
  %18 = getelementptr inbounds %struct.meson_clk_pll_data, %struct.meson_clk_pll_data* %17, i32 0, i32 0
  %19 = call i32 @meson_parm_write(i32 %16, i32* %18, i32 1)
  %20 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %21 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.meson_clk_pll_data*, %struct.meson_clk_pll_data** %4, align 8
  %24 = getelementptr inbounds %struct.meson_clk_pll_data, %struct.meson_clk_pll_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.meson_clk_pll_data*, %struct.meson_clk_pll_data** %4, align 8
  %27 = getelementptr inbounds %struct.meson_clk_pll_data, %struct.meson_clk_pll_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @regmap_multi_reg_write(i32 %22, i32 %25, i64 %28)
  %30 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %31 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.meson_clk_pll_data*, %struct.meson_clk_pll_data** %4, align 8
  %34 = getelementptr inbounds %struct.meson_clk_pll_data, %struct.meson_clk_pll_data* %33, i32 0, i32 0
  %35 = call i32 @meson_parm_write(i32 %32, i32* %34, i32 0)
  br label %36

36:                                               ; preds = %13, %1
  ret void
}

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local %struct.meson_clk_pll_data* @meson_clk_pll_data(%struct.clk_regmap*) #1

declare dso_local i32 @meson_parm_write(i32, i32*, i32) #1

declare dso_local i32 @regmap_multi_reg_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
