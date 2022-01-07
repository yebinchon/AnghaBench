; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-imx6sl.c_imx6sl_enable_pll_arm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-imx6sl.c_imx6sl_enable_pll_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@imx6sl_enable_pll_arm.saved_pll_arm = internal global i32 0, align 4
@anatop_base = common dso_local global i64 0, align 8
@PLL_ARM = common dso_local global i64 0, align 8
@BM_PLL_ARM_ENABLE = common dso_local global i32 0, align 4
@BM_PLL_ARM_POWERDOWN = common dso_local global i32 0, align 4
@BM_PLL_ARM_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @imx6sl_enable_pll_arm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx6sl_enable_pll_arm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %1
  %7 = load i64, i64* @anatop_base, align 8
  %8 = load i64, i64* @PLL_ARM, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl_relaxed(i64 %9)
  store i32 %10, i32* %3, align 4
  store i32 %10, i32* @imx6sl_enable_pll_arm.saved_pll_arm, align 4
  %11 = load i32, i32* @BM_PLL_ARM_ENABLE, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @BM_PLL_ARM_POWERDOWN, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i64, i64* @anatop_base, align 8
  %20 = load i64, i64* @PLL_ARM, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel_relaxed(i32 %18, i64 %21)
  br label %23

23:                                               ; preds = %32, %6
  %24 = load i64, i64* @anatop_base, align 8
  %25 = load i64, i64* @PLL_ARM, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @__raw_readl(i64 %26)
  %28 = load i32, i32* @BM_PLL_ARM_LOCK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %23

33:                                               ; preds = %23
  br label %40

34:                                               ; preds = %1
  %35 = load i32, i32* @imx6sl_enable_pll_arm.saved_pll_arm, align 4
  %36 = load i64, i64* @anatop_base, align 8
  %37 = load i64, i64* @PLL_ARM, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel_relaxed(i32 %35, i64 %38)
  br label %40

40:                                               ; preds = %34, %33
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
