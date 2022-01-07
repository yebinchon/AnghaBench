; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_core.c_amd_get_event_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_core.c_amd_get_event_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_constraint = type { i32 }
%struct.cpu_hw_events = type { i32 }
%struct.perf_event = type { i32 }

@unconstrained = common dso_local global %struct.event_constraint zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_constraint* (%struct.cpu_hw_events*, i32, %struct.perf_event*)* @amd_get_event_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_constraint* @amd_get_event_constraints(%struct.cpu_hw_events* %0, i32 %1, %struct.perf_event* %2) #0 {
  %4 = alloca %struct.event_constraint*, align 8
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_event*, align 8
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.perf_event* %2, %struct.perf_event** %7, align 8
  %8 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %9 = call i64 @amd_has_nb(%struct.cpu_hw_events* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  %14 = call i64 @amd_is_nb_event(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %3
  store %struct.event_constraint* @unconstrained, %struct.event_constraint** %4, align 8
  br label %21

17:                                               ; preds = %11
  %18 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %19 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %20 = call %struct.event_constraint* @__amd_get_nb_event_constraints(%struct.cpu_hw_events* %18, %struct.perf_event* %19, i32* null)
  store %struct.event_constraint* %20, %struct.event_constraint** %4, align 8
  br label %21

21:                                               ; preds = %17, %16
  %22 = load %struct.event_constraint*, %struct.event_constraint** %4, align 8
  ret %struct.event_constraint* %22
}

declare dso_local i64 @amd_has_nb(%struct.cpu_hw_events*) #1

declare dso_local i64 @amd_is_nb_event(i32*) #1

declare dso_local %struct.event_constraint* @__amd_get_nb_event_constraints(%struct.cpu_hw_events*, %struct.perf_event*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
