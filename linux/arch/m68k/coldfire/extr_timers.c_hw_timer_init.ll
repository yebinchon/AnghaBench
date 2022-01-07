; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_timers.c_hw_timer_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_timers.c_hw_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCFTIMER_TMR_DISABLE = common dso_local global i32 0, align 4
@MCFTIMER_TMR = common dso_local global i32 0, align 4
@FREQ = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@mcftmr_cycles_per_jiffy = common dso_local global i32 0, align 4
@MCFTIMER_TRR = common dso_local global i32 0, align 4
@MCFTIMER_TMR_ENORI = common dso_local global i32 0, align 4
@MCFTIMER_TMR_CLK16 = common dso_local global i32 0, align 4
@MCFTIMER_TMR_RESTART = common dso_local global i32 0, align 4
@MCFTIMER_TMR_ENABLE = common dso_local global i32 0, align 4
@mcftmr_clk = common dso_local global i32 0, align 4
@timer_interrupt = common dso_local global i32 0, align 4
@MCF_IRQ_TIMER = common dso_local global i32 0, align 4
@mcftmr_timer_irq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hw_timer_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @MCFTIMER_TMR_DISABLE, align 4
  %4 = load i32, i32* @MCFTIMER_TMR, align 4
  %5 = call i32 @TA(i32 %4)
  %6 = call i32 @__raw_writew(i32 %3, i32 %5)
  %7 = load i32, i32* @FREQ, align 4
  %8 = load i32, i32* @HZ, align 4
  %9 = sdiv i32 %7, %8
  store i32 %9, i32* @mcftmr_cycles_per_jiffy, align 4
  %10 = load i32, i32* @mcftmr_cycles_per_jiffy, align 4
  %11 = sub nsw i32 %10, 1
  %12 = load i32, i32* @MCFTIMER_TRR, align 4
  %13 = call i32 @TA(i32 %12)
  %14 = call i32 @__raw_writetrr(i32 %11, i32 %13)
  %15 = load i32, i32* @MCFTIMER_TMR_ENORI, align 4
  %16 = load i32, i32* @MCFTIMER_TMR_CLK16, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @MCFTIMER_TMR_RESTART, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @MCFTIMER_TMR_ENABLE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MCFTIMER_TMR, align 4
  %23 = call i32 @TA(i32 %22)
  %24 = call i32 @__raw_writew(i32 %21, i32 %23)
  %25 = load i32, i32* @FREQ, align 4
  %26 = call i32 @clocksource_register_hz(i32* @mcftmr_clk, i32 %25)
  %27 = load i32, i32* %2, align 4
  store i32 %27, i32* @timer_interrupt, align 4
  %28 = call i32 (...) @init_timer_irq()
  %29 = load i32, i32* @MCF_IRQ_TIMER, align 4
  %30 = call i32 @setup_irq(i32 %29, i32* @mcftmr_timer_irq)
  ret void
}

declare dso_local i32 @__raw_writew(i32, i32) #1

declare dso_local i32 @TA(i32) #1

declare dso_local i32 @__raw_writetrr(i32, i32) #1

declare dso_local i32 @clocksource_register_hz(i32*, i32) #1

declare dso_local i32 @init_timer_irq(...) #1

declare dso_local i32 @setup_irq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
