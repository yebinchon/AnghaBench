; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_pmu_enable_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_pmu_enable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.perf_event = type { %struct.TYPE_4__, %struct.hw_perf_event }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.hw_perf_event = type { i64, i64, i32 }
%struct.cpu_hw_events = type { i64, i64, i64 }

@cpu_hw_events = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@INTEL_PMC_IDX_FIXED_BTS = common dso_local global i64 0, align 8
@MSR_ARCH_PERFMON_FIXED_CTR_CTRL = common dso_local global i64 0, align 8
@ARCH_PERFMON_EVENTSEL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @intel_pmu_enable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pmu_enable_event(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.hw_perf_event*, align 8
  %4 = alloca %struct.cpu_hw_events*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 1
  store %struct.hw_perf_event* %6, %struct.hw_perf_event** %3, align 8
  %7 = call %struct.cpu_hw_events* @this_cpu_ptr(%struct.TYPE_5__* @cpu_hw_events)
  store %struct.cpu_hw_events* %7, %struct.cpu_hw_events** %4, align 8
  %8 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @INTEL_PMC_IDX_FIXED_BTS, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cpu_hw_events, i32 0, i32 0), align 4
  %18 = call i32 @__this_cpu_read(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %96

21:                                               ; preds = %16
  %22 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %23 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @intel_pmu_enable_bts(i32 %24)
  br label %96

26:                                               ; preds = %1
  %27 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %28 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %34 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = shl i64 1, %35
  %37 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %38 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = or i64 %39, %36
  store i64 %40, i64* %38, align 8
  br label %41

41:                                               ; preds = %32, %26
  %42 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %43 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %49 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = shl i64 1, %50
  %52 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %53 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = or i64 %54, %51
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %47, %41
  %57 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %58 = call i32 @event_is_checkpointed(%struct.perf_event* %57)
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %63 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = shl i64 1, %64
  %66 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %67 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = or i64 %68, %65
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %61, %56
  %71 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %72 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %79 = call i32 @intel_pmu_pebs_enable(%struct.perf_event* %78)
  br label %80

80:                                               ; preds = %77, %70
  %81 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %82 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MSR_ARCH_PERFMON_FIXED_CTR_CTRL, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %91 = call i32 @intel_pmu_enable_fixed(%struct.perf_event* %90)
  br label %96

92:                                               ; preds = %80
  %93 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %94 = load i32, i32* @ARCH_PERFMON_EVENTSEL_ENABLE, align 4
  %95 = call i32 @__x86_pmu_enable_event(%struct.hw_perf_event* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %89, %21, %20
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(%struct.TYPE_5__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local i32 @intel_pmu_enable_bts(i32) #1

declare dso_local i32 @event_is_checkpointed(%struct.perf_event*) #1

declare dso_local i32 @intel_pmu_pebs_enable(%struct.perf_event*) #1

declare dso_local i32 @intel_pmu_enable_fixed(%struct.perf_event*) #1

declare dso_local i32 @__x86_pmu_enable_event(%struct.hw_perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
