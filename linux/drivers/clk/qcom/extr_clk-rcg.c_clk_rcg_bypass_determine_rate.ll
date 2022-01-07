; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_clk_rcg_bypass_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_clk_rcg_bypass_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i32, i32, %struct.clk_hw* }
%struct.clk_rcg = type { %struct.TYPE_2__, %struct.freq_tbl* }
%struct.TYPE_2__ = type { i32 }
%struct.freq_tbl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @clk_rcg_bypass_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_rcg_bypass_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_rate_request*, align 8
  %5 = alloca %struct.clk_rcg*, align 8
  %6 = alloca %struct.freq_tbl*, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %4, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.clk_rcg* @to_clk_rcg(%struct.clk_hw* %9)
  store %struct.clk_rcg* %10, %struct.clk_rcg** %5, align 8
  %11 = load %struct.clk_rcg*, %struct.clk_rcg** %5, align 8
  %12 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %11, i32 0, i32 1
  %13 = load %struct.freq_tbl*, %struct.freq_tbl** %12, align 8
  store %struct.freq_tbl* %13, %struct.freq_tbl** %6, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %15 = load %struct.clk_rcg*, %struct.clk_rcg** %5, align 8
  %16 = getelementptr inbounds %struct.clk_rcg, %struct.clk_rcg* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.freq_tbl*, %struct.freq_tbl** %6, align 8
  %20 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @qcom_find_src_index(%struct.clk_hw* %14, i32 %18, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %23, i32 %24)
  store %struct.clk_hw* %25, %struct.clk_hw** %7, align 8
  %26 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %27 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %26, i32 0, i32 2
  store %struct.clk_hw* %25, %struct.clk_hw** %27, align 8
  %28 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %29 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %30 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_hw_round_rate(%struct.clk_hw* %28, i32 %31)
  %33 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %34 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %36 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %39 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  ret i32 0
}

declare dso_local %struct.clk_rcg* @to_clk_rcg(%struct.clk_hw*) #1

declare dso_local i32 @qcom_find_src_index(%struct.clk_hw*, i32, i32) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i32 @clk_hw_round_rate(%struct.clk_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
