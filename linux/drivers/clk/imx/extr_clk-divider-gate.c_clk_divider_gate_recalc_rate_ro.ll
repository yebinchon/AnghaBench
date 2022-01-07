; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-divider-gate.c_clk_divider_gate_recalc_rate_ro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-divider-gate.c_clk_divider_gate_recalc_rate_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_divider = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_divider_gate_recalc_rate_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_divider_gate_recalc_rate_ro(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_divider*, align 8
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %9 = call %struct.clk_divider* @to_clk_divider(%struct.clk_hw* %8)
  store %struct.clk_divider* %9, %struct.clk_divider** %6, align 8
  %10 = load %struct.clk_divider*, %struct.clk_divider** %6, align 8
  %11 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @readl(i32 %12)
  %14 = load %struct.clk_divider*, %struct.clk_divider** %6, align 8
  %15 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = lshr i32 %13, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.clk_divider*, %struct.clk_divider** %6, align 8
  %19 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_div_mask(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %41

27:                                               ; preds = %2
  %28 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.clk_divider*, %struct.clk_divider** %6, align 8
  %32 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.clk_divider*, %struct.clk_divider** %6, align 8
  %35 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.clk_divider*, %struct.clk_divider** %6, align 8
  %38 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @divider_recalc_rate(%struct.clk_hw* %28, i64 %29, i32 %30, i32 %33, i32 %36, i32 %39)
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %27, %26
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

declare dso_local %struct.clk_divider* @to_clk_divider(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @clk_div_mask(i32) #1

declare dso_local i64 @divider_recalc_rate(%struct.clk_hw*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
