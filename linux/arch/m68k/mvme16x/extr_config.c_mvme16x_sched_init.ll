; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/mvme16x/extr_config.c_mvme16x_sched_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/mvme16x/extr_config.c_mvme16x_sched_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@mvme_bdid = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PCCTCNT1 = common dso_local global i32 0, align 4
@PCCTCMP1 = common dso_local global i32 0, align 4
@PCC_TIMER_CYCLES = common dso_local global i32 0, align 4
@PCCTOVR1 = common dso_local global i32 0, align 4
@PCCTOVR1_TIC_EN = common dso_local global i32 0, align 4
@PCCTOVR1_COC_EN = common dso_local global i32 0, align 4
@PCCTIC1 = common dso_local global i32 0, align 4
@PCCTIC1_INT_EN = common dso_local global i32 0, align 4
@MVME16x_IRQ_TIMER = common dso_local global i32 0, align 4
@mvme16x_timer_int = common dso_local global i32 0, align 4
@IRQF_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Couldn't register timer int\00", align 1
@mvme16x_clk = common dso_local global i32 0, align 4
@PCC_TIMER_CLOCK_FREQ = common dso_local global i32 0, align 4
@MVME162_IRQ_ABORT = common dso_local global i32 0, align 4
@MVME167_IRQ_ABORT = common dso_local global i32 0, align 4
@mvme16x_abort_int = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Couldn't register abort int\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mvme16x_sched_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mvme_bdid, i32 0, i32 0), align 4
  %6 = call i32 @be16_to_cpu(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @PCCTCNT1, align 4
  %8 = call i32 @out_be32(i32 %7, i32 0)
  %9 = load i32, i32* @PCCTCMP1, align 4
  %10 = load i32, i32* @PCC_TIMER_CYCLES, align 4
  %11 = call i32 @out_be32(i32 %9, i32 %10)
  %12 = load i32, i32* @PCCTOVR1, align 4
  %13 = load i32, i32* @PCCTOVR1, align 4
  %14 = call i32 @in_8(i32 %13)
  %15 = load i32, i32* @PCCTOVR1_TIC_EN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PCCTOVR1_COC_EN, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @out_8(i32 %12, i32 %18)
  %20 = load i32, i32* @PCCTIC1, align 4
  %21 = load i32, i32* @PCCTIC1_INT_EN, align 4
  %22 = or i32 %21, 6
  %23 = call i32 @out_8(i32 %20, i32 %22)
  %24 = load i32, i32* @MVME16x_IRQ_TIMER, align 4
  %25 = load i32, i32* @mvme16x_timer_int, align 4
  %26 = load i32, i32* @IRQF_TIMER, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i64 @request_irq(i32 %24, i32 %25, i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %1
  %33 = load i32, i32* @PCC_TIMER_CLOCK_FREQ, align 4
  %34 = call i32 @clocksource_register_hz(i32* @mvme16x_clk, i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %35, 354
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 370
  br i1 %39, label %40, label %42

40:                                               ; preds = %37, %32
  %41 = load i32, i32* @MVME162_IRQ_ABORT, align 4
  store i32 %41, i32* %4, align 4
  br label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @MVME167_IRQ_ABORT, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @mvme16x_abort_int, align 4
  %47 = load i32, i32* @mvme16x_abort_int, align 4
  %48 = call i64 @request_irq(i32 %45, i32 %46, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %44
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @out_be32(i32, i32) #1

declare dso_local i32 @out_8(i32, i32) #1

declare dso_local i32 @in_8(i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @clocksource_register_hz(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
