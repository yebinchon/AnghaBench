; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_trion_pll_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_trion_pll_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_alpha_pll = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@ALPHA_REG_16BIT_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @clk_trion_pll_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_trion_pll_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.clk_alpha_pll*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %14 = call %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw* %13)
  store %struct.clk_alpha_pll* %14, %struct.clk_alpha_pll** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @ALPHA_REG_16BIT_WIDTH, align 4
  %19 = call i64 @alpha_pll_round_rate(i64 %15, i64 %17, i32* %11, i32* %12, i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %21 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @alpha_pll_find_vco(%struct.clk_alpha_pll* %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %3
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %4, align 8
  br label %53

31:                                               ; preds = %24
  %32 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %33 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  %38 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %39 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %42 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @clamp(i64 %49, i64 %50, i64 %51)
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %31, %29
  %54 = load i64, i64* %4, align 8
  ret i64 %54
}

declare dso_local %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw*) #1

declare dso_local i64 @alpha_pll_round_rate(i64, i64, i32*, i32*, i32) #1

declare dso_local i64 @alpha_pll_find_vco(%struct.clk_alpha_pll*, i64) #1

declare dso_local i64 @clamp(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
