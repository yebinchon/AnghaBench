; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-highbank.c_clk_pll_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-highbank.c_clk_pll_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.hb_clk = type { i32 }

@HB_PLL_RESET = common dso_local global i32 0, align 4
@HB_PLL_LOCK = common dso_local global i32 0, align 4
@HB_PLL_LOCK_500 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_pll_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pll_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.hb_clk*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.hb_clk* @to_hb_clk(%struct.clk_hw* %5)
  store %struct.hb_clk* %6, %struct.hb_clk** %3, align 8
  %7 = load %struct.hb_clk*, %struct.hb_clk** %3, align 8
  %8 = getelementptr inbounds %struct.hb_clk, %struct.hb_clk* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @readl(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @HB_PLL_RESET, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.hb_clk*, %struct.hb_clk** %3, align 8
  %17 = getelementptr inbounds %struct.hb_clk, %struct.hb_clk* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @writel(i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %28, %1
  %21 = load %struct.hb_clk*, %struct.hb_clk** %3, align 8
  %22 = getelementptr inbounds %struct.hb_clk, %struct.hb_clk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @readl(i32 %23)
  %25 = load i32, i32* @HB_PLL_LOCK, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %20

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %38, %29
  %31 = load %struct.hb_clk*, %struct.hb_clk** %3, align 8
  %32 = getelementptr inbounds %struct.hb_clk, %struct.hb_clk* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @readl(i32 %33)
  %35 = load i32, i32* @HB_PLL_LOCK_500, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %30

39:                                               ; preds = %30
  ret i32 0
}

declare dso_local %struct.hb_clk* @to_hb_clk(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
