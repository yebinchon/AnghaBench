; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }
%struct.nds32_pmu = type { i32 (%struct.nds32_pmu*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu*)* @nds32_pmu_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nds32_pmu_disable(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  %3 = alloca %struct.nds32_pmu*, align 8
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %4 = load %struct.pmu*, %struct.pmu** %2, align 8
  %5 = call %struct.nds32_pmu* @to_nds32_pmu(%struct.pmu* %4)
  store %struct.nds32_pmu* %5, %struct.nds32_pmu** %3, align 8
  %6 = load %struct.nds32_pmu*, %struct.nds32_pmu** %3, align 8
  %7 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %6, i32 0, i32 0
  %8 = load i32 (%struct.nds32_pmu*)*, i32 (%struct.nds32_pmu*)** %7, align 8
  %9 = load %struct.nds32_pmu*, %struct.nds32_pmu** %3, align 8
  %10 = call i32 %8(%struct.nds32_pmu* %9)
  ret void
}

declare dso_local %struct.nds32_pmu* @to_nds32_pmu(%struct.pmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
