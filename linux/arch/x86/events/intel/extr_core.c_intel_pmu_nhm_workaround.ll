; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_pmu_nhm_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_pmu_nhm_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_events = type { %struct.perf_event** }
%struct.perf_event = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@intel_pmu_nhm_workaround.nhm_magic = internal constant [4 x i64] [i64 4391093, i64 4391122, i64 4391089, i64 4391089], align 16
@MSR_ARCH_PERFMON_EVENTSEL0 = common dso_local global i64 0, align 8
@MSR_ARCH_PERFMON_PERFCTR0 = common dso_local global i64 0, align 8
@MSR_CORE_PERF_GLOBAL_CTRL = common dso_local global i64 0, align 8
@ARCH_PERFMON_EVENTSEL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @intel_pmu_nhm_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pmu_nhm_workaround() #0 {
  %1 = alloca %struct.cpu_hw_events*, align 8
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %4, %struct.cpu_hw_events** %1, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %22, %0
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 4
  br i1 %7, label %8, label %25

8:                                                ; preds = %5
  %9 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %1, align 8
  %10 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %9, i32 0, i32 0
  %11 = load %struct.perf_event**, %struct.perf_event*** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %11, i64 %13
  %15 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  store %struct.perf_event* %15, %struct.perf_event** %2, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %17 = icmp ne %struct.perf_event* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %8
  %19 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %20 = call i32 @x86_perf_event_update(%struct.perf_event* %19)
  br label %21

21:                                               ; preds = %18, %8
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %5

25:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %44, %25
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load i64, i64* @MSR_ARCH_PERFMON_EVENTSEL0, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* @intel_pmu_nhm_workaround.nhm_magic, i64 0, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @wrmsrl(i64 %33, i64 %37)
  %39 = load i64, i64* @MSR_ARCH_PERFMON_PERFCTR0, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = call i32 @wrmsrl(i64 %42, i64 0)
  br label %44

44:                                               ; preds = %29
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %26

47:                                               ; preds = %26
  %48 = load i64, i64* @MSR_CORE_PERF_GLOBAL_CTRL, align 8
  %49 = call i32 @wrmsrl(i64 %48, i64 15)
  %50 = load i64, i64* @MSR_CORE_PERF_GLOBAL_CTRL, align 8
  %51 = call i32 @wrmsrl(i64 %50, i64 0)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %79, %47
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %82

55:                                               ; preds = %52
  %56 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %1, align 8
  %57 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %56, i32 0, i32 0
  %58 = load %struct.perf_event**, %struct.perf_event*** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %58, i64 %60
  %62 = load %struct.perf_event*, %struct.perf_event** %61, align 8
  store %struct.perf_event* %62, %struct.perf_event** %2, align 8
  %63 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %64 = icmp ne %struct.perf_event* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %55
  %66 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %67 = call i32 @x86_perf_event_set_period(%struct.perf_event* %66)
  %68 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %69 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %68, i32 0, i32 0
  %70 = load i32, i32* @ARCH_PERFMON_EVENTSEL_ENABLE, align 4
  %71 = call i32 @__x86_pmu_enable_event(i32* %69, i32 %70)
  br label %78

72:                                               ; preds = %55
  %73 = load i64, i64* @MSR_ARCH_PERFMON_EVENTSEL0, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = call i32 @wrmsrl(i64 %76, i64 0)
  br label %78

78:                                               ; preds = %72, %65
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %52

82:                                               ; preds = %52
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @x86_perf_event_update(%struct.perf_event*) #1

declare dso_local i32 @wrmsrl(i64, i64) #1

declare dso_local i32 @x86_perf_event_set_period(%struct.perf_event*) #1

declare dso_local i32 @__x86_pmu_enable_event(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
