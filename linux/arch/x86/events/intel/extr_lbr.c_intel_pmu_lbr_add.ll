; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_lbr.c_intel_pmu_lbr_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_lbr.c_intel_pmu_lbr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.perf_event = type { i32, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, %struct.x86_perf_task_context* }
%struct.x86_perf_task_context = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.cpu_hw_events = type { i32, i32, i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_pmu_lbr_add(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca %struct.x86_perf_task_context*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %5 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %5, %struct.cpu_hw_events** %3, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @x86_pmu, i32 0, i32 1), align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %72

9:                                                ; preds = %1
  %10 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %16 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %18 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @branch_user_callstack(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %9
  %23 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %24 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %26, align 8
  %28 = icmp ne %struct.x86_perf_task_context* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %31 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %33, align 8
  store %struct.x86_perf_task_context* %34, %struct.x86_perf_task_context** %4, align 8
  %35 = load %struct.x86_perf_task_context*, %struct.x86_perf_task_context** %4, align 8
  %36 = getelementptr inbounds %struct.x86_perf_task_context, %struct.x86_perf_task_context* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %29, %22, %9
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @x86_pmu, i32 0, i32 0, i32 0), align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %50 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %48, %42, %39
  %54 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %55 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %54, i32 0, i32 1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @perf_sched_cb_inc(i32 %58)
  %60 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %61 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = icmp ne i32 %62, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %53
  %66 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %67 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = call i32 (...) @intel_pmu_lbr_reset()
  br label %72

72:                                               ; preds = %8, %70, %65, %53
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i64 @branch_user_callstack(i32) #1

declare dso_local i32 @perf_sched_cb_inc(i32) #1

declare dso_local i32 @intel_pmu_lbr_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
