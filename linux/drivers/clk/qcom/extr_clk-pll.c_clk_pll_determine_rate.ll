; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-pll.c_clk_pll_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-pll.c_clk_pll_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i32, i32 }
%struct.clk_pll = type { i32 }
%struct.pll_freq_tbl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @clk_pll_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pll_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_rate_request*, align 8
  %5 = alloca %struct.clk_pll*, align 8
  %6 = alloca %struct.pll_freq_tbl*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.clk_pll* @to_clk_pll(%struct.clk_hw* %7)
  store %struct.clk_pll* %8, %struct.clk_pll** %5, align 8
  %9 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %10 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %13 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pll_freq_tbl* @find_freq(i32 %11, i32 %14)
  store %struct.pll_freq_tbl* %15, %struct.pll_freq_tbl** %6, align 8
  %16 = load %struct.pll_freq_tbl*, %struct.pll_freq_tbl** %6, align 8
  %17 = icmp ne %struct.pll_freq_tbl* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %2
  %19 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %20 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %21 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_pll_recalc_rate(%struct.clk_hw* %19, i32 %22)
  %24 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %25 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %32

26:                                               ; preds = %2
  %27 = load %struct.pll_freq_tbl*, %struct.pll_freq_tbl** %6, align 8
  %28 = getelementptr inbounds %struct.pll_freq_tbl, %struct.pll_freq_tbl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %31 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %26, %18
  ret i32 0
}

declare dso_local %struct.clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local %struct.pll_freq_tbl* @find_freq(i32, i32) #1

declare dso_local i32 @clk_pll_recalc_rate(%struct.clk_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
