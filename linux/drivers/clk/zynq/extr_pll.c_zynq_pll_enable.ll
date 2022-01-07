; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/zynq/extr_pll.c_zynq_pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/zynq/extr_pll.c_zynq_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.zynq_pll = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"PLL: enable\0A\00", align 1
@PLLCTRL_RESET_MASK = common dso_local global i32 0, align 4
@PLLCTRL_PWRDWN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @zynq_pll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynq_pll_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zynq_pll*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.zynq_pll* @to_zynq_pll(%struct.clk_hw* %7)
  store %struct.zynq_pll* %8, %struct.zynq_pll** %6, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call i64 @zynq_pll_is_enabled(%struct.clk_hw* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

13:                                               ; preds = %1
  %14 = call i32 @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.zynq_pll*, %struct.zynq_pll** %6, align 8
  %16 = getelementptr inbounds %struct.zynq_pll, %struct.zynq_pll* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32 %17, i64 %18)
  %20 = load %struct.zynq_pll*, %struct.zynq_pll** %6, align 8
  %21 = getelementptr inbounds %struct.zynq_pll, %struct.zynq_pll* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @readl(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @PLLCTRL_RESET_MASK, align 4
  %25 = load i32, i32* @PLLCTRL_PWRDWN_MASK, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.zynq_pll*, %struct.zynq_pll** %6, align 8
  %32 = getelementptr inbounds %struct.zynq_pll, %struct.zynq_pll* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @writel(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %47, %13
  %36 = load %struct.zynq_pll*, %struct.zynq_pll** %6, align 8
  %37 = getelementptr inbounds %struct.zynq_pll, %struct.zynq_pll* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @readl(i32 %38)
  %40 = load %struct.zynq_pll*, %struct.zynq_pll** %6, align 8
  %41 = getelementptr inbounds %struct.zynq_pll, %struct.zynq_pll* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 1, %42
  %44 = and i32 %39, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %35

48:                                               ; preds = %35
  %49 = load %struct.zynq_pll*, %struct.zynq_pll** %6, align 8
  %50 = getelementptr inbounds %struct.zynq_pll, %struct.zynq_pll* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32 %51, i64 %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %48, %12
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.zynq_pll* @to_zynq_pll(%struct.clk_hw*) #1

declare dso_local i64 @zynq_pll_is_enabled(%struct.clk_hw*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
