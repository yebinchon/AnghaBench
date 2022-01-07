; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c___intel_get_event_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c___intel_get_event_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_constraint = type { i32 }
%struct.cpu_hw_events = type { i32 }
%struct.perf_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_constraint* (%struct.cpu_hw_events*, i32, %struct.perf_event*)* @__intel_get_event_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_constraint* @__intel_get_event_constraints(%struct.cpu_hw_events* %0, i32 %1, %struct.perf_event* %2) #0 {
  %4 = alloca %struct.event_constraint*, align 8
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_event*, align 8
  %8 = alloca %struct.event_constraint*, align 8
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.perf_event* %2, %struct.perf_event** %7, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %10 = call %struct.event_constraint* @intel_bts_constraints(%struct.perf_event* %9)
  store %struct.event_constraint* %10, %struct.event_constraint** %8, align 8
  %11 = load %struct.event_constraint*, %struct.event_constraint** %8, align 8
  %12 = icmp ne %struct.event_constraint* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load %struct.event_constraint*, %struct.event_constraint** %8, align 8
  store %struct.event_constraint* %14, %struct.event_constraint** %4, align 8
  br label %35

15:                                               ; preds = %3
  %16 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %17 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %18 = call %struct.event_constraint* @intel_shared_regs_constraints(%struct.cpu_hw_events* %16, %struct.perf_event* %17)
  store %struct.event_constraint* %18, %struct.event_constraint** %8, align 8
  %19 = load %struct.event_constraint*, %struct.event_constraint** %8, align 8
  %20 = icmp ne %struct.event_constraint* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load %struct.event_constraint*, %struct.event_constraint** %8, align 8
  store %struct.event_constraint* %22, %struct.event_constraint** %4, align 8
  br label %35

23:                                               ; preds = %15
  %24 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %25 = call %struct.event_constraint* @intel_pebs_constraints(%struct.perf_event* %24)
  store %struct.event_constraint* %25, %struct.event_constraint** %8, align 8
  %26 = load %struct.event_constraint*, %struct.event_constraint** %8, align 8
  %27 = icmp ne %struct.event_constraint* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load %struct.event_constraint*, %struct.event_constraint** %8, align 8
  store %struct.event_constraint* %29, %struct.event_constraint** %4, align 8
  br label %35

30:                                               ; preds = %23
  %31 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %34 = call %struct.event_constraint* @x86_get_event_constraints(%struct.cpu_hw_events* %31, i32 %32, %struct.perf_event* %33)
  store %struct.event_constraint* %34, %struct.event_constraint** %4, align 8
  br label %35

35:                                               ; preds = %30, %28, %21, %13
  %36 = load %struct.event_constraint*, %struct.event_constraint** %4, align 8
  ret %struct.event_constraint* %36
}

declare dso_local %struct.event_constraint* @intel_bts_constraints(%struct.perf_event*) #1

declare dso_local %struct.event_constraint* @intel_shared_regs_constraints(%struct.cpu_hw_events*, %struct.perf_event*) #1

declare dso_local %struct.event_constraint* @intel_pebs_constraints(%struct.perf_event*) #1

declare dso_local %struct.event_constraint* @x86_get_event_constraints(%struct.cpu_hw_events*, i32, %struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
