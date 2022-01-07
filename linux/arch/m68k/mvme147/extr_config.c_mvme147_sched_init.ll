; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/mvme147/extr_config.c_mvme147_sched_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/mvme147/extr_config.c_mvme147_sched_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@PCC_IRQ_TIMER1 = common dso_local global i32 0, align 4
@mvme147_timer_int = common dso_local global i32 0, align 4
@IRQF_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"timer 1\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Couldn't register timer interrupt\0A\00", align 1
@PCC_TIMER_PRELOAD = common dso_local global i32 0, align 4
@m147_pcc = common dso_local global %struct.TYPE_2__* null, align 8
@PCC_TIMER_INT_CLR = common dso_local global i32 0, align 4
@PCC_INT_ENAB = common dso_local global i32 0, align 4
@PCC_LEVEL_TIMER1 = common dso_local global i32 0, align 4
@mvme147_clk = common dso_local global i32 0, align 4
@PCC_TIMER_CLOCK_FREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mvme147_sched_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @PCC_IRQ_TIMER1, align 4
  %4 = load i32, i32* @mvme147_timer_int, align 4
  %5 = load i32, i32* @IRQF_TIMER, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @request_irq(i32 %3, i32 %4, i32 %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i32, i32* @PCC_TIMER_PRELOAD, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @m147_pcc, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @m147_pcc, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @m147_pcc, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 3, i32* %18, align 4
  %19 = load i32, i32* @PCC_TIMER_INT_CLR, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @m147_pcc, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @PCC_INT_ENAB, align 4
  %23 = load i32, i32* @PCC_LEVEL_TIMER1, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @m147_pcc, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @PCC_TIMER_CLOCK_FREQ, align 4
  %28 = call i32 @clocksource_register_hz(i32* @mvme147_clk, i32 %27)
  ret void
}

declare dso_local i64 @request_irq(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @clocksource_register_hz(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
