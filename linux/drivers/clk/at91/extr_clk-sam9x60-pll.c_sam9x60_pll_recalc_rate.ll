; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-sam9x60-pll.c_sam9x60_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-sam9x60-pll.c_sam9x60_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.sam9x60_pll = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @sam9x60_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sam9x60_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sam9x60_pll*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %7 = call %struct.sam9x60_pll* @to_sam9x60_pll(%struct.clk_hw* %6)
  store %struct.sam9x60_pll* %7, %struct.sam9x60_pll** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %5, align 8
  %10 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = mul i64 %8, %13
  %15 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %5, align 8
  %16 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %14, %19
  ret i64 %20
}

declare dso_local %struct.sam9x60_pll* @to_sam9x60_pll(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
