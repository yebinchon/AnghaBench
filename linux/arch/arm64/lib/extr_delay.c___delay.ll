; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/lib/extr_delay.c___delay.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/lib/extr_delay.c___delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARCH_TIMER_EVT_STREAM_PERIOD_US = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__delay(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = call i64 (...) @get_cycles()
  store i64 %5, i64* %3, align 8
  %6 = call i64 (...) @arch_timer_evtstrm_available()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load i32, i32* @ARCH_TIMER_EVT_STREAM_PERIOD_US, align 4
  %10 = call i64 @USECS_TO_CYCLES(i32 %9)
  store i64 %10, i64* %4, align 8
  br label %11

11:                                               ; preds = %19, %8
  %12 = call i64 (...) @get_cycles()
  %13 = load i64, i64* %3, align 8
  %14 = sub i64 %12, %13
  %15 = load i64, i64* %4, align 8
  %16 = add i64 %14, %15
  %17 = load i64, i64* %2, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = call i32 (...) @wfe()
  br label %11

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21, %1
  br label %23

23:                                               ; preds = %29, %22
  %24 = call i64 (...) @get_cycles()
  %25 = load i64, i64* %3, align 8
  %26 = sub i64 %24, %25
  %27 = load i64, i64* %2, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 (...) @cpu_relax()
  br label %23

31:                                               ; preds = %23
  ret void
}

declare dso_local i64 @get_cycles(...) #1

declare dso_local i64 @arch_timer_evtstrm_available(...) #1

declare dso_local i64 @USECS_TO_CYCLES(i32) #1

declare dso_local i32 @wfe(...) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
