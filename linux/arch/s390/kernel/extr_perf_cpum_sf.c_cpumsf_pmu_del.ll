; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_cpumsf_pmu_del.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_cpumsf_pmu_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, i32 }
%struct.cpu_hw_sf = type { i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@cpu_hw_sf = common dso_local global i32 0, align 4
@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@PMU_F_IN_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @cpumsf_pmu_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpumsf_pmu_del(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_hw_sf*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.cpu_hw_sf* @this_cpu_ptr(i32* @cpu_hw_sf)
  store %struct.cpu_hw_sf* %6, %struct.cpu_hw_sf** %5, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @perf_pmu_disable(i32 %9)
  %11 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %12 = load i32, i32* @PERF_EF_UPDATE, align 4
  %13 = call i32 @cpumsf_pmu_stop(%struct.perf_event* %11, i32 %12)
  %14 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %5, align 8
  %15 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %5, align 8
  %18 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @PMU_F_IN_USE, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %5, align 8
  %23 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %5, align 8
  %27 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %29 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %28, i32 0, i32 1
  %30 = call i64 @SAMPL_DIAG_MODE(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %5, align 8
  %34 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %33, i32 0, i32 0
  %35 = call i32 @aux_output_end(i32* %34)
  br label %36

36:                                               ; preds = %32, %2
  %37 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %38 = call i32 @perf_event_update_userpage(%struct.perf_event* %37)
  %39 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %40 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @perf_pmu_enable(i32 %41)
  ret void
}

declare dso_local %struct.cpu_hw_sf* @this_cpu_ptr(i32*) #1

declare dso_local i32 @perf_pmu_disable(i32) #1

declare dso_local i32 @cpumsf_pmu_stop(%struct.perf_event*, i32) #1

declare dso_local i64 @SAMPL_DIAG_MODE(i32*) #1

declare dso_local i32 @aux_output_end(i32*) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

declare dso_local i32 @perf_pmu_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
