; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-sam9x60-pll.c_sam9x60_pll_get_best_div_mul.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-sam9x60-pll.c_sam9x60_pll_get_best_div_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sam9x60_pll = type { i64, i64, i64, %struct.clk_pll_characteristics* }
%struct.clk_pll_characteristics = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@ULONG_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@PLL_MUL_MAX = common dso_local global i64 0, align 8
@PLL_DIV_MAX = common dso_local global i64 0, align 8
@UPLL_DIV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sam9x60_pll*, i64, i64, i32)* @sam9x60_pll_get_best_div_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sam9x60_pll_get_best_div_mul(%struct.sam9x60_pll* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.sam9x60_pll*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.clk_pll_characteristics*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.sam9x60_pll* %0, %struct.sam9x60_pll** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %6, align 8
  %24 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %23, i32 0, i32 3
  %25 = load %struct.clk_pll_characteristics*, %struct.clk_pll_characteristics** %24, align 8
  store %struct.clk_pll_characteristics* %25, %struct.clk_pll_characteristics** %10, align 8
  %26 = load i64, i64* @ULONG_MAX, align 8
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* @ERANGE, align 8
  %28 = sub nsw i64 0, %27
  store i64 %28, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.clk_pll_characteristics*, %struct.clk_pll_characteristics** %10, align 8
  %31 = getelementptr inbounds %struct.clk_pll_characteristics, %struct.clk_pll_characteristics* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %29, %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %4
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.clk_pll_characteristics*, %struct.clk_pll_characteristics** %10, align 8
  %40 = getelementptr inbounds %struct.clk_pll_characteristics, %struct.clk_pll_characteristics* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ugt i64 %38, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %37, %4
  %47 = load i64, i64* @ERANGE, align 8
  %48 = sub nsw i64 0, %47
  store i64 %48, i64* %5, align 8
  br label %180

49:                                               ; preds = %37
  %50 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %6, align 8
  %51 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %50, i32 0, i32 3
  %52 = load %struct.clk_pll_characteristics*, %struct.clk_pll_characteristics** %51, align 8
  %53 = getelementptr inbounds %struct.clk_pll_characteristics, %struct.clk_pll_characteristics* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %75, label %56

56:                                               ; preds = %49
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %7, align 8
  %59 = udiv i64 %57, %58
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %13, align 8
  %61 = icmp ult i64 %60, 2
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i64 2, i64* %13, align 8
  br label %63

63:                                               ; preds = %62, %56
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @PLL_MUL_MAX, align 8
  %66 = mul i64 %64, %65
  %67 = load i64, i64* %7, align 8
  %68 = call i64 @DIV_ROUND_UP(i64 %66, i64 %67)
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* @PLL_DIV_MAX, align 8
  %71 = icmp ugt i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i64, i64* @PLL_DIV_MAX, align 8
  store i64 %73, i64* %12, align 8
  br label %74

74:                                               ; preds = %72, %63
  br label %77

75:                                               ; preds = %49
  %76 = load i64, i64* @UPLL_DIV, align 8
  store i64 %76, i64* %12, align 8
  store i64 %76, i64* %13, align 8
  br label %77

77:                                               ; preds = %75, %74
  %78 = load i64, i64* %13, align 8
  store i64 %78, i64* %14, align 8
  br label %79

79:                                               ; preds = %139, %77
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* %12, align 8
  %82 = icmp ule i64 %80, %81
  br i1 %82, label %83, label %142

83:                                               ; preds = %79
  store i64 0, i64* %22, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %8, align 8
  %87 = call i64 @mult_frac(i64 %84, i64 %85, i64 %86)
  store i64 %87, i64* %21, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %21, align 8
  %90 = load i64, i64* %14, align 8
  %91 = call i64 @mult_frac(i64 %88, i64 %89, i64 %90)
  store i64 %91, i64* %20, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* %20, align 8
  %94 = sub i64 %92, %93
  store i64 %94, i64* %19, align 8
  %95 = load i64, i64* %19, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %124

97:                                               ; preds = %83
  %98 = load i64, i64* %19, align 8
  %99 = load i64, i64* %14, align 8
  %100 = mul i64 %98, %99
  %101 = mul i64 %100, 4194304
  %102 = load i64, i64* %8, align 8
  %103 = call i64 @DIV_ROUND_CLOSEST_ULL(i64 %101, i64 %102)
  store i64 %103, i64* %22, align 8
  %104 = load i64, i64* %22, align 8
  %105 = load i64, i64* %8, align 8
  %106 = mul i64 %104, %105
  %107 = load i64, i64* %14, align 8
  %108 = mul i64 %107, 4194304
  %109 = call i64 @DIV_ROUND_CLOSEST_ULL(i64 %106, i64 %108)
  %110 = load i64, i64* %20, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %20, align 8
  %112 = load i64, i64* %20, align 8
  %113 = load i64, i64* %7, align 8
  %114 = icmp ugt i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %97
  %116 = load i64, i64* %20, align 8
  %117 = load i64, i64* %7, align 8
  %118 = sub i64 %116, %117
  store i64 %118, i64* %19, align 8
  br label %123

119:                                              ; preds = %97
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* %20, align 8
  %122 = sub i64 %120, %121
  store i64 %122, i64* %19, align 8
  br label %123

123:                                              ; preds = %119, %115
  br label %124

124:                                              ; preds = %123, %83
  %125 = load i64, i64* %19, align 8
  %126 = load i64, i64* %11, align 8
  %127 = icmp ult i64 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load i64, i64* %19, align 8
  store i64 %129, i64* %11, align 8
  %130 = load i64, i64* %14, align 8
  store i64 %130, i64* %16, align 8
  %131 = load i64, i64* %21, align 8
  store i64 %131, i64* %17, align 8
  %132 = load i64, i64* %20, align 8
  store i64 %132, i64* %15, align 8
  %133 = load i64, i64* %22, align 8
  store i64 %133, i64* %18, align 8
  br label %134

134:                                              ; preds = %128, %124
  %135 = load i64, i64* %19, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %134
  br label %142

138:                                              ; preds = %134
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %14, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %14, align 8
  br label %79

142:                                              ; preds = %137, %79
  %143 = load i64, i64* %15, align 8
  %144 = load %struct.clk_pll_characteristics*, %struct.clk_pll_characteristics** %10, align 8
  %145 = getelementptr inbounds %struct.clk_pll_characteristics, %struct.clk_pll_characteristics* %144, i32 0, i32 0
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ult i64 %143, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %142
  %152 = load i64, i64* %15, align 8
  %153 = load %struct.clk_pll_characteristics*, %struct.clk_pll_characteristics** %10, align 8
  %154 = getelementptr inbounds %struct.clk_pll_characteristics, %struct.clk_pll_characteristics* %153, i32 0, i32 0
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ugt i64 %152, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %151
  %161 = load i64, i64* @ERANGE, align 8
  %162 = sub nsw i64 0, %161
  store i64 %162, i64* %5, align 8
  br label %180

163:                                              ; preds = %151, %142
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %163
  %167 = load i64, i64* %16, align 8
  %168 = sub i64 %167, 1
  %169 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %6, align 8
  %170 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  %171 = load i64, i64* %17, align 8
  %172 = sub i64 %171, 1
  %173 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %6, align 8
  %174 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %173, i32 0, i32 1
  store i64 %172, i64* %174, align 8
  %175 = load i64, i64* %18, align 8
  %176 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %6, align 8
  %177 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %176, i32 0, i32 2
  store i64 %175, i64* %177, align 8
  br label %178

178:                                              ; preds = %166, %163
  %179 = load i64, i64* %15, align 8
  store i64 %179, i64* %5, align 8
  br label %180

180:                                              ; preds = %178, %160, %46
  %181 = load i64, i64* %5, align 8
  ret i64 %181
}

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i64 @mult_frac(i64, i64, i64) #1

declare dso_local i64 @DIV_ROUND_CLOSEST_ULL(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
