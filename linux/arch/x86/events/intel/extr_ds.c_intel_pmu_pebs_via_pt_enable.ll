; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_intel_pmu_pebs_via_pt_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_intel_pmu_pebs_via_pt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i64 }
%struct.cpu_hw_events = type { i32, %struct.debug_store* }
%struct.debug_store = type { i32* }

@cpu_hw_events = common dso_local global i32 0, align 4
@PERF_X86_EVENT_LARGE_PEBS = common dso_local global i32 0, align 4
@PEBS_PMI_AFTER_EACH_RECORD = common dso_local global i32 0, align 4
@PEBS_OUTPUT_PT = common dso_local global i32 0, align 4
@MSR_RELOAD_PMC0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @intel_pmu_pebs_via_pt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pmu_pebs_via_pt_enable(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca %struct.debug_store*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %6 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %6, %struct.cpu_hw_events** %3, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 0
  store %struct.hw_perf_event* %8, %struct.hw_perf_event** %4, align 8
  %9 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %10 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %9, i32 0, i32 1
  %11 = load %struct.debug_store*, %struct.debug_store** %10, align 8
  store %struct.debug_store* %11, %struct.debug_store** %5, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %13 = call i32 @is_pebs_pt(%struct.perf_event* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %50

16:                                               ; preds = %1
  %17 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PERF_X86_EVENT_LARGE_PEBS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @PEBS_PMI_AFTER_EACH_RECORD, align 4
  %26 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %27 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %24, %16
  %31 = load i32, i32* @PEBS_OUTPUT_PT, align 4
  %32 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %33 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load i64, i64* @MSR_RELOAD_PMC0, align 8
  %37 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %38 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %36, %39
  %41 = load %struct.debug_store*, %struct.debug_store** %5, align 8
  %42 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %45 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @wrmsrl(i64 %40, i32 %48)
  br label %50

50:                                               ; preds = %30, %15
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @is_pebs_pt(%struct.perf_event*) #1

declare dso_local i32 @wrmsrl(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
