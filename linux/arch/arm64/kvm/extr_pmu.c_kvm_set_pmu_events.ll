; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_pmu.c_kvm_set_pmu_events.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_pmu.c_kvm_set_pmu_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32, i32 }
%struct.kvm_host_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@kvm_host_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_set_pmu_events(i32 %0, %struct.perf_event_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event_attr*, align 8
  %5 = alloca %struct.kvm_host_data*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.perf_event_attr* %1, %struct.perf_event_attr** %4, align 8
  %6 = call %struct.kvm_host_data* @this_cpu_ptr(i32* @kvm_host_data)
  store %struct.kvm_host_data* %6, %struct.kvm_host_data** %5, align 8
  %7 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %8 = call i32 @kvm_pmu_switch_needed(%struct.perf_event_attr* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %35

11:                                               ; preds = %2
  %12 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %13 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.kvm_host_data*, %struct.kvm_host_data** %5, align 8
  %19 = getelementptr inbounds %struct.kvm_host_data, %struct.kvm_host_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %17
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %16, %11
  %24 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %25 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.kvm_host_data*, %struct.kvm_host_data** %5, align 8
  %31 = getelementptr inbounds %struct.kvm_host_data, %struct.kvm_host_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %29
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %10, %28, %23
  ret void
}

declare dso_local %struct.kvm_host_data* @this_cpu_ptr(i32*) #1

declare dso_local i32 @kvm_pmu_switch_needed(%struct.perf_event_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
