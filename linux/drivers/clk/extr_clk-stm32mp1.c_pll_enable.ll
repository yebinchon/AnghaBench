; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32mp1.c_pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32mp1.c_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.stm32_pll_obj = type { i32, i32 }

@TIMEOUT = common dso_local global i32 0, align 4
@PLL_ON = common dso_local global i32 0, align 4
@PLL_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @pll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.stm32_pll_obj*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %9 = call %struct.stm32_pll_obj* @to_pll(%struct.clk_hw* %8)
  store %struct.stm32_pll_obj* %9, %struct.stm32_pll_obj** %3, align 8
  store i64 0, i64* %5, align 8
  %10 = load i32, i32* @TIMEOUT, align 4
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.stm32_pll_obj*, %struct.stm32_pll_obj** %3, align 8
  %12 = getelementptr inbounds %struct.stm32_pll_obj, %struct.stm32_pll_obj* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32 %13, i64 %14)
  %16 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %17 = call i64 @__pll_is_enabled(%struct.clk_hw* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %58

20:                                               ; preds = %1
  %21 = load %struct.stm32_pll_obj*, %struct.stm32_pll_obj** %3, align 8
  %22 = getelementptr inbounds %struct.stm32_pll_obj, %struct.stm32_pll_obj* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @readl_relaxed(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @PLL_ON, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.stm32_pll_obj*, %struct.stm32_pll_obj** %3, align 8
  %30 = getelementptr inbounds %struct.stm32_pll_obj, %struct.stm32_pll_obj* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @writel_relaxed(i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %55, %20
  %34 = load %struct.stm32_pll_obj*, %struct.stm32_pll_obj** %3, align 8
  %35 = getelementptr inbounds %struct.stm32_pll_obj, %struct.stm32_pll_obj* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @readl_relaxed(i32 %36)
  %38 = load i32, i32* @PLL_RDY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = call i32 @udelay(i32 120)
  br label %47

47:                                               ; preds = %45, %33
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, -1
  store i32 %53, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i1 [ false, %48 ], [ %54, %51 ]
  br i1 %56, label %33, label %57

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %57, %19
  %59 = load %struct.stm32_pll_obj*, %struct.stm32_pll_obj** %3, align 8
  %60 = getelementptr inbounds %struct.stm32_pll_obj, %struct.stm32_pll_obj* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32 %61, i64 %62)
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local %struct.stm32_pll_obj* @to_pll(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @__pll_is_enabled(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
