; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nds32_pmu = type { %struct.pmu_hw_events* (...)* }
%struct.pmu_hw_events = type { i32 }

@NDS32_SR_PFM_CTL = common dso_local global i32 0, align 4
@PFM_CTL_EN = common dso_local global i32* null, align 8
@PFM_CTL_OVF = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nds32_pmu*)* @nds32_pmu_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nds32_pmu_stop(%struct.nds32_pmu* %0) #0 {
  %2 = alloca %struct.nds32_pmu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmu_hw_events*, align 8
  store %struct.nds32_pmu* %0, %struct.nds32_pmu** %2, align 8
  %6 = load %struct.nds32_pmu*, %struct.nds32_pmu** %2, align 8
  %7 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %6, i32 0, i32 0
  %8 = load %struct.pmu_hw_events* (...)*, %struct.pmu_hw_events* (...)** %7, align 8
  %9 = call %struct.pmu_hw_events* (...) %8()
  store %struct.pmu_hw_events* %9, %struct.pmu_hw_events** %5, align 8
  %10 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %5, align 8
  %11 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %10, i32 0, i32 0
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @raw_spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i32, i32* @NDS32_SR_PFM_CTL, align 4
  %15 = call i32 @__nds32__mfsr(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32*, i32** @PFM_CTL_EN, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** @PFM_CTL_EN, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %18, %21
  %23 = load i32*, i32** @PFM_CTL_EN, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %22, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32*, i32** @PFM_CTL_OVF, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** @PFM_CTL_OVF, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %32, %35
  %37 = load i32*, i32** @PFM_CTL_OVF, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %36, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @NDS32_SR_PFM_CTL, align 4
  %46 = call i32 @__nds32__mtsr_isb(i32 %44, i32 %45)
  %47 = load %struct.pmu_hw_events*, %struct.pmu_hw_events** %5, align 8
  %48 = getelementptr inbounds %struct.pmu_hw_events, %struct.pmu_hw_events* %47, i32 0, i32 0
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @raw_spin_unlock_irqrestore(i32* %48, i64 %49)
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__nds32__mfsr(i32) #1

declare dso_local i32 @__nds32__mtsr_isb(i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
