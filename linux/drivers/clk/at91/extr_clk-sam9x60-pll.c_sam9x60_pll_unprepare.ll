; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-sam9x60-pll.c_sam9x60_pll_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-sam9x60-pll.c_sam9x60_pll_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.sam9x60_pll = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@PMC_PLL_UPDT = common dso_local global i32 0, align 4
@PMC_PLL_CTRL0 = common dso_local global i32 0, align 4
@PMC_PLL_CTRL0_ENPLLCK = common dso_local global i32 0, align 4
@PMC_PLL_UPDT_UPDATE = common dso_local global i32 0, align 4
@PMC_PLL_CTRL0_ENPLL = common dso_local global i32 0, align 4
@PMC_PLL_ACR = common dso_local global i32 0, align 4
@PMC_PLL_ACR_UTMIBG = common dso_local global i32 0, align 4
@PMC_PLL_ACR_UTMIVR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @sam9x60_pll_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sam9x60_pll_unprepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.sam9x60_pll*, align 8
  %4 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.sam9x60_pll* @to_sam9x60_pll(%struct.clk_hw* %5)
  store %struct.sam9x60_pll* %6, %struct.sam9x60_pll** %3, align 8
  %7 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %3, align 8
  %8 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32 %9, i64 %10)
  %12 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %3, align 8
  %13 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PMC_PLL_UPDT, align 4
  %16 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %3, align 8
  %17 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @regmap_write(i32 %14, i32 %15, i32 %18)
  %20 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %3, align 8
  %21 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PMC_PLL_CTRL0, align 4
  %24 = load i32, i32* @PMC_PLL_CTRL0_ENPLLCK, align 4
  %25 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 %24, i32 0)
  %26 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %3, align 8
  %27 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PMC_PLL_UPDT, align 4
  %30 = load i32, i32* @PMC_PLL_UPDT_UPDATE, align 4
  %31 = load i32, i32* @PMC_PLL_UPDT_UPDATE, align 4
  %32 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %3, align 8
  %34 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PMC_PLL_CTRL0, align 4
  %37 = load i32, i32* @PMC_PLL_CTRL0_ENPLL, align 4
  %38 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %37, i32 0)
  %39 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %3, align 8
  %40 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %1
  %46 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %3, align 8
  %47 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PMC_PLL_ACR, align 4
  %50 = load i32, i32* @PMC_PLL_ACR_UTMIBG, align 4
  %51 = load i32, i32* @PMC_PLL_ACR_UTMIVR, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @regmap_update_bits(i32 %48, i32 %49, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %45, %1
  %55 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %3, align 8
  %56 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @PMC_PLL_UPDT, align 4
  %59 = load i32, i32* @PMC_PLL_UPDT_UPDATE, align 4
  %60 = load i32, i32* @PMC_PLL_UPDT_UPDATE, align 4
  %61 = call i32 @regmap_update_bits(i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %3, align 8
  %63 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32 %64, i64 %65)
  ret void
}

declare dso_local %struct.sam9x60_pll* @to_sam9x60_pll(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
