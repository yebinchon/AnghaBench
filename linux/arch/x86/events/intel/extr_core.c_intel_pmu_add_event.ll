; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_pmu_add_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_pmu_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @intel_pmu_add_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pmu_add_event(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %3 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %4 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %10 = call i32 @intel_pmu_pebs_add(%struct.perf_event* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %13 = call i64 @needs_branch_stack(%struct.perf_event* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %17 = call i32 @intel_pmu_lbr_add(%struct.perf_event* %16)
  br label %18

18:                                               ; preds = %15, %11
  ret void
}

declare dso_local i32 @intel_pmu_pebs_add(%struct.perf_event*) #1

declare dso_local i64 @needs_branch_stack(%struct.perf_event*) #1

declare dso_local i32 @intel_pmu_lbr_add(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
