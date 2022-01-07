; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32h7.c_register_core_and_bus_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-stm32h7.c_register_core_and_bus_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"d1cpre\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"sys_ck\00", align 1
@CLK_IGNORE_UNUSED = common dso_local global i32 0, align 4
@base = common dso_local global i64 0, align 8
@RCC_D1CFGR = common dso_local global i64 0, align 8
@d1cpre_div_table = common dso_local global i32 0, align 4
@stm32rcc_lock = common dso_local global i32 0, align 4
@hws = common dso_local global i32* null, align 8
@SYS_D1CPRE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@HCLK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"systick\00", align 1
@CPU_SYSTICK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"pclk3\00", align 1
@ppre_div_table = common dso_local global i32 0, align 4
@PCLK3 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"pclk1\00", align 1
@RCC_D2CFGR = common dso_local global i64 0, align 8
@PCLK1 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"tim1_ker\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"pclk2\00", align 1
@PCLK2 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"tim2_ker\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"pclk4\00", align 1
@RCC_D3CFGR = common dso_local global i64 0, align 8
@PCLK4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @register_core_and_bus_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_core_and_bus_clocks() #0 {
  %1 = load i32, i32* @CLK_IGNORE_UNUSED, align 4
  %2 = load i64, i64* @base, align 8
  %3 = load i64, i64* @RCC_D1CFGR, align 8
  %4 = add nsw i64 %2, %3
  %5 = load i32, i32* @d1cpre_div_table, align 4
  %6 = call i32 @clk_hw_register_divider_table(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %1, i64 %4, i32 8, i32 4, i32 0, i32 %5, i32* @stm32rcc_lock)
  %7 = load i32*, i32** @hws, align 8
  %8 = load i64, i64* @SYS_D1CPRE, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  store i32 %6, i32* %9, align 4
  %10 = load i32, i32* @CLK_IGNORE_UNUSED, align 4
  %11 = load i64, i64* @base, align 8
  %12 = load i64, i64* @RCC_D1CFGR, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i32, i32* @d1cpre_div_table, align 4
  %15 = call i32 @clk_hw_register_divider_table(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %13, i32 0, i32 4, i32 0, i32 %14, i32* @stm32rcc_lock)
  %16 = load i32*, i32** @hws, align 8
  %17 = load i64, i64* @HCLK, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 %15, i32* %18, align 4
  %19 = call i32 @clk_hw_register_fixed_factor(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 1, i32 8)
  %20 = load i32*, i32** @hws, align 8
  %21 = load i64, i64* @CPU_SYSTICK, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %19, i32* %22, align 4
  %23 = load i64, i64* @base, align 8
  %24 = load i64, i64* @RCC_D1CFGR, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* @ppre_div_table, align 4
  %27 = call i32 @clk_hw_register_divider_table(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0, i64 %25, i32 4, i32 3, i32 0, i32 %26, i32* @stm32rcc_lock)
  %28 = load i32*, i32** @hws, align 8
  %29 = load i64, i64* @PCLK3, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %27, i32* %30, align 4
  %31 = load i64, i64* @base, align 8
  %32 = load i64, i64* @RCC_D2CFGR, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* @ppre_div_table, align 4
  %35 = call i32 @clk_hw_register_divider_table(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0, i64 %33, i32 4, i32 3, i32 0, i32 %34, i32* @stm32rcc_lock)
  %36 = load i32*, i32** @hws, align 8
  %37 = load i64, i64* @PCLK1, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %35, i32* %38, align 4
  %39 = call i32 @clk_register_stm32_timer_ker(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 4, i32* @stm32rcc_lock)
  %40 = load i64, i64* @base, align 8
  %41 = load i64, i64* @RCC_D2CFGR, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i32, i32* @ppre_div_table, align 4
  %44 = call i32 @clk_hw_register_divider_table(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0, i64 %42, i32 8, i32 3, i32 0, i32 %43, i32* @stm32rcc_lock)
  %45 = load i32*, i32** @hws, align 8
  %46 = load i64, i64* @PCLK2, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %44, i32* %47, align 4
  %48 = call i32 @clk_register_stm32_timer_ker(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 8, i32* @stm32rcc_lock)
  %49 = load i64, i64* @base, align 8
  %50 = load i64, i64* @RCC_D3CFGR, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32, i32* @ppre_div_table, align 4
  %53 = call i32 @clk_hw_register_divider_table(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0, i64 %51, i32 4, i32 3, i32 0, i32 %52, i32* @stm32rcc_lock)
  %54 = load i32*, i32** @hws, align 8
  %55 = load i64, i64* @PCLK4, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %53, i32* %56, align 4
  ret void
}

declare dso_local i32 @clk_hw_register_divider_table(i32*, i8*, i8*, i32, i64, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @clk_hw_register_fixed_factor(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @clk_register_stm32_timer_ker(i32*, i8*, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
