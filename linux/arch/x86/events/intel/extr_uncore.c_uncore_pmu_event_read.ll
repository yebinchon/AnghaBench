; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_pmu_event_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_pmu_event_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.intel_uncore_box = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uncore_pmu_event_read(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.intel_uncore_box*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %4 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %5 = call %struct.intel_uncore_box* @uncore_event_to_box(%struct.perf_event* %4)
  store %struct.intel_uncore_box* %5, %struct.intel_uncore_box** %3, align 8
  %6 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %8 = call i32 @uncore_perf_event_update(%struct.intel_uncore_box* %6, %struct.perf_event* %7)
  ret void
}

declare dso_local %struct.intel_uncore_box* @uncore_event_to_box(%struct.perf_event*) #1

declare dso_local i32 @uncore_perf_event_update(%struct.intel_uncore_box*, %struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
