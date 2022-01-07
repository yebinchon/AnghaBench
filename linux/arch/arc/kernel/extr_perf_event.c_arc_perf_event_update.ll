; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_perf_event.c_arc_perf_event_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_perf_event.c_arc_perf_event_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.hw_perf_event = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.hw_perf_event*, i32)* @arc_perf_event_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_perf_event_update(%struct.perf_event* %0, %struct.hw_perf_event* %1, i32 %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.hw_perf_event* %1, %struct.hw_perf_event** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %11 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %10, i32 0, i32 1
  %12 = call i64 @local64_read(i32* %11)
  store i64 %12, i64* %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @arc_pmu_read_counter(i32 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = sub nsw i64 %15, %16
  store i64 %17, i64* %9, align 8
  %18 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %18, i32 0, i32 1
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @local64_set(i32* %19, i64 %20)
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %24 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %23, i32 0, i32 0
  %25 = call i32 @local64_add(i64 %22, i32* %24)
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %28 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %27, i32 0, i32 0
  %29 = call i32 @local64_sub(i64 %26, i32* %28)
  ret void
}

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i64 @arc_pmu_read_counter(i32) #1

declare dso_local i32 @local64_set(i32*, i64) #1

declare dso_local i32 @local64_add(i64, i32*) #1

declare dso_local i32 @local64_sub(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
