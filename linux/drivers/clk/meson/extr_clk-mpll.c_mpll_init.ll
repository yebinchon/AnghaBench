; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-mpll.c_mpll_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_clk-mpll.c_mpll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_regmap = type { i32 }
%struct.meson_clk_mpll_data = type { i32, i32, i32, i32, i64, i32 }

@CLK_MESON_MPLL_SPREAD_SPECTRUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @mpll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpll_init(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_regmap*, align 8
  %4 = alloca %struct.meson_clk_mpll_data*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw* %6)
  store %struct.clk_regmap* %7, %struct.clk_regmap** %3, align 8
  %8 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %9 = call %struct.meson_clk_mpll_data* @meson_clk_mpll_data(%struct.clk_regmap* %8)
  store %struct.meson_clk_mpll_data* %9, %struct.meson_clk_mpll_data** %4, align 8
  %10 = load %struct.meson_clk_mpll_data*, %struct.meson_clk_mpll_data** %4, align 8
  %11 = getelementptr inbounds %struct.meson_clk_mpll_data, %struct.meson_clk_mpll_data* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %16 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.meson_clk_mpll_data*, %struct.meson_clk_mpll_data** %4, align 8
  %19 = getelementptr inbounds %struct.meson_clk_mpll_data, %struct.meson_clk_mpll_data* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.meson_clk_mpll_data*, %struct.meson_clk_mpll_data** %4, align 8
  %22 = getelementptr inbounds %struct.meson_clk_mpll_data, %struct.meson_clk_mpll_data* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @regmap_multi_reg_write(i32 %17, i32 %20, i64 %23)
  br label %25

25:                                               ; preds = %14, %1
  %26 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %27 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.meson_clk_mpll_data*, %struct.meson_clk_mpll_data** %4, align 8
  %30 = getelementptr inbounds %struct.meson_clk_mpll_data, %struct.meson_clk_mpll_data* %29, i32 0, i32 3
  %31 = call i32 @meson_parm_write(i32 %28, i32* %30, i32 1)
  %32 = load %struct.meson_clk_mpll_data*, %struct.meson_clk_mpll_data** %4, align 8
  %33 = getelementptr inbounds %struct.meson_clk_mpll_data, %struct.meson_clk_mpll_data* %32, i32 0, i32 2
  %34 = call i64 @MESON_PARM_APPLICABLE(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %25
  %37 = load %struct.meson_clk_mpll_data*, %struct.meson_clk_mpll_data** %4, align 8
  %38 = getelementptr inbounds %struct.meson_clk_mpll_data, %struct.meson_clk_mpll_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CLK_MESON_MPLL_SPREAD_SPECTRUM, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  store i32 %44, i32* %5, align 4
  %45 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %46 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.meson_clk_mpll_data*, %struct.meson_clk_mpll_data** %4, align 8
  %49 = getelementptr inbounds %struct.meson_clk_mpll_data, %struct.meson_clk_mpll_data* %48, i32 0, i32 2
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @meson_parm_write(i32 %47, i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %36, %25
  %53 = load %struct.meson_clk_mpll_data*, %struct.meson_clk_mpll_data** %4, align 8
  %54 = getelementptr inbounds %struct.meson_clk_mpll_data, %struct.meson_clk_mpll_data* %53, i32 0, i32 1
  %55 = call i64 @MESON_PARM_APPLICABLE(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.clk_regmap*, %struct.clk_regmap** %3, align 8
  %59 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.meson_clk_mpll_data*, %struct.meson_clk_mpll_data** %4, align 8
  %62 = getelementptr inbounds %struct.meson_clk_mpll_data, %struct.meson_clk_mpll_data* %61, i32 0, i32 1
  %63 = call i32 @meson_parm_write(i32 %60, i32* %62, i32 1)
  br label %64

64:                                               ; preds = %57, %52
  ret void
}

declare dso_local %struct.clk_regmap* @to_clk_regmap(%struct.clk_hw*) #1

declare dso_local %struct.meson_clk_mpll_data* @meson_clk_mpll_data(%struct.clk_regmap*) #1

declare dso_local i32 @regmap_multi_reg_write(i32, i32, i64) #1

declare dso_local i32 @meson_parm_write(i32, i32*, i32) #1

declare dso_local i64 @MESON_PARM_APPLICABLE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
