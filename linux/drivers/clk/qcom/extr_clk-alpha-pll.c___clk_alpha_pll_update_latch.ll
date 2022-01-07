; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c___clk_alpha_pll_update_latch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c___clk_alpha_pll_update_latch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_alpha_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PLL_UPDATE = common dso_local global i32 0, align 4
@PLL_UPDATE_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_alpha_pll*)* @__clk_alpha_pll_update_latch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__clk_alpha_pll_update_latch(%struct.clk_alpha_pll* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_alpha_pll*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clk_alpha_pll* %0, %struct.clk_alpha_pll** %3, align 8
  %6 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %3, align 8
  %7 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %3, align 8
  %11 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %10)
  %12 = call i32 @regmap_read(i32 %9, i32 %11, i32* %5)
  %13 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %3, align 8
  %14 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %3, align 8
  %18 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %17)
  %19 = load i32, i32* @PLL_UPDATE, align 4
  %20 = load i32, i32* @PLL_UPDATE, align 4
  %21 = call i32 @regmap_update_bits(i32 %16, i32 %18, i32 %19, i32 %20)
  %22 = call i32 @udelay(i32 1)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PLL_UPDATE_BYPASS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %1
  %28 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %3, align 8
  %29 = call i32 @wait_for_pll_update_ack_set(%struct.clk_alpha_pll* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %60

34:                                               ; preds = %27
  %35 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %3, align 8
  %36 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %3, align 8
  %40 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %39)
  %41 = load i32, i32* @PLL_UPDATE, align 4
  %42 = call i32 @regmap_update_bits(i32 %38, i32 %40, i32 %41, i32 0)
  br label %51

43:                                               ; preds = %1
  %44 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %3, align 8
  %45 = call i32 @wait_for_pll_update(%struct.clk_alpha_pll* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %60

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %34
  %52 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %3, align 8
  %53 = call i32 @wait_for_pll_update_ack_clear(%struct.clk_alpha_pll* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %60

58:                                               ; preds = %51
  %59 = call i32 @udelay(i32 10)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %56, %48, %32
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @PLL_MODE(%struct.clk_alpha_pll*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wait_for_pll_update_ack_set(%struct.clk_alpha_pll*) #1

declare dso_local i32 @wait_for_pll_update(%struct.clk_alpha_pll*) #1

declare dso_local i32 @wait_for_pll_update_ack_clear(%struct.clk_alpha_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
