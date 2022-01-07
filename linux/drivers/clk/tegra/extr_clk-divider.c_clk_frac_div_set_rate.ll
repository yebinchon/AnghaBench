; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-divider.c_clk_frac_div_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-divider.c_clk_frac_div_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_frac_div = type { i32, i32, i64, i32 }

@TEGRA_DIVIDER_UART = common dso_local global i32 0, align 4
@PERIPH_CLK_UART_DIV_ENB = common dso_local global i32 0, align 4
@TEGRA_DIVIDER_FIXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_frac_div_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_frac_div_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tegra_clk_frac_div*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %13 = call %struct.tegra_clk_frac_div* @to_clk_frac_div(%struct.clk_hw* %12)
  store %struct.tegra_clk_frac_div* %13, %struct.tegra_clk_frac_div** %8, align 8
  store i64 0, i64* %10, align 8
  %14 = load %struct.tegra_clk_frac_div*, %struct.tegra_clk_frac_div** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @get_div(%struct.tegra_clk_frac_div* %14, i64 %15, i64 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %102

22:                                               ; preds = %3
  %23 = load %struct.tegra_clk_frac_div*, %struct.tegra_clk_frac_div** %8, align 8
  %24 = getelementptr inbounds %struct.tegra_clk_frac_div, %struct.tegra_clk_frac_div* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.tegra_clk_frac_div*, %struct.tegra_clk_frac_div** %8, align 8
  %29 = getelementptr inbounds %struct.tegra_clk_frac_div, %struct.tegra_clk_frac_div* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_lock_irqsave(i64 %30, i64 %31)
  br label %33

33:                                               ; preds = %27, %22
  %34 = load %struct.tegra_clk_frac_div*, %struct.tegra_clk_frac_div** %8, align 8
  %35 = getelementptr inbounds %struct.tegra_clk_frac_div, %struct.tegra_clk_frac_div* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @readl_relaxed(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.tegra_clk_frac_div*, %struct.tegra_clk_frac_div** %8, align 8
  %39 = call i32 @div_mask(%struct.tegra_clk_frac_div* %38)
  %40 = load %struct.tegra_clk_frac_div*, %struct.tegra_clk_frac_div** %8, align 8
  %41 = getelementptr inbounds %struct.tegra_clk_frac_div, %struct.tegra_clk_frac_div* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 %39, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.tegra_clk_frac_div*, %struct.tegra_clk_frac_div** %8, align 8
  %49 = getelementptr inbounds %struct.tegra_clk_frac_div, %struct.tegra_clk_frac_div* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 %47, %50
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load %struct.tegra_clk_frac_div*, %struct.tegra_clk_frac_div** %8, align 8
  %55 = getelementptr inbounds %struct.tegra_clk_frac_div, %struct.tegra_clk_frac_div* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @TEGRA_DIVIDER_UART, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %33
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* @PERIPH_CLK_UART_DIV_ENB, align 4
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %11, align 4
  br label %72

67:                                               ; preds = %60
  %68 = load i32, i32* @PERIPH_CLK_UART_DIV_ENB, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %67, %63
  br label %73

73:                                               ; preds = %72, %33
  %74 = load %struct.tegra_clk_frac_div*, %struct.tegra_clk_frac_div** %8, align 8
  %75 = getelementptr inbounds %struct.tegra_clk_frac_div, %struct.tegra_clk_frac_div* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @TEGRA_DIVIDER_FIXED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.tegra_clk_frac_div*, %struct.tegra_clk_frac_div** %8, align 8
  %82 = call i32 @pll_out_override(%struct.tegra_clk_frac_div* %81)
  %83 = load i32, i32* %11, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %80, %73
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.tegra_clk_frac_div*, %struct.tegra_clk_frac_div** %8, align 8
  %88 = getelementptr inbounds %struct.tegra_clk_frac_div, %struct.tegra_clk_frac_div* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @writel_relaxed(i32 %86, i32 %89)
  %91 = load %struct.tegra_clk_frac_div*, %struct.tegra_clk_frac_div** %8, align 8
  %92 = getelementptr inbounds %struct.tegra_clk_frac_div, %struct.tegra_clk_frac_div* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %85
  %96 = load %struct.tegra_clk_frac_div*, %struct.tegra_clk_frac_div** %8, align 8
  %97 = getelementptr inbounds %struct.tegra_clk_frac_div, %struct.tegra_clk_frac_div* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i32 @spin_unlock_irqrestore(i64 %98, i64 %99)
  br label %101

101:                                              ; preds = %95, %85
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %20
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.tegra_clk_frac_div* @to_clk_frac_div(%struct.clk_hw*) #1

declare dso_local i32 @get_div(%struct.tegra_clk_frac_div*, i64, i64) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @div_mask(%struct.tegra_clk_frac_div*) #1

declare dso_local i32 @pll_out_override(%struct.tegra_clk_frac_div*) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
