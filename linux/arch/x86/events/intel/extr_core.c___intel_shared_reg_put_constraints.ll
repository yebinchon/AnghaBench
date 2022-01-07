; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c___intel_shared_reg_put_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c___intel_shared_reg_put_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_events = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.er_account* }
%struct.er_account = type { i32 }
%struct.hw_perf_event_extra = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_hw_events*, %struct.hw_perf_event_extra*)* @__intel_shared_reg_put_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__intel_shared_reg_put_constraints(%struct.cpu_hw_events* %0, %struct.hw_perf_event_extra* %1) #0 {
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca %struct.hw_perf_event_extra*, align 8
  %5 = alloca %struct.er_account*, align 8
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %3, align 8
  store %struct.hw_perf_event_extra* %1, %struct.hw_perf_event_extra** %4, align 8
  %6 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %4, align 8
  %7 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %12 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %2
  br label %31

16:                                               ; preds = %10
  %17 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %18 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.er_account*, %struct.er_account** %20, align 8
  %22 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %4, align 8
  %23 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.er_account, %struct.er_account* %21, i64 %24
  store %struct.er_account* %25, %struct.er_account** %5, align 8
  %26 = load %struct.er_account*, %struct.er_account** %5, align 8
  %27 = getelementptr inbounds %struct.er_account, %struct.er_account* %26, i32 0, i32 0
  %28 = call i32 @atomic_dec(i32* %27)
  %29 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %4, align 8
  %30 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
