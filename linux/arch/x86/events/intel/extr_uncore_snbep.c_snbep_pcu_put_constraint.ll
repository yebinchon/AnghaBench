; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_snbep_pcu_put_constraint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_snbep_pcu_put_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { %struct.intel_uncore_extra_reg* }
%struct.intel_uncore_extra_reg = type { i32 }
%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_box*, %struct.perf_event*)* @snbep_pcu_put_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snbep_pcu_put_constraint(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hw_perf_event_extra*, align 8
  %6 = alloca %struct.intel_uncore_extra_reg*, align 8
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.hw_perf_event_extra* %9, %struct.hw_perf_event_extra** %5, align 8
  %10 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %11 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %10, i32 0, i32 0
  %12 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %11, align 8
  %13 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %12, i64 0
  store %struct.intel_uncore_extra_reg* %13, %struct.intel_uncore_extra_reg** %6, align 8
  %14 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %15 = call i64 @uncore_box_is_fake(%struct.intel_uncore_box* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %5, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %2
  br label %34

23:                                               ; preds = %17
  %24 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %5, align 8
  %25 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %26, 8
  %28 = shl i32 1, %27
  %29 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %6, align 8
  %30 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %29, i32 0, i32 0
  %31 = call i32 @atomic_sub(i32 %28, i32* %30)
  %32 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %5, align 8
  %33 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %23, %22
  ret void
}

declare dso_local i64 @uncore_box_is_fake(%struct.intel_uncore_box*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
