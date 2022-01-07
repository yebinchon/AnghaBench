; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32mp1.c_timer_ker_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32mp1.c_timer_ker_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.timer_cker = type { i32, i32 }

@APB_DIV_MASK = common dso_local global i32 0, align 4
@TIM_PRE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @timer_ker_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @timer_ker_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.timer_cker*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.timer_cker* @to_timer_cker(%struct.clk_hw* %10)
  store %struct.timer_cker* %11, %struct.timer_cker** %6, align 8
  %12 = load %struct.timer_cker*, %struct.timer_cker** %6, align 8
  %13 = getelementptr inbounds %struct.timer_cker, %struct.timer_cker* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @readl_relaxed(i32 %14)
  %16 = load i32, i32* @APB_DIV_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.timer_cker*, %struct.timer_cker** %6, align 8
  %19 = getelementptr inbounds %struct.timer_cker, %struct.timer_cker* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @readl_relaxed(i32 %20)
  %22 = load i32, i32* @TIM_PRE_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i64, i64* %5, align 8
  store i64 %27, i64* %3, align 8
  br label %36

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  %31 = mul nsw i32 %30, 2
  store i32 %31, i32* %9, align 4
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %32, %34
  store i64 %35, i64* %3, align 8
  br label %36

36:                                               ; preds = %28, %26
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

declare dso_local %struct.timer_cker* @to_timer_cker(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
