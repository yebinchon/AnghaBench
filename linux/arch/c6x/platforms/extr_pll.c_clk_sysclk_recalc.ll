; ModuleID = '/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_pll.c_clk_sysclk_recalc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_pll.c_clk_sysclk_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.pll_data* }
%struct.pll_data = type { i64 }

@PRE_PLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: (no divider) rate = %lu KHz\0A\00", align 1
@FIXED_DIV_PLL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: (fixed divide by %d) rate = %lu KHz\0A\00", align 1
@PLLDIV_EN = common dso_local global i32 0, align 4
@PLLDIV_RATIO_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: (divide by %d) rate = %lu KHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @clk_sysclk_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_sysclk_recalc(%struct.clk* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pll_data*, align 8
  %7 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.clk*, %struct.clk** %3, align 8
  %9 = getelementptr inbounds %struct.clk, %struct.clk* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.clk*, %struct.clk** %3, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %2, align 8
  br label %126

21:                                               ; preds = %1
  %22 = load %struct.clk*, %struct.clk** %3, align 8
  %23 = getelementptr inbounds %struct.clk, %struct.clk* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = load %struct.clk*, %struct.clk** %3, align 8
  %28 = getelementptr inbounds %struct.clk, %struct.clk* %27, i32 0, i32 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.pll_data*, %struct.pll_data** %30, align 8
  %32 = icmp ne %struct.pll_data* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %21
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %2, align 8
  br label %126

39:                                               ; preds = %21
  %40 = load %struct.clk*, %struct.clk** %3, align 8
  %41 = getelementptr inbounds %struct.clk, %struct.clk* %40, i32 0, i32 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load %struct.pll_data*, %struct.pll_data** %43, align 8
  store %struct.pll_data* %44, %struct.pll_data** %6, align 8
  %45 = load %struct.clk*, %struct.clk** %3, align 8
  %46 = getelementptr inbounds %struct.clk, %struct.clk* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PRE_PLL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = load %struct.pll_data*, %struct.pll_data** %6, align 8
  %53 = getelementptr inbounds %struct.pll_data, %struct.pll_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %51, %39
  %56 = load %struct.clk*, %struct.clk** %3, align 8
  %57 = getelementptr inbounds %struct.clk, %struct.clk* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %55
  %61 = load %struct.clk*, %struct.clk** %3, align 8
  %62 = getelementptr inbounds %struct.clk, %struct.clk* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = udiv i64 %64, 1000
  %66 = trunc i64 %65 to i32
  %67 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load i64, i64* %7, align 8
  store i64 %68, i64* %2, align 8
  br label %126

69:                                               ; preds = %55
  %70 = load %struct.clk*, %struct.clk** %3, align 8
  %71 = getelementptr inbounds %struct.clk, %struct.clk* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @FIXED_DIV_PLL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %69
  %77 = load %struct.clk*, %struct.clk** %3, align 8
  %78 = getelementptr inbounds %struct.clk, %struct.clk* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = udiv i64 %80, %79
  store i64 %81, i64* %7, align 8
  %82 = load %struct.clk*, %struct.clk** %3, align 8
  %83 = getelementptr inbounds %struct.clk, %struct.clk* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.clk*, %struct.clk** %3, align 8
  %86 = getelementptr inbounds %struct.clk, %struct.clk* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = load i64, i64* %7, align 8
  %90 = udiv i64 %89, 1000
  %91 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %88, i64 %90)
  %92 = load i64, i64* %7, align 8
  store i64 %92, i64* %2, align 8
  br label %126

93:                                               ; preds = %69
  %94 = load %struct.pll_data*, %struct.pll_data** %6, align 8
  %95 = load %struct.clk*, %struct.clk** %3, align 8
  %96 = getelementptr inbounds %struct.clk, %struct.clk* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @pll_read(%struct.pll_data* %94, i32 %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @PLLDIV_EN, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %93
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @PLLDIV_RATIO_MASK, align 4
  %107 = and i32 %105, %106
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %104, %93
  %110 = load i32, i32* %5, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 1, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %109
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %7, align 8
  %117 = udiv i64 %116, %115
  store i64 %117, i64* %7, align 8
  %118 = load %struct.clk*, %struct.clk** %3, align 8
  %119 = getelementptr inbounds %struct.clk, %struct.clk* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = load i64, i64* %7, align 8
  %123 = udiv i64 %122, 1000
  %124 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %120, i32 %121, i64 %123)
  %125 = load i64, i64* %7, align 8
  store i64 %125, i64* %2, align 8
  br label %126

126:                                              ; preds = %113, %76, %60, %37, %19
  %127 = load i64, i64* %2, align 8
  ret i64 %127
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @pll_read(%struct.pll_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
