; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-pll.c_mtk_pll_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-pll.c_mtk_pll_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mtk_clk_pll = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@HAVE_RST_BAR = common dso_local global i32 0, align 4
@REG_CON0 = common dso_local global i64 0, align 8
@CON0_BASE_EN = common dso_local global i32 0, align 4
@CON0_ISO_EN = common dso_local global i32 0, align 4
@CON0_PWR_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @mtk_pll_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_pll_unprepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.mtk_clk_pll*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.mtk_clk_pll* @to_mtk_clk_pll(%struct.clk_hw* %5)
  store %struct.mtk_clk_pll* %6, %struct.mtk_clk_pll** %3, align 8
  %7 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HAVE_RST_BAR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %1
  %16 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %17 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @REG_CON0, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %23 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %32 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @REG_CON0, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  br label %37

37:                                               ; preds = %15, %1
  %38 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %39 = call i32 @__mtk_pll_tuner_disable(%struct.mtk_clk_pll* %38)
  %40 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %41 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @REG_CON0, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readl(i64 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @CON0_BASE_EN, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %52 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @REG_CON0, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  %57 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %58 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @readl(i64 %59)
  %61 = load i32, i32* @CON0_ISO_EN, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %65 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @writel(i32 %63, i64 %66)
  %68 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %69 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @readl(i64 %70)
  %72 = load i32, i32* @CON0_PWR_ON, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %3, align 8
  %77 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @writel(i32 %75, i64 %78)
  ret void
}

declare dso_local %struct.mtk_clk_pll* @to_mtk_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @__mtk_pll_tuner_disable(%struct.mtk_clk_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
