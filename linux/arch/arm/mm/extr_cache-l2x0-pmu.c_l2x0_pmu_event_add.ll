; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-l2x0-pmu.c_l2x0_pmu_event_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-l2x0-pmu.c_l2x0_pmu_event_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@l2x0_pmu_hrtimer = common dso_local global i32 0, align 4
@l2x0_pmu_poll_period = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL_PINNED = common dso_local global i32 0, align 4
@events = common dso_local global %struct.perf_event** null, align 8
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @l2x0_pmu_event_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2x0_pmu_event_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  store %struct.hw_perf_event* %9, %struct.hw_perf_event** %6, align 8
  %10 = call i32 (...) @l2x0_pmu_find_idx()
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %47

16:                                               ; preds = %2
  %17 = call i64 (...) @l2x0_pmu_num_active_counters()
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @l2x0_pmu_poll_period, align 4
  %21 = load i32, i32* @HRTIMER_MODE_REL_PINNED, align 4
  %22 = call i32 @hrtimer_start(i32* @l2x0_pmu_hrtimer, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %16
  %24 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %25 = load %struct.perf_event**, %struct.perf_event*** @events, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %25, i64 %27
  store %struct.perf_event* %24, %struct.perf_event** %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %31 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %33 = call i32 @l2x0_pmu_event_configure(%struct.perf_event* %32)
  %34 = load i32, i32* @PERF_HES_STOPPED, align 4
  %35 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %38 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @PERF_EF_START, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %23
  %44 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %45 = call i32 @l2x0_pmu_event_start(%struct.perf_event* %44, i32 0)
  br label %46

46:                                               ; preds = %43, %23
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @l2x0_pmu_find_idx(...) #1

declare dso_local i64 @l2x0_pmu_num_active_counters(...) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @l2x0_pmu_event_configure(%struct.perf_event*) #1

declare dso_local i32 @l2x0_pmu_event_start(%struct.perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
