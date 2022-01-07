; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_get_event_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_get_event_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_constraint = type { i32, i32, i32 }
%struct.cpu_hw_events = type { i64, %struct.event_constraint** }
%struct.perf_event = type { i32 }

@PERF_X86_EVENT_DYNAMIC = common dso_local global i32 0, align 4
@X86_PMC_IDX_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_constraint* (%struct.cpu_hw_events*, i32, %struct.perf_event*)* @intel_get_event_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_constraint* @intel_get_event_constraints(%struct.cpu_hw_events* %0, i32 %1, %struct.perf_event* %2) #0 {
  %4 = alloca %struct.event_constraint*, align 8
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_event*, align 8
  %8 = alloca %struct.event_constraint*, align 8
  %9 = alloca %struct.event_constraint*, align 8
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.perf_event* %2, %struct.perf_event** %7, align 8
  %10 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %11 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %10, i32 0, i32 1
  %12 = load %struct.event_constraint**, %struct.event_constraint*** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.event_constraint*, %struct.event_constraint** %12, i64 %14
  %16 = load %struct.event_constraint*, %struct.event_constraint** %15, align 8
  store %struct.event_constraint* %16, %struct.event_constraint** %8, align 8
  %17 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %20 = call %struct.event_constraint* @__intel_get_event_constraints(%struct.cpu_hw_events* %17, i32 %18, %struct.perf_event* %19)
  store %struct.event_constraint* %20, %struct.event_constraint** %9, align 8
  %21 = load %struct.event_constraint*, %struct.event_constraint** %8, align 8
  %22 = icmp ne %struct.event_constraint* %21, null
  br i1 %22, label %23, label %47

23:                                               ; preds = %3
  %24 = load %struct.event_constraint*, %struct.event_constraint** %8, align 8
  %25 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PERF_X86_EVENT_DYNAMIC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @WARN_ON_ONCE(i32 %31)
  %33 = load %struct.event_constraint*, %struct.event_constraint** %8, align 8
  %34 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.event_constraint*, %struct.event_constraint** %9, align 8
  %37 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @X86_PMC_IDX_MAX, align 4
  %40 = call i32 @bitmap_copy(i32 %35, i32 %38, i32 %39)
  %41 = load %struct.event_constraint*, %struct.event_constraint** %9, align 8
  %42 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.event_constraint*, %struct.event_constraint** %8, align 8
  %45 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.event_constraint*, %struct.event_constraint** %8, align 8
  store %struct.event_constraint* %46, %struct.event_constraint** %9, align 8
  br label %47

47:                                               ; preds = %23, %3
  %48 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %49 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %54 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.event_constraint*, %struct.event_constraint** %9, align 8
  %57 = call %struct.event_constraint* @intel_get_excl_constraints(%struct.cpu_hw_events* %53, %struct.perf_event* %54, i32 %55, %struct.event_constraint* %56)
  store %struct.event_constraint* %57, %struct.event_constraint** %4, align 8
  br label %60

58:                                               ; preds = %47
  %59 = load %struct.event_constraint*, %struct.event_constraint** %9, align 8
  store %struct.event_constraint* %59, %struct.event_constraint** %4, align 8
  br label %60

60:                                               ; preds = %58, %52
  %61 = load %struct.event_constraint*, %struct.event_constraint** %4, align 8
  ret %struct.event_constraint* %61
}

declare dso_local %struct.event_constraint* @__intel_get_event_constraints(%struct.cpu_hw_events*, i32, %struct.perf_event*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @bitmap_copy(i32, i32, i32) #1

declare dso_local %struct.event_constraint* @intel_get_excl_constraints(%struct.cpu_hw_events*, %struct.perf_event*, i32, %struct.event_constraint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
