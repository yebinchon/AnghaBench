; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-highbank.c_clk_pll_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-highbank.c_clk_pll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.hb_clk = type { i32 }

@HB_PLL_DIVF_MASK = common dso_local global i32 0, align 4
@HB_PLL_DIVF_SHIFT = common dso_local global i32 0, align 4
@HB_PLL_EXT_BYPASS = common dso_local global i32 0, align 4
@HB_PLL_RESET = common dso_local global i32 0, align 4
@HB_PLL_DIVQ_MASK = common dso_local global i32 0, align 4
@HB_PLL_DIVQ_SHIFT = common dso_local global i32 0, align 4
@HB_PLL_LOCK = common dso_local global i32 0, align 4
@HB_PLL_LOCK_500 = common dso_local global i32 0, align 4
@HB_PLL_EXT_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_pll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pll_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hb_clk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call %struct.hb_clk* @to_hb_clk(%struct.clk_hw* %11)
  store %struct.hb_clk* %12, %struct.hb_clk** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @clk_pll_calc(i64 %13, i64 %14, i32* %8, i32* %9)
  %16 = load %struct.hb_clk*, %struct.hb_clk** %7, align 8
  %17 = getelementptr inbounds %struct.hb_clk, %struct.hb_clk* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @readl(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @HB_PLL_DIVF_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @HB_PLL_DIVF_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = icmp ne i32 %20, %25
  br i1 %26, label %27, label %99

27:                                               ; preds = %3
  %28 = load i32, i32* @HB_PLL_EXT_BYPASS, align 4
  %29 = load i32, i32* %10, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @HB_PLL_EXT_BYPASS, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.hb_clk*, %struct.hb_clk** %7, align 8
  %35 = getelementptr inbounds %struct.hb_clk, %struct.hb_clk* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @writel(i32 %33, i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @HB_PLL_RESET, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.hb_clk*, %struct.hb_clk** %7, align 8
  %42 = getelementptr inbounds %struct.hb_clk, %struct.hb_clk* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @writel(i32 %40, i32 %43)
  %45 = load i32, i32* @HB_PLL_DIVF_MASK, align 4
  %46 = load i32, i32* @HB_PLL_DIVQ_MASK, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @HB_PLL_DIVF_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @HB_PLL_DIVQ_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = or i32 %53, %56
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @HB_PLL_RESET, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.hb_clk*, %struct.hb_clk** %7, align 8
  %64 = getelementptr inbounds %struct.hb_clk, %struct.hb_clk* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @writel(i32 %62, i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.hb_clk*, %struct.hb_clk** %7, align 8
  %69 = getelementptr inbounds %struct.hb_clk, %struct.hb_clk* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @writel(i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %80, %27
  %73 = load %struct.hb_clk*, %struct.hb_clk** %7, align 8
  %74 = getelementptr inbounds %struct.hb_clk, %struct.hb_clk* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @readl(i32 %75)
  %77 = load i32, i32* @HB_PLL_LOCK, align 4
  %78 = and i32 %76, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %72

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %90, %81
  %83 = load %struct.hb_clk*, %struct.hb_clk** %7, align 8
  %84 = getelementptr inbounds %struct.hb_clk, %struct.hb_clk* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @readl(i32 %85)
  %87 = load i32, i32* @HB_PLL_LOCK_500, align 4
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %82

91:                                               ; preds = %82
  %92 = load i32, i32* @HB_PLL_EXT_ENA, align 4
  %93 = load i32, i32* %10, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* @HB_PLL_EXT_BYPASS, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %10, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %10, align 4
  br label %123

99:                                               ; preds = %3
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @HB_PLL_EXT_BYPASS, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.hb_clk*, %struct.hb_clk** %7, align 8
  %104 = getelementptr inbounds %struct.hb_clk, %struct.hb_clk* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @writel(i32 %102, i32 %105)
  %107 = load i32, i32* @HB_PLL_DIVQ_MASK, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %10, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @HB_PLL_DIVQ_SHIFT, align 4
  %113 = shl i32 %111, %112
  %114 = load i32, i32* %10, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @HB_PLL_EXT_BYPASS, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.hb_clk*, %struct.hb_clk** %7, align 8
  %120 = getelementptr inbounds %struct.hb_clk, %struct.hb_clk* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @writel(i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %99, %91
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.hb_clk*, %struct.hb_clk** %7, align 8
  %126 = getelementptr inbounds %struct.hb_clk, %struct.hb_clk* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @writel(i32 %124, i32 %127)
  ret i32 0
}

declare dso_local %struct.hb_clk* @to_hb_clk(%struct.clk_hw*) #1

declare dso_local i32 @clk_pll_calc(i64, i64, i32*, i32*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
