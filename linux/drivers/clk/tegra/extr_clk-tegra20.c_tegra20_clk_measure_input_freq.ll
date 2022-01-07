; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra20.c_tegra20_clk_measure_input_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra20.c_tegra20_clk_measure_input_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clk_base = common dso_local global i64 0, align 8
@OSC_CTRL = common dso_local global i64 0, align 8
@OSC_CTRL_OSC_FREQ_MASK = common dso_local global i32 0, align 4
@OSC_CTRL_PLL_REF_DIV_MASK = common dso_local global i32 0, align 4
@OSC_CTRL_PLL_REF_DIV_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unexpected clock autodetect value %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @tegra20_clk_measure_input_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tegra20_clk_measure_input_freq() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = load i64, i64* @clk_base, align 8
  %7 = load i64, i64* @OSC_CTRL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl_relaxed(i64 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @OSC_CTRL_OSC_FREQ_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @OSC_CTRL_PLL_REF_DIV_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  switch i32 %16, label %41 [
    i32 131, label %17
    i32 130, label %23
    i32 129, label %29
    i32 128, label %35
  ]

17:                                               ; preds = %0
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @OSC_CTRL_PLL_REF_DIV_1, align 4
  %20 = icmp ne i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  store i64 12000000, i64* %5, align 8
  br label %45

23:                                               ; preds = %0
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @OSC_CTRL_PLL_REF_DIV_1, align 4
  %26 = icmp ne i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  store i64 13000000, i64* %5, align 8
  br label %45

29:                                               ; preds = %0
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @OSC_CTRL_PLL_REF_DIV_1, align 4
  %32 = icmp ne i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  store i64 19200000, i64* %5, align 8
  br label %45

35:                                               ; preds = %0
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @OSC_CTRL_PLL_REF_DIV_1, align 4
  %38 = icmp ne i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  store i64 26000000, i64* %5, align 8
  br label %45

41:                                               ; preds = %0
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = call i32 (...) @BUG()
  store i64 0, i64* %1, align 8
  br label %47

45:                                               ; preds = %35, %29, %23, %17
  %46 = load i64, i64* %5, align 8
  store i64 %46, i64* %1, align 8
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i64, i64* %1, align 8
  ret i64 %48
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
