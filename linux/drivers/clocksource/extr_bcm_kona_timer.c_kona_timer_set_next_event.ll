; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_bcm_kona_timer.c_kona_timer_set_next_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_bcm_kona_timer.c_kona_timer_set_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.clock_event_device = type { i32 }

@timers = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@KONA_GPTIMER_STCM0_OFFSET = common dso_local global i64 0, align 8
@KONA_GPTIMER_STCS_OFFSET = common dso_local global i64 0, align 8
@KONA_GPTIMER_STCS_COMPARE_ENABLE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @kona_timer_set_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kona_timer_set_next_event(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.clock_event_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %5, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timers, i32 0, i32 0), align 8
  %11 = call i32 @kona_timer_get_counter(i64 %10, i32* %7, i32* %6)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %3, align 4
  br label %39

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %4, align 8
  %20 = add i64 %18, %19
  %21 = trunc i64 %20 to i32
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timers, i32 0, i32 0), align 8
  %23 = load i64, i64* @KONA_GPTIMER_STCM0_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %21, i64 %24)
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timers, i32 0, i32 0), align 8
  %27 = load i64, i64* @KONA_GPTIMER_STCS_OFFSET, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @KONA_GPTIMER_STCS_COMPARE_ENABLE_SHIFT, align 4
  %31 = shl i32 1, %30
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timers, i32 0, i32 0), align 8
  %36 = load i64, i64* @KONA_GPTIMER_STCS_OFFSET, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %34, i64 %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %16, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @kona_timer_get_counter(i64, i32*, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
