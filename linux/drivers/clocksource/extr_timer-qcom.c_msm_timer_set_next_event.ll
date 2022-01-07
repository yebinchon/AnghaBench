; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-qcom.c_msm_timer_set_next_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-qcom.c_msm_timer_set_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@event_base = common dso_local global i64 0, align 8
@TIMER_ENABLE = common dso_local global i64 0, align 8
@TIMER_ENABLE_EN = common dso_local global i64 0, align 8
@TIMER_CLEAR = common dso_local global i64 0, align 8
@TIMER_MATCH_VAL = common dso_local global i64 0, align 8
@sts_base = common dso_local global i64 0, align 8
@TIMER_STS_GPT0_CLR_PEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @msm_timer_set_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_timer_set_next_event(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %6 = load i64, i64* @event_base, align 8
  %7 = load i64, i64* @TIMER_ENABLE, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl_relaxed(i64 %8)
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* @TIMER_ENABLE_EN, align 8
  %12 = xor i64 %11, -1
  %13 = load i64, i64* %5, align 8
  %14 = and i64 %13, %12
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @event_base, align 8
  %17 = load i64, i64* @TIMER_ENABLE, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel_relaxed(i64 %15, i64 %18)
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @event_base, align 8
  %22 = load i64, i64* @TIMER_CLEAR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel_relaxed(i64 %20, i64 %23)
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @event_base, align 8
  %27 = load i64, i64* @TIMER_MATCH_VAL, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel_relaxed(i64 %25, i64 %28)
  %30 = load i64, i64* @sts_base, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %39, %32
  %34 = load i64, i64* @sts_base, align 8
  %35 = call i32 @readl_relaxed(i64 %34)
  %36 = load i32, i32* @TIMER_STS_GPT0_CLR_PEND, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 (...) @cpu_relax()
  br label %33

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @TIMER_ENABLE_EN, align 8
  %45 = or i64 %43, %44
  %46 = load i64, i64* @event_base, align 8
  %47 = load i64, i64* @TIMER_ENABLE, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel_relaxed(i64 %45, i64 %48)
  ret i32 0
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
