; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-pll.c_meson_clk_pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-pll.c_meson_clk_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap = type { i32 }
%struct.meson_clk_pll_data = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @meson_clk_pll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_clk_pll_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_regmap*, align 8
  %5 = alloca %struct.meson_clk_pll_data*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %7 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %6)
  store %struct.clk_regmap* %7, %struct.clk_regmap** %4, align 8
  %8 = load %struct.clk_regmap*, %struct.clk_regmap** %4, align 8
  %9 = call %struct.meson_clk_pll_data* @meson_clk_pll_data(%struct.clk_regmap* %8)
  store %struct.meson_clk_pll_data* %9, %struct.meson_clk_pll_data** %5, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call i64 @clk_hw_is_enabled(%struct.clk_hw* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

14:                                               ; preds = %1
  %15 = load %struct.clk_regmap*, %struct.clk_regmap** %4, align 8
  %16 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.meson_clk_pll_data*, %struct.meson_clk_pll_data** %5, align 8
  %19 = getelementptr inbounds %struct.meson_clk_pll_data, %struct.meson_clk_pll_data* %18, i32 0, i32 0
  %20 = call i32 @meson_parm_write(i32 %17, i32* %19, i32 1)
  %21 = load %struct.clk_regmap*, %struct.clk_regmap** %4, align 8
  %22 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.meson_clk_pll_data*, %struct.meson_clk_pll_data** %5, align 8
  %25 = getelementptr inbounds %struct.meson_clk_pll_data, %struct.meson_clk_pll_data* %24, i32 0, i32 1
  %26 = call i32 @meson_parm_write(i32 %23, i32* %25, i32 1)
  %27 = load %struct.clk_regmap*, %struct.clk_regmap** %4, align 8
  %28 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.meson_clk_pll_data*, %struct.meson_clk_pll_data** %5, align 8
  %31 = getelementptr inbounds %struct.meson_clk_pll_data, %struct.meson_clk_pll_data* %30, i32 0, i32 0
  %32 = call i32 @meson_parm_write(i32 %29, i32* %31, i32 0)
  %33 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %34 = call i64 @meson_clk_pll_wait_lock(%struct.clk_hw* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %14
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %36, %13
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local %struct.meson_clk_pll_data* @meson_clk_pll_data(%struct.clk_regmap*) #1

declare dso_local i64 @clk_hw_is_enabled(%struct.clk_hw*) #1

declare dso_local i32 @meson_parm_write(i32, i32*, i32) #1

declare dso_local i64 @meson_clk_pll_wait_lock(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
