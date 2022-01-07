; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_pll_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_pll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.lpc32xx_pll_clk = type { i32, i64, i64, i32, i32 }

@PLL_CTRL_DIRECT = common dso_local global i32 0, align 4
@PLL_CTRL_BYPASS = common dso_local global i32 0, align 4
@PLL_CTRL_FEEDBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@clk_regmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_pll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pll_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.lpc32xx_pll_clk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %12 = call %struct.lpc32xx_pll_clk* @to_lpc32xx_pll_clk(%struct.clk_hw* %11)
  store %struct.lpc32xx_pll_clk* %12, %struct.lpc32xx_pll_clk** %8, align 8
  %13 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %14 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %143 [
    i32 131, label %16
    i32 132, label %45
    i32 130, label %61
    i32 129, label %66
    i32 128, label %102
  ]

16:                                               ; preds = %3
  %17 = load i32, i32* @PLL_CTRL_DIRECT, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %19 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %20, 1
  %22 = shl i64 %21, 1
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = or i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %28 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %29, 1
  %31 = shl i64 %30, 9
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = or i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %38 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = mul i64 %36, %39
  %41 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %42 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = udiv i64 %40, %43
  store i64 %44, i64* %10, align 8
  br label %146

45:                                               ; preds = %3
  %46 = load i32, i32* @PLL_CTRL_BYPASS, align 4
  store i32 %46, i32* %9, align 4
  %47 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %48 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = shl i32 %50, 11
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %56 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = shl i32 1, %57
  %59 = sext i32 %58 to i64
  %60 = udiv i64 %54, %59
  store i64 %60, i64* %10, align 8
  br label %146

61:                                               ; preds = %3
  %62 = load i32, i32* @PLL_CTRL_DIRECT, align 4
  %63 = load i32, i32* @PLL_CTRL_BYPASS, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %9, align 4
  %65 = load i64, i64* %7, align 8
  store i64 %65, i64* %10, align 8
  br label %146

66:                                               ; preds = %3
  %67 = load i32, i32* @PLL_CTRL_FEEDBACK, align 4
  store i32 %67, i32* %9, align 4
  %68 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %69 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = sub i64 %70, 1
  %72 = shl i64 %71, 1
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = or i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %9, align 4
  %77 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %78 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = sub i64 %79, 1
  %81 = shl i64 %80, 9
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = or i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %9, align 4
  %86 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %87 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, 1
  %90 = shl i32 %89, 11
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %95 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = mul i64 %93, %96
  %98 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %99 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = udiv i64 %97, %100
  store i64 %101, i64* %10, align 8
  br label %146

102:                                              ; preds = %3
  store i32 0, i32* %9, align 4
  %103 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %104 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = sub i64 %105, 1
  %107 = shl i64 %106, 1
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = or i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %9, align 4
  %112 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %113 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = sub i64 %114, 1
  %116 = shl i64 %115, 9
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = or i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %9, align 4
  %121 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %122 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %123, 1
  %125 = shl i32 %124, 11
  %126 = load i32, i32* %9, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %9, align 4
  %128 = load i64, i64* %7, align 8
  %129 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %130 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = mul i64 %128, %131
  %133 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %134 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %137 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = shl i32 1, %138
  %140 = sext i32 %139 to i64
  %141 = mul i64 %135, %140
  %142 = udiv i64 %132, %141
  store i64 %142, i64* %10, align 8
  br label %146

143:                                              ; preds = %3
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %160

146:                                              ; preds = %102, %66, %61, %45, %16
  %147 = load i64, i64* %10, align 8
  %148 = load i64, i64* %6, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %4, align 4
  br label %160

153:                                              ; preds = %146
  %154 = load i32, i32* @clk_regmap, align 4
  %155 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %156 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @regmap_update_bits(i32 %154, i32 %157, i32 131071, i32 %158)
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %153, %150, %143
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local %struct.lpc32xx_pll_clk* @to_lpc32xx_pll_clk(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
