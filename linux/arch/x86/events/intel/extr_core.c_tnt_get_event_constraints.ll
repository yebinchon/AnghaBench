; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_tnt_get_event_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_tnt_get_event_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_constraint = type { i32 }
%struct.cpu_hw_events = type { i32 }
%struct.perf_event = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@fixed0_constraint = common dso_local global i32 0, align 4
@fixed0_counter0_constraint = common dso_local global %struct.event_constraint zeroinitializer, align 4
@counter0_constraint = common dso_local global %struct.event_constraint zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_constraint* (%struct.cpu_hw_events*, i32, %struct.perf_event*)* @tnt_get_event_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_constraint* @tnt_get_event_constraints(%struct.cpu_hw_events* %0, i32 %1, %struct.perf_event* %2) #0 {
  %4 = alloca %struct.event_constraint*, align 8
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_event*, align 8
  %8 = alloca %struct.event_constraint*, align 8
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.perf_event* %2, %struct.perf_event** %7, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @constraint_match(i32* @fixed0_constraint, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store %struct.event_constraint* @fixed0_counter0_constraint, %struct.event_constraint** %4, align 8
  br label %29

22:                                               ; preds = %14
  store %struct.event_constraint* @counter0_constraint, %struct.event_constraint** %4, align 8
  br label %29

23:                                               ; preds = %3
  %24 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %27 = call %struct.event_constraint* @intel_get_event_constraints(%struct.cpu_hw_events* %24, i32 %25, %struct.perf_event* %26)
  store %struct.event_constraint* %27, %struct.event_constraint** %8, align 8
  %28 = load %struct.event_constraint*, %struct.event_constraint** %8, align 8
  store %struct.event_constraint* %28, %struct.event_constraint** %4, align 8
  br label %29

29:                                               ; preds = %23, %22, %21
  %30 = load %struct.event_constraint*, %struct.event_constraint** %4, align 8
  ret %struct.event_constraint* %30
}

declare dso_local i64 @constraint_match(i32*, i32) #1

declare dso_local %struct.event_constraint* @intel_get_event_constraints(%struct.cpu_hw_events*, i32, %struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
