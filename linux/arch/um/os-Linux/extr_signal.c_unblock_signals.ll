; ModuleID = '/home/carl/AnghaBench/linux/arch/um/os-Linux/extr_signal.c_unblock_signals.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/os-Linux/extr_signal.c_unblock_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@signals_enabled = common dso_local global i32 0, align 4
@signals_pending = common dso_local global i32 0, align 4
@SIGIO_MASK = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@SIGALRM_MASK = common dso_local global i32 0, align 4
@signals_active = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unblock_signals() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @signals_enabled, align 4
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %46

5:                                                ; preds = %0
  store i32 1, i32* @signals_enabled, align 4
  br label %6

6:                                                ; preds = %5, %44
  %7 = call i32 (...) @barrier()
  %8 = load i32, i32* @signals_pending, align 4
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %46

12:                                               ; preds = %6
  store i32 0, i32* @signals_pending, align 4
  store i32 0, i32* @signals_enabled, align 4
  %13 = call i32 (...) @um_trace_signals_off()
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @SIGIO_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @SIGIO, align 4
  %20 = call i32 @sig_handler_common(i32 %19, i32* null, i32* null)
  br label %21

21:                                               ; preds = %18, %12
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @SIGALRM_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i32, i32* @signals_active, align 4
  %28 = load i32, i32* @SIGALRM_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = call i32 @timer_real_alarm_handler(i32* null)
  br label %33

33:                                               ; preds = %31, %26, %21
  %34 = load i32, i32* @signals_pending, align 4
  %35 = load i32, i32* @SIGIO_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @signals_active, align 4
  %40 = load i32, i32* @SIGALRM_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %46

44:                                               ; preds = %38, %33
  %45 = call i32 (...) @um_trace_signals_on()
  store i32 1, i32* @signals_enabled, align 4
  br label %6

46:                                               ; preds = %43, %11, %4
  ret void
}

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @um_trace_signals_off(...) #1

declare dso_local i32 @sig_handler_common(i32, i32*, i32*) #1

declare dso_local i32 @timer_real_alarm_handler(i32*) #1

declare dso_local i32 @um_trace_signals_on(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
