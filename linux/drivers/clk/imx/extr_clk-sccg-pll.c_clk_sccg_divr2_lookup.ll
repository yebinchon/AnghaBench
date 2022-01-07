; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-sccg-pll.c_clk_sccg_divr2_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-sccg-pll.c_clk_sccg_divr2_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_sccg_pll_setup = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@PLL_DIVR2_MAX = common dso_local global i64 0, align 8
@PLL_STAGE2_REF_MIN_FREQ = common dso_local global i64 0, align 8
@PLL_STAGE2_REF_MAX_FREQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup*)* @clk_sccg_divr2_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_sccg_divr2_lookup(%struct.clk_sccg_pll_setup* %0, %struct.clk_sccg_pll_setup* %1) #0 {
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

11:                                               ; preds = %52, %2
  %12 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %13 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PLL_DIVR2_MAX, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %11
  %18 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %19 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %22 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %24 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %27 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  %30 = call i32 @do_div(i64 %25, i64 %29)
  %31 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %32 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PLL_STAGE2_REF_MIN_FREQ, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %17
  %37 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %38 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PLL_STAGE2_REF_MAX_FREQ, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %4, align 8
  %44 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %45 = call i32 @clk_sccg_divf2_lookup(%struct.clk_sccg_pll_setup* %43, %struct.clk_sccg_pll_setup* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %59

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %36, %17
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %54 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  br label %11

57:                                               ; preds = %11
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %48
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @clk_sccg_divf2_lookup(%struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
