; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-cs5535.c_mfgpt_tick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-cs5535.c_mfgpt_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*)* }

@cs5535_event_clock = common dso_local global i32 0, align 4
@MFGPT_REG_SETUP = common dso_local global i32 0, align 4
@MFGPT_SETUP_SETUP = common dso_local global i32 0, align 4
@MFGPT_SETUP_CMP2 = common dso_local global i32 0, align 4
@MFGPT_SETUP_CMP1 = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@cs5535_clockevent = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@MFGPT_REG_COUNTER = common dso_local global i32 0, align 4
@MFGPT_SETUP_CNTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mfgpt_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfgpt_tick(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @cs5535_event_clock, align 4
  %8 = load i32, i32* @MFGPT_REG_SETUP, align 4
  %9 = call i32 @cs5535_mfgpt_read(i32 %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MFGPT_SETUP_SETUP, align 4
  %12 = load i32, i32* @MFGPT_SETUP_CMP2, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MFGPT_SETUP_CMP1, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %10, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %47

20:                                               ; preds = %2
  %21 = load i32, i32* @cs5535_event_clock, align 4
  %22 = call i32 @disable_timer(i32 %21)
  %23 = call i64 @clockevent_state_detached(%struct.TYPE_6__* @cs5535_clockevent)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = call i64 @clockevent_state_shutdown(%struct.TYPE_6__* @cs5535_clockevent)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %20
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %29, i32* %3, align 4
  br label %47

30:                                               ; preds = %25
  %31 = load i32, i32* @cs5535_event_clock, align 4
  %32 = load i32, i32* @MFGPT_REG_COUNTER, align 4
  %33 = call i32 @cs5535_mfgpt_write(i32 %31, i32 %32, i32 0)
  %34 = call i64 @clockevent_state_periodic(%struct.TYPE_6__* @cs5535_clockevent)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i32, i32* @cs5535_event_clock, align 4
  %38 = load i32, i32* @MFGPT_REG_SETUP, align 4
  %39 = load i32, i32* @MFGPT_SETUP_CNTEN, align 4
  %40 = load i32, i32* @MFGPT_SETUP_CMP2, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @cs5535_mfgpt_write(i32 %37, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %36, %30
  %44 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cs5535_clockevent, i32 0, i32 0), align 8
  %45 = call i32 %44(%struct.TYPE_6__* @cs5535_clockevent)
  %46 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %28, %18
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @cs5535_mfgpt_read(i32, i32) #1

declare dso_local i32 @disable_timer(i32) #1

declare dso_local i64 @clockevent_state_detached(%struct.TYPE_6__*) #1

declare dso_local i64 @clockevent_state_shutdown(%struct.TYPE_6__*) #1

declare dso_local i32 @cs5535_mfgpt_write(i32, i32, i32) #1

declare dso_local i64 @clockevent_state_periodic(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
