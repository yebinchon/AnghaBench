; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32mp1.c_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32mp1.c_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.stm32_pll_obj = type { i64 }

@DIVM_SHIFT = common dso_local global i32 0, align 4
@DIVM_MASK = common dso_local global i32 0, align 4
@DIVN_SHIFT = common dso_local global i32 0, align 4
@DIVN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.stm32_pll_obj*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %13 = call %struct.stm32_pll_obj* @to_pll(%struct.clk_hw* %12)
  store %struct.stm32_pll_obj* %13, %struct.stm32_pll_obj** %5, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.stm32_pll_obj*, %struct.stm32_pll_obj** %5, align 8
  %15 = getelementptr inbounds %struct.stm32_pll_obj, %struct.stm32_pll_obj* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 4
  %18 = call i32 @readl_relaxed(i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @DIVM_SHIFT, align 4
  %21 = ashr i32 %19, %20
  %22 = load i32, i32* @DIVM_MASK, align 4
  %23 = and i32 %21, %22
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @DIVN_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = load i32, i32* @DIVN_MASK, align 4
  %29 = and i32 %27, %28
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  %31 = load i64, i64* %4, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @do_div(i32 %35, i32 %36)
  %38 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %39 = call i32 @pll_frac_val(%struct.clk_hw* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %2
  %43 = load i64, i64* %4, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 %48, 8192
  %50 = call i32 @do_div(i32 %47, i32 %49)
  br label %51

51:                                               ; preds = %42, %2
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  ret i64 %55
}

declare dso_local %struct.stm32_pll_obj* @to_pll(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @pll_frac_val(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
