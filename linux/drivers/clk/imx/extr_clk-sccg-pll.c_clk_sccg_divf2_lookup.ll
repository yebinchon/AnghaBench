; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-sccg-pll.c_clk_sccg_divf2_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-sccg-pll.c_clk_sccg_divf2_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_sccg_pll_setup = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@PLL_DIVF2_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup*)* @clk_sccg_divf2_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_sccg_divf2_lookup(%struct.clk_sccg_pll_setup* %0, %struct.clk_sccg_pll_setup* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_sccg_pll_setup*, align 8
  %5 = alloca %struct.clk_sccg_pll_setup*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_sccg_pll_setup* %0, %struct.clk_sccg_pll_setup** %4, align 8
  store %struct.clk_sccg_pll_setup* %1, %struct.clk_sccg_pll_setup** %5, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %10 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %26, %2
  %12 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %13 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PLL_DIVF2_MAX, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %11
  %18 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %4, align 8
  %19 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %20 = call i32 @clk_sccg_divq_lookup(%struct.clk_sccg_pll_setup* %18, %struct.clk_sccg_pll_setup* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %33

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %28 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  br label %11

31:                                               ; preds = %11
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %23
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @clk_sccg_divq_lookup(%struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
