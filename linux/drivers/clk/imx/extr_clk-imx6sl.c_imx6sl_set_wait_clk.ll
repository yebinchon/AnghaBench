; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-imx6sl.c_imx6sl_set_wait_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-imx6sl.c_imx6sl_set_wait_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@imx6sl_set_wait_clk.saved_arm_div = internal global i64 0, align 8
@ARM_WAIT_DIV_396M = common dso_local global i32 0, align 4
@ccm_base = common dso_local global i64 0, align 8
@CACRR = common dso_local global i64 0, align 8
@CDHIPR = common dso_local global i64 0, align 8
@BM_CDHIPR_ARM_PODF_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx6sl_set_wait_clk(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @imx6sl_get_arm_divider_for_wait()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @ARM_WAIT_DIV_396M, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @imx6sl_enable_pll_arm(i32 1)
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load i64, i64* @ccm_base, align 8
  %15 = load i64, i64* @CACRR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i64 @readl_relaxed(i64 %16)
  store i64 %17, i64* @imx6sl_set_wait_clk.saved_arm_div, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @ccm_base, align 8
  %21 = load i64, i64* @CACRR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel_relaxed(i64 %19, i64 %22)
  br label %30

24:                                               ; preds = %10
  %25 = load i64, i64* @imx6sl_set_wait_clk.saved_arm_div, align 8
  %26 = load i64, i64* @ccm_base, align 8
  %27 = load i64, i64* @CACRR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel_relaxed(i64 %25, i64 %28)
  br label %30

30:                                               ; preds = %24, %13
  br label %31

31:                                               ; preds = %39, %30
  %32 = load i64, i64* @ccm_base, align 8
  %33 = load i64, i64* @CDHIPR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @__raw_readl(i64 %34)
  %36 = load i32, i32* @BM_CDHIPR_ARM_PODF_BUSY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %31

40:                                               ; preds = %31
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @ARM_WAIT_DIV_396M, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 @imx6sl_enable_pll_arm(i32 0)
  br label %46

46:                                               ; preds = %44, %40
  ret void
}

declare dso_local i32 @imx6sl_get_arm_divider_for_wait(...) #1

declare dso_local i32 @imx6sl_enable_pll_arm(i32) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
