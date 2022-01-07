; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32f4.c_clk_apb_mul_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32f4.c_clk_apb_mul_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_apb_mul = type { i32 }

@base = common dso_local global i64 0, align 8
@STM32F4_RCC_CFGR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_apb_mul_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_apb_mul_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_apb_mul*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %8 = call %struct.clk_apb_mul* @to_clk_apb_mul(%struct.clk_hw* %7)
  store %struct.clk_apb_mul* %8, %struct.clk_apb_mul** %6, align 8
  %9 = load i64, i64* @base, align 8
  %10 = load i64, i64* @STM32F4_RCC_CFGR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  %13 = load %struct.clk_apb_mul*, %struct.clk_apb_mul** %6, align 8
  %14 = getelementptr inbounds %struct.clk_apb_mul, %struct.clk_apb_mul* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = and i32 %12, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = mul i64 %20, 2
  store i64 %21, i64* %3, align 8
  br label %24

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* %3, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

declare dso_local %struct.clk_apb_mul* @to_clk_apb_mul(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
