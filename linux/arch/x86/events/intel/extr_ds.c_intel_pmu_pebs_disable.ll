; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_intel_pmu_pebs_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_intel_pmu_pebs_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i64, i32, i32 }
%struct.cpu_hw_events = type { i64, i64, i64, i64, i64 }

@cpu_hw_events = common dso_local global i32 0, align 4
@PERF_X86_EVENT_PEBS_LDLAT = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PERF_X86_EVENT_PEBS_ST = common dso_local global i32 0, align 4
@MSR_IA32_PEBS_ENABLE = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_pmu_pebs_disable(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %5 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %5, %struct.cpu_hw_events** %3, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 0
  store %struct.hw_perf_event* %7, %struct.hw_perf_event** %4, align 8
  %8 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %9 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %12 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %17 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %20 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 (...) @intel_pmu_drain_pebs_buffer()
  br label %25

25:                                               ; preds = %23, %15, %1
  %26 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %27 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = shl i64 1, %28
  %30 = xor i64 %29, -1
  %31 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %32 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = and i64 %33, %30
  store i64 %34, i64* %32, align 8
  %35 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %36 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PERF_X86_EVENT_PEBS_LDLAT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %25
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 4
  %44 = icmp slt i32 %43, 5
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %47 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 32
  %50 = shl i64 1, %49
  %51 = xor i64 %50, -1
  %52 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %53 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = and i64 %54, %51
  store i64 %55, i64* %53, align 8
  br label %70

56:                                               ; preds = %42, %25
  %57 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %58 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PERF_X86_EVENT_PEBS_ST, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %66 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = and i64 %67, 9223372036854775807
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %64, %56
  br label %70

70:                                               ; preds = %69, %45
  %71 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %72 = call i32 @intel_pmu_pebs_via_pt_disable(%struct.perf_event* %71)
  %73 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %74 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load i32, i32* @MSR_IA32_PEBS_ENABLE, align 4
  %79 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %80 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @wrmsrl(i32 %78, i64 %81)
  br label %83

83:                                               ; preds = %77, %70
  %84 = load i32, i32* @ARCH_PERFMON_EVENTSEL_INT, align 4
  %85 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %86 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @intel_pmu_drain_pebs_buffer(...) #1

declare dso_local i32 @intel_pmu_pebs_via_pt_disable(%struct.perf_event*) #1

declare dso_local i32 @wrmsrl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
