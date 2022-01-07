; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-sccg-pll.c_clk_sccg_pll_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-sccg-pll.c_clk_sccg_pll_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i64, i64 }
%struct.clk_sccg_pll = type { %struct.clk_sccg_pll_setup }
%struct.clk_sccg_pll_setup = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@PLL_OUT_MIN_FREQ = common dso_local global i64 0, align 8
@PLL_OUT_MAX_FREQ = common dso_local global i64 0, align 8
@PLL_BYPASS2 = common dso_local global i32 0, align 4
@PLL_STAGE1_REF_MIN_FREQ = common dso_local global i64 0, align 8
@PLL_STAGE1_REF_MAX_FREQ = common dso_local global i64 0, align 8
@PLL_BYPASS1 = common dso_local global i32 0, align 4
@PLL_REF_MIN_FREQ = common dso_local global i64 0, align 8
@PLL_REF_MAX_FREQ = common dso_local global i64 0, align 8
@PLL_BYPASS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @clk_sccg_pll_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_sccg_pll_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  %6 = alloca %struct.clk_sccg_pll*, align 8
  %7 = alloca %struct.clk_sccg_pll_setup*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.clk_sccg_pll* @to_clk_sccg_pll(%struct.clk_hw* %12)
  store %struct.clk_sccg_pll* %13, %struct.clk_sccg_pll** %6, align 8
  %14 = load %struct.clk_sccg_pll*, %struct.clk_sccg_pll** %6, align 8
  %15 = getelementptr inbounds %struct.clk_sccg_pll, %struct.clk_sccg_pll* %14, i32 0, i32 0
  store %struct.clk_sccg_pll_setup* %15, %struct.clk_sccg_pll_setup** %7, align 8
  %16 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %17 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %20 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %23 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %11, align 4
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @PLL_OUT_MIN_FREQ, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %2
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @PLL_OUT_MAX_FREQ, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %2
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %3, align 4
  br label %91

36:                                               ; preds = %30
  %37 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %38 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %39 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %40 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %43 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* @PLL_BYPASS2, align 4
  %47 = call i32 @__clk_sccg_pll_determine_rate(%struct.clk_hw* %37, %struct.clk_rate_request* %38, i64 %41, i64 %44, i64 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %36
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %3, align 4
  br label %91

52:                                               ; preds = %36
  %53 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %54 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %55 = load i64, i64* @PLL_STAGE1_REF_MIN_FREQ, align 8
  %56 = load i64, i64* @PLL_STAGE1_REF_MAX_FREQ, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i32, i32* @PLL_BYPASS1, align 4
  %59 = call i32 @__clk_sccg_pll_determine_rate(%struct.clk_hw* %53, %struct.clk_rate_request* %54, i64 %55, i64 %56, i64 %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %3, align 4
  br label %91

64:                                               ; preds = %52
  %65 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %66 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %67 = load i64, i64* @PLL_REF_MIN_FREQ, align 8
  %68 = load i64, i64* @PLL_REF_MAX_FREQ, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i32, i32* @PLL_BYPASS_NONE, align 4
  %71 = call i32 @__clk_sccg_pll_determine_rate(%struct.clk_hw* %65, %struct.clk_rate_request* %66, i64 %67, i64 %68, i64 %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %3, align 4
  br label %91

76:                                               ; preds = %64
  %77 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %7, align 8
  %78 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp sge i64 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %7, align 8
  %84 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = icmp sle i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %88, %82, %76
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %74, %62, %50, %34
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.clk_sccg_pll* @to_clk_sccg_pll(%struct.clk_hw*) #1

declare dso_local i32 @__clk_sccg_pll_determine_rate(%struct.clk_hw*, %struct.clk_rate_request*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
