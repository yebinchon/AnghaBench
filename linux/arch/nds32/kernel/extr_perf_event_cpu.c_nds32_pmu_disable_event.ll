; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_disable_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_disable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }
%struct.nds32_pmu = type { %struct.pmu_hw_events* (...)* }
%struct.pmu_hw_events = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"CPU disabling wrong pfm counter IRQ enable %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @nds32_pmu_disable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nds32_pmu_disable_event(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca %struct.nds32_pmu*, align 8
  %6 = alloca %struct.pmu_hw_events*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 1
  store %struct.hw_perf_event* %9, %struct.hw_perf_event** %4, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.nds32_pmu* @to_nds32_pmu(i32 %12)
  store %struct.nds32_pmu* %13, %struct.nds32_pmu** %5, align 8
  %14 = load %struct.nds32_pmu*, %struct.nds32_pmu** %5, align 8
  %15 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %14, i32 0, i32 0
  %16 = load %struct.pmu_hw_events* (...)*, %struct.pmu_hw_events* (...)** %15, align 8
  %17 = call %struct.pmu_hw_events* (...) %16()
  store %struct.pmu_hw_events* %17, %struct.pmu_hw_events** %6, align 8
  %18 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.nds32_pmu*, %struct.nds32_pmu** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @nds32_pfm_counter_valid(%struct.nds32_pmu* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %41

28:                                               ; preds = %1
  %29 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %6, align 8
  %30 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %29, i32 0, i32 0
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @raw_spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @nds32_pfm_disable_counter(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @nds32_pfm_disable_intens(i32 %35)
  %37 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %6, align 8
  %38 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %37, i32 0, i32 0
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @raw_spin_unlock_irqrestore(i32* %38, i64 %39)
  br label %41

41:                                               ; preds = %28, %25
  ret void
}

declare dso_local %struct.nds32_pmu* @to_nds32_pmu(i32) #1

declare dso_local i32 @nds32_pfm_counter_valid(%struct.nds32_pmu*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nds32_pfm_disable_counter(i32) #1

declare dso_local i32 @nds32_pfm_disable_intens(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
