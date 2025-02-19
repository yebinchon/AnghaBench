; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-half-divider.c_clk_half_divider_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-half-divider.c_clk_half_divider_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_divider = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_half_divider_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_half_divider_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_divider*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.clk_divider* @to_clk_divider(%struct.clk_hw* %7)
  store %struct.clk_divider* %8, %struct.clk_divider** %5, align 8
  %9 = load %struct.clk_divider*, %struct.clk_divider** %5, align 8
  %10 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @readl(i32 %11)
  %13 = load %struct.clk_divider*, %struct.clk_divider** %5, align 8
  %14 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = lshr i32 %12, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.clk_divider*, %struct.clk_divider** %5, align 8
  %18 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @div_mask(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = mul i32 %23, 2
  %25 = add i32 %24, 3
  store i32 %25, i32* %6, align 4
  %26 = load i64, i64* %4, align 8
  %27 = trunc i64 %26 to i32
  %28 = mul nsw i32 %27, 2
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @DIV_ROUND_UP_ULL(i32 %28, i32 %29)
  ret i64 %30
}

declare dso_local %struct.clk_divider* @to_clk_divider(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @div_mask(i32) #1

declare dso_local i64 @DIV_ROUND_UP_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
