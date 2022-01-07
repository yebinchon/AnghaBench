; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_lbr.c_intel_pmu_lbr_sched_task.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_lbr.c_intel_pmu_lbr_sched_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_context = type { %struct.x86_perf_task_context* }
%struct.x86_perf_task_context = type { i32 }
%struct.cpu_hw_events = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_pmu_lbr_sched_task(%struct.perf_event_context* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca %struct.x86_perf_task_context*, align 8
  store %struct.perf_event_context* %0, %struct.perf_event_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %7, %struct.cpu_hw_events** %5, align 8
  %8 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %9 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %40

13:                                               ; preds = %2
  %14 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %15 = icmp ne %struct.perf_event_context* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.perf_event_context*, %struct.perf_event_context** %3, align 8
  %18 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %17, i32 0, i32 0
  %19 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %18, align 8
  br label %21

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi %struct.x86_perf_task_context* [ %19, %16 ], [ null, %20 ]
  store %struct.x86_perf_task_context* %22, %struct.x86_perf_task_context** %6, align 8
  %23 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %6, align 8
  %24 = icmp ne %struct.x86_perf_task_context* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %6, align 8
  %30 = call i32 @__intel_pmu_lbr_restore(%struct.x86_perf_task_context* %29)
  br label %34

31:                                               ; preds = %25
  %32 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %6, align 8
  %33 = call i32 @__intel_pmu_lbr_save(%struct.x86_perf_task_context* %32)
  br label %34

34:                                               ; preds = %31, %28
  br label %40

35:                                               ; preds = %21
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (...) @intel_pmu_lbr_reset()
  br label %40

40:                                               ; preds = %12, %34, %38, %35
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @__intel_pmu_lbr_restore(%struct.x86_perf_task_context*) #1

declare dso_local i32 @__intel_pmu_lbr_save(%struct.x86_perf_task_context*) #1

declare dso_local i32 @intel_pmu_lbr_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
