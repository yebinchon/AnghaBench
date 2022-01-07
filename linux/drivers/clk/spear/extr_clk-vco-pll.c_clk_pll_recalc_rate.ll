; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk-vco-pll.c_clk_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk-vco-pll.c_clk_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@PLL_DIV_P_SHIFT = common dso_local global i32 0, align 4
@PLL_DIV_P_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_pll*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.clk_pll* @to_clk_pll(%struct.clk_hw* %8)
  store %struct.clk_pll* %9, %struct.clk_pll** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %11 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %18 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i64 %21, i64 %22)
  br label %24

24:                                               ; preds = %16, %2
  %25 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %26 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @readl_relaxed(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %32 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %24
  %38 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %39 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_unlock_irqrestore(i64 %42, i64 %43)
  br label %45

45:                                               ; preds = %37, %24
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @PLL_DIV_P_SHIFT, align 4
  %48 = lshr i32 %46, %47
  %49 = load i32, i32* @PLL_DIV_P_MASK, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %7, align 4
  %51 = load i64, i64* %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = shl i32 1, %52
  %54 = sext i32 %53 to i64
  %55 = udiv i64 %51, %54
  ret i64 %55
}

declare dso_local %struct.clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
