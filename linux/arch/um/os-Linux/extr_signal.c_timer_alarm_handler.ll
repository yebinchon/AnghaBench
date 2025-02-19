; ModuleID = '/home/carl/AnghaBench/linux/arch/um/os-Linux/extr_signal.c_timer_alarm_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/os-Linux/extr_signal.c_timer_alarm_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siginfo = type { i32 }

@signals_enabled = common dso_local global i32 0, align 4
@SIGALRM_MASK = common dso_local global i32 0, align 4
@signals_pending = common dso_local global i32 0, align 4
@signals_active = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_alarm_handler(i32 %0, %struct.siginfo* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.siginfo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.siginfo* %1, %struct.siginfo** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @signals_enabled, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* @signals_enabled, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @SIGALRM_MASK, align 4
  %13 = load i32, i32* @signals_pending, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* @signals_pending, align 4
  br label %28

15:                                               ; preds = %3
  %16 = call i32 (...) @block_signals_trace()
  %17 = load i32, i32* @SIGALRM_MASK, align 4
  %18 = load i32, i32* @signals_active, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* @signals_active, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @timer_real_alarm_handler(i32* %20)
  %22 = load i32, i32* @SIGALRM_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* @signals_active, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* @signals_active, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @set_signals_trace(i32 %26)
  br label %28

28:                                               ; preds = %15, %11
  ret void
}

declare dso_local i32 @block_signals_trace(...) #1

declare dso_local i32 @timer_real_alarm_handler(i32*) #1

declare dso_local i32 @set_signals_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
