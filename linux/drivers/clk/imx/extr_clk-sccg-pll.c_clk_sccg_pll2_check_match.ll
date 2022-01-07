; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-sccg-pll.c_clk_sccg_pll2_check_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-sccg-pll.c_clk_sccg_pll2_check_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_sccg_pll_setup = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup*)* @clk_sccg_pll2_check_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_sccg_pll2_check_match(%struct.clk_sccg_pll_setup* %0, %struct.clk_sccg_pll_setup* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_sccg_pll_setup*, align 8
  %5 = alloca %struct.clk_sccg_pll_setup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_sccg_pll_setup* %0, %struct.clk_sccg_pll_setup** %4, align 8
  store %struct.clk_sccg_pll_setup* %1, %struct.clk_sccg_pll_setup** %5, align 8
  %8 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %9 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %12 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %16 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @abs(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @abs(i32 %20)
  %22 = icmp sgt i64 %19, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %26 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %4, align 8
  %28 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %29 = call i32 @memcpy(%struct.clk_sccg_pll_setup* %27, %struct.clk_sccg_pll_setup* %28, i32 12)
  %30 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %31 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %34 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %40

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38, %2
  store i32 -1, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %37
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @memcpy(%struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
