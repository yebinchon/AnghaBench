; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-l2x0-pmu.c_l2x0_pmu_poll.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-l2x0-pmu.c_l2x0_pmu_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.hrtimer = type { i32 }

@PMU_NR_COUNTERS = common dso_local global i32 0, align 4
@events = common dso_local global %struct.perf_event** null, align 8
@l2x0_pmu_poll_period = common dso_local global i32 0, align 4
@HRTIMER_RESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hrtimer*)* @l2x0_pmu_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2x0_pmu_poll(%struct.hrtimer* %0) #0 {
  %2 = alloca %struct.hrtimer*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event*, align 8
  store %struct.hrtimer* %0, %struct.hrtimer** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  %8 = call i32 (...) @__l2x0_pmu_disable()
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %27, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @PMU_NR_COUNTERS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load %struct.perf_event**, %struct.perf_event*** @events, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %14, i64 %16
  %18 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  store %struct.perf_event* %18, %struct.perf_event** %5, align 8
  %19 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %20 = icmp ne %struct.perf_event* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %27

22:                                               ; preds = %13
  %23 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %24 = call i32 @l2x0_pmu_event_read(%struct.perf_event* %23)
  %25 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %26 = call i32 @l2x0_pmu_event_configure(%struct.perf_event* %25)
  br label %27

27:                                               ; preds = %22, %21
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %9

30:                                               ; preds = %9
  %31 = call i32 (...) @__l2x0_pmu_enable()
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @local_irq_restore(i64 %32)
  %34 = load %struct.hrtimer*, %struct.hrtimer** %2, align 8
  %35 = load i32, i32* @l2x0_pmu_poll_period, align 4
  %36 = call i32 @hrtimer_forward_now(%struct.hrtimer* %34, i32 %35)
  %37 = load i32, i32* @HRTIMER_RESTART, align 4
  ret i32 %37
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__l2x0_pmu_disable(...) #1

declare dso_local i32 @l2x0_pmu_event_read(%struct.perf_event*) #1

declare dso_local i32 @l2x0_pmu_event_configure(%struct.perf_event*) #1

declare dso_local i32 @__l2x0_pmu_enable(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @hrtimer_forward_now(%struct.hrtimer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
