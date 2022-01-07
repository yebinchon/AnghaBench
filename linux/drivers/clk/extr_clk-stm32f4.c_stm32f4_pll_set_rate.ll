; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32f4.c_stm32f4_pll_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32f4.c_stm32f4_pll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_gate = type { i32 }
%struct.stm32f4_pll = type { i64 }

@base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @stm32f4_pll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f4_pll_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_gate*, align 8
  %8 = alloca %struct.stm32f4_pll*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.clk_gate* @to_clk_gate(%struct.clk_hw* %12)
  store %struct.clk_gate* %13, %struct.clk_gate** %7, align 8
  %14 = load %struct.clk_gate*, %struct.clk_gate** %7, align 8
  %15 = call %struct.stm32f4_pll* @to_stm32f4_pll(%struct.clk_gate* %14)
  store %struct.stm32f4_pll* %15, %struct.stm32f4_pll** %8, align 8
  %16 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %17 = call i32 @stm32f4_pll_is_enabled(%struct.clk_hw* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %22 = call i32 @stm32f4_pll_disable(%struct.clk_hw* %21)
  br label %23

23:                                               ; preds = %20, %3
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = udiv i64 %24, %25
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* @base, align 8
  %28 = load %struct.stm32f4_pll*, %struct.stm32f4_pll** %8, align 8
  %29 = getelementptr inbounds %struct.stm32f4_pll, %struct.stm32f4_pll* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = call i32 @readl(i64 %31)
  %33 = and i32 %32, -32705
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = and i64 %36, 511
  %38 = shl i64 %37, 6
  %39 = or i64 %35, %38
  %40 = load i64, i64* @base, align 8
  %41 = load %struct.stm32f4_pll*, %struct.stm32f4_pll** %8, align 8
  %42 = getelementptr inbounds %struct.stm32f4_pll, %struct.stm32f4_pll* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = call i32 @writel(i64 %39, i64 %44)
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %23
  %49 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %50 = call i32 @stm32f4_pll_enable(%struct.clk_hw* %49)
  br label %51

51:                                               ; preds = %48, %23
  ret i32 0
}

declare dso_local %struct.clk_gate* @to_clk_gate(%struct.clk_hw*) #1

declare dso_local %struct.stm32f4_pll* @to_stm32f4_pll(%struct.clk_gate*) #1

declare dso_local i32 @stm32f4_pll_is_enabled(%struct.clk_hw*) #1

declare dso_local i32 @stm32f4_pll_disable(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @stm32f4_pll_enable(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
