; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-pll.c_clk_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-pll.c_clk_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pll = type { i32, i64, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_pll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %13 = call %struct.clk_pll* @to_clk_pll(%struct.clk_hw* %12)
  store %struct.clk_pll* %13, %struct.clk_pll** %5, align 8
  %14 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %15 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %19 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @regmap_read(i32 %17, i32 %20, i32* %6)
  %22 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %23 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %27 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regmap_read(i32 %25, i32 %28, i32* %7)
  %30 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %31 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %35 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @regmap_read(i32 %33, i32 %36, i32* %8)
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 1023
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 524287
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, 524287
  store i32 %43, i32* %8, align 4
  %44 = load i64, i64* %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %44, %46
  store i64 %47, i64* %10, align 8
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %2
  %51 = load i64, i64* %4, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %11, align 4
  %55 = mul nsw i32 %54, %53
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @do_div(i32 %56, i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %10, align 8
  br label %63

63:                                               ; preds = %50, %2
  %64 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %65 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %63
  %69 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %70 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %74 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @regmap_read(i32 %72, i32 %75, i32* %9)
  %77 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %78 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = ashr i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load %struct.clk_pll*, %struct.clk_pll** %5, align 8
  %83 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @BIT(i64 %84)
  %86 = sub nsw i32 %85, 1
  %87 = load i32, i32* %9, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %10, align 8
  %93 = udiv i64 %92, %91
  store i64 %93, i64* %10, align 8
  br label %94

94:                                               ; preds = %68, %63
  %95 = load i64, i64* %10, align 8
  ret i64 %95
}

declare dso_local %struct.clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
