; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c___intel_pmu_disable_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c___intel_pmu_disable_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_events = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@MSR_CORE_PERF_GLOBAL_CTRL = common dso_local global i32 0, align 4
@INTEL_PMC_IDX_FIXED_BTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__intel_pmu_disable_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__intel_pmu_disable_all() #0 {
  %1 = alloca %struct.cpu_hw_events*, align 8
  %2 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %2, %struct.cpu_hw_events** %1, align 8
  %3 = load i32, i32* @MSR_CORE_PERF_GLOBAL_CTRL, align 4
  %4 = call i32 @wrmsrl(i32 %3, i32 0)
  %5 = load i32, i32* @INTEL_PMC_IDX_FIXED_BTS, align 4
  %6 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %1, align 8
  %7 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @test_bit(i32 %5, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 (...) @intel_pmu_disable_bts()
  br label %13

13:                                               ; preds = %11, %0
  %14 = call i32 (...) @intel_pmu_pebs_disable_all()
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @intel_pmu_disable_bts(...) #1

declare dso_local i32 @intel_pmu_pebs_disable_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
