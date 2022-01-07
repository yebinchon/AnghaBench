; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_read_hw_counter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_perf_event.c_armv8pmu_read_hw_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @armv8pmu_read_hw_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armv8pmu_read_hw_counter(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @armv8pmu_read_evcntr(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %12 = call i64 @armv8pmu_event_is_chained(%struct.perf_event* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = shl i32 %15, 32
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %17, 1
  %19 = call i32 @armv8pmu_read_evcntr(i32 %18)
  %20 = or i32 %16, %19
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %14, %1
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @armv8pmu_read_evcntr(i32) #1

declare dso_local i64 @armv8pmu_event_is_chained(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
