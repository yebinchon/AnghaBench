; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_pmu_disable_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_pmu_disable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__, %struct.hw_perf_event }
%struct.TYPE_2__ = type { i32 }
%struct.hw_perf_event = type { i64, i64 }
%struct.cpu_hw_events = type { i64, i64, i64 }

@cpu_hw_events = common dso_local global i32 0, align 4
@INTEL_PMC_IDX_FIXED_BTS = common dso_local global i64 0, align 8
@MSR_ARCH_PERFMON_FIXED_CTR_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @intel_pmu_disable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pmu_disable_event(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.hw_perf_event*, align 8
  %4 = alloca %struct.cpu_hw_events*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 1
  store %struct.hw_perf_event* %6, %struct.hw_perf_event** %3, align 8
  %7 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %7, %struct.cpu_hw_events** %4, align 8
  %8 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @INTEL_PMC_IDX_FIXED_BTS, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = call i32 (...) @intel_pmu_disable_bts()
  %18 = call i32 (...) @intel_pmu_drain_bts_buffer()
  br label %71

19:                                               ; preds = %1
  %20 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %21 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = shl i64 1, %22
  %24 = xor i64 %23, -1
  %25 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %26 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = and i64 %27, %24
  store i64 %28, i64* %26, align 8
  %29 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %30 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = shl i64 1, %31
  %33 = xor i64 %32, -1
  %34 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %35 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = and i64 %36, %33
  store i64 %37, i64* %35, align 8
  %38 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %39 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = shl i64 1, %40
  %42 = xor i64 %41, -1
  %43 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %44 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = and i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %48 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MSR_ARCH_PERFMON_FIXED_CTR_CTRL, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %19
  %56 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %57 = call i32 @intel_pmu_disable_fixed(%struct.hw_perf_event* %56)
  br label %61

58:                                               ; preds = %19
  %59 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %60 = call i32 @x86_pmu_disable_event(%struct.perf_event* %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %63 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %70 = call i32 @intel_pmu_pebs_disable(%struct.perf_event* %69)
  br label %71

71:                                               ; preds = %16, %68, %61
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @intel_pmu_disable_bts(...) #1

declare dso_local i32 @intel_pmu_drain_bts_buffer(...) #1

declare dso_local i32 @intel_pmu_disable_fixed(%struct.hw_perf_event*) #1

declare dso_local i32 @x86_pmu_disable_event(%struct.perf_event*) #1

declare dso_local i32 @intel_pmu_pebs_disable(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
