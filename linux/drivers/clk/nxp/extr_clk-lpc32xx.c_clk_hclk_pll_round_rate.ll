; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_hclk_pll_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_hclk_pll_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.lpc32xx_pll_clk = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s: %lu/%lu\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"%s: %lu: no valid PLL parameters are found\0A\00", align 1
@PLL_DIRECT = common dso_local global i32 0, align 4
@PLL_NON_INTEGER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: %lu: found exact match: %llu/%llu/%llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"%s: %lu: found closest: %llu/%llu/%llu - %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @clk_hclk_pll_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_hclk_pll_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.lpc32xx_pll_clk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %18 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %19 = call %struct.lpc32xx_pll_clk* @to_lpc32xx_pll_clk(%struct.clk_hw* %18)
  store %struct.lpc32xx_pll_clk* %19, %struct.lpc32xx_pll_clk** %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load i64, i64* %6, align 8
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %26, 6
  store i32 %27, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %28 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %29 = call i32 @clk_hw_get_name(%struct.clk_hw* %28)
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 (i8*, i32, i64, i32, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %29, i64 %31, i32 %33)
  %35 = load i64, i64* %6, align 8
  %36 = icmp ugt i64 %35, 266500000
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub nsw i64 0, %38
  store i64 %39, i64* %4, align 8
  br label %177

40:                                               ; preds = %3
  store i32 4, i32* %16, align 4
  br label %41

41:                                               ; preds = %110, %40
  %42 = load i32, i32* %16, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %113

44:                                               ; preds = %41
  store i32 4, i32* %17, align 4
  br label %45

45:                                               ; preds = %106, %44
  %46 = load i32, i32* %17, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %109

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %17, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* %16, align 4
  %53 = shl i32 1, %52
  %54 = mul nsw i32 %51, %53
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @div64_u64(i32 %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %48
  %60 = load i32, i32* %9, align 4
  %61 = icmp sle i32 %60, 256
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %17, align 4
  %65 = call i64 @pll_is_valid(i32 %63, i32 %64, i32 1000000, i32 27000000)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %9, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %16, align 4
  %72 = shl i32 1, %71
  %73 = mul nsw i32 %70, %72
  %74 = load i32, i32* %17, align 4
  %75 = call i64 @pll_is_valid(i32 %73, i32 %74, i32 156000000, i32 320000000)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %67, %62, %59, %48
  br label %106

78:                                               ; preds = %67
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %17, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* %16, align 4
  %83 = shl i32 1, %82
  %84 = mul nsw i32 %81, %83
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %9, align 4
  %87 = mul nsw i32 %85, %86
  %88 = sub nsw i32 %84, %87
  %89 = load i32, i32* %12, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %78
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %17, align 4
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %17, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* %16, align 4
  %99 = shl i32 1, %98
  %100 = mul nsw i32 %97, %99
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %9, align 4
  %103 = mul nsw i32 %101, %102
  %104 = sub nsw i32 %100, %103
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %91, %78
  br label %106

106:                                              ; preds = %105, %77
  %107 = load i32, i32* %17, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %17, align 4
  br label %45

109:                                              ; preds = %45
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %16, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %16, align 4
  br label %41

113:                                              ; preds = %41
  %114 = load i32, i32* %12, align 4
  %115 = load i64, i64* %6, align 8
  %116 = trunc i64 %115 to i32
  %117 = shl i32 %116, 6
  %118 = icmp eq i32 %114, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %121 = call i32 @clk_hw_get_name(%struct.clk_hw* %120)
  %122 = load i64, i64* %6, align 8
  %123 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %121, i64 %122)
  %124 = load i64, i64* @EINVAL, align 8
  %125 = sub nsw i64 0, %124
  store i64 %125, i64* %4, align 8
  br label %177

126:                                              ; preds = %113
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %129 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %132 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %15, align 4
  %134 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %135 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %15, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %126
  %139 = load i32, i32* @PLL_DIRECT, align 4
  %140 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %141 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  br label %146

142:                                              ; preds = %126
  %143 = load i32, i32* @PLL_NON_INTEGER, align 4
  %144 = load %struct.lpc32xx_pll_clk*, %struct.lpc32xx_pll_clk** %8, align 8
  %145 = getelementptr inbounds %struct.lpc32xx_pll_clk, %struct.lpc32xx_pll_clk* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %142, %138
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %13, align 4
  %149 = mul nsw i32 %147, %148
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %15, align 4
  %152 = shl i32 1, %151
  %153 = mul nsw i32 %150, %152
  %154 = call i32 @div64_u64(i32 %149, i32 %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %146
  %158 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %159 = call i32 @clk_hw_get_name(%struct.clk_hw* %158)
  %160 = load i64, i64* %6, align 8
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %15, align 4
  %164 = call i32 (i8*, i32, i64, i32, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %159, i64 %160, i32 %161, i32 %162, i32 %163)
  br label %174

165:                                              ; preds = %146
  %166 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %167 = call i32 @clk_hw_get_name(%struct.clk_hw* %166)
  %168 = load i64, i64* %6, align 8
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* %10, align 4
  %173 = call i32 (i8*, i32, i64, i32, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %167, i64 %168, i32 %169, i32 %170, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %165, %157
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %4, align 8
  br label %177

177:                                              ; preds = %174, %119, %37
  %178 = load i64, i64* %4, align 8
  ret i64 %178
}

declare dso_local %struct.lpc32xx_pll_clk* @to_lpc32xx_pll_clk(%struct.clk_hw*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i32, ...) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i32 @div64_u64(i32, i32) #1

declare dso_local i64 @pll_is_valid(i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
