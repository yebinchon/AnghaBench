; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_intel_pmu_pebs_del.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_intel_pmu_pebs_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }
%struct.cpu_hw_events = type { i32, i32, i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@PERF_X86_EVENT_LARGE_PEBS = common dso_local global i32 0, align 4
@PERF_X86_EVENT_PEBS_VIA_PT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_pmu_pebs_del(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %6 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %6, %struct.cpu_hw_events** %3, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 0
  store %struct.hw_perf_event* %8, %struct.hw_perf_event** %4, align 8
  %9 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %10 = call i32 @pebs_needs_sched_cb(%struct.cpu_hw_events* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %12 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %16 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PERF_X86_EVENT_LARGE_PEBS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %23 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %28 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PERF_X86_EVENT_PEBS_VIA_PT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %35 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %26
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %41 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %42 = call i32 @pebs_update_state(i32 %39, %struct.cpu_hw_events* %40, %struct.perf_event* %41, i32 0)
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @pebs_needs_sched_cb(%struct.cpu_hw_events*) #1

declare dso_local i32 @pebs_update_state(i32, %struct.cpu_hw_events*, %struct.perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
