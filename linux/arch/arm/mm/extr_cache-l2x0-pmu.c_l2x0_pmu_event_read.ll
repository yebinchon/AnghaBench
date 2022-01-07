; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-l2x0-pmu.c_l2x0_pmu_event_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_cache-l2x0-pmu.c_l2x0_pmu_event_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @l2x0_pmu_event_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2x0_pmu_event_read(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.hw_perf_event*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 1
  store %struct.hw_perf_event* %8, %struct.hw_perf_event** %3, align 8
  br label %9

9:                                                ; preds = %17, %1
  %10 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %10, i32 0, i32 1
  %12 = call i64 @local64_read(i32* %11)
  store i64 %12, i64* %4, align 8
  %13 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @l2x0_pmu_counter_read(i32 %15)
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %9
  %18 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %18, i32 0, i32 1
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @local64_xchg(i32* %19, i64 %20)
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %9, label %24

24:                                               ; preds = %17
  %25 = call i64 @GENMASK_ULL(i32 31, i32 0)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %4, align 8
  %28 = sub nsw i64 %26, %27
  %29 = load i64, i64* %6, align 8
  %30 = and i64 %28, %29
  %31 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 0
  %33 = call i32 @local64_add(i64 %30, i32* %32)
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @warn_if_saturated(i64 %34)
  ret void
}

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i64 @l2x0_pmu_counter_read(i32) #1

declare dso_local i64 @local64_xchg(i32*, i64) #1

declare dso_local i64 @GENMASK_ULL(i32, i32) #1

declare dso_local i32 @local64_add(i64, i32*) #1

declare dso_local i32 @warn_if_saturated(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
