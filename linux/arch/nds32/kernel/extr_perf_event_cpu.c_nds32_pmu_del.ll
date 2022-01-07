; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_del.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i32 }
%struct.nds32_pmu = type { %struct.pmu_hw_events* (...)* }
%struct.pmu_hw_events = type { i32, i32** }

@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @nds32_pmu_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nds32_pmu_del(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nds32_pmu*, align 8
  %6 = alloca %struct.pmu_hw_events*, align 8
  %7 = alloca %struct.hw_perf_event*, align 8
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nds32_pmu* @to_nds32_pmu(i32 %11)
  store %struct.nds32_pmu* %12, %struct.nds32_pmu** %5, align 8
  %13 = load %struct.nds32_pmu*, %struct.nds32_pmu** %5, align 8
  %14 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %13, i32 0, i32 0
  %15 = load %struct.pmu_hw_events* (...)*, %struct.pmu_hw_events* (...)** %14, align 8
  %16 = call %struct.pmu_hw_events* (...) %15()
  store %struct.pmu_hw_events* %16, %struct.pmu_hw_events** %6, align 8
  %17 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 0
  store %struct.hw_perf_event* %18, %struct.hw_perf_event** %7, align 8
  %19 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %20 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %23 = load i32, i32* @PERF_EF_UPDATE, align 4
  %24 = call i32 @nds32_stop(%struct.perf_event* %22, i32 %23)
  %25 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %6, align 8
  %26 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %6, align 8
  %33 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @clear_bit(i32 %31, i32 %34)
  %36 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %37 = call i32 @perf_event_update_userpage(%struct.perf_event* %36)
  ret void
}

declare dso_local %struct.nds32_pmu* @to_nds32_pmu(i32) #1

declare dso_local i32 @nds32_stop(%struct.perf_event*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
