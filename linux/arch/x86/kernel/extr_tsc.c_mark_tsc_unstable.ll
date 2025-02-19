; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tsc.c_mark_tsc_unstable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tsc.c_mark_tsc_unstable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tsc_unstable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Marking TSC unstable due to %s\0A\00", align 1
@clocksource_tsc_early = common dso_local global i32 0, align 4
@clocksource_tsc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_tsc_unstable(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @tsc_unstable, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  store i32 1, i32* @tsc_unstable, align 4
  %7 = call i64 (...) @using_native_sched_clock()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 (...) @clear_sched_clock_stable()
  br label %11

11:                                               ; preds = %9, %6
  %12 = call i32 (...) @disable_sched_clock_irqtime()
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = call i32 @clocksource_mark_unstable(i32* @clocksource_tsc_early)
  %16 = call i32 @clocksource_mark_unstable(i32* @clocksource_tsc)
  br label %17

17:                                               ; preds = %11, %5
  ret void
}

declare dso_local i64 @using_native_sched_clock(...) #1

declare dso_local i32 @clear_sched_clock_stable(...) #1

declare dso_local i32 @disable_sched_clock_irqtime(...) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32 @clocksource_mark_unstable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
