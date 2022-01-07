; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_intel_pmu_pebs_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_intel_pmu_pebs_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i64, i32, i64, i32 }
%struct.cpu_hw_events = type { i64, i64, i64, %struct.debug_store* }
%struct.debug_store = type { i32* }

@cpu_hw_events = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_INT = common dso_local global i32 0, align 4
@PERF_X86_EVENT_PEBS_LDLAT = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PERF_X86_EVENT_PEBS_ST = common dso_local global i32 0, align 4
@ICL_EVENTSEL_ADAPTIVE = common dso_local global i32 0, align 4
@MSR_PEBS_DATA_CFG = common dso_local global i32 0, align 4
@PERF_X86_EVENT_AUTO_RELOAD = common dso_local global i32 0, align 4
@INTEL_PMC_IDX_FIXED = common dso_local global i32 0, align 4
@MAX_PEBS_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_pmu_pebs_enable(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca %struct.debug_store*, align 8
  %6 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %7 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %7, %struct.cpu_hw_events** %3, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  store %struct.hw_perf_event* %9, %struct.hw_perf_event** %4, align 8
  %10 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %11 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %10, i32 0, i32 3
  %12 = load %struct.debug_store*, %struct.debug_store** %11, align 8
  store %struct.debug_store* %12, %struct.debug_store** %5, align 8
  %13 = load i32, i32* @ARCH_PERFMON_EVENTSEL_INT, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %16 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %20 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = shl i64 1, %21
  %23 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %24 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = or i64 %25, %22
  store i64 %26, i64* %24, align 8
  %27 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %28 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PERF_X86_EVENT_PEBS_LDLAT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %1
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 0), align 8
  %36 = icmp slt i32 %35, 5
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %39 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, 32
  %42 = shl i64 1, %41
  %43 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %44 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = or i64 %45, %42
  store i64 %46, i64* %44, align 8
  br label %61

47:                                               ; preds = %34, %1
  %48 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %49 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PERF_X86_EVENT_PEBS_ST, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %57 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = or i64 %58, -9223372036854775808
  store i64 %59, i64* %57, align 8
  br label %60

60:                                               ; preds = %55, %47
  br label %61

61:                                               ; preds = %60, %37
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 2, i32 0), align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %61
  %65 = load i32, i32* @ICL_EVENTSEL_ADAPTIVE, align 4
  %66 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %67 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %71 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %74 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %64
  %78 = load i32, i32* @MSR_PEBS_DATA_CFG, align 4
  %79 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %80 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @wrmsrl(i32 %78, i64 %81)
  %83 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %84 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %87 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %77, %64
  br label %89

89:                                               ; preds = %88, %61
  %90 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %91 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @PERF_X86_EVENT_AUTO_RELOAD, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %124

96:                                               ; preds = %89
  %97 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %98 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @INTEL_PMC_IDX_FIXED, align 4
  %103 = icmp uge i32 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load i32, i32* @MAX_PEBS_EVENTS, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @INTEL_PMC_IDX_FIXED, align 4
  %108 = sub i32 %106, %107
  %109 = add i32 %105, %108
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %104, %96
  %111 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %112 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 0, %113
  %115 = trunc i64 %114 to i32
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 1), align 4
  %117 = and i32 %115, %116
  %118 = load %struct.debug_store*, %struct.debug_store** %5, align 8
  %119 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %117, i32* %123, align 4
  br label %132

124:                                              ; preds = %89
  %125 = load %struct.debug_store*, %struct.debug_store** %5, align 8
  %126 = getelementptr inbounds %struct.debug_store, %struct.debug_store* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %129 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %124, %110
  %133 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %134 = call i32 @intel_pmu_pebs_via_pt_enable(%struct.perf_event* %133)
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @wrmsrl(i32, i64) #1

declare dso_local i32 @intel_pmu_pebs_via_pt_enable(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
