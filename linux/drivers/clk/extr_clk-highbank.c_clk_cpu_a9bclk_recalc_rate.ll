; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-highbank.c_clk_cpu_a9bclk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-highbank.c_clk_cpu_a9bclk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.hb_clk = type { i32 }

@HB_A9_BCLK_DIV_MASK = common dso_local global i32 0, align 4
@HB_A9_BCLK_DIV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_cpu_a9bclk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_cpu_a9bclk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hb_clk*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.hb_clk* @to_hb_clk(%struct.clk_hw* %7)
  store %struct.hb_clk* %8, %struct.hb_clk** %5, align 8
  %9 = load %struct.hb_clk*, %struct.hb_clk** %5, align 8
  %10 = getelementptr inbounds %struct.hb_clk, %struct.hb_clk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @readl(i32 %11)
  %13 = load i32, i32* @HB_A9_BCLK_DIV_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @HB_A9_BCLK_DIV_SHIFT, align 4
  %16 = ashr i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %17, %20
  ret i64 %21
}

declare dso_local %struct.hb_clk* @to_hb_clk(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
