; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.nds32_pmu = type { i32 (%struct.nds32_pmu*)*, i32, %struct.pmu_hw_events* (...)* }
%struct.pmu_hw_events = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu*)* @nds32_pmu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nds32_pmu_enable(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  %3 = alloca %struct.nds32_pmu*, align 8
  %4 = alloca %struct.pmu_hw_events*, align 8
  %5 = alloca i32, align 4
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %6 = load %struct.pmu*, %struct.pmu** %2, align 8
  %7 = call %struct.nds32_pmu* @to_nds32_pmu(%struct.pmu* %6)
  store %struct.nds32_pmu* %7, %struct.nds32_pmu** %3, align 8
  %8 = load %struct.nds32_pmu*, %struct.nds32_pmu** %3, align 8
  %9 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %8, i32 0, i32 2
  %10 = load %struct.pmu_hw_events* (...)*, %struct.pmu_hw_events* (...)** %9, align 8
  %11 = call %struct.pmu_hw_events* (...) %10()
  store %struct.pmu_hw_events* %11, %struct.pmu_hw_events** %4, align 8
  %12 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %4, align 8
  %13 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nds32_pmu*, %struct.nds32_pmu** %3, align 8
  %16 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @bitmap_weight(i32 %14, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.nds32_pmu*, %struct.nds32_pmu** %3, align 8
  %23 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %22, i32 0, i32 0
  %24 = load i32 (%struct.nds32_pmu*)*, i32 (%struct.nds32_pmu*)** %23, align 8
  %25 = load %struct.nds32_pmu*, %struct.nds32_pmu** %3, align 8
  %26 = call i32 %24(%struct.nds32_pmu* %25)
  br label %27

27:                                               ; preds = %21, %1
  ret void
}

declare dso_local %struct.nds32_pmu* @to_nds32_pmu(%struct.pmu*) #1

declare dso_local i32 @bitmap_weight(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
