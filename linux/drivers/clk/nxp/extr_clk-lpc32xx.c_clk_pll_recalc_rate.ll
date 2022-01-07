; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.lpc32xx_pll_clk = type { i32, i32, i32, i32, i32 }

@clk_regmap = common dso_local global i32 0, align 4
@PLL_CTRL_DIRECT = common dso_local global i32 0, align 4
@PLL_CTRL_BYPASS = common dso_local global i32 0, align 4
@PLL_CTRL_FEEDBACK = common dso_local global i32 0, align 4
@PLL_CTRL_FEEDDIV = common dso_local global i32 0, align 4
@PLL_CTRL_PREDIV = common dso_local global i32 0, align 4
@PLL_CTRL_POSTDIV = common dso_local global i32 0, align 4
@PLL_DIRECT_BYPASS = common dso_local global i32 0, align 4
@PLL_BYPASS = common dso_local global i32 0, align 4
@PLL_DIRECT = common dso_local global i32 0, align 4
@PLL_INTEGER = common dso_local global i32 0, align 4
@PLL_NON_INTEGER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: %lu: 0x%x: %d/%d/%d, %lu/%lu/%d => %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"%s: PLL clocks are not in valid ranges: %lu/%lu/%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.lpc32xx_pll_clk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %15 = call %struct.lpc32xx_pll_clk* @to_lpc32xx_pll_clk(%struct.clk_hw* %14)
  store %struct.lpc32xx_pll_clk* %15, %struct.lpc32xx_pll_clk** %6, align 8
  %16 = load i32, i32* @clk_regmap, align 4
  %17 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %6, align 8
  %18 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regmap_read(i32 %16, i32 %19, i32* %13)
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @PLL_CTRL_DIRECT, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @PLL_CTRL_BYPASS, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @PLL_CTRL_FEEDBACK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @PLL_CTRL_FEEDDIV, align 4
  %32 = and i32 %30, %31
  %33 = ashr i32 %32, 1
  %34 = add nsw i32 %33, 1
  %35 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %6, align 8
  %36 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @PLL_CTRL_PREDIV, align 4
  %39 = and i32 %37, %38
  %40 = ashr i32 %39, 9
  %41 = add nsw i32 %40, 1
  %42 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %6, align 8
  %43 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @PLL_CTRL_POSTDIV, align 4
  %46 = and i32 %44, %45
  %47 = ashr i32 %46, 11
  %48 = add nsw i32 %47, 1
  %49 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %6, align 8
  %50 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %2
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %6, align 8
  %58 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %57, i32 0, i32 2
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* @PLL_DIRECT_BYPASS, align 4
  %60 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %6, align 8
  %61 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load i64, i64* %5, align 8
  store i64 %62, i64* %3, align 8
  br label %173

63:                                               ; preds = %53, %2
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i32, i32* @PLL_BYPASS, align 4
  %68 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %6, align 8
  %69 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %6, align 8
  %72 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 1, %73
  %75 = sext i32 %74 to i64
  %76 = udiv i64 %70, %75
  store i64 %76, i64* %3, align 8
  br label %173

77:                                               ; preds = %63
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %6, align 8
  %82 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %81, i32 0, i32 2
  store i32 0, i32* %82, align 4
  %83 = load i32, i32* @PLL_DIRECT, align 4
  %84 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %6, align 8
  %85 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %80, %77
  %87 = load i64, i64* %5, align 8
  %88 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %6, align 8
  %89 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = udiv i64 %87, %91
  store i64 %92, i64* %12, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %6, align 8
  %95 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %93, %97
  store i64 %98, i64* %11, align 8
  store i64 %98, i64* %10, align 8
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %127, label %101

101:                                              ; preds = %86
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %6, align 8
  %106 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 1, %107
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %11, align 8
  %111 = mul i64 %110, %109
  store i64 %111, i64* %11, align 8
  %112 = load i32, i32* @PLL_INTEGER, align 4
  %113 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %6, align 8
  %114 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  br label %126

115:                                              ; preds = %101
  %116 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %6, align 8
  %117 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 1, %118
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %10, align 8
  %122 = udiv i64 %121, %120
  store i64 %122, i64* %10, align 8
  %123 = load i32, i32* @PLL_NON_INTEGER, align 4
  %124 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %6, align 8
  %125 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %115, %104
  br label %127

127:                                              ; preds = %126, %86
  %128 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %129 = call i32 @clk_hw_get_name(%struct.clk_hw* %128)
  %130 = load i64, i64* %5, align 8
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %6, align 8
  %136 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %6, align 8
  %140 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %6, align 8
  %144 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 1, %145
  %147 = load i64, i64* %10, align 8
  %148 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %129, i64 %130, i32 %131, i32 %132, i32 %133, i32 %134, i64 %138, i64 %142, i32 %146, i64 %147)
  %149 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %150 = call i64 @clk_pll_is_enabled(%struct.clk_hw* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %171

152:                                              ; preds = %127
  %153 = load i64, i64* %5, align 8
  %154 = call i64 @pll_is_valid(i64 %153, i32 1, i32 1000000, i32 20000000)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %152
  %157 = load i64, i64* %11, align 8
  %158 = call i64 @pll_is_valid(i64 %157, i32 1, i32 156000000, i32 320000000)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i64, i64* %12, align 8
  %162 = call i64 @pll_is_valid(i64 %161, i32 1, i32 1000000, i32 27000000)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %160, %156, %152
  %165 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %166 = call i32 @clk_hw_get_name(%struct.clk_hw* %165)
  %167 = load i64, i64* %5, align 8
  %168 = load i64, i64* %11, align 8
  %169 = load i64, i64* %12, align 8
  %170 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %166, i64 %167, i64 %168, i64 %169)
  br label %171

171:                                              ; preds = %164, %160, %127
  %172 = load i64, i64* %10, align 8
  store i64 %172, i64* %3, align 8
  br label %173

173:                                              ; preds = %171, %66, %56
  %174 = load i64, i64* %3, align 8
  ret i64 %174
}

declare dso_local %struct.lpc32xx_pll_clk* @to_lpc32xx_pll_clk(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i32, i32, i32, i32, i64, i64, i32, i64) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i64 @clk_pll_is_enabled(%struct.clk_hw*) #1

declare dso_local i64 @pll_is_valid(i64, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
