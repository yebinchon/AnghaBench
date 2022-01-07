; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_device_pmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_device_pmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nds32_pmu = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"nds32v3-pmu\00", align 1
@nds32_spav3_map_event = common dso_local global i32 0, align 4
@nds32_pmu_set_event_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nds32_pmu*)* @device_pmu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_pmu_init(%struct.nds32_pmu* %0) #0 {
  %2 = alloca %struct.nds32_pmu*, align 8
  store %struct.nds32_pmu* %0, %struct.nds32_pmu** %2, align 8
  %3 = load %struct.nds32_pmu*, %struct.nds32_pmu** %2, align 8
  %4 = call i32 @nds32_pmu_init(%struct.nds32_pmu* %3)
  %5 = load %struct.nds32_pmu*, %struct.nds32_pmu** %2, align 8
  %6 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load i32, i32* @nds32_spav3_map_event, align 4
  %8 = load %struct.nds32_pmu*, %struct.nds32_pmu** %2, align 8
  %9 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 8
  %10 = call i32 (...) @nds32_read_num_pfm_events()
  %11 = load %struct.nds32_pmu*, %struct.nds32_pmu** %2, align 8
  %12 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @nds32_pmu_set_event_filter, align 4
  %14 = load %struct.nds32_pmu*, %struct.nds32_pmu** %2, align 8
  %15 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  ret i32 0
}

declare dso_local i32 @nds32_pmu_init(%struct.nds32_pmu*) #1

declare dso_local i32 @nds32_read_num_pfm_events(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
