; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_alpha_pll_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_alpha_pll_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_alpha_pll = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @clk_alpha_pll_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_alpha_pll_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.clk_alpha_pll*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %15 = call %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw* %14)
  store %struct.clk_alpha_pll* %15, %struct.clk_alpha_pll** %8, align 8
  %16 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %17 = call i32 @pll_alpha_width(%struct.clk_alpha_pll* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i64, i64* %6, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @alpha_pll_round_rate(i64 %18, i64 %20, i32* %9, i32* %11, i32 %21)
  store i64 %22, i64* %6, align 8
  %23 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %24 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @alpha_pll_find_vco(%struct.clk_alpha_pll* %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %3
  %33 = load i64, i64* %6, align 8
  store i64 %33, i64* %4, align 8
  br label %56

34:                                               ; preds = %27
  %35 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %36 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %12, align 8
  %41 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %42 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %8, align 8
  %45 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %13, align 8
  %55 = call i64 @clamp(i64 %52, i64 %53, i64 %54)
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %34, %32
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw*) #1

declare dso_local i32 @pll_alpha_width(%struct.clk_alpha_pll*) #1

declare dso_local i64 @alpha_pll_round_rate(i64, i64, i32*, i32*, i32) #1

declare dso_local i64 @alpha_pll_find_vco(%struct.clk_alpha_pll*, i64) #1

declare dso_local i64 @clamp(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
