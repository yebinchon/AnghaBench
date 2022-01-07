; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sprd/extr_pll.c__sprd_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sprd/extr_pll.c__sprd_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_pll = type { i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@PLL_PREDIV = common dso_local global i32 0, align 4
@PLL_POSTDIV = common dso_local global i32 0, align 4
@PLL_DIV_S = common dso_local global i32 0, align 4
@PLL_N = common dso_local global i32 0, align 4
@CLK_PLL_10M = common dso_local global i32 0, align 4
@PLL_NINT = common dso_local global i32 0, align 4
@PLL_SDM_EN = common dso_local global i32 0, align 4
@PLL_KINT = common dso_local global i32 0, align 4
@CLK_PLL_1M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sprd_pll*, i64)* @_sprd_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_sprd_pll_recalc_rate(%struct.sprd_pll* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.sprd_pll*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sprd_pll* %0, %struct.sprd_pll** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load %struct.sprd_pll*, %struct.sprd_pll** %4, align 8
  %17 = getelementptr inbounds %struct.sprd_pll, %struct.sprd_pll* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  store i64 0, i64* %12, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i64* @kcalloc(i64 %19, i32 8, i32 %20)
  store i64* %21, i64** %6, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i64, i64* @ENOMEM, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %3, align 8
  br label %155

27:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %28

28:                                               ; preds = %39, %27
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load %struct.sprd_pll*, %struct.sprd_pll** %4, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i64 @sprd_pll_read(%struct.sprd_pll* %33, i64 %34)
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  store i64 %35, i64* %38, align 8
  br label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %28

42:                                               ; preds = %28
  %43 = load %struct.sprd_pll*, %struct.sprd_pll** %4, align 8
  %44 = call i32 @pll_get_refin(%struct.sprd_pll* %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.sprd_pll*, %struct.sprd_pll** %4, align 8
  %46 = load i64*, i64** %6, align 8
  %47 = load i32, i32* @PLL_PREDIV, align 4
  %48 = call i64 @pinternal(%struct.sprd_pll* %45, i64* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* %13, align 4
  %52 = mul nsw i32 %51, 2
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %50, %42
  %54 = load %struct.sprd_pll*, %struct.sprd_pll** %4, align 8
  %55 = load i32, i32* @PLL_POSTDIV, align 4
  %56 = call i64 @pwidth(%struct.sprd_pll* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %53
  %59 = load %struct.sprd_pll*, %struct.sprd_pll** %4, align 8
  %60 = getelementptr inbounds %struct.sprd_pll, %struct.sprd_pll* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.sprd_pll*, %struct.sprd_pll** %4, align 8
  %65 = load i64*, i64** %6, align 8
  %66 = load i32, i32* @PLL_POSTDIV, align 4
  %67 = call i64 @pinternal(%struct.sprd_pll* %64, i64* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %63, %58
  %70 = load %struct.sprd_pll*, %struct.sprd_pll** %4, align 8
  %71 = getelementptr inbounds %struct.sprd_pll, %struct.sprd_pll* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %69
  %75 = load %struct.sprd_pll*, %struct.sprd_pll** %4, align 8
  %76 = load i64*, i64** %6, align 8
  %77 = load i32, i32* @PLL_POSTDIV, align 4
  %78 = call i64 @pinternal(%struct.sprd_pll* %75, i64* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %74, %63
  %81 = load i32, i32* %13, align 4
  %82 = sdiv i32 %81, 2
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %80, %74, %69, %53
  %84 = load %struct.sprd_pll*, %struct.sprd_pll** %4, align 8
  %85 = load i64*, i64** %6, align 8
  %86 = load i32, i32* @PLL_DIV_S, align 4
  %87 = call i64 @pinternal(%struct.sprd_pll* %84, i64* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.sprd_pll*, %struct.sprd_pll** %4, align 8
  %92 = load i64*, i64** %6, align 8
  %93 = load i32, i32* @PLL_N, align 4
  %94 = call i32 @pinternal_val(%struct.sprd_pll* %91, i64* %92, i32 %93)
  %95 = mul nsw i32 %90, %94
  %96 = load i32, i32* @CLK_PLL_10M, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %10, align 8
  br label %151

99:                                               ; preds = %83
  %100 = load %struct.sprd_pll*, %struct.sprd_pll** %4, align 8
  %101 = load i64*, i64** %6, align 8
  %102 = load i32, i32* @PLL_NINT, align 4
  %103 = call i32 @pinternal_val(%struct.sprd_pll* %100, i64* %101, i32 %102)
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %11, align 8
  %105 = load %struct.sprd_pll*, %struct.sprd_pll** %4, align 8
  %106 = load i64*, i64** %6, align 8
  %107 = load i32, i32* @PLL_SDM_EN, align 4
  %108 = call i64 @pinternal(%struct.sprd_pll* %105, i64* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %99
  %111 = load %struct.sprd_pll*, %struct.sprd_pll** %4, align 8
  %112 = load i64*, i64** %6, align 8
  %113 = load i32, i32* @PLL_KINT, align 4
  %114 = call i32 @pinternal_val(%struct.sprd_pll* %111, i64* %112, i32 %113)
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %12, align 8
  br label %116

116:                                              ; preds = %110, %99
  %117 = load %struct.sprd_pll*, %struct.sprd_pll** %4, align 8
  %118 = load i32, i32* @PLL_KINT, align 4
  %119 = call i64 @pmask(%struct.sprd_pll* %117, i32 %118)
  store i64 %119, i64* %8, align 8
  %120 = load %struct.sprd_pll*, %struct.sprd_pll** %4, align 8
  %121 = getelementptr inbounds %struct.sprd_pll, %struct.sprd_pll* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %14, align 4
  %123 = load %struct.sprd_pll*, %struct.sprd_pll** %4, align 8
  %124 = getelementptr inbounds %struct.sprd_pll, %struct.sprd_pll* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* %12, align 8
  %129 = mul i64 %127, %128
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = mul i64 %129, %131
  %133 = trunc i64 %132 to i32
  %134 = load i64, i64* %8, align 8
  %135 = load i64, i64* %8, align 8
  %136 = call i64 @__ffs(i64 %135)
  %137 = lshr i64 %134, %136
  %138 = add i64 %137, 1
  %139 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %133, i64 %138)
  %140 = load i32, i32* %15, align 4
  %141 = mul nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %11, align 8
  %146 = mul i64 %144, %145
  %147 = load i32, i32* @CLK_PLL_1M, align 4
  %148 = sext i32 %147 to i64
  %149 = mul i64 %146, %148
  %150 = add i64 %142, %149
  store i64 %150, i64* %10, align 8
  br label %151

151:                                              ; preds = %116, %89
  %152 = load i64*, i64** %6, align 8
  %153 = call i32 @kfree(i64* %152)
  %154 = load i64, i64* %10, align 8
  store i64 %154, i64* %3, align 8
  br label %155

155:                                              ; preds = %151, %24
  %156 = load i64, i64* %3, align 8
  ret i64 %156
}

declare dso_local i64* @kcalloc(i64, i32, i32) #1

declare dso_local i64 @sprd_pll_read(%struct.sprd_pll*, i64) #1

declare dso_local i32 @pll_get_refin(%struct.sprd_pll*) #1

declare dso_local i64 @pinternal(%struct.sprd_pll*, i64*, i32) #1

declare dso_local i64 @pwidth(%struct.sprd_pll*, i32) #1

declare dso_local i32 @pinternal_val(%struct.sprd_pll*, i64*, i32) #1

declare dso_local i64 @pmask(%struct.sprd_pll*, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i64) #1

declare dso_local i64 @__ffs(i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
