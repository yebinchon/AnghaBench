; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.iproc_clk = type { %struct.iproc_pll* }
%struct.iproc_pll = type { i64, i64, %struct.iproc_pll_ctrl* }
%struct.iproc_pll_ctrl = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }

@IPROC_CLK_PLL_HAS_NDIV_FRAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @iproc_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iproc_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.iproc_clk*, align 8
  %7 = alloca %struct.iproc_pll*, align 8
  %8 = alloca %struct.iproc_pll_ctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %16 = call %struct.iproc_clk* @to_iproc_clk(%struct.clk_hw* %15)
  store %struct.iproc_clk* %16, %struct.iproc_clk** %6, align 8
  %17 = load %struct.iproc_clk*, %struct.iproc_clk** %6, align 8
  %18 = getelementptr inbounds %struct.iproc_clk, %struct.iproc_clk* %17, i32 0, i32 0
  %19 = load %struct.iproc_pll*, %struct.iproc_pll** %18, align 8
  store %struct.iproc_pll* %19, %struct.iproc_pll** %7, align 8
  %20 = load %struct.iproc_pll*, %struct.iproc_pll** %7, align 8
  %21 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %20, i32 0, i32 2
  %22 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %21, align 8
  store %struct.iproc_pll_ctrl* %22, %struct.iproc_pll_ctrl** %8, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %139

26:                                               ; preds = %2
  %27 = load %struct.iproc_pll*, %struct.iproc_pll** %7, align 8
  %28 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %8, align 8
  %31 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %29, %33
  %35 = call i32 @readl(i64 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %8, align 8
  %38 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 1, %40
  %42 = and i32 %36, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %26
  store i64 0, i64* %3, align 8
  br label %139

45:                                               ; preds = %26
  %46 = load %struct.iproc_pll*, %struct.iproc_pll** %7, align 8
  %47 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %8, align 8
  %50 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %48, %52
  %54 = call i32 @readl(i64 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %8, align 8
  %57 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = ashr i32 %55, %59
  %61 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %8, align 8
  %62 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @bit_mask(i32 %64)
  %66 = and i32 %60, %65
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = shl i32 %67, 20
  store i32 %68, i32* %10, align 4
  %69 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %8, align 8
  %70 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IPROC_CLK_PLL_HAS_NDIV_FRAC, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %45
  %76 = load %struct.iproc_pll*, %struct.iproc_pll** %7, align 8
  %77 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %8, align 8
  %80 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %78, %82
  %84 = call i32 @readl(i64 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %8, align 8
  %87 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = ashr i32 %85, %89
  %91 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %8, align 8
  %92 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @bit_mask(i32 %94)
  %96 = and i32 %90, %95
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %75, %45
  %101 = load %struct.iproc_pll*, %struct.iproc_pll** %7, align 8
  %102 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %8, align 8
  %105 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %103, %107
  %109 = call i32 @readl(i64 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %8, align 8
  %112 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = ashr i32 %110, %114
  %116 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %8, align 8
  %117 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @bit_mask(i32 %119)
  %121 = and i32 %115, %120
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %5, align 8
  %125 = mul i64 %123, %124
  %126 = lshr i64 %125, 20
  store i64 %126, i64* %14, align 8
  %127 = load i32, i32* %13, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %100
  %130 = load i64, i64* %14, align 8
  %131 = mul i64 %130, 2
  store i64 %131, i64* %14, align 8
  br label %137

132:                                              ; preds = %100
  %133 = load i32, i32* %13, align 4
  %134 = zext i32 %133 to i64
  %135 = load i64, i64* %14, align 8
  %136 = udiv i64 %135, %134
  store i64 %136, i64* %14, align 8
  br label %137

137:                                              ; preds = %132, %129
  %138 = load i64, i64* %14, align 8
  store i64 %138, i64* %3, align 8
  br label %139

139:                                              ; preds = %137, %44, %25
  %140 = load i64, i64* %3, align 8
  ret i64 %140
}

declare dso_local %struct.iproc_clk* @to_iproc_clk(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @bit_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
