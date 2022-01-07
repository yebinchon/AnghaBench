; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-pll.c___mtk_pll_tuner_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-pll.c___mtk_pll_tuner_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_clk_pll = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AUDPLL_TUNER_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_clk_pll*)* @__mtk_pll_tuner_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mtk_pll_tuner_enable(%struct.mtk_clk_pll* %0) #0 {
  %2 = alloca %struct.mtk_clk_pll*, align 8
  %3 = alloca i32, align 4
  store %struct.mtk_clk_pll* %0, %struct.mtk_clk_pll** %2, align 8
  %4 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %2, align 8
  %5 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %2, align 8
  %10 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @readl(i32 %11)
  %13 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %2, align 8
  %14 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = or i32 %12, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %2, align 8
  %22 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @writel(i32 %20, i32 %23)
  br label %43

25:                                               ; preds = %1
  %26 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %2, align 8
  %27 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %2, align 8
  %32 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @readl(i32 %33)
  %35 = load i32, i32* @AUDPLL_TUNER_EN, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %2, align 8
  %39 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @writel(i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %30, %25
  br label %43

43:                                               ; preds = %42, %8
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
