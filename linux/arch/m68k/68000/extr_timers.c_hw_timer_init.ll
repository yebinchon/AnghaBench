; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/68000/extr_timers.c_hw_timer_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/68000/extr_timers.c_hw_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TCTL = common dso_local global i32 0, align 4
@TMR_IRQ_NUM = common dso_local global i32 0, align 4
@m68328_timer_irq = common dso_local global i32 0, align 4
@TCTL_OM = common dso_local global i32 0, align 4
@TCTL_IRQEN = common dso_local global i32 0, align 4
@CLOCK_SOURCE = common dso_local global i32 0, align 4
@CLOCK_PRE = common dso_local global i32 0, align 4
@TPRER = common dso_local global i32 0, align 4
@TICKS_PER_JIFFY = common dso_local global i32 0, align 4
@TCMP = common dso_local global i32 0, align 4
@TCTL_TEN = common dso_local global i32 0, align 4
@m68328_clk = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@timer_interrupt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hw_timer_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* @TCTL, align 4
  %3 = load i32, i32* @TMR_IRQ_NUM, align 4
  %4 = call i32 @setup_irq(i32 %3, i32* @m68328_timer_irq)
  %5 = load i32, i32* @TCTL_OM, align 4
  %6 = load i32, i32* @TCTL_IRQEN, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @CLOCK_SOURCE, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* @TCTL, align 4
  %10 = load i32, i32* @CLOCK_PRE, align 4
  store i32 %10, i32* @TPRER, align 4
  %11 = load i32, i32* @TICKS_PER_JIFFY, align 4
  store i32 %11, i32* @TCMP, align 4
  %12 = load i32, i32* @TCTL_TEN, align 4
  %13 = load i32, i32* @TCTL, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* @TCTL, align 4
  %15 = load i32, i32* @TICKS_PER_JIFFY, align 4
  %16 = load i32, i32* @HZ, align 4
  %17 = mul nsw i32 %15, %16
  %18 = call i32 @clocksource_register_hz(i32* @m68328_clk, i32 %17)
  %19 = load i32, i32* %2, align 4
  store i32 %19, i32* @timer_interrupt, align 4
  ret void
}

declare dso_local i32 @setup_irq(i32, i32*) #1

declare dso_local i32 @clocksource_register_hz(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
