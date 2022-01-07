; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/zynq/extr_pll.c_zynq_pll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/zynq/extr_pll.c_zynq_pll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.zynq_pll = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"PLL: shutdown\0A\00", align 1
@PLLCTRL_RESET_MASK = common dso_local global i32 0, align 4
@PLLCTRL_PWRDWN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @zynq_pll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynq_pll_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zynq_pll*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.zynq_pll* @to_zynq_pll(%struct.clk_hw* %6)
  store %struct.zynq_pll* %7, %struct.zynq_pll** %5, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %9 = call i32 @zynq_pll_is_enabled(%struct.clk_hw* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %38

12:                                               ; preds = %1
  %13 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.zynq_pll*, %struct.zynq_pll** %5, align 8
  %15 = getelementptr inbounds %struct.zynq_pll, %struct.zynq_pll* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @spin_lock_irqsave(i32 %16, i64 %17)
  %19 = load %struct.zynq_pll*, %struct.zynq_pll** %5, align 8
  %20 = getelementptr inbounds %struct.zynq_pll, %struct.zynq_pll* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @readl(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @PLLCTRL_RESET_MASK, align 4
  %24 = load i32, i32* @PLLCTRL_PWRDWN_MASK, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.zynq_pll*, %struct.zynq_pll** %5, align 8
  %30 = getelementptr inbounds %struct.zynq_pll, %struct.zynq_pll* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @writel(i32 %28, i32 %31)
  %33 = load %struct.zynq_pll*, %struct.zynq_pll** %5, align 8
  %34 = getelementptr inbounds %struct.zynq_pll, %struct.zynq_pll* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32 %35, i64 %36)
  br label %38

38:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.zynq_pll* @to_zynq_pll(%struct.clk_hw*) #1

declare dso_local i32 @zynq_pll_is_enabled(%struct.clk_hw*) #1

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
