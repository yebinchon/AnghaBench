; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_clk_dyn_rcg_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg.c_clk_dyn_rcg_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i32 }
%struct.clk_dyn_rcg = type { i32, %struct.src_sel*, i32, %struct.TYPE_2__ }
%struct.src_sel = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @clk_dyn_rcg_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_dyn_rcg_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_rate_request*, align 8
  %5 = alloca %struct.clk_dyn_rcg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.src_sel*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %4, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.clk_dyn_rcg* @to_clk_dyn_rcg(%struct.clk_hw* %9)
  store %struct.clk_dyn_rcg* %10, %struct.clk_dyn_rcg** %5, align 8
  %11 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %12 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %16 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @regmap_read(i32 %14, i32 %17, i32* %6)
  %19 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @reg_to_bank(%struct.clk_dyn_rcg* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %23 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %22, i32 0, i32 1
  %24 = load %struct.src_sel*, %struct.src_sel** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.src_sel, %struct.src_sel* %24, i64 %26
  store %struct.src_sel* %27, %struct.src_sel** %8, align 8
  %28 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %29 = load %struct.clk_dyn_rcg*, %struct.clk_dyn_rcg** %5, align 8
  %30 = getelementptr inbounds %struct.clk_dyn_rcg, %struct.clk_dyn_rcg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %33 = load %struct.src_sel*, %struct.src_sel** %8, align 8
  %34 = getelementptr inbounds %struct.src_sel, %struct.src_sel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @_freq_tbl_determine_rate(%struct.clk_hw* %28, i32 %31, %struct.clk_rate_request* %32, i32 %35)
  ret i32 %36
}

declare dso_local %struct.clk_dyn_rcg* @to_clk_dyn_rcg(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @reg_to_bank(%struct.clk_dyn_rcg*, i32) #1

declare dso_local i32 @_freq_tbl_determine_rate(%struct.clk_hw*, i32, %struct.clk_rate_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
