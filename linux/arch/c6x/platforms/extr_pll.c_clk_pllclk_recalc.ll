; ModuleID = '/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_pll.c_clk_pllclk_recalc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_pll.c_clk_pllclk_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, i32, %struct.TYPE_2__*, %struct.pll_data* }
%struct.TYPE_2__ = type { i64 }
%struct.pll_data = type { i64, i32, i32 }

@FIXED_RATE_PLL = common dso_local global i32 0, align 4
@PLLCTL = common dso_local global i32 0, align 4
@PLLCTL_PLLEN = common dso_local global i32 0, align 4
@PLL_HAS_MUL = common dso_local global i32 0, align 4
@PLLM = common dso_local global i32 0, align 4
@PLLM_PLLM_MASK = common dso_local global i32 0, align 4
@PLL_HAS_PRE = common dso_local global i32 0, align 4
@PLLPRE = common dso_local global i32 0, align 4
@PLLDIV_EN = common dso_local global i32 0, align 4
@PLLDIV_RATIO_MASK = common dso_local global i32 0, align 4
@PLL_HAS_POST = common dso_local global i32 0, align 4
@PLLPOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"PLL%d: input = %luMHz, pre[%d] mul[%d] post[%d] --> %luMHz output.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"PLL%d: input = %luMHz, bypass mode.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @clk_pllclk_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pllclk_recalc(%struct.clk* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pll_data*, align 8
  %10 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.clk*, %struct.clk** %3, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 3
  %13 = load %struct.pll_data*, %struct.pll_data** %12, align 8
  store %struct.pll_data* %13, %struct.pll_data** %9, align 8
  %14 = load %struct.clk*, %struct.clk** %3, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load %struct.clk*, %struct.clk** %3, align 8
  %18 = getelementptr inbounds %struct.clk, %struct.clk* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FIXED_RATE_PLL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i64, i64* %10, align 8
  store i64 %24, i64* %2, align 8
  br label %159

25:                                               ; preds = %1
  %26 = load %struct.pll_data*, %struct.pll_data** %9, align 8
  %27 = load i32, i32* @PLLCTL, align 4
  %28 = call i32 @pll_read(%struct.pll_data* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.clk*, %struct.clk** %3, align 8
  %30 = getelementptr inbounds %struct.clk, %struct.clk* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.pll_data*, %struct.pll_data** %9, align 8
  %35 = getelementptr inbounds %struct.pll_data, %struct.pll_data* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  store i64 %33, i64* %10, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @PLLCTL_PLLEN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %42

41:                                               ; preds = %25
  store i32 1, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load %struct.pll_data*, %struct.pll_data** %9, align 8
  %44 = getelementptr inbounds %struct.pll_data, %struct.pll_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @PLL_HAS_MUL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load %struct.pll_data*, %struct.pll_data** %9, align 8
  %51 = load i32, i32* @PLLM, align 4
  %52 = call i32 @pll_read(%struct.pll_data* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @PLLM_PLLM_MASK, align 4
  %55 = and i32 %53, %54
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %49, %42
  %58 = load %struct.pll_data*, %struct.pll_data** %9, align 8
  %59 = getelementptr inbounds %struct.pll_data, %struct.pll_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PLL_HAS_PRE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %57
  %65 = load %struct.pll_data*, %struct.pll_data** %9, align 8
  %66 = load i32, i32* @PLLPRE, align 4
  %67 = call i32 @pll_read(%struct.pll_data* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @PLLDIV_EN, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @PLLDIV_RATIO_MASK, align 4
  %75 = and i32 %73, %74
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %78

77:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %77, %72
  br label %79

79:                                               ; preds = %78, %57
  %80 = load %struct.pll_data*, %struct.pll_data** %9, align 8
  %81 = getelementptr inbounds %struct.pll_data, %struct.pll_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @PLL_HAS_POST, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %79
  %87 = load %struct.pll_data*, %struct.pll_data** %9, align 8
  %88 = load i32, i32* @PLLPOST, align 4
  %89 = call i32 @pll_read(%struct.pll_data* %87, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @PLLDIV_EN, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @PLLDIV_RATIO_MASK, align 4
  %97 = and i32 %95, %96
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %100

99:                                               ; preds = %86
  store i32 1, i32* %7, align 4
  br label %100

100:                                              ; preds = %99, %94
  br label %101

101:                                              ; preds = %100, %79
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %145, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %10, align 8
  %111 = udiv i64 %110, %109
  store i64 %111, i64* %10, align 8
  br label %112

112:                                              ; preds = %107, %104
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %10, align 8
  %119 = mul i64 %118, %117
  store i64 %119, i64* %10, align 8
  br label %120

120:                                              ; preds = %115, %112
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %10, align 8
  %127 = udiv i64 %126, %125
  store i64 %127, i64* %10, align 8
  br label %128

128:                                              ; preds = %123, %120
  %129 = load %struct.pll_data*, %struct.pll_data** %9, align 8
  %130 = getelementptr inbounds %struct.pll_data, %struct.pll_data* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.clk*, %struct.clk** %3, align 8
  %133 = getelementptr inbounds %struct.clk, %struct.clk* %132, i32 0, i32 2
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = udiv i64 %136, 1000000
  %138 = trunc i64 %137 to i32
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* %7, align 4
  %142 = load i64, i64* %10, align 8
  %143 = udiv i64 %142, 1000000
  %144 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %131, i32 %138, i32 %139, i32 %140, i32 %141, i64 %143)
  br label %157

145:                                              ; preds = %101
  %146 = load %struct.pll_data*, %struct.pll_data** %9, align 8
  %147 = getelementptr inbounds %struct.pll_data, %struct.pll_data* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.clk*, %struct.clk** %3, align 8
  %150 = getelementptr inbounds %struct.clk, %struct.clk* %149, i32 0, i32 2
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = udiv i64 %153, 1000000
  %155 = trunc i64 %154 to i32
  %156 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %148, i32 %155)
  br label %157

157:                                              ; preds = %145, %128
  %158 = load i64, i64* %10, align 8
  store i64 %158, i64* %2, align 8
  br label %159

159:                                              ; preds = %157, %23
  %160 = load i64, i64* %2, align 8
  ret i64 %160
}

declare dso_local i32 @pll_read(%struct.pll_data*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
