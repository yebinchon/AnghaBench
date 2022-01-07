; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c___intel_pmu_enable_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c___intel_pmu_enable_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cpu_hw_events = type { i32, %struct.perf_event**, i32 }
%struct.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@MSR_CORE_PERF_GLOBAL_CTRL = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@INTEL_PMC_IDX_FIXED_BTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @__intel_pmu_enable_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__intel_pmu_enable_all(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca %struct.perf_event*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %7, %struct.cpu_hw_events** %5, align 8
  %8 = call i32 (...) @intel_pmu_pebs_enable_all()
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @intel_pmu_lbr_enable_all(i32 %9)
  %11 = load i32, i32* @MSR_CORE_PERF_GLOBAL_CTRL, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @x86_pmu, i32 0, i32 0), align 4
  %13 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %14 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = xor i32 %15, -1
  %17 = and i32 %12, %16
  %18 = call i32 @wrmsrl(i32 %11, i32 %17)
  %19 = load i64, i64* @INTEL_PMC_IDX_FIXED_BTS, align 8
  %20 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %21 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @test_bit(i64 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %2
  %26 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %27 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %26, i32 0, i32 1
  %28 = load %struct.perf_event**, %struct.perf_event*** %27, align 8
  %29 = load i64, i64* @INTEL_PMC_IDX_FIXED_BTS, align 8
  %30 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %28, i64 %29
  %31 = load %struct.perf_event*, %struct.perf_event** %30, align 8
  store %struct.perf_event* %31, %struct.perf_event** %6, align 8
  %32 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %33 = icmp ne %struct.perf_event* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON_ONCE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %45

39:                                               ; preds = %25
  %40 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %41 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @intel_pmu_enable_bts(i32 %43)
  br label %45

45:                                               ; preds = %38, %39, %2
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @intel_pmu_pebs_enable_all(...) #1

declare dso_local i32 @intel_pmu_lbr_enable_all(i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @intel_pmu_enable_bts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
