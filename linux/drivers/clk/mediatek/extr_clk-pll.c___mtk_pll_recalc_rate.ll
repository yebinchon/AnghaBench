; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-pll.c___mtk_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mediatek/extr_clk-pll.c___mtk_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_clk_pll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@INTEGER_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mtk_clk_pll*, i32, i32, i32)* @__mtk_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__mtk_pll_recalc_rate(%struct.mtk_clk_pll* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mtk_clk_pll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mtk_clk_pll* %0, %struct.mtk_clk_pll** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %5, align 8
  %15 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %5, align 8
  %20 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load %struct.mtk_clk_pll*, %struct.mtk_clk_pll** %5, align 8
  %27 = getelementptr inbounds %struct.mtk_clk_pll, %struct.mtk_clk_pll* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  br label %33

31:                                               ; preds = %4
  %32 = load i32, i32* @INTEGER_BITS, align 4
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi i32 [ %30, %25 ], [ %32, %31 ]
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %43, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %50, 1
  %52 = call i32 @GENMASK(i32 %51, i32 0)
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 1, i32* %13, align 4
  br label %56

56:                                               ; preds = %55, %48, %42
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %12, align 4
  %59 = ashr i32 %58, %57
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %62, %56
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %67, %69
  %71 = sub i64 %70, 1
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = udiv i64 %71, %73
  ret i64 %74
}

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
