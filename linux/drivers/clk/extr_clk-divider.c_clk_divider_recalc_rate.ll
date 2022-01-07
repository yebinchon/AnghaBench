; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c_clk_divider_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c_clk_divider_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_divider = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_divider_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_divider_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
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
  %10 = call i32 @clk_div_readl(%struct.clk_divider* %9)
  %11 = load %struct.clk_divider*, %struct.clk_divider** %5, align 8
  %12 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = lshr i32 %10, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.clk_divider*, %struct.clk_divider** %5, align 8
  %16 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_div_mask(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.clk_divider*, %struct.clk_divider** %5, align 8
  %25 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.clk_divider*, %struct.clk_divider** %5, align 8
  %28 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.clk_divider*, %struct.clk_divider** %5, align 8
  %31 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @divider_recalc_rate(%struct.clk_hw* %21, i64 %22, i32 %23, i32 %26, i32 %29, i32 %32)
  ret i64 %33
}

declare dso_local %struct.clk_divider* @to_clk_divider(%struct.clk_hw*) #1

declare dso_local i32 @clk_div_readl(%struct.clk_divider*) #1

declare dso_local i32 @clk_div_mask(i32) #1

declare dso_local i64 @divider_recalc_rate(%struct.clk_hw*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
