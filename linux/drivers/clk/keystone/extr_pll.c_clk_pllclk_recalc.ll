; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_pll.c_clk_pllclk_recalc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_pll.c_clk_pllclk_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pll = type { %struct.clk_pll_data* }
%struct.clk_pll_data = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_pllclk_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pllclk_recalc(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_pll*, align 8
  %6 = alloca %struct.clk_pll_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %13 = call %struct.clk_pll* @to_clk_pll(%struct.clk_hw* %12)
  store %struct.clk_pll* %13, %struct.clk_pll** %5, align 8
  %14 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %15 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %14, i32 0, i32 0
  %16 = load %struct.clk_pll_data*, %struct.clk_pll_data** %15, align 8
  store %struct.clk_pll_data* %16, %struct.clk_pll_data** %6, align 8
  %17 = load i64, i64* %4, align 8
  store i64 %17, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.clk_pll_data*, %struct.clk_pll_data** %6, align 8
  %19 = getelementptr inbounds %struct.clk_pll_data, %struct.clk_pll_data* %18, i32 0, i32 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.clk_pll_data*, %struct.clk_pll_data** %6, align 8
  %24 = getelementptr inbounds %struct.clk_pll_data, %struct.clk_pll_data* %23, i32 0, i32 10
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.clk_pll_data*, %struct.clk_pll_data** %6, align 8
  %29 = getelementptr inbounds %struct.clk_pll_data, %struct.clk_pll_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %27, %30
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %22, %2
  %33 = load %struct.clk_pll_data*, %struct.clk_pll_data** %6, align 8
  %34 = getelementptr inbounds %struct.clk_pll_data, %struct.clk_pll_data* %33, i32 0, i32 9
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @readl(i64 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.clk_pll_data*, %struct.clk_pll_data** %6, align 8
  %39 = getelementptr inbounds %struct.clk_pll_data, %struct.clk_pll_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %37, %40
  %42 = load %struct.clk_pll_data*, %struct.clk_pll_data** %6, align 8
  %43 = getelementptr inbounds %struct.clk_pll_data, %struct.clk_pll_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = ashr i32 %41, %44
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.clk_pll_data*, %struct.clk_pll_data** %6, align 8
  %50 = getelementptr inbounds %struct.clk_pll_data, %struct.clk_pll_data* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %48, %51
  store i32 %52, i32* %9, align 4
  %53 = load %struct.clk_pll_data*, %struct.clk_pll_data** %6, align 8
  %54 = getelementptr inbounds %struct.clk_pll_data, %struct.clk_pll_data* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %32
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.clk_pll_data*, %struct.clk_pll_data** %6, align 8
  %60 = getelementptr inbounds %struct.clk_pll_data, %struct.clk_pll_data* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %58, %61
  %63 = load %struct.clk_pll_data*, %struct.clk_pll_data** %6, align 8
  %64 = getelementptr inbounds %struct.clk_pll_data, %struct.clk_pll_data* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %62, %65
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %93

68:                                               ; preds = %32
  %69 = load %struct.clk_pll_data*, %struct.clk_pll_data** %6, align 8
  %70 = getelementptr inbounds %struct.clk_pll_data, %struct.clk_pll_data* %69, i32 0, i32 7
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = load %struct.clk_pll_data*, %struct.clk_pll_data** %6, align 8
  %75 = getelementptr inbounds %struct.clk_pll_data, %struct.clk_pll_data* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @readl(i64 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.clk_pll_data*, %struct.clk_pll_data** %6, align 8
  %80 = getelementptr inbounds %struct.clk_pll_data, %struct.clk_pll_data* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %78, %81
  %83 = load %struct.clk_pll_data*, %struct.clk_pll_data** %6, align 8
  %84 = getelementptr inbounds %struct.clk_pll_data, %struct.clk_pll_data* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %82, %85
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %92

88:                                               ; preds = %68
  %89 = load %struct.clk_pll_data*, %struct.clk_pll_data** %6, align 8
  %90 = getelementptr inbounds %struct.clk_pll_data, %struct.clk_pll_data* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %88, %73
  br label %93

93:                                               ; preds = %92, %57
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %7, align 8
  %98 = udiv i64 %97, %96
  store i64 %98, i64* %7, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = mul i64 %99, %102
  store i64 %103, i64* %7, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %7, align 8
  %107 = udiv i64 %106, %105
  store i64 %107, i64* %7, align 8
  %108 = load i64, i64* %7, align 8
  ret i64 %108
}

declare dso_local %struct.clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
