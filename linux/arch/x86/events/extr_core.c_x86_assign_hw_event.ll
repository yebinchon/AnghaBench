; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_assign_hw_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_assign_hw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i64, i64, i64, i64, i64, i32 }
%struct.cpu_hw_events = type { i64*, i64* }

@INTEL_PMC_IDX_FIXED_BTS = common dso_local global i64 0, align 8
@INTEL_PMC_IDX_FIXED = common dso_local global i64 0, align 8
@MSR_ARCH_PERFMON_FIXED_CTR_CTRL = common dso_local global i64 0, align 8
@MSR_ARCH_PERFMON_FIXED_CTR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.cpu_hw_events*, i32)* @x86_assign_hw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86_assign_hw_event(%struct.perf_event* %0, %struct.cpu_hw_events* %1, i32 %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.cpu_hw_events* %1, %struct.cpu_hw_events** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  store %struct.hw_perf_event* %9, %struct.hw_perf_event** %7, align 8
  %10 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %11 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %18 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = call i32 (...) @smp_processor_id()
  %20 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %21 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %23 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %31 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %30, i32 0, i32 4
  store i64 %29, i64* %31, align 8
  %32 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %33 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @INTEL_PMC_IDX_FIXED_BTS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %3
  %38 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %39 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %41 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  br label %89

42:                                               ; preds = %3
  %43 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %44 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @INTEL_PMC_IDX_FIXED, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %42
  %49 = load i64, i64* @MSR_ARCH_PERFMON_FIXED_CTR_CTRL, align 8
  %50 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %51 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* @MSR_ARCH_PERFMON_FIXED_CTR0, align 8
  %53 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %54 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @INTEL_PMC_IDX_FIXED, align 8
  %57 = sub nsw i64 %55, %56
  %58 = add nsw i64 %52, %57
  %59 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %60 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %62 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @INTEL_PMC_IDX_FIXED, align 8
  %65 = sub nsw i64 %63, %64
  %66 = or i64 %65, 1073741824
  %67 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %68 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  br label %88

69:                                               ; preds = %42
  %70 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %71 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @x86_pmu_config_addr(i64 %72)
  %74 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %75 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %74, i32 0, i32 3
  store i64 %73, i64* %75, align 8
  %76 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %77 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @x86_pmu_event_addr(i64 %78)
  %80 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %81 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %83 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @x86_pmu_rdpmc_index(i64 %84)
  %86 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %87 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %69, %48
  br label %89

89:                                               ; preds = %88, %37
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @x86_pmu_config_addr(i64) #1

declare dso_local i64 @x86_pmu_event_addr(i64) #1

declare dso_local i64 @x86_pmu_rdpmc_index(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
