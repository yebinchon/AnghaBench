; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32h7.c_pll_fd_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32h7.c_pll_fd_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.stm32_pll_obj = type { %struct.stm32_fractional_divider }
%struct.stm32_fractional_divider = type { i32, i32, i64, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @pll_fd_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pll_fd_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stm32_pll_obj*, align 8
  %7 = alloca %struct.stm32_fractional_divider*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %15 = call %struct.stm32_pll_obj* @to_pll(%struct.clk_hw* %14)
  store %struct.stm32_pll_obj* %15, %struct.stm32_pll_obj** %6, align 8
  %16 = load %struct.stm32_pll_obj*, %struct.stm32_pll_obj** %6, align 8
  %17 = getelementptr inbounds %struct.stm32_pll_obj, %struct.stm32_pll_obj* %16, i32 0, i32 0
  store %struct.stm32_fractional_divider* %17, %struct.stm32_fractional_divider** %7, align 8
  store i64 0, i64* %13, align 8
  %18 = load %struct.stm32_fractional_divider*, %struct.stm32_fractional_divider** %7, align 8
  %19 = getelementptr inbounds %struct.stm32_fractional_divider, %struct.stm32_fractional_divider* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @readl(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.stm32_fractional_divider*, %struct.stm32_fractional_divider** %7, align 8
  %23 = getelementptr inbounds %struct.stm32_fractional_divider, %struct.stm32_fractional_divider* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, 1
  %26 = call i32 @GENMASK(i64 %25, i32 0)
  %27 = load %struct.stm32_fractional_divider*, %struct.stm32_fractional_divider** %7, align 8
  %28 = getelementptr inbounds %struct.stm32_fractional_divider, %struct.stm32_fractional_divider* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 %26, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.stm32_fractional_divider*, %struct.stm32_fractional_divider** %7, align 8
  %35 = getelementptr inbounds %struct.stm32_fractional_divider, %struct.stm32_fractional_divider* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = ashr i32 %33, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %8, align 8
  %39 = load %struct.stm32_fractional_divider*, %struct.stm32_fractional_divider** %7, align 8
  %40 = getelementptr inbounds %struct.stm32_fractional_divider, %struct.stm32_fractional_divider* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @readl(i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.stm32_fractional_divider*, %struct.stm32_fractional_divider** %7, align 8
  %44 = getelementptr inbounds %struct.stm32_fractional_divider, %struct.stm32_fractional_divider* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %45, 1
  %47 = call i32 @GENMASK(i64 %46, i32 0)
  %48 = load %struct.stm32_fractional_divider*, %struct.stm32_fractional_divider** %7, align 8
  %49 = getelementptr inbounds %struct.stm32_fractional_divider, %struct.stm32_fractional_divider* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %47, %50
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %52, %53
  %55 = load %struct.stm32_fractional_divider*, %struct.stm32_fractional_divider** %7, align 8
  %56 = getelementptr inbounds %struct.stm32_fractional_divider, %struct.stm32_fractional_divider* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %54, %57
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %2
  %64 = load i64, i64* %8, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63, %2
  %67 = load i64, i64* %5, align 8
  store i64 %67, i64* %3, align 8
  br label %93

68:                                               ; preds = %63
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* %9, align 8
  %71 = mul i64 %69, %70
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @do_div(i64 %72, i64 %73)
  %75 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %76 = call i64 @pll_frac_is_enabled(%struct.clk_hw* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %68
  %79 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %80 = call i32 @pll_read_frac(%struct.clk_hw* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i64, i64* %5, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %81, %83
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* %8, align 8
  %87 = mul i64 %86, 8191
  %88 = call i32 @do_div(i64 %85, i64 %87)
  br label %89

89:                                               ; preds = %78, %68
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* %13, align 8
  %92 = add i64 %90, %91
  store i64 %92, i64* %3, align 8
  br label %93

93:                                               ; preds = %89, %66
  %94 = load i64, i64* %3, align 8
  ret i64 %94
}

declare dso_local %struct.stm32_pll_obj* @to_pll(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i64 @pll_frac_is_enabled(%struct.clk_hw*) #1

declare dso_local i32 @pll_read_frac(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
