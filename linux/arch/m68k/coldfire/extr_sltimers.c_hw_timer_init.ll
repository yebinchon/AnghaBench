; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_sltimers.c_hw_timer_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_sltimers.c_hw_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCF_BUSCLK = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@mcfslt_cycles_per_jiffy = common dso_local global i32 0, align 4
@MCFSLT_STCNT = common dso_local global i32 0, align 4
@MCFSLT_SCR_RUN = common dso_local global i32 0, align 4
@MCFSLT_SCR_IEN = common dso_local global i32 0, align 4
@MCFSLT_SCR_TEN = common dso_local global i32 0, align 4
@MCFSLT_SCR = common dso_local global i32 0, align 4
@mcfslt_cnt = common dso_local global i32 0, align 4
@timer_interrupt = common dso_local global i32 0, align 4
@MCF_IRQ_TIMER = common dso_local global i32 0, align 4
@mcfslt_timer_irq = common dso_local global i32 0, align 4
@mcfslt_clk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hw_timer_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @MCF_BUSCLK, align 4
  %4 = load i32, i32* @HZ, align 4
  %5 = sdiv i32 %3, %4
  store i32 %5, i32* @mcfslt_cycles_per_jiffy, align 4
  %6 = load i32, i32* @mcfslt_cycles_per_jiffy, align 4
  %7 = sub nsw i32 %6, 1
  %8 = load i32, i32* @MCFSLT_STCNT, align 4
  %9 = call i32 @TA(i32 %8)
  %10 = call i32 @__raw_writel(i32 %7, i32 %9)
  %11 = load i32, i32* @MCFSLT_SCR_RUN, align 4
  %12 = load i32, i32* @MCFSLT_SCR_IEN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MCFSLT_SCR_TEN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @MCFSLT_SCR, align 4
  %17 = call i32 @TA(i32 %16)
  %18 = call i32 @__raw_writel(i32 %15, i32 %17)
  %19 = load i32, i32* @mcfslt_cycles_per_jiffy, align 4
  store i32 %19, i32* @mcfslt_cnt, align 4
  %20 = load i32, i32* %2, align 4
  store i32 %20, i32* @timer_interrupt, align 4
  %21 = load i32, i32* @MCF_IRQ_TIMER, align 4
  %22 = call i32 @setup_irq(i32 %21, i32* @mcfslt_timer_irq)
  %23 = load i32, i32* @MCF_BUSCLK, align 4
  %24 = call i32 @clocksource_register_hz(i32* @mcfslt_clk, i32 %23)
  ret void
}

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @TA(i32) #1

declare dso_local i32 @setup_irq(i32, i32*) #1

declare dso_local i32 @clocksource_register_hz(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
