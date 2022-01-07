; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_alpha_pll_find_vco.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_alpha_pll_find_vco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_vco = type { i64, i64 }
%struct.clk_alpha_pll = type { i32, %struct.pll_vco* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pll_vco* (%struct.clk_alpha_pll*, i64)* @alpha_pll_find_vco to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pll_vco* @alpha_pll_find_vco(%struct.clk_alpha_pll* %0, i64 %1) #0 {
  %3 = alloca %struct.pll_vco*, align 8
  %4 = alloca %struct.clk_alpha_pll*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pll_vco*, align 8
  %7 = alloca %struct.pll_vco*, align 8
  store %struct.clk_alpha_pll* %0, %struct.clk_alpha_pll** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %9 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %8, i32 0, i32 1
  %10 = load %struct.pll_vco*, %struct.pll_vco** %9, align 8
  store %struct.pll_vco* %10, %struct.pll_vco** %6, align 8
  %11 = load %struct.pll_vco*, %struct.pll_vco** %6, align 8
  %12 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %13 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.pll_vco, %struct.pll_vco* %11, i64 %15
  store %struct.pll_vco* %16, %struct.pll_vco** %7, align 8
  br label %17

17:                                               ; preds = %36, %2
  %18 = load %struct.pll_vco*, %struct.pll_vco** %6, align 8
  %19 = load %struct.pll_vco*, %struct.pll_vco** %7, align 8
  %20 = icmp ult %struct.pll_vco* %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.pll_vco*, %struct.pll_vco** %6, align 8
  %24 = getelementptr inbounds %struct.pll_vco, %struct.pll_vco* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp uge i64 %22, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.pll_vco*, %struct.pll_vco** %6, align 8
  %30 = getelementptr inbounds %struct.pll_vco, %struct.pll_vco* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ule i64 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load %struct.pll_vco*, %struct.pll_vco** %6, align 8
  store %struct.pll_vco* %34, %struct.pll_vco** %3, align 8
  br label %40

35:                                               ; preds = %27, %21
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.pll_vco*, %struct.pll_vco** %6, align 8
  %38 = getelementptr inbounds %struct.pll_vco, %struct.pll_vco* %37, i32 1
  store %struct.pll_vco* %38, %struct.pll_vco** %6, align 8
  br label %17

39:                                               ; preds = %17
  store %struct.pll_vco* null, %struct.pll_vco** %3, align 8
  br label %40

40:                                               ; preds = %39, %33
  %41 = load %struct.pll_vco*, %struct.pll_vco** %3, align 8
  ret %struct.pll_vco* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
