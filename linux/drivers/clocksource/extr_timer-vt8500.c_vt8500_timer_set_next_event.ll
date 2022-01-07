; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-vt8500.c_vt8500_timer_set_next_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-vt8500.c_vt8500_timer_set_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 (%struct.TYPE_4__*)* }
%struct.clock_event_device = type { i32 }

@clocksource = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@regbase = common dso_local global i64 0, align 8
@TIMER_AS_VAL = common dso_local global i64 0, align 8
@TIMER_MATCH_W_ACTIVE = common dso_local global i32 0, align 4
@TIMER_MATCH_VAL = common dso_local global i64 0, align 8
@MIN_OSCR_DELTA = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@TIMER_IER_VAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @vt8500_timer_set_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8500_timer_set_next_event(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.clock_event_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %5, align 8
  %8 = call i32 @msecs_to_loops(i32 10)
  store i32 %8, i32* %6, align 4
  %9 = load i64 (%struct.TYPE_4__*)*, i64 (%struct.TYPE_4__*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clocksource, i32 0, i32 0), align 8
  %10 = call i64 %9(%struct.TYPE_4__* @clocksource)
  %11 = load i64, i64* %4, align 8
  %12 = add i64 %10, %11
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %27, %2
  %14 = load i64, i64* @regbase, align 8
  %15 = load i64, i64* @TIMER_AS_VAL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  %18 = load i32, i32* @TIMER_MATCH_W_ACTIVE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %13
  %26 = phi i1 [ false, %13 ], [ %24, %21 ]
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = call i32 (...) @cpu_relax()
  br label %13

29:                                               ; preds = %25
  %30 = load i64, i64* %7, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i64, i64* @regbase, align 8
  %33 = load i64, i64* @TIMER_MATCH_VAL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %31, i64 %34)
  %36 = load i64, i64* %7, align 8
  %37 = load i64 (%struct.TYPE_4__*)*, i64 (%struct.TYPE_4__*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clocksource, i32 0, i32 0), align 8
  %38 = call i64 %37(%struct.TYPE_4__* @clocksource)
  %39 = sub nsw i64 %36, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @MIN_OSCR_DELTA, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load i32, i32* @ETIME, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %29
  %47 = load i64, i64* @regbase, align 8
  %48 = load i64, i64* @TIMER_IER_VAL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 1, i64 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @msecs_to_loops(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
