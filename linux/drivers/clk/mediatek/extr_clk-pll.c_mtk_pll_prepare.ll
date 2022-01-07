; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-pll.c_mtk_pll_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-pll.c_mtk_pll_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mtk_clk_pll = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CON0_PWR_ON = common dso_local global i32 0, align 4
@CON0_ISO_EN = common dso_local global i32 0, align 4
@REG_CON0 = common dso_local global i64 0, align 8
@HAVE_RST_BAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @mtk_pll_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pll_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.mtk_clk_pll*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.mtk_clk_pll* @to_mtk_clk_pll(%struct.clk_hw* %5)
  store %struct.mtk_clk_pll* %6, %struct.mtk_clk_pll** %3, align 8
  %7 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @readl(i64 %9)
  %11 = load i32, i32* @CON0_PWR_ON, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %15 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @writel(i32 %13, i64 %16)
  %18 = call i32 @udelay(i32 1)
  %19 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %20 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @readl(i64 %21)
  %23 = load i32, i32* @CON0_ISO_EN, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %28 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @writel(i32 %26, i64 %29)
  %31 = call i32 @udelay(i32 1)
  %32 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %33 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @REG_CON0, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  store i32 %37, i32* %4, align 4
  %38 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %39 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %47 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @REG_CON0, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %45, i64 %50)
  %52 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %53 = call i32 @__mtk_pll_tuner_enable(%struct.mtk_clk_pll* %52)
  %54 = call i32 @udelay(i32 20)
  %55 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %56 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @HAVE_RST_BAR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %1
  %64 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %65 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @REG_CON0, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @readl(i64 %68)
  store i32 %69, i32* %4, align 4
  %70 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %71 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %79 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @REG_CON0, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  br label %84

84:                                               ; preds = %63, %1
  ret i32 0
}

declare dso_local %struct.mtk_clk_pll* @to_mtk_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @__mtk_pll_tuner_enable(%struct.mtk_clk_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
