; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-pll.c_clk_pll_get_best_div_mul.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-pll.c_clk_pll_get_best_div_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_pll = type { %struct.clk_pll_characteristics*, %struct.clk_pll_layout* }
%struct.clk_pll_characteristics = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.clk_pll_layout = type { i32 }

@ULONG_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@PLL_MUL_MIN = common dso_local global i64 0, align 8
@PLL_DIV_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_pll*, i64, i64, i32*, i32*, i32*)* @clk_pll_get_best_div_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pll_get_best_div_mul(%struct.clk_pll* %0, i64 %1, i64 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_pll*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.clk_pll_layout*, align 8
  %15 = alloca %struct.clk_pll_characteristics*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.clk_pll* %0, %struct.clk_pll** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %27 = load %struct.clk_pll*, %struct.clk_pll** %8, align 8
  %28 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %27, i32 0, i32 1
  %29 = load %struct.clk_pll_layout*, %struct.clk_pll_layout** %28, align 8
  store %struct.clk_pll_layout* %29, %struct.clk_pll_layout** %14, align 8
  %30 = load %struct.clk_pll*, %struct.clk_pll** %8, align 8
  %31 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %30, i32 0, i32 0
  %32 = load %struct.clk_pll_characteristics*, %struct.clk_pll_characteristics** %31, align 8
  store %struct.clk_pll_characteristics* %32, %struct.clk_pll_characteristics** %15, align 8
  %33 = load i64, i64* @ULONG_MAX, align 8
  store i64 %33, i64* %16, align 8
  %34 = load i64, i64* @ERANGE, align 8
  %35 = sub nsw i64 0, %34
  store i64 %35, i64* %20, align 8
  store i32 0, i32* %23, align 4
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.clk_pll_characteristics*, %struct.clk_pll_characteristics** %15, align 8
  %38 = getelementptr inbounds %struct.clk_pll_characteristics, %struct.clk_pll_characteristics* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %36, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %6
  %43 = load i64, i64* @ERANGE, align 8
  %44 = sub nsw i64 0, %43
  store i64 %44, i64* %7, align 8
  br label %209

45:                                               ; preds = %6
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @PLL_MUL_MIN, align 8
  %48 = mul i64 %46, %47
  %49 = load i64, i64* %9, align 8
  %50 = udiv i64 %48, %49
  store i64 %50, i64* %18, align 8
  %51 = load i64, i64* %18, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  store i64 1, i64* %18, align 8
  br label %54

54:                                               ; preds = %53, %45
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.clk_pll_characteristics*, %struct.clk_pll_characteristics** %15, align 8
  %57 = getelementptr inbounds %struct.clk_pll_characteristics, %struct.clk_pll_characteristics* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ugt i64 %55, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %54
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.clk_pll_characteristics*, %struct.clk_pll_characteristics** %15, align 8
  %64 = getelementptr inbounds %struct.clk_pll_characteristics, %struct.clk_pll_characteristics* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @DIV_ROUND_UP(i64 %62, i64 %66)
  store i64 %67, i64* %19, align 8
  %68 = load i64, i64* %19, align 8
  %69 = load i64, i64* @PLL_DIV_MAX, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i64, i64* @ERANGE, align 8
  %73 = sub nsw i64 0, %72
  store i64 %73, i64* %7, align 8
  br label %209

74:                                               ; preds = %61
  %75 = load i64, i64* %19, align 8
  %76 = load i64, i64* %18, align 8
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i64, i64* %19, align 8
  store i64 %79, i64* %18, align 8
  br label %80

80:                                               ; preds = %78, %74
  br label %81

81:                                               ; preds = %80, %54
  %82 = load i64, i64* %10, align 8
  %83 = load %struct.clk_pll_layout*, %struct.clk_pll_layout** %14, align 8
  %84 = call i64 @PLL_MUL_MAX(%struct.clk_pll_layout* %83)
  %85 = mul i64 %82, %84
  %86 = load i64, i64* %9, align 8
  %87 = call i64 @DIV_ROUND_UP(i64 %85, i64 %86)
  store i64 %87, i64* %17, align 8
  %88 = load i64, i64* %17, align 8
  %89 = load i64, i64* @PLL_DIV_MAX, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i64, i64* @PLL_DIV_MAX, align 8
  store i64 %92, i64* %17, align 8
  br label %93

93:                                               ; preds = %91, %81
  %94 = load i64, i64* %18, align 8
  store i64 %94, i64* %19, align 8
  br label %95

95:                                               ; preds = %135, %93
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* %17, align 8
  %98 = icmp ule i64 %96, %97
  br i1 %98, label %99, label %138

99:                                               ; preds = %95
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* %19, align 8
  %103 = udiv i64 %101, %102
  %104 = call i64 @DIV_ROUND_CLOSEST(i64 %100, i64 %103)
  store i64 %104, i64* %26, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %19, align 8
  %107 = udiv i64 %105, %106
  %108 = load i64, i64* %26, align 8
  %109 = mul i64 %107, %108
  store i64 %109, i64* %25, align 8
  %110 = load i64, i64* %25, align 8
  %111 = load i64, i64* %9, align 8
  %112 = icmp ugt i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %99
  %114 = load i64, i64* %25, align 8
  %115 = load i64, i64* %9, align 8
  %116 = sub i64 %114, %115
  store i64 %116, i64* %24, align 8
  br label %121

117:                                              ; preds = %99
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* %25, align 8
  %120 = sub i64 %118, %119
  store i64 %120, i64* %24, align 8
  br label %121

121:                                              ; preds = %117, %113
  %122 = load i64, i64* %24, align 8
  %123 = load i64, i64* %16, align 8
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load i64, i64* %24, align 8
  store i64 %126, i64* %16, align 8
  %127 = load i64, i64* %19, align 8
  store i64 %127, i64* %21, align 8
  %128 = load i64, i64* %26, align 8
  store i64 %128, i64* %22, align 8
  %129 = load i64, i64* %25, align 8
  store i64 %129, i64* %20, align 8
  br label %130

130:                                              ; preds = %125, %121
  %131 = load i64, i64* %24, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  br label %138

134:                                              ; preds = %130
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %19, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %19, align 8
  br label %95

138:                                              ; preds = %133, %95
  %139 = load i64, i64* %20, align 8
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i64, i64* %20, align 8
  store i64 %142, i64* %7, align 8
  br label %209

143:                                              ; preds = %138
  store i32 0, i32* %23, align 4
  br label %144

144:                                              ; preds = %174, %143
  %145 = load i32, i32* %23, align 4
  %146 = load %struct.clk_pll_characteristics*, %struct.clk_pll_characteristics** %15, align 8
  %147 = getelementptr inbounds %struct.clk_pll_characteristics, %struct.clk_pll_characteristics* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %177

150:                                              ; preds = %144
  %151 = load i64, i64* %20, align 8
  %152 = load %struct.clk_pll_characteristics*, %struct.clk_pll_characteristics** %15, align 8
  %153 = getelementptr inbounds %struct.clk_pll_characteristics, %struct.clk_pll_characteristics* %152, i32 0, i32 1
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = load i32, i32* %23, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp sge i64 %151, %159
  br i1 %160, label %161, label %173

161:                                              ; preds = %150
  %162 = load i64, i64* %20, align 8
  %163 = load %struct.clk_pll_characteristics*, %struct.clk_pll_characteristics** %15, align 8
  %164 = getelementptr inbounds %struct.clk_pll_characteristics, %struct.clk_pll_characteristics* %163, i32 0, i32 1
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load i32, i32* %23, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp sle i64 %162, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %161
  br label %177

173:                                              ; preds = %161, %150
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %23, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %23, align 4
  br label %144

177:                                              ; preds = %172, %144
  %178 = load i32, i32* %23, align 4
  %179 = load %struct.clk_pll_characteristics*, %struct.clk_pll_characteristics** %15, align 8
  %180 = getelementptr inbounds %struct.clk_pll_characteristics, %struct.clk_pll_characteristics* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp sge i32 %178, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %177
  %184 = load i64, i64* @ERANGE, align 8
  %185 = sub nsw i64 0, %184
  store i64 %185, i64* %7, align 8
  br label %209

186:                                              ; preds = %177
  %187 = load i32*, i32** %11, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %193

189:                                              ; preds = %186
  %190 = load i64, i64* %21, align 8
  %191 = trunc i64 %190 to i32
  %192 = load i32*, i32** %11, align 8
  store i32 %191, i32* %192, align 4
  br label %193

193:                                              ; preds = %189, %186
  %194 = load i32*, i32** %12, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %201

196:                                              ; preds = %193
  %197 = load i64, i64* %22, align 8
  %198 = sub i64 %197, 1
  %199 = trunc i64 %198 to i32
  %200 = load i32*, i32** %12, align 8
  store i32 %199, i32* %200, align 4
  br label %201

201:                                              ; preds = %196, %193
  %202 = load i32*, i32** %13, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load i32, i32* %23, align 4
  %206 = load i32*, i32** %13, align 8
  store i32 %205, i32* %206, align 4
  br label %207

207:                                              ; preds = %204, %201
  %208 = load i64, i64* %20, align 8
  store i64 %208, i64* %7, align 8
  br label %209

209:                                              ; preds = %207, %183, %141, %71, %42
  %210 = load i64, i64* %7, align 8
  ret i64 %210
}

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i64 @PLL_MUL_MAX(%struct.clk_pll_layout*) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
