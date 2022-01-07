; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-pll.c_samsung_pll45xx_mp_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-pll.c_samsung_pll45xx_mp_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_pll_rate_table = type { i32, i32, i32 }

@PLL45XX_MDIV_SHIFT = common dso_local global i32 0, align 4
@PLL45XX_MDIV_MASK = common dso_local global i32 0, align 4
@PLL45XX_PDIV_SHIFT = common dso_local global i32 0, align 4
@PLL45XX_PDIV_MASK = common dso_local global i32 0, align 4
@PLL45XX_AFC_SHIFT = common dso_local global i32 0, align 4
@PLL45XX_AFC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.samsung_pll_rate_table*)* @samsung_pll45xx_mp_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @samsung_pll45xx_mp_change(i32 %0, i32 %1, %struct.samsung_pll_rate_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.samsung_pll_rate_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.samsung_pll_rate_table* %2, %struct.samsung_pll_rate_table** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @PLL45XX_MDIV_SHIFT, align 4
  %12 = ashr i32 %10, %11
  %13 = load i32, i32* @PLL45XX_MDIV_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PLL45XX_PDIV_SHIFT, align 4
  %17 = ashr i32 %15, %16
  %18 = load i32, i32* @PLL45XX_PDIV_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @PLL45XX_AFC_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = load i32, i32* @PLL45XX_AFC_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.samsung_pll_rate_table*, %struct.samsung_pll_rate_table** %6, align 8
  %27 = getelementptr inbounds %struct.samsung_pll_rate_table, %struct.samsung_pll_rate_table* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.samsung_pll_rate_table*, %struct.samsung_pll_rate_table** %6, align 8
  %33 = getelementptr inbounds %struct.samsung_pll_rate_table, %struct.samsung_pll_rate_table* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.samsung_pll_rate_table*, %struct.samsung_pll_rate_table** %6, align 8
  %39 = getelementptr inbounds %struct.samsung_pll_rate_table, %struct.samsung_pll_rate_table* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %37, %40
  br label %42

42:                                               ; preds = %36, %30, %3
  %43 = phi i1 [ true, %30 ], [ true, %3 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
