; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-mpll.c_mpll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-mpll.c_mpll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap = type { i32 }
%struct.meson_clk_mpll_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @mpll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mpll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_regmap*, align 8
  %6 = alloca %struct.meson_clk_mpll_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %10)
  store %struct.clk_regmap* %11, %struct.clk_regmap** %5, align 8
  %12 = load %struct.clk_regmap*, %struct.clk_regmap** %5, align 8
  %13 = call %struct.meson_clk_mpll_data* @meson_clk_mpll_data(%struct.clk_regmap* %12)
  store %struct.meson_clk_mpll_data* %13, %struct.meson_clk_mpll_data** %6, align 8
  %14 = load %struct.clk_regmap*, %struct.clk_regmap** %5, align 8
  %15 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.meson_clk_mpll_data*, %struct.meson_clk_mpll_data** %6, align 8
  %18 = getelementptr inbounds %struct.meson_clk_mpll_data, %struct.meson_clk_mpll_data* %17, i32 0, i32 1
  %19 = call i32 @meson_parm_read(i32 %16, i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.clk_regmap*, %struct.clk_regmap** %5, align 8
  %21 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.meson_clk_mpll_data*, %struct.meson_clk_mpll_data** %6, align 8
  %24 = getelementptr inbounds %struct.meson_clk_mpll_data, %struct.meson_clk_mpll_data* %23, i32 0, i32 0
  %25 = call i32 @meson_parm_read(i32 %22, i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i64, i64* %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @rate_from_params(i64 %26, i32 %27, i32 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %35

33:                                               ; preds = %2
  %34 = load i64, i64* %9, align 8
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i64 [ 0, %32 ], [ %34, %33 ]
  ret i64 %36
}

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local %struct.meson_clk_mpll_data* @meson_clk_mpll_data(%struct.clk_regmap*) #1

declare dso_local i32 @meson_parm_read(i32, i32*) #1

declare dso_local i64 @rate_from_params(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
