; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-pll.c_clk_pll_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-pll.c_clk_pll_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pll = type { i32, i32, i32, i64, %struct.clk_pll_characteristics*, %struct.clk_pll_layout*, %struct.regmap* }
%struct.clk_pll_characteristics = type { i32*, i32* }
%struct.clk_pll_layout = type { i32, i32, i32 }
%struct.regmap = type { i32 }

@AT91_PMC_SR = common dso_local global i32 0, align 4
@AT91_PMC_PLLICPR = common dso_local global i32 0, align 4
@PLL_MAX_COUNT = common dso_local global i32 0, align 4
@PLL_COUNT_SHIFT = common dso_local global i32 0, align 4
@PLL_OUT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_pll_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pll_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_pll*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.clk_pll_layout*, align 8
  %7 = alloca %struct.clk_pll_characteristics*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %16 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %17 = call %struct.clk_pll* @to_clk_pll(%struct.clk_hw* %16)
  store %struct.clk_pll* %17, %struct.clk_pll** %4, align 8
  %18 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %19 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %18, i32 0, i32 6
  %20 = load %struct.regmap*, %struct.regmap** %19, align 8
  store %struct.regmap* %20, %struct.regmap** %5, align 8
  %21 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %22 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %21, i32 0, i32 5
  %23 = load %struct.clk_pll_layout*, %struct.clk_pll_layout** %22, align 8
  store %struct.clk_pll_layout* %23, %struct.clk_pll_layout** %6, align 8
  %24 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %25 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %24, i32 0, i32 4
  %26 = load %struct.clk_pll_characteristics*, %struct.clk_pll_characteristics** %25, align 8
  store %struct.clk_pll_characteristics* %26, %struct.clk_pll_characteristics** %7, align 8
  %27 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %28 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @PLL_STATUS_MASK(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @PLL_REG(i32 %32)
  store i32 %33, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %34 = load %struct.regmap*, %struct.regmap** %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @regmap_read(%struct.regmap* %34, i32 %35, i32* %12)
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @PLL_DIV(i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.clk_pll_layout*, %struct.clk_pll_layout** %6, align 8
  %41 = call i32 @PLL_MUL(i32 %39, %struct.clk_pll_layout* %40)
  store i32 %41, i32* %15, align 4
  %42 = load %struct.regmap*, %struct.regmap** %5, align 8
  %43 = load i32, i32* @AT91_PMC_SR, align 4
  %44 = call i32 @regmap_read(%struct.regmap* %42, i32 %43, i32* %13)
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %1
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %52 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i32, i32* %15, align 4
  %57 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %58 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %139

62:                                               ; preds = %55, %49, %1
  %63 = load %struct.clk_pll_characteristics*, %struct.clk_pll_characteristics** %7, align 8
  %64 = getelementptr inbounds %struct.clk_pll_characteristics, %struct.clk_pll_characteristics* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load %struct.clk_pll_characteristics*, %struct.clk_pll_characteristics** %7, align 8
  %69 = getelementptr inbounds %struct.clk_pll_characteristics, %struct.clk_pll_characteristics* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %72 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %67, %62
  %77 = load %struct.clk_pll_characteristics*, %struct.clk_pll_characteristics** %7, align 8
  %78 = getelementptr inbounds %struct.clk_pll_characteristics, %struct.clk_pll_characteristics* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %98

81:                                               ; preds = %76
  %82 = load %struct.regmap*, %struct.regmap** %5, align 8
  %83 = load i32, i32* @AT91_PMC_PLLICPR, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @PLL_ICPR_MASK(i32 %84)
  %86 = load %struct.clk_pll_characteristics*, %struct.clk_pll_characteristics** %7, align 8
  %87 = getelementptr inbounds %struct.clk_pll_characteristics, %struct.clk_pll_characteristics* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %90 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @PLL_ICPR_SHIFT(i32 %94)
  %96 = shl i32 %93, %95
  %97 = call i32 @regmap_update_bits(%struct.regmap* %82, i32 %83, i32 %85, i32 %96)
  br label %98

98:                                               ; preds = %81, %76
  %99 = load %struct.regmap*, %struct.regmap** %5, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.clk_pll_layout*, %struct.clk_pll_layout** %6, align 8
  %102 = getelementptr inbounds %struct.clk_pll_layout, %struct.clk_pll_layout* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %105 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @PLL_MAX_COUNT, align 4
  %108 = load i32, i32* @PLL_COUNT_SHIFT, align 4
  %109 = shl i32 %107, %108
  %110 = or i32 %106, %109
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @PLL_OUT_SHIFT, align 4
  %113 = shl i32 %111, %112
  %114 = or i32 %110, %113
  %115 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %116 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.clk_pll_layout*, %struct.clk_pll_layout** %6, align 8
  %119 = getelementptr inbounds %struct.clk_pll_layout, %struct.clk_pll_layout* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %117, %120
  %122 = load %struct.clk_pll_layout*, %struct.clk_pll_layout** %6, align 8
  %123 = getelementptr inbounds %struct.clk_pll_layout, %struct.clk_pll_layout* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %121, %124
  %126 = or i32 %114, %125
  %127 = call i32 @regmap_update_bits(%struct.regmap* %99, i32 %100, i32 %103, i32 %126)
  br label %128

128:                                              ; preds = %136, %98
  %129 = load %struct.regmap*, %struct.regmap** %5, align 8
  %130 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %131 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @clk_pll_ready(%struct.regmap* %129, i32 %132)
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = call i32 (...) @cpu_relax()
  br label %128

138:                                              ; preds = %128
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %138, %61
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @PLL_STATUS_MASK(i32) #1

declare dso_local i32 @PLL_REG(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @PLL_DIV(i32) #1

declare dso_local i32 @PLL_MUL(i32, %struct.clk_pll_layout*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @PLL_ICPR_MASK(i32) #1

declare dso_local i32 @PLL_ICPR_SHIFT(i32) #1

declare dso_local i32 @clk_pll_ready(%struct.regmap*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
