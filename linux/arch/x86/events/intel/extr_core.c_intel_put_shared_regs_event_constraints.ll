; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_put_shared_regs_event_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_put_shared_regs_event_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_events = type { i32 }
%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64 }

@EXTRA_REG_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_hw_events*, %struct.perf_event*)* @intel_put_shared_regs_event_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_put_shared_regs_event_constraints(%struct.cpu_hw_events* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hw_perf_event_extra*, align 8
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store %struct.hw_perf_event_extra* %8, %struct.hw_perf_event_extra** %5, align 8
  %9 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %5, align 8
  %10 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EXTRA_REG_NONE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %16 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %5, align 8
  %17 = call i32 @__intel_shared_reg_put_constraints(%struct.cpu_hw_events* %15, %struct.hw_perf_event_extra* %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %20 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.hw_perf_event_extra* %21, %struct.hw_perf_event_extra** %5, align 8
  %22 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %5, align 8
  %23 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @EXTRA_REG_NONE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %29 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %5, align 8
  %30 = call i32 @__intel_shared_reg_put_constraints(%struct.cpu_hw_events* %28, %struct.hw_perf_event_extra* %29)
  br label %31

31:                                               ; preds = %27, %18
  ret void
}

declare dso_local i32 @__intel_shared_reg_put_constraints(%struct.cpu_hw_events*, %struct.hw_perf_event_extra*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
