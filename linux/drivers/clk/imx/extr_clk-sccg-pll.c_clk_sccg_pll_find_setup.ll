; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-sccg-pll.c_clk_sccg_pll_find_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-sccg-pll.c_clk_sccg_pll_find_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_sccg_pll_setup = type { i32, i8*, i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PLL_OUT_MAX_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_sccg_pll_setup*, i8*, i8*, i32)* @clk_sccg_pll_find_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_sccg_pll_find_setup(%struct.clk_sccg_pll_setup* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.clk_sccg_pll_setup*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.clk_sccg_pll_setup, align 8
  %10 = alloca i32, align 4
  store %struct.clk_sccg_pll_setup* %0, %struct.clk_sccg_pll_setup** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = call i32 @memset(%struct.clk_sccg_pll_setup* %9, i32 0, i32 32)
  %14 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %15 = call i32 @memset(%struct.clk_sccg_pll_setup* %14, i32 0, i32 32)
  %16 = load i32, i32* @PLL_OUT_MAX_FREQ, align 4
  %17 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %9, i32 0, i32 3
  store i32 %16, i32* %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %9, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %40 [
    i32 129, label %21
    i32 130, label %32
    i32 128, label %36
  ]

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp eq i8* %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %27 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %26, i32 0, i32 0
  store i32 129, i32* %27, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %30 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %25, %21
  br label %40

32:                                               ; preds = %4
  %33 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @clk_sccg_pll2_find_setup(%struct.clk_sccg_pll_setup* %33, %struct.clk_sccg_pll_setup* %9, i8* %34)
  store i32 %35, i32* %10, align 4
  br label %40

36:                                               ; preds = %4
  %37 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @clk_sccg_pll1_find_setup(%struct.clk_sccg_pll_setup* %37, %struct.clk_sccg_pll_setup* %9, i8* %38)
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %4, %36, %32, %31
  %41 = load i32, i32* %10, align 4
  ret i32 %41
}

declare dso_local i32 @memset(%struct.clk_sccg_pll_setup*, i32, i32) #1

declare dso_local i32 @clk_sccg_pll2_find_setup(%struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup*, i8*) #1

declare dso_local i32 @clk_sccg_pll1_find_setup(%struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
