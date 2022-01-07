; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_enable_event_counter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_enable_event_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__, %struct.perf_event_attr }
%struct.TYPE_2__ = type { i32 }
%struct.perf_event_attr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @armv8pmu_enable_event_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armv8pmu_enable_event_counter(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.perf_event_attr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 1
  store %struct.perf_event_attr* %7, %struct.perf_event_attr** %3, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ARMV8_IDX_TO_COUNTER(i32 %12)
  %14 = call i32 @BIT(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %16 = call i64 @armv8pmu_event_is_chained(%struct.perf_event* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %19, 1
  %21 = call i32 @ARMV8_IDX_TO_COUNTER(i32 %20)
  %22 = call i32 @BIT(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %18, %1
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %28 = call i32 @kvm_set_pmu_events(i32 %26, %struct.perf_event_attr* %27)
  %29 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %30 = call i32 @kvm_pmu_counter_deferred(%struct.perf_event_attr* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @armv8pmu_enable_counter(i32 %33)
  %35 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %36 = call i64 @armv8pmu_event_is_chained(%struct.perf_event* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = sub nsw i32 %39, 1
  %41 = call i32 @armv8pmu_enable_counter(i32 %40)
  br label %42

42:                                               ; preds = %38, %32
  br label %43

43:                                               ; preds = %42, %25
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ARMV8_IDX_TO_COUNTER(i32) #1

declare dso_local i64 @armv8pmu_event_is_chained(%struct.perf_event*) #1

declare dso_local i32 @kvm_set_pmu_events(i32, %struct.perf_event_attr*) #1

declare dso_local i32 @kvm_pmu_counter_deferred(%struct.perf_event_attr*) #1

declare dso_local i32 @armv8pmu_enable_counter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
