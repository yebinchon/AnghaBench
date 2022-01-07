; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_intel_pmu_pebs_via_pt_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_intel_pmu_pebs_via_pt_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.cpu_hw_events = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@PEBS_VIA_PT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @intel_pmu_pebs_via_pt_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pmu_pebs_via_pt_disable(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.cpu_hw_events*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %4 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %4, %struct.cpu_hw_events** %3, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %6 = call i32 @is_pebs_pt(%struct.perf_event* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %11 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PEBS_VIA_PT_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %9
  %18 = load i32, i32* @PEBS_VIA_PT_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %21 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %8, %17, %9
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @is_pebs_pt(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
