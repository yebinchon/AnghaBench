; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nds32_pmu = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@nds32_pmu_handle_irq = common dso_local global i32 0, align 4
@nds32_pmu_enable_event = common dso_local global i32 0, align 4
@nds32_pmu_disable_event = common dso_local global i32 0, align 4
@nds32_pmu_read_counter = common dso_local global i32 0, align 4
@nds32_pmu_write_counter = common dso_local global i32 0, align 4
@nds32_pmu_get_event_idx = common dso_local global i32 0, align 4
@nds32_pmu_start = common dso_local global i32 0, align 4
@nds32_pmu_stop = common dso_local global i32 0, align 4
@nds32_pmu_reset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nds32_pmu*)* @nds32_pmu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nds32_pmu_init(%struct.nds32_pmu* %0) #0 {
  %2 = alloca %struct.nds32_pmu*, align 8
  store %struct.nds32_pmu* %0, %struct.nds32_pmu** %2, align 8
  %3 = load i32, i32* @nds32_pmu_handle_irq, align 4
  %4 = load %struct.nds32_pmu*, %struct.nds32_pmu** %2, align 8
  %5 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %4, i32 0, i32 9
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @nds32_pmu_enable_event, align 4
  %7 = load %struct.nds32_pmu*, %struct.nds32_pmu** %2, align 8
  %8 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %7, i32 0, i32 8
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @nds32_pmu_disable_event, align 4
  %10 = load %struct.nds32_pmu*, %struct.nds32_pmu** %2, align 8
  %11 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @nds32_pmu_read_counter, align 4
  %13 = load %struct.nds32_pmu*, %struct.nds32_pmu** %2, align 8
  %14 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @nds32_pmu_write_counter, align 4
  %16 = load %struct.nds32_pmu*, %struct.nds32_pmu** %2, align 8
  %17 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @nds32_pmu_get_event_idx, align 4
  %19 = load %struct.nds32_pmu*, %struct.nds32_pmu** %2, align 8
  %20 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @nds32_pmu_start, align 4
  %22 = load %struct.nds32_pmu*, %struct.nds32_pmu** %2, align 8
  %23 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @nds32_pmu_stop, align 4
  %25 = load %struct.nds32_pmu*, %struct.nds32_pmu** %2, align 8
  %26 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @nds32_pmu_reset, align 4
  %28 = load %struct.nds32_pmu*, %struct.nds32_pmu** %2, align 8
  %29 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.nds32_pmu*, %struct.nds32_pmu** %2, align 8
  %31 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %30, i32 0, i32 0
  store i32 -1, i32* %31, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
