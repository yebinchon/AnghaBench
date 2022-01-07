; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_rcg2_dfs_populate_freq_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_rcg2_dfs_populate_freq_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_rcg2 = type { %struct.TYPE_2__, %struct.freq_tbl* }
%struct.TYPE_2__ = type { i32 }
%struct.freq_tbl = type { i32 }

@MAX_PERF_LEVEL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_rcg2*)* @clk_rcg2_dfs_populate_freq_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_rcg2_dfs_populate_freq_table(%struct.clk_rcg2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_rcg2*, align 8
  %4 = alloca %struct.freq_tbl*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_rcg2* %0, %struct.clk_rcg2** %3, align 8
  %6 = load i32, i32* @MAX_PERF_LEVEL, align 4
  %7 = add nsw i32 %6, 1
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.freq_tbl* @kcalloc(i32 %7, i32 4, i32 %8)
  store %struct.freq_tbl* %9, %struct.freq_tbl** %4, align 8
  %10 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  %11 = icmp ne %struct.freq_tbl* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %37

15:                                               ; preds = %1
  %16 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  %17 = load %struct.clk_rcg2*, %struct.clk_rcg2** %3, align 8
  %18 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %17, i32 0, i32 1
  store %struct.freq_tbl* %16, %struct.freq_tbl** %18, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %33, %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MAX_PERF_LEVEL, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load %struct.clk_rcg2*, %struct.clk_rcg2** %3, align 8
  %25 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.freq_tbl*, %struct.freq_tbl** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.freq_tbl, %struct.freq_tbl* %28, i64 %30
  %32 = call i32 @clk_rcg2_dfs_populate_freq(i32* %26, i32 %27, %struct.freq_tbl* %31)
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %19

36:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.freq_tbl* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @clk_rcg2_dfs_populate_freq(i32*, i32, %struct.freq_tbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
