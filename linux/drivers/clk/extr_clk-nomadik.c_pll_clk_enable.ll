; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-nomadik.c_pll_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-nomadik.c_pll_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pll = type { i32 }

@src_lock = common dso_local global i32 0, align 4
@src_base = common dso_local global i64 0, align 8
@SRC_PLLCR = common dso_local global i64 0, align 8
@SRC_PLLCR_PLL1OVER = common dso_local global i32 0, align 4
@SRC_PLLCR_PLL1EN = common dso_local global i32 0, align 4
@SRC_PLLCR_PLL2EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @pll_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_clk_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_pll*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.clk_pll* @to_pll(%struct.clk_hw* %5)
  store %struct.clk_pll* %6, %struct.clk_pll** %3, align 8
  %7 = call i32 @spin_lock(i32* @src_lock)
  %8 = load i64, i64* @src_base, align 8
  %9 = load i64, i64* @SRC_PLLCR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.clk_pll*, %struct.clk_pll** %3, align 8
  %13 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SRC_PLLCR_PLL1OVER, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i32, i32* @SRC_PLLCR_PLL1EN, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i64, i64* @src_base, align 8
  %27 = load i64, i64* @SRC_PLLCR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %25, i64 %28)
  br label %30

30:                                               ; preds = %21, %16
  br label %46

31:                                               ; preds = %1
  %32 = load %struct.clk_pll*, %struct.clk_pll** %3, align 8
  %33 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, i32* @SRC_PLLCR_PLL2EN, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i64, i64* @src_base, align 8
  %42 = load i64, i64* @SRC_PLLCR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %40, i64 %43)
  br label %45

45:                                               ; preds = %36, %31
  br label %46

46:                                               ; preds = %45, %30
  %47 = call i32 @spin_unlock(i32* @src_lock)
  ret i32 0
}

declare dso_local %struct.clk_pll* @to_pll(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
