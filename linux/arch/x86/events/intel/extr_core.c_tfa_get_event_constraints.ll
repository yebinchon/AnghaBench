; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_tfa_get_event_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_tfa_get_event_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_constraint = type { i64, i32, i32 }
%struct.cpu_hw_events = type { i32 }
%struct.perf_event = type { i32 }

@allow_tsx_force_abort = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_constraint* (%struct.cpu_hw_events*, i32, %struct.perf_event*)* @tfa_get_event_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_constraint* @tfa_get_event_constraints(%struct.cpu_hw_events* %0, i32 %1, %struct.perf_event* %2) #0 {
  %4 = alloca %struct.cpu_hw_events*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_event*, align 8
  %7 = alloca %struct.event_constraint*, align 8
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.perf_event* %2, %struct.perf_event** %6, align 8
  %8 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %11 = call %struct.event_constraint* @hsw_get_event_constraints(%struct.cpu_hw_events* %8, i32 %9, %struct.perf_event* %10)
  store %struct.event_constraint* %11, %struct.event_constraint** %7, align 8
  %12 = load i32, i32* @allow_tsx_force_abort, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %3
  %15 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  %16 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @test_bit(i32 3, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %22 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.event_constraint* @dyn_constraint(%struct.cpu_hw_events* %21, %struct.event_constraint* %22, i32 %23)
  store %struct.event_constraint* %24, %struct.event_constraint** %7, align 8
  %25 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  %26 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = and i64 %27, -9
  store i64 %28, i64* %26, align 8
  %29 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  %30 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %20, %14, %3
  %34 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  ret %struct.event_constraint* %34
}

declare dso_local %struct.event_constraint* @hsw_get_event_constraints(%struct.cpu_hw_events*, i32, %struct.perf_event*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local %struct.event_constraint* @dyn_constraint(%struct.cpu_hw_events*, %struct.event_constraint*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
