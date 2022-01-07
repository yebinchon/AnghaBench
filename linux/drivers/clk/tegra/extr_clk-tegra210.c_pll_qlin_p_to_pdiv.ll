; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_pll_qlin_p_to_pdiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_pll_qlin_p_to_pdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@PLL_QLIN_PDIV_MAX = common dso_local global i32 0, align 4
@pll_qlin_pdiv_to_hw = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*)* @pll_qlin_p_to_pdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pll_qlin_p_to_pdiv(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %38, %9
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @PLL_QLIN_PDIV_MAX, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pll_qlin_pdiv_to_hw, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sle i64 %15, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %14
  %24 = load i64*, i64** %5, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64*, i64** %5, align 8
  store i64 %28, i64* %29, align 8
  br label %30

30:                                               ; preds = %26, %23
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pll_qlin_pdiv_to_hw, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %3, align 8
  br label %45

37:                                               ; preds = %14
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %10

41:                                               ; preds = %10
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i64, i64* @EINVAL, align 8
  %44 = sub nsw i64 0, %43
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %42, %30
  %46 = load i64, i64* %3, align 8
  ret i64 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
