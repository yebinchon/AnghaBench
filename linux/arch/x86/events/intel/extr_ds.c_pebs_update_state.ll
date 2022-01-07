; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_pebs_update_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_pebs_update_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.cpu_hw_events = type { i32, i32, i32 }
%struct.perf_event = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.pmu* }
%struct.pmu = type { i32 }

@x86_pmu = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.cpu_hw_events*, %struct.perf_event*, i32)* @pebs_update_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pebs_update_state(i32 %0, %struct.cpu_hw_events* %1, %struct.perf_event* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpu_hw_events*, align 8
  %7 = alloca %struct.perf_event*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pmu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cpu_hw_events* %1, %struct.cpu_hw_events** %6, align 8
  store %struct.perf_event* %2, %struct.perf_event** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.pmu*, %struct.pmu** %15, align 8
  store %struct.pmu* %16, %struct.pmu** %9, align 8
  %17 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %18 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %24 = call i32 @pebs_needs_sched_cb(%struct.cpu_hw_events* %23)
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.pmu*, %struct.pmu** %9, align 8
  %31 = call i32 @perf_sched_cb_inc(%struct.pmu* %30)
  br label %35

32:                                               ; preds = %26
  %33 = load %struct.pmu*, %struct.pmu** %9, align 8
  %34 = call i32 @perf_sched_cb_dec(%struct.pmu* %33)
  br label %35

35:                                               ; preds = %32, %29
  store i32 1, i32* %10, align 4
  br label %36

36:                                               ; preds = %35, %4
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @x86_pmu, i32 0, i32 0, i32 0), align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %39
  %43 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %44 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %49 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %51 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %50, i32 0, i32 2
  store i32 4, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %54 = call i32 @pebs_update_adaptive_cfg(%struct.perf_event* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %57 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %55, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %52
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %65 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = call i32 (...) @adaptive_pebs_record_size_update()
  store i32 1, i32* %10, align 4
  br label %69

69:                                               ; preds = %62, %52
  br label %70

70:                                               ; preds = %69, %39, %36
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %75 = call i32 @pebs_update_threshold(%struct.cpu_hw_events* %74)
  br label %76

76:                                               ; preds = %73, %70
  ret void
}

declare dso_local i32 @pebs_needs_sched_cb(%struct.cpu_hw_events*) #1

declare dso_local i32 @perf_sched_cb_inc(%struct.pmu*) #1

declare dso_local i32 @perf_sched_cb_dec(%struct.pmu*) #1

declare dso_local i32 @pebs_update_adaptive_cfg(%struct.perf_event*) #1

declare dso_local i32 @adaptive_pebs_record_size_update(...) #1

declare dso_local i32 @pebs_update_threshold(%struct.cpu_hw_events*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
