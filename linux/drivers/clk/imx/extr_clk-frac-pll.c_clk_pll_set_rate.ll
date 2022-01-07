; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-frac-pll.c_clk_pll_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-frac-pll.c_clk_pll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_frac_pll = type { i64 }

@PLL_FRAC_DENOM = common dso_local global i64 0, align 8
@PLL_CFG1 = common dso_local global i64 0, align 8
@PLL_FRAC_DIV_MASK = common dso_local global i64 0, align 8
@PLL_INT_DIV_MASK = common dso_local global i64 0, align 8
@PLL_CFG0 = common dso_local global i64 0, align 8
@PLL_NEWDIV_VAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_pll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pll_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_frac_pll*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %14 = call %struct.clk_frac_pll* @to_clk_frac_pll(%struct.clk_hw* %13)
  store %struct.clk_frac_pll* %14, %struct.clk_frac_pll** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = mul i64 %15, 8
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = mul i64 %17, 2
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = udiv i64 %19, %20
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %9, align 8
  %24 = mul i64 %22, %23
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %11, align 8
  %27 = sub i64 %25, %26
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* @PLL_FRAC_DENOM, align 8
  %29 = load i64, i64* %11, align 8
  %30 = mul i64 %29, %28
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @do_div(i64 %31, i64 %32)
  %34 = load i64, i64* %11, align 8
  store i64 %34, i64* %10, align 8
  %35 = load %struct.clk_frac_pll*, %struct.clk_frac_pll** %7, align 8
  %36 = getelementptr inbounds %struct.clk_frac_pll, %struct.clk_frac_pll* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PLL_CFG1, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i64 @readl_relaxed(i64 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* @PLL_FRAC_DIV_MASK, align 8
  %42 = load i64, i64* @PLL_INT_DIV_MASK, align 8
  %43 = or i64 %41, %42
  %44 = xor i64 %43, -1
  %45 = load i64, i64* %8, align 8
  %46 = and i64 %45, %44
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %10, align 8
  %48 = shl i64 %47, 7
  %49 = load i64, i64* %9, align 8
  %50 = sub i64 %49, 1
  %51 = or i64 %48, %50
  %52 = load i64, i64* %8, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.clk_frac_pll*, %struct.clk_frac_pll** %7, align 8
  %56 = getelementptr inbounds %struct.clk_frac_pll, %struct.clk_frac_pll* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PLL_CFG1, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel_relaxed(i64 %54, i64 %59)
  %61 = load %struct.clk_frac_pll*, %struct.clk_frac_pll** %7, align 8
  %62 = getelementptr inbounds %struct.clk_frac_pll, %struct.clk_frac_pll* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PLL_CFG0, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i64 @readl_relaxed(i64 %65)
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = and i64 %67, -32
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.clk_frac_pll*, %struct.clk_frac_pll** %7, align 8
  %71 = getelementptr inbounds %struct.clk_frac_pll, %struct.clk_frac_pll* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PLL_CFG0, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel_relaxed(i64 %69, i64 %74)
  %76 = load %struct.clk_frac_pll*, %struct.clk_frac_pll** %7, align 8
  %77 = getelementptr inbounds %struct.clk_frac_pll, %struct.clk_frac_pll* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PLL_CFG0, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i64 @readl_relaxed(i64 %80)
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* @PLL_NEWDIV_VAL, align 8
  %83 = load i64, i64* %8, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.clk_frac_pll*, %struct.clk_frac_pll** %7, align 8
  %87 = getelementptr inbounds %struct.clk_frac_pll, %struct.clk_frac_pll* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PLL_CFG0, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel_relaxed(i64 %85, i64 %90)
  %92 = load %struct.clk_frac_pll*, %struct.clk_frac_pll** %7, align 8
  %93 = call i32 @clk_wait_ack(%struct.clk_frac_pll* %92)
  store i32 %93, i32* %12, align 4
  %94 = load %struct.clk_frac_pll*, %struct.clk_frac_pll** %7, align 8
  %95 = getelementptr inbounds %struct.clk_frac_pll, %struct.clk_frac_pll* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PLL_CFG0, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i64 @readl_relaxed(i64 %98)
  store i64 %99, i64* %8, align 8
  %100 = load i64, i64* @PLL_NEWDIV_VAL, align 8
  %101 = xor i64 %100, -1
  %102 = load i64, i64* %8, align 8
  %103 = and i64 %102, %101
  store i64 %103, i64* %8, align 8
  %104 = load i64, i64* %8, align 8
  %105 = load %struct.clk_frac_pll*, %struct.clk_frac_pll** %7, align 8
  %106 = getelementptr inbounds %struct.clk_frac_pll, %struct.clk_frac_pll* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PLL_CFG0, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel_relaxed(i64 %104, i64 %109)
  %111 = load i32, i32* %12, align 4
  ret i32 %111
}

declare dso_local %struct.clk_frac_pll* @to_clk_frac_pll(%struct.clk_hw*) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @clk_wait_ack(%struct.clk_frac_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
