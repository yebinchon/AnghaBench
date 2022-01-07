; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/berlin/extr_berlin2-pll.c_berlin2_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/berlin/extr_berlin2-pll.c_berlin2_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.berlin2_pll = type { i64, %struct.berlin2_pll_map }
%struct.berlin2_pll_map = type { i64, i64, i64, i64*, i64 }

@SPLL_CTRL0 = common dso_local global i64 0, align 8
@FBDIV_MASK = common dso_local global i64 0, align 8
@RFDIV_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"%s has zero rfdiv\0A\00", align 1
@SPLL_CTRL1 = common dso_local global i64 0, align 8
@DIVSEL_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"%s has zero vcodiv (index %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @berlin2_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @berlin2_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.berlin2_pll*, align 8
  %6 = alloca %struct.berlin2_pll_map*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %14 = call %struct.berlin2_pll* @to_berlin2_pll(%struct.clk_hw* %13)
  store %struct.berlin2_pll* %14, %struct.berlin2_pll** %5, align 8
  %15 = load %struct.berlin2_pll*, %struct.berlin2_pll** %5, align 8
  %16 = getelementptr inbounds %struct.berlin2_pll, %struct.berlin2_pll* %15, i32 0, i32 1
  store %struct.berlin2_pll_map* %16, %struct.berlin2_pll_map** %6, align 8
  %17 = load i64, i64* %4, align 8
  store i64 %17, i64* %12, align 8
  %18 = load %struct.berlin2_pll*, %struct.berlin2_pll** %5, align 8
  %19 = getelementptr inbounds %struct.berlin2_pll, %struct.berlin2_pll* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SPLL_CTRL0, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @readl_relaxed(i64 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.berlin2_pll_map*, %struct.berlin2_pll_map** %6, align 8
  %26 = getelementptr inbounds %struct.berlin2_pll_map, %struct.berlin2_pll_map* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = lshr i64 %24, %27
  %29 = load i64, i64* @FBDIV_MASK, align 8
  %30 = and i64 %28, %29
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.berlin2_pll_map*, %struct.berlin2_pll_map** %6, align 8
  %33 = getelementptr inbounds %struct.berlin2_pll_map, %struct.berlin2_pll_map* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = lshr i64 %31, %34
  %36 = load i64, i64* @RFDIV_MASK, align 8
  %37 = and i64 %35, %36
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %2
  %41 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %42 = call i32 @clk_hw_get_name(%struct.clk_hw* %41)
  %43 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i64 1, i64* %9, align 8
  br label %44

44:                                               ; preds = %40, %2
  %45 = load %struct.berlin2_pll*, %struct.berlin2_pll** %5, align 8
  %46 = getelementptr inbounds %struct.berlin2_pll, %struct.berlin2_pll* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SPLL_CTRL1, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i64 @readl_relaxed(i64 %49)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.berlin2_pll_map*, %struct.berlin2_pll_map** %6, align 8
  %53 = getelementptr inbounds %struct.berlin2_pll_map, %struct.berlin2_pll_map* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = lshr i64 %51, %54
  %56 = load i64, i64* @DIVSEL_MASK, align 8
  %57 = and i64 %55, %56
  store i64 %57, i64* %10, align 8
  %58 = load %struct.berlin2_pll_map*, %struct.berlin2_pll_map** %6, align 8
  %59 = getelementptr inbounds %struct.berlin2_pll_map, %struct.berlin2_pll_map* %58, i32 0, i32 3
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %44
  %67 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %68 = call i32 @clk_hw_get_name(%struct.clk_hw* %67)
  %69 = load i64, i64* %10, align 8
  %70 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %68, i64 %69)
  store i64 1, i64* %11, align 8
  br label %71

71:                                               ; preds = %66, %44
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.berlin2_pll_map*, %struct.berlin2_pll_map** %6, align 8
  %74 = getelementptr inbounds %struct.berlin2_pll_map, %struct.berlin2_pll_map* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = mul i64 %72, %75
  %77 = load i64, i64* %12, align 8
  %78 = mul i64 %77, %76
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* %11, align 8
  %82 = mul i64 %80, %81
  %83 = call i32 @do_div(i64 %79, i64 %82)
  %84 = load i64, i64* %12, align 8
  ret i64 %84
}

declare dso_local %struct.berlin2_pll* @to_berlin2_pll(%struct.clk_hw*) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
