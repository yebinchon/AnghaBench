; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pll14xx.c_clk_pll14xx_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pll14xx.c_clk_pll14xx_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pll14xx = type { i64 }

@GNRL_CTL = common dso_local global i64 0, align 8
@RST_MASK = common dso_local global i32 0, align 4
@BYPASS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_pll14xx_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pll14xx_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_pll14xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.clk_pll14xx* @to_clk_pll14xx(%struct.clk_hw* %7)
  store %struct.clk_pll14xx* %8, %struct.clk_pll14xx** %4, align 8
  %9 = load %struct.clk_pll14xx*, %struct.clk_pll14xx** %4, align 8
  %10 = getelementptr inbounds %struct.clk_pll14xx, %struct.clk_pll14xx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @GNRL_CTL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl_relaxed(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @RST_MASK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

20:                                               ; preds = %1
  %21 = load i32, i32* @BYPASS_MASK, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.clk_pll14xx*, %struct.clk_pll14xx** %4, align 8
  %26 = getelementptr inbounds %struct.clk_pll14xx, %struct.clk_pll14xx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GNRL_CTL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel_relaxed(i32 %24, i64 %29)
  %31 = load i32, i32* @RST_MASK, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.clk_pll14xx*, %struct.clk_pll14xx** %4, align 8
  %36 = getelementptr inbounds %struct.clk_pll14xx, %struct.clk_pll14xx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GNRL_CTL, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel_relaxed(i32 %34, i64 %39)
  %41 = load %struct.clk_pll14xx*, %struct.clk_pll14xx** %4, align 8
  %42 = call i32 @clk_pll14xx_wait_lock(%struct.clk_pll14xx* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %20
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %59

47:                                               ; preds = %20
  %48 = load i32, i32* @BYPASS_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.clk_pll14xx*, %struct.clk_pll14xx** %4, align 8
  %54 = getelementptr inbounds %struct.clk_pll14xx, %struct.clk_pll14xx* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @GNRL_CTL, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel_relaxed(i32 %52, i64 %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %47, %45, %19
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.clk_pll14xx* @to_clk_pll14xx(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @clk_pll14xx_wait_lock(%struct.clk_pll14xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
