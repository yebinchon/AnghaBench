; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_shared_regs_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_shared_regs_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_constraint = type { i32 }
%struct.cpu_hw_events = type { i32 }
%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64 }

@EXTRA_REG_NONE = common dso_local global i64 0, align 8
@emptyconstraint = common dso_local global %struct.event_constraint zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_constraint* (%struct.cpu_hw_events*, %struct.perf_event*)* @intel_shared_regs_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_constraint* @intel_shared_regs_constraints(%struct.cpu_hw_events* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.event_constraint*, align 8
  %4 = alloca %struct.cpu_hw_events*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.event_constraint*, align 8
  %7 = alloca %struct.event_constraint*, align 8
  %8 = alloca %struct.hw_perf_event_extra*, align 8
  %9 = alloca %struct.hw_perf_event_extra*, align 8
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  store %struct.event_constraint* null, %struct.event_constraint** %6, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store %struct.hw_perf_event_extra* %12, %struct.hw_perf_event_extra** %8, align 8
  %13 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %14 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @EXTRA_REG_NONE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %20 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %21 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %22 = call %struct.event_constraint* @__intel_shared_reg_get_constraints(%struct.cpu_hw_events* %19, %struct.perf_event* %20, %struct.hw_perf_event_extra* %21)
  store %struct.event_constraint* %22, %struct.event_constraint** %6, align 8
  %23 = load %struct.event_constraint*, %struct.event_constraint** %6, align 8
  %24 = icmp eq %struct.event_constraint* %23, @emptyconstraint
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load %struct.event_constraint*, %struct.event_constraint** %6, align 8
  store %struct.event_constraint* %26, %struct.event_constraint** %3, align 8
  br label %52

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %30 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.hw_perf_event_extra* %31, %struct.hw_perf_event_extra** %9, align 8
  %32 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %9, align 8
  %33 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @EXTRA_REG_NONE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %28
  %38 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %39 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %40 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %9, align 8
  %41 = call %struct.event_constraint* @__intel_shared_reg_get_constraints(%struct.cpu_hw_events* %38, %struct.perf_event* %39, %struct.hw_perf_event_extra* %40)
  store %struct.event_constraint* %41, %struct.event_constraint** %7, align 8
  %42 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  %43 = icmp eq %struct.event_constraint* %42, @emptyconstraint
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %46 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %47 = call i32 @__intel_shared_reg_put_constraints(%struct.cpu_hw_events* %45, %struct.hw_perf_event_extra* %46)
  %48 = load %struct.event_constraint*, %struct.event_constraint** %7, align 8
  store %struct.event_constraint* %48, %struct.event_constraint** %6, align 8
  br label %49

49:                                               ; preds = %44, %37
  br label %50

50:                                               ; preds = %49, %28
  %51 = load %struct.event_constraint*, %struct.event_constraint** %6, align 8
  store %struct.event_constraint* %51, %struct.event_constraint** %3, align 8
  br label %52

52:                                               ; preds = %50, %25
  %53 = load %struct.event_constraint*, %struct.event_constraint** %3, align 8
  ret %struct.event_constraint* %53
}

declare dso_local %struct.event_constraint* @__intel_shared_reg_get_constraints(%struct.cpu_hw_events*, %struct.perf_event*, %struct.hw_perf_event_extra*) #1

declare dso_local i32 @__intel_shared_reg_put_constraints(%struct.cpu_hw_events*, %struct.hw_perf_event_extra*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
